import { defineCollection, reference, z } from "astro:content";
import { glob } from "astro/loaders";

// ─────────────────────────────────────────────────────────────
// MATERIAS  ·  1 JSON por materia  ·  src/content/materias/*.json
// Alimenta las cards del HOME y el header de la vista de materia.
// ─────────────────────────────────────────────────────────────
const materias = defineCollection({
  loader: glob({ pattern: "*.json", base: "./src/content/materias" }),
  schema: z.object({
    sigla: z.string(),
    nombre: z.string(),
    descripcion: z.string(),
    icono: z.enum(["db", "code"]),
    acento: z.string().default("#d9382c"),
    orden: z.number().default(0),
    meta: z.array(z.string()).default([]),
  }),
});

// ─────────────────────────────────────────────────────────────
// SEMANAS  ·  incluye las BLOQUEADAS  ·  semanas/{sigla}/semana-0X.json
// ─────────────────────────────────────────────────────────────
const semanas = defineCollection({
  loader: glob({ pattern: "**/*.json", base: "./src/content/semanas" }),
  schema: z.object({
    materia: reference("materias"),
    numero: z.number(),
    titulo: z.string(),
    resumen: z.string(),
    estado: z.enum(["disponible", "bloqueada"]).default("disponible"),
  }),
});

// ─────────────────────────────────────────────────────────────
// EJERCICIOS  ·  el articulo largo  ·  ejercicios/{sigla}/semana-0X/ej-0Y.mdx
// ─────────────────────────────────────────────────────────────
const ejercicios = defineCollection({
  loader: glob({ pattern: "**/*.mdx", base: "./src/content/ejercicios" }),
  schema: z.object({
    titulo: z.string(),
    descripcion: z.string(),
    materia: reference("materias"),
    semana: z.number(),
    numero: z.number(),
    dificultad: z.enum(["facil", "media", "dificil"]),
    tiempo: z.string().optional(),
    tags: z.array(z.string()).default([]),
  }),
});

// ─────────────────────────────────────────────────────────────
// APARTADOS ESPECIALES  ·  apartados/{sigla}/prep-*.json
// ─────────────────────────────────────────────────────────────
const apartados = defineCollection({
  loader: glob({ pattern: "**/*.json", base: "./src/content/apartados" }),
  schema: z.object({
    materia: reference("materias"),
    tipo: z.enum(["parcial", "invierno"]),
    titulo: z.string(),
    subtitulo: z.string(),
    orden: z.number().default(0),
  }),
});

// ─────────────────────────────────────────────────────────────
// RETOS  ·  ejercicios que viven dentro de un APARTADO especial
// (ej: "Prep. Verano 2")  ·  retos/{sigla}/{apartado}/{grupo}-0N.json
// ─────────────────────────────────────────────────────────────
const retos = defineCollection({
  loader: glob({ pattern: "**/*.json", base: "./src/content/retos" }),
  schema: z.object({
    titulo: z.string(),
    descripcion: z.string(),
    materia: reference("materias"),
    apartado: reference("apartados"),
    grupo: z.enum(["I", "II"]),
    numero: z.number(),
    enunciado: z.string(),
    ejemplo: z.string(),
    diagrama: z.string().optional(),
    formula: z.string().optional(),
  }),
});

// ─────────────────────────────────────────────────────────────
// MATERIAL EXTRA  ·  contenido adicional por materia (imagen + descripción)
// material/{sigla}.json
// ─────────────────────────────────────────────────────────────
const material = defineCollection({
  loader: glob({ pattern: "*.json", base: "./src/content/material" }),
  schema: z.object({
    materia: reference("materias"),
    titulo: z.string(),
    descripcion: z.string(),
    contenido: z.array(
      z.object({
        titulo: z.string(),
        descripcion: z.string(),
        imagen: z.string(),
      })
    ),
  }),
});

export const collections = {
  materias,
  semanas,
  ejercicios,
  apartados,
  retos,
  material,
};

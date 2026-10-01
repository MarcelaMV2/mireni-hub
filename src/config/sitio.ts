// Datos del sitio (singleton). Alimenta el bloque de PERFIL del HOME,
// el header y el footer. No es contenido variable, por eso va como config.

export const perfil = {
  nombre: "Marcela",
  apellido: "Miranda Veniz",
  iniciales: "MM",
  rol: "Auxiliar de Docencia",
  universidad: "USFX",
  bio: "En este espacio encontrarás todo el material que vamos trabajando en clases: ejercicios, soluciones, ejemplos y recursos que te ayudarán a practicar y mejorar.",
  gestion: "Gestión II · 2026",
};

export const redes = [
  {
    nombre: "GitHub",
    icono: "tabler:brand-github",
    url: "https://github.com/MarcelaMV2",
  },
  {
    nombre: "LinkedIn",
    icono: "tabler:brand-linkedin",
    url: "https://www.linkedin.com/in/marcela-miranda-veniz-015853352",
  },
  {
    nombre: "Instagram",
    icono: "tabler:brand-instagram",
    url: "https://www.instagram.com/mireni_mv/",
  },
  {
    nombre: "Instagram",
    icono: "tabler:brand-facebook",
    url: "https://www.facebook.com/marcela.miranda.984392/",
  },
  {
    nombre: "Email",
    icono: "tabler:mail",
    url: "mailto:mirandamarcela578@gmail.com",
  },
] as const;

export const nav = [
  { texto: "Materias", href: "/#materias" },
  { texto: "SIS100", href: "/sis100" },
  { texto: "SIS304", href: "/sis304" },
];

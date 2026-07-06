// Datos del sitio (singleton). Alimenta el bloque de PERFIL del HOME,
// el header y el footer. No es contenido variable, por eso va como config.

export const perfil = {
  nombre: 'Marcela',
  apellido: 'Miranda Veniz',
  iniciales: 'MM',
  rol: 'Auxiliar de Docencia',
  universidad: 'USFX',
  bio: 'Publico acá los ejercicios resueltos de las materias en las que soy auxiliar. Cada resolución trae enunciado, código comentado y explicación paso a paso — pensado para repasar antes de la prueba.',
  gestion: 'Gestión II · 2026',
};

export const redes = [
  { nombre: 'GitHub', icono: 'tabler:brand-github', url: 'https://github.com/MarcelaMV2' },
  { nombre: 'LinkedIn', icono: 'tabler:brand-linkedin', url: 'https://www.linkedin.com/in/marcela-miranda-veniz-015853352' },
  { nombre: 'Instagram', icono: 'tabler:brand-instagram', url: 'https://www.instagram.com/mireni_mv/' },
  { nombre: 'Instagram', icono: 'tabler:brand-facebook', url: 'https://www.facebook.com/marcela.miranda.984392/' },
  { nombre: 'Email', icono: 'tabler:mail', url: 'mailto:mirandamarcela578@gmail.com' },
] as const;

export const nav = [
  { texto: 'Materias', href: '/#materias' },
  { texto: 'SIS100', href: '/sis100' },
  { texto: 'SIS304', href: '/sis304' },
];
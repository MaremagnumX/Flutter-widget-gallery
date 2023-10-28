import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItem(
      {required this.title,
      required this.subTitle,
      required this.link,
      required this.icon});
}

const appMenuItems = <MenuItem>[
  MenuItem(
      title: 'Riverpod',
      subTitle: 'Introducción a manejadores de estado',
      link: '/riverpod',
      icon: Icons.satellite_alt_outlined),
  MenuItem(
      title: 'Botones',
      subTitle: 'Varios botones en flutter',
      link: '/buttons',
      icon: Icons.smart_button_outlined),
  MenuItem(
      title: 'Tarjetas',
      subTitle: 'Un contenedor estilizado',
      link: '/cards',
      icon: Icons.credit_card),
  MenuItem(
      title: 'Progress Indicators',
      subTitle: 'Generales y controlados',
      link: '/progress',
      icon: Icons.refresh_rounded),
  MenuItem(
      title: 'Sancakbar y dialogos',
      subTitle: 'Indicadores en pantalla',
      link: '/snackbar',
      icon: Icons.branding_watermark_outlined),
  MenuItem(
      title: 'Animated container',
      subTitle: 'Satatefull widget animado',
      link: '/animated',
      icon: Icons.animation),
  MenuItem(
      title: 'UI Controls',
      subTitle: 'Controladores de Flutter',
      link: '/ui-controls',
      icon: Icons.control_camera_rounded),
  MenuItem(
    title: 'Introducción a la aplicación',
    subTitle: 'Pequeño tutorial introductorio',
    link: '/tutorial',
    icon: Icons.signpost_rounded,
  ),
  MenuItem(
    title: 'Inifinite Scroll & Pull',
    subTitle: 'Listas infinitas y pull to refresh',
    link: '/infinite',
    icon: Icons.list_alt_rounded,
  ),
];

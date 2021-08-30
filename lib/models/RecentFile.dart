class RecentFile {
  final String? icon, title, date, size;

  RecentFile({this.icon, this.title, this.date, this.size});
}

List demoRecentFiles = [
  RecentFile(
    icon: "assets/icons/xd_file.svg",
    title: "Cobot 1",
    date: "34",
    size: "On",
  ),
  RecentFile(
    icon: "assets/icons/Figma_file.svg",
    title: "Cobot 2",
    date: "42",
    size: "On",
  ),
  RecentFile(
    icon: "assets/icons/doc_file.svg",
    title: "Cobot 3",
    date: "--",
    size: "Off",
  ),
  RecentFile(
    icon: "assets/icons/sound_file.svg",
    title: "Cobot 4",
    date: "37",
    size: "On",
  ),
  RecentFile(
    icon: "assets/icons/media_file.svg",
    title: "Cobot 5",
    date: "50",
    size: "On",
  ),
  RecentFile(
    icon: "assets/icons/pdf_file.svg",
    title: "Cobot 6",
    date: "36",
    size: "On",
  ),
  RecentFile(
    icon: "assets/icons/excle_file.svg",
    title: "Cobot 7",
    date: "--",
    size: "Off",
  ),
];

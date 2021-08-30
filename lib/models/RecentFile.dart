class RecentFile {
  final String? icon, title, temperature, status;

  RecentFile({this.icon, this.title, this.temperature, this.status});
}

List demoRecentFiles = [
  RecentFile(
    icon: "assets/icons/xd_file.svg",
    title: "Cobot 1",
    temperature: "34",
    status: "On",
  ),
  RecentFile(
    icon: "assets/icons/Figma_file.svg",
    title: "Cobot 2",
    temperature: "42",
    status: "On",
  ),
  RecentFile(
    icon: "assets/icons/doc_file.svg",
    title: "Cobot 3",
    temperature: "--",
    status: "Off",
  ),
  RecentFile(
    icon: "assets/icons/sound_file.svg",
    title: "Cobot 4",
    temperature: "37",
    status: "On",
  ),
  RecentFile(
    icon: "assets/icons/media_file.svg",
    title: "Cobot 5",
    temperature: "50",
    status: "On",
  ),
  RecentFile(
    icon: "assets/icons/pdf_file.svg",
    title: "Cobot 6",
    temperature: "36",
    status: "On",
  ),
  RecentFile(
    icon: "assets/icons/excle_file.svg",
    title: "Cobot 7",
    temperature: "--",
    status: "Off",
  ),
];

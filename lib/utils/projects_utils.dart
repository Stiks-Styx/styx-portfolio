class ProjectsUtils {
  final String projectName;
  final String projectDescription;
  final String projectImage;
  final String? projectGithubLink;
  final String? projectDownloadLink;
  final String? andriodLink;
  final String? iosLink;
  final String? webLink;

  ProjectsUtils({
    required this.projectName,
    required this.projectDescription,
    required this.projectImage,
    this.projectGithubLink,
    this.projectDownloadLink,
    this.andriodLink,
    this.iosLink,
    this.webLink,
  });
}

List<ProjectsUtils> hobbyProjects = [
  ProjectsUtils(
    projectName: 'Project 1',
    projectDescription: 'Description 1',
    projectImage: '.../projects/placeholder.png',
  ),
  ProjectsUtils(
    projectName: 'Project 2',
    projectDescription: 'Description 2',
    projectImage: '.../projects/placeholder.png',
  ),
  ProjectsUtils(
    projectName: 'Project 3',
    projectDescription: 'Description 3',
    projectImage: '.../projects/placeholder.png',
  ),
];
List<ProjectsUtils> schoolProjects = [
  ProjectsUtils(
    projectName: 'Project 4',
    projectDescription: 'Description 4',
    projectImage: '.../projects/placeholder.png',
  ),
  ProjectsUtils(
    projectName: 'Project 5',
    projectDescription: 'Description 5',
    projectImage: '.../projects/placeholder.png',
  ),
  ProjectsUtils(
    projectName: 'Project 6',
    projectDescription: 'Description 6',
    projectImage: '.../projects/placeholder.png',
  ),
];

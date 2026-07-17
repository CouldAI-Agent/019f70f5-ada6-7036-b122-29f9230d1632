import '../models/models.dart';

class MockData {
  static const List<Indicator> keyIndicators = [
    Indicator(
      label: 'Overall Literacy Rate',
      value: '64.2',
      unit: '%',
      percentageChange: 5.4,
      isPositiveTrend: true,
    ),
    Indicator(
      label: 'Avg Monthly Income',
      value: '12,400',
      unit: 'INR',
      percentageChange: 8.2,
      isPositiveTrend: true,
    ),
    Indicator(
      label: 'Healthcare Access',
      value: '78.5',
      unit: '%',
      percentageChange: 12.1,
      isPositiveTrend: true,
    ),
    Indicator(
      label: 'Unemployment Rate',
      value: '14.3',
      unit: '%',
      percentageChange: -2.1,
      isPositiveTrend: true, // Drop in unemployment is positive
    ),
  ];

  static const List<Community> communities = [
    Community(
      id: 'c1',
      name: 'Gond Community',
      region: 'Central India',
      population: 45000,
      literacyRate: 58.5,
      primaryLivelihood: 'Agriculture & Forest Produce',
      avgMonthlyIncome: 10500,
    ),
    Community(
      id: 'c2',
      name: 'Bhil Community',
      region: 'Western India',
      population: 62000,
      literacyRate: 61.2,
      primaryLivelihood: 'Agriculture & Daily Wage',
      avgMonthlyIncome: 11200,
    ),
    Community(
      id: 'c3',
      name: 'Santhal Community',
      region: 'Eastern India',
      population: 53000,
      literacyRate: 65.8,
      primaryLivelihood: 'Mining & Agriculture',
      avgMonthlyIncome: 13000,
    ),
    Community(
      id: 'c4',
      name: 'Khasi Community',
      region: 'North-East India',
      population: 28000,
      literacyRate: 78.4,
      primaryLivelihood: 'Handicrafts & Farming',
      avgMonthlyIncome: 15600,
    ),
  ];

  static const List<Project> projects = [
    Project(
      id: 'p1',
      title: 'Solar Electrification Drive',
      communityId: 'c1',
      status: 'Ongoing',
      budget: 2500000,
      progress: 0.65,
      description: 'Providing solar panels to 500 off-grid households to improve access to clean energy.',
    ),
    Project(
      id: 'p2',
      title: 'Vocational Training Center',
      communityId: 'c2',
      status: 'Planning',
      budget: 1200000,
      progress: 0.10,
      description: 'Establishment of a training center focusing on carpentry, tailoring, and IT skills.',
    ),
    Project(
      id: 'p3',
      title: 'Clean Water Initiative',
      communityId: 'c3',
      status: 'Completed',
      budget: 800000,
      progress: 1.0,
      description: 'Installation of 50 borewells and water purification systems across 10 villages.',
    ),
    Project(
      id: 'p4',
      title: 'Women Artisans Cooperative',
      communityId: 'c4',
      status: 'Ongoing',
      budget: 500000,
      progress: 0.40,
      description: 'Micro-financing and market linkage program for female weavers and handicraft artisans.',
    ),
  ];
}

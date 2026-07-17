class Community {
  final String id;
  final String name;
  final String region;
  final int population;
  final double literacyRate;
  final String primaryLivelihood;
  final double avgMonthlyIncome;

  const Community({
    required this.id,
    required this.name,
    required this.region,
    required this.population,
    required this.literacyRate,
    required this.primaryLivelihood,
    required this.avgMonthlyIncome,
  });
}

class Project {
  final String id;
  final String title;
  final String communityId;
  final String status;
  final double budget;
  final double progress; // 0.0 to 1.0
  final String description;

  const Project({
    required this.id,
    required this.title,
    required this.communityId,
    required this.status,
    required this.budget,
    required this.progress,
    required this.description,
  });
}

class Indicator {
  final String label;
  final String value;
  final String unit;
  final double percentageChange;
  final bool isPositiveTrend;

  const Indicator({
    required this.label,
    required this.value,
    required this.unit,
    required this.percentageChange,
    required this.isPositiveTrend,
  });
}

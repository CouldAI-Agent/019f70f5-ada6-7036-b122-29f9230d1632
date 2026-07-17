import 'package:flutter/material.dart';
import '../data/mock_data.dart';

class ReportScreen extends StatelessWidget {
  const ReportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Project Report (PDF Preview)'),
        actions: [
          IconButton(
            icon: const Icon(Icons.picture_as_pdf),
            tooltip: 'Download PDF',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('PDF Report downloaded successfully.'),
                  behavior: SnackBarBehavior.floating,
                ),
              );
            },
          ),
        ],
      ),
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 800),
          margin: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 10,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Center(
                  child: Text(
                    'ANNUAL PROJECT REPORT',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.5,
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                const Center(
                  child: Text(
                    'Socio-Economic Development of Tribal Communities',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 32),
                const Text(
                  '1. Executive Summary',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                const Text(
                  'This report provides a comprehensive overview of the ongoing initiatives aimed at improving the socio-economic conditions of tribal communities. Through targeted interventions in education, healthcare, and livelihood generation, the project has impacted multiple regions and thousands of individuals.',
                  style: TextStyle(height: 1.5),
                ),
                const SizedBox(height: 24),
                const Text(
                  '2. Key Indicators',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 16),
                DataTable(
                  headingRowColor: MaterialStateProperty.all(Colors.grey[200]),
                  columns: const [
                    DataColumn(label: Text('Metric')),
                    DataColumn(label: Text('Value')),
                    DataColumn(label: Text('Trend')),
                  ],
                  rows: MockData.indicators.map((indicator) {
                    return DataRow(
                      cells: [
                        DataCell(Text(indicator.title)),
                        DataCell(Text(indicator.value)),
                        DataCell(
                          Row(
                            children: [
                              Icon(
                                indicator.isPositive ? Icons.arrow_upward : Icons.arrow_downward,
                                color: indicator.isPositive ? Colors.green : Colors.red,
                                size: 16,
                              ),
                              const SizedBox(width: 4),
                              Text(indicator.trend),
                            ],
                          ),
                        ),
                      ],
                    );
                  }).toList(),
                ),
                const SizedBox(height: 32),
                const Text(
                  '3. Active Projects Overview',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 16),
                ...MockData.projects.map((project) => Padding(
                  padding: const EdgeInsets.only(bottom: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        project.name,
                        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      const SizedBox(height: 4),
                      Text('Status: ${project.status} | Budget: ${project.budget}'),
                      const SizedBox(height: 4),
                      Text('Impact: ${project.impact}', style: const TextStyle(fontStyle: FontStyle.italic)),
                      const Divider(),
                    ],
                  ),
                )).toList(),
                const SizedBox(height: 32),
                const Text(
                  '4. Conclusion',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                const Text(
                  'The interventions have shown promising results in elevating the socio-economic baseline of the targeted communities. Continued support and monitoring will be required to sustain these developments and achieve long-term autonomy and prosperity.',
                  style: TextStyle(height: 1.5),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import '../data/mock_data.dart';
import 'dashboard_screen.dart'; // for AppDrawer

class CommunitiesScreen extends StatelessWidget {
  const CommunitiesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tribal Communities'),
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      ),
      drawer: const AppDrawer(),
      body: LayoutBuilder(
        builder: (context, constraints) {
          final isMobile = constraints.maxWidth < 600;
          return ListView.builder(
            padding: const EdgeInsets.all(16.0),
            itemCount: MockData.communities.length,
            itemBuilder: (context, index) {
              final community = MockData.communities[index];
              return Card(
                margin: const EdgeInsets.only(bottom: 16),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              community.name,
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                          ),
                          Chip(label: Text(community.region)),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Text('Population: ${community.population}'),
                      const SizedBox(height: 8),
                      Text(
                        community.description,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      const SizedBox(height: 16),
                      Wrap(
                        spacing: 8.0,
                        runSpacing: 8.0,
                        children: [
                          _buildStatCard(context, 'Literacy Rate', '${community.literacyRate}%'),
                          _buildStatCard(context, 'Avg Income', '\$${community.averageIncome}/yr'),
                          _buildStatCard(context, 'Healthcare Access', '${community.healthcareAccess}%'),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }

  Widget _buildStatCard(BuildContext context, String label, String value) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surfaceContainerHighest,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(label, style: const TextStyle(fontSize: 12)),
          const SizedBox(height: 4),
          Text(value, style: const TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}

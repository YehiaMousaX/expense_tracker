import 'package:expense_tracker/models/expense.dart';
import 'package:flutter/material.dart';

class ExpenseItem extends StatelessWidget {
  final Expense expense;
  const ExpenseItem(this.expense, {super.key});
  @override
  Widget build(context) {
    return Card(
        child: Column(
      children: [
        Text(expense.title),
        const SizedBox(height: 4),
        Row(
          children: [
            Text('\$${expense.amount.toStringAsFixed(2)}'),
            const Spacer(),
            Row(
              children: [
                Icon(categoryIcons[expense.category]),
                const SizedBox(width: 4),
                Text(expense.formattedDate),
              ],
            ),
          ],
        )
      ],
    ));
  }
}

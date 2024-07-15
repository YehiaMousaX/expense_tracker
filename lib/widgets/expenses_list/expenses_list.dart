import 'package:expense_tracker/models/expense.dart';
import 'package:expense_tracker/widgets/expenses_list/expense_item.dart';
import 'package:flutter/material.dart';

class ExpensesList extends StatelessWidget {
  final List<Expense> expenses;
  const ExpensesList(
      {super.key, required this.expenses, required this.onRemoveExpense});
  final void Function(Expense) onRemoveExpense;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (context, index) {
        return Dismissible(
          background: Container(
            color: Colors.red,
            alignment: Alignment.centerRight,
            padding: const EdgeInsets.only(right: 20),
            margin:  EdgeInsets.symmetric(vertical: 4, horizontal: Theme.of(context).cardTheme.margin!.horizontal),
            child: const Icon(Icons.delete, color: Color.fromARGB(255, 206, 196, 196), size: 40),
          ),
          key: ValueKey(expenses[index].id),
          onDismissed: (direction) {
            onRemoveExpense(expenses[index]);
          },
          child: ExpenseItem(expenses[index]),
        );
      },
    );
  }
}

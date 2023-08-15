import 'package:flutter/material.dart';
import 'package:flutter_expense_tracker/widgets/expenses_list/expenses_list.dart';
import 'package:flutter_expense_tracker/models/expense.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
      title: 'Flutter',
      amount: 125,
      date: DateTime.now(),
      category: Category.work,
    ),
    Expense(
      title: 'Dinner',
      amount: 24.99,
      date: DateTime.now(),
      category: Category.leisure,
    ),
    Expense(
      title: 'Flutter',
      amount: 16,
      date: DateTime.now(),
      category: Category.food,
    )
  ];

  @override
  Widget build(context) {
    return Scaffold(
      body: Column(
        children: [
          const Text('The Cart'),
          Expanded(child: ExpensesList(expenses: _registeredExpenses)),
        ],
      ),
    );
  }
}

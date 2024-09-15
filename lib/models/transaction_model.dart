class TransactionModel {
  final String title;
  final String subtitle;
  final String amount;
  final bool withDrawl;

  const TransactionModel(
      {required this.title,
      required this.subtitle,
      required this.amount,
      required this.withDrawl});
}

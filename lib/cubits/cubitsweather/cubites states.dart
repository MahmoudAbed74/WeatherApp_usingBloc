//! انشاء الكلاس اللي هيحصل فيهم states

import 'package:flutter/material.dart';

abstract class weathercubits_Sates {}

class weatherinitalstate extends weathercubits_Sates {}

class weatherLoading extends weathercubits_Sates {
  // weatherLoading(this.animationController);
}

class weathersuccessed extends weathercubits_Sates {}

class weatherFailuare extends weathercubits_Sates {}

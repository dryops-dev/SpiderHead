import 'dart:math';
import 'package:flutter/material.dart';

double radius = 135;
double strokeWidth = 30;
const fullAngleInRadians = pi * 2;

double toRadian(double value) => (value * pi) / 180;
double toAngle(Offset position, Offset center) => (position - center).direction;
double normalizeAngle(double angle) => normalize(angle, fullAngleInRadians);
double normalize(double value, double max) => (value % max + max) % max;
Offset toPolar(Offset center, double radians, double radius) =>
    center + Offset.fromDirection(radians, radius);

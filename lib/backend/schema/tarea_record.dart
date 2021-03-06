import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'tarea_record.g.dart';

abstract class TareaRecord implements Built<TareaRecord, TareaRecordBuilder> {
  static Serializer<TareaRecord> get serializer => _$tareaRecordSerializer;

  @nullable
  String get titulo;

  @nullable
  String get descripcion;

  @nullable
  @BuiltValueField(wireName: 'fecha_limite')
  DateTime get fechaLimite;

  @nullable
  bool get estado;

  @nullable
  @BuiltValueField(wireName: 'created_time')
  DateTime get createdTime;

  @nullable
  @BuiltValueField(wireName: 'creado_por')
  DocumentReference get creadoPor;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(TareaRecordBuilder builder) => builder
    ..titulo = ''
    ..descripcion = ''
    ..estado = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('tarea');

  static Stream<TareaRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<TareaRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  TareaRecord._();
  factory TareaRecord([void Function(TareaRecordBuilder) updates]) =
      _$TareaRecord;

  static TareaRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createTareaRecordData({
  String titulo,
  String descripcion,
  DateTime fechaLimite,
  bool estado,
  DateTime createdTime,
  DocumentReference creadoPor,
}) =>
    serializers.toFirestore(
        TareaRecord.serializer,
        TareaRecord((t) => t
          ..titulo = titulo
          ..descripcion = descripcion
          ..fechaLimite = fechaLimite
          ..estado = estado
          ..createdTime = createdTime
          ..creadoPor = creadoPor));

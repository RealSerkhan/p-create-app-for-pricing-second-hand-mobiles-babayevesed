// // GENERATED CODE - DO NOT MODIFY BY HAND

// part of 'model_model.dart';

// // **************************************************************************
// // CollectionGenerator
// // **************************************************************************

// // GENERATED CODE - DO NOT MODIFY BY HAND
// // ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

// class _Sentinel {
//   const _Sentinel();
// }

// const _sentinel = _Sentinel();

// /// A collection reference object can be used for adding documents,
// /// getting document references, and querying for documents
// /// (using the methods inherited from Query).
// abstract class ModelModelCollectionReference
//     implements
//         ModelModelQuery,
//         FirestoreCollectionReference<ModelModel, ModelModelQuerySnapshot> {
//   factory ModelModelCollectionReference([
//     FirebaseFirestore? firestore,
//   ]) = _$ModelModelCollectionReference;

//   static ModelModel fromFirestore(
//     DocumentSnapshot<Map<String, Object?>> snapshot,
//     SnapshotOptions? options,
//   ) {
//     return _$ModelModelFromJson(snapshot.data()!);
//   }

//   static Map<String, Object?> toFirestore(
//     ModelModel value,
//     SetOptions? options,
//   ) {
//     return _$ModelModelToJson(value);
//   }

//   @override
//   CollectionReference<ModelModel> get reference;

//   @override
//   ModelModelDocumentReference doc([String? id]);

//   /// Add a new document to this collection with the specified data,
//   /// assigning it a document ID automatically.
//   Future<ModelModelDocumentReference> add(ModelModel value);
// }

// class _$ModelModelCollectionReference extends _$ModelModelQuery
//     implements ModelModelCollectionReference {
//   factory _$ModelModelCollectionReference([FirebaseFirestore? firestore]) {
//     firestore ??= FirebaseFirestore.instance;

//     return _$ModelModelCollectionReference._(
//       firestore.collection('model').withConverter(
//             fromFirestore: ModelModelCollectionReference.fromFirestore,
//             toFirestore: ModelModelCollectionReference.toFirestore,
//           ),
//     );
//   }

//   _$ModelModelCollectionReference._(
//     CollectionReference<ModelModel> reference,
//   ) : super(reference, reference);

//   String get path => reference.path;

//   @override
//   CollectionReference<ModelModel> get reference =>
//       super.reference as CollectionReference<ModelModel>;

//   @override
//   ModelModelDocumentReference doc([String? id]) {
//     assert(
//       id == null || id.split('/').length == 1,
//       'The document ID cannot be from a different collection',
//     );
//     return ModelModelDocumentReference(
//       reference.doc(id),
//     );
//   }

//   @override
//   Future<ModelModelDocumentReference> add(ModelModel value) {
//     return reference.add(value).then((ref) => ModelModelDocumentReference(ref));
//   }

//   @override
//   bool operator ==(Object other) {
//     return other is _$ModelModelCollectionReference &&
//         other.runtimeType == runtimeType &&
//         other.reference == reference;
//   }

//   @override
//   int get hashCode => Object.hash(runtimeType, reference);
// }

// abstract class ModelModelDocumentReference
//     extends FirestoreDocumentReference<ModelModel, ModelModelDocumentSnapshot> {
//   factory ModelModelDocumentReference(DocumentReference<ModelModel> reference) =
//       _$ModelModelDocumentReference;

//   DocumentReference<ModelModel> get reference;

//   /// A reference to the [ModelModelCollectionReference] containing this document.
//   ModelModelCollectionReference get parent {
//     return _$ModelModelCollectionReference(reference.firestore);
//   }

//   @override
//   Stream<ModelModelDocumentSnapshot> snapshots();

//   @override
//   Future<ModelModelDocumentSnapshot> get([GetOptions? options]);

//   @override
//   Future<void> delete();

//   Future<void> update({
//     String? name,
//     String? id,
//     String? brandID,
//     String? docId,
//     List<Object?> props,
//     bool? stringify,
//     int hashCode,
//   });

//   Future<void> set(ModelModel value);
// }

// class _$ModelModelDocumentReference
//     extends FirestoreDocumentReference<ModelModel, ModelModelDocumentSnapshot>
//     implements ModelModelDocumentReference {
//   _$ModelModelDocumentReference(this.reference);

//   @override
//   final DocumentReference<ModelModel> reference;

//   /// A reference to the [ModelModelCollectionReference] containing this document.
//   ModelModelCollectionReference get parent {
//     return _$ModelModelCollectionReference(reference.firestore);
//   }

//   @override
//   Stream<ModelModelDocumentSnapshot> snapshots() {
//     return reference.snapshots().map((snapshot) {
//       return ModelModelDocumentSnapshot._(
//         snapshot,
//         snapshot.data(),
//       );
//     });
//   }

//   @override
//   Future<ModelModelDocumentSnapshot> get([GetOptions? options]) {
//     return reference.get(options).then((snapshot) {
//       return ModelModelDocumentSnapshot._(
//         snapshot,
//         snapshot.data(),
//       );
//     });
//   }

//   @override
//   Future<void> delete() {
//     return reference.delete();
//   }

//   Future<void> update({
//     Object? name = _sentinel,
//     Object? id = _sentinel,
//     Object? brandID = _sentinel,
//     Object? docId = _sentinel,
//     Object? props = _sentinel,
//     Object? stringify = _sentinel,
//     Object? hashCode = _sentinel,
//   }) async {
//     final json = {
//       if (name != _sentinel) "name": name as String?,
//       if (id != _sentinel) "id": id as String?,
//       if (brandID != _sentinel) "brandID": brandID as String?,
//       if (docId != _sentinel) "docId": docId as String?,
//       if (props != _sentinel) "props": props as List<Object?>,
//       if (stringify != _sentinel) "stringify": stringify as bool?,
//       if (hashCode != _sentinel) "hashCode": hashCode as int,
//     };

//     return reference.update(json);
//   }

//   Future<void> set(ModelModel value) {
//     return reference.set(value);
//   }

//   @override
//   bool operator ==(Object other) {
//     return other is ModelModelDocumentReference &&
//         other.runtimeType == runtimeType &&
//         other.parent == parent &&
//         other.id == id;
//   }

//   @override
//   int get hashCode => Object.hash(runtimeType, parent, id);
// }

// class ModelModelDocumentSnapshot extends FirestoreDocumentSnapshot<ModelModel> {
//   ModelModelDocumentSnapshot._(
//     this.snapshot,
//     this.data,
//   );

//   @override
//   final DocumentSnapshot<ModelModel> snapshot;

//   @override
//   ModelModelDocumentReference get reference {
//     return ModelModelDocumentReference(
//       snapshot.reference,
//     );
//   }

//   @override
//   final ModelModel? data;
// }

// abstract class ModelModelQuery
//     implements QueryReference<ModelModel, ModelModelQuerySnapshot> {
//   @override
//   ModelModelQuery limit(int limit);

//   @override
//   ModelModelQuery limitToLast(int limit);

//   /// Perform an order query based on a [FieldPath].
//   ///
//   /// This method is considered unsafe as it does check that the field path
//   /// maps to a valid property or that parameters such as [isEqualTo] receive
//   /// a value of the correct type.
//   ///
//   /// If possible, instead use the more explicit variant of order queries:
//   ///
//   /// **AVOID**:
//   /// ```dart
//   /// collection.orderByFieldPath(
//   ///   FieldPath.fromString('title'),
//   ///   startAt: 'title',
//   /// );
//   /// ```
//   ///
//   /// **PREFER**:
//   /// ```dart
//   /// collection.orderByTitle(startAt: 'title');
//   /// ```
//   ModelModelQuery orderByFieldPath(
//     FieldPath fieldPath, {
//     bool descending = false,
//     Object? startAt,
//     Object? startAfter,
//     Object? endAt,
//     Object? endBefore,
//     ModelModelDocumentSnapshot? startAtDocument,
//     ModelModelDocumentSnapshot? endAtDocument,
//     ModelModelDocumentSnapshot? endBeforeDocument,
//     ModelModelDocumentSnapshot? startAfterDocument,
//   });

//   /// Perform a where query based on a [FieldPath].
//   ///
//   /// This method is considered unsafe as it does check that the field path
//   /// maps to a valid property or that parameters such as [isEqualTo] receive
//   /// a value of the correct type.
//   ///
//   /// If possible, instead use the more explicit variant of where queries:
//   ///
//   /// **AVOID**:
//   /// ```dart
//   /// collection.whereFieldPath(FieldPath.fromString('title'), isEqualTo: 'title');
//   /// ```
//   ///
//   /// **PREFER**:
//   /// ```dart
//   /// collection.whereTitle(isEqualTo: 'title');
//   /// ```
//   ModelModelQuery whereFieldPath(
//     FieldPath fieldPath, {
//     Object? isEqualTo,
//     Object? isNotEqualTo,
//     Object? isLessThan,
//     Object? isLessThanOrEqualTo,
//     Object? isGreaterThan,
//     Object? isGreaterThanOrEqualTo,
//     Object? arrayContains,
//     List<Object?>? arrayContainsAny,
//     List<Object?>? whereIn,
//     List<Object?>? whereNotIn,
//     bool? isNull,
//   });

//   ModelModelQuery whereDocumentId({
//     String? isEqualTo,
//     String? isNotEqualTo,
//     String? isLessThan,
//     String? isLessThanOrEqualTo,
//     String? isGreaterThan,
//     String? isGreaterThanOrEqualTo,
//     bool? isNull,
//     List<String>? whereIn,
//     List<String>? whereNotIn,
//   });
//   ModelModelQuery whereName({
//     String? isEqualTo,
//     String? isNotEqualTo,
//     String? isLessThan,
//     String? isLessThanOrEqualTo,
//     String? isGreaterThan,
//     String? isGreaterThanOrEqualTo,
//     bool? isNull,
//     List<String?>? whereIn,
//     List<String?>? whereNotIn,
//   });
//   ModelModelQuery whereId({
//     String? isEqualTo,
//     String? isNotEqualTo,
//     String? isLessThan,
//     String? isLessThanOrEqualTo,
//     String? isGreaterThan,
//     String? isGreaterThanOrEqualTo,
//     bool? isNull,
//     List<String?>? whereIn,
//     List<String?>? whereNotIn,
//   });
//   ModelModelQuery whereBrandID({
//     String? isEqualTo,
//     String? isNotEqualTo,
//     String? isLessThan,
//     String? isLessThanOrEqualTo,
//     String? isGreaterThan,
//     String? isGreaterThanOrEqualTo,
//     bool? isNull,
//     List<String?>? whereIn,
//     List<String?>? whereNotIn,
//   });
//   ModelModelQuery whereDocId({
//     String? isEqualTo,
//     String? isNotEqualTo,
//     String? isLessThan,
//     String? isLessThanOrEqualTo,
//     String? isGreaterThan,
//     String? isGreaterThanOrEqualTo,
//     bool? isNull,
//     List<String?>? whereIn,
//     List<String?>? whereNotIn,
//   });
//   ModelModelQuery whereProps({
//     List<Object?>? isEqualTo,
//     List<Object?>? isNotEqualTo,
//     List<Object?>? isLessThan,
//     List<Object?>? isLessThanOrEqualTo,
//     List<Object?>? isGreaterThan,
//     List<Object?>? isGreaterThanOrEqualTo,
//     bool? isNull,
//     Object? arrayContains,
//     List<Object?>? arrayContainsAny,
//   });
//   ModelModelQuery whereStringify({
//     bool? isEqualTo,
//     bool? isNotEqualTo,
//     bool? isLessThan,
//     bool? isLessThanOrEqualTo,
//     bool? isGreaterThan,
//     bool? isGreaterThanOrEqualTo,
//     bool? isNull,
//     List<bool?>? whereIn,
//     List<bool?>? whereNotIn,
//   });
//   ModelModelQuery whereHashCode({
//     int? isEqualTo,
//     int? isNotEqualTo,
//     int? isLessThan,
//     int? isLessThanOrEqualTo,
//     int? isGreaterThan,
//     int? isGreaterThanOrEqualTo,
//     bool? isNull,
//     List<int>? whereIn,
//     List<int>? whereNotIn,
//   });

//   ModelModelQuery orderByDocumentId({
//     bool descending = false,
//     String startAt,
//     String startAfter,
//     String endAt,
//     String endBefore,
//     ModelModelDocumentSnapshot? startAtDocument,
//     ModelModelDocumentSnapshot? endAtDocument,
//     ModelModelDocumentSnapshot? endBeforeDocument,
//     ModelModelDocumentSnapshot? startAfterDocument,
//   });

//   ModelModelQuery orderByName({
//     bool descending = false,
//     String? startAt,
//     String? startAfter,
//     String? endAt,
//     String? endBefore,
//     ModelModelDocumentSnapshot? startAtDocument,
//     ModelModelDocumentSnapshot? endAtDocument,
//     ModelModelDocumentSnapshot? endBeforeDocument,
//     ModelModelDocumentSnapshot? startAfterDocument,
//   });

//   ModelModelQuery orderById({
//     bool descending = false,
//     String? startAt,
//     String? startAfter,
//     String? endAt,
//     String? endBefore,
//     ModelModelDocumentSnapshot? startAtDocument,
//     ModelModelDocumentSnapshot? endAtDocument,
//     ModelModelDocumentSnapshot? endBeforeDocument,
//     ModelModelDocumentSnapshot? startAfterDocument,
//   });

//   ModelModelQuery orderByBrandID({
//     bool descending = false,
//     String? startAt,
//     String? startAfter,
//     String? endAt,
//     String? endBefore,
//     ModelModelDocumentSnapshot? startAtDocument,
//     ModelModelDocumentSnapshot? endAtDocument,
//     ModelModelDocumentSnapshot? endBeforeDocument,
//     ModelModelDocumentSnapshot? startAfterDocument,
//   });

//   ModelModelQuery orderByDocId({
//     bool descending = false,
//     String? startAt,
//     String? startAfter,
//     String? endAt,
//     String? endBefore,
//     ModelModelDocumentSnapshot? startAtDocument,
//     ModelModelDocumentSnapshot? endAtDocument,
//     ModelModelDocumentSnapshot? endBeforeDocument,
//     ModelModelDocumentSnapshot? startAfterDocument,
//   });

//   ModelModelQuery orderByProps({
//     bool descending = false,
//     List<Object?> startAt,
//     List<Object?> startAfter,
//     List<Object?> endAt,
//     List<Object?> endBefore,
//     ModelModelDocumentSnapshot? startAtDocument,
//     ModelModelDocumentSnapshot? endAtDocument,
//     ModelModelDocumentSnapshot? endBeforeDocument,
//     ModelModelDocumentSnapshot? startAfterDocument,
//   });

//   ModelModelQuery orderByStringify({
//     bool descending = false,
//     bool? startAt,
//     bool? startAfter,
//     bool? endAt,
//     bool? endBefore,
//     ModelModelDocumentSnapshot? startAtDocument,
//     ModelModelDocumentSnapshot? endAtDocument,
//     ModelModelDocumentSnapshot? endBeforeDocument,
//     ModelModelDocumentSnapshot? startAfterDocument,
//   });

//   ModelModelQuery orderByHashCode({
//     bool descending = false,
//     int startAt,
//     int startAfter,
//     int endAt,
//     int endBefore,
//     ModelModelDocumentSnapshot? startAtDocument,
//     ModelModelDocumentSnapshot? endAtDocument,
//     ModelModelDocumentSnapshot? endBeforeDocument,
//     ModelModelDocumentSnapshot? startAfterDocument,
//   });
// }

// class _$ModelModelQuery
//     extends QueryReference<ModelModel, ModelModelQuerySnapshot>
//     implements ModelModelQuery {
//   _$ModelModelQuery(
//     this.reference,
//     this._collection,
//   );

//   final CollectionReference<Object?> _collection;

//   @override
//   final Query<ModelModel> reference;

//   ModelModelQuerySnapshot _decodeSnapshot(
//     QuerySnapshot<ModelModel> snapshot,
//   ) {
//     final docs = snapshot.docs.map((e) {
//       return ModelModelQueryDocumentSnapshot._(e, e.data());
//     }).toList();

//     final docChanges = snapshot.docChanges.map((change) {
//       return FirestoreDocumentChange<ModelModelDocumentSnapshot>(
//         type: change.type,
//         oldIndex: change.oldIndex,
//         newIndex: change.newIndex,
//         doc: ModelModelDocumentSnapshot._(change.doc, change.doc.data()),
//       );
//     }).toList();

//     return ModelModelQuerySnapshot._(
//       snapshot,
//       docs,
//       docChanges,
//     );
//   }

//   @override
//   Stream<ModelModelQuerySnapshot> snapshots([SnapshotOptions? options]) {
//     return reference.snapshots().map(_decodeSnapshot);
//   }

//   @override
//   Future<ModelModelQuerySnapshot> get([GetOptions? options]) {
//     return reference.get(options).then(_decodeSnapshot);
//   }

//   @override
//   ModelModelQuery limit(int limit) {
//     return _$ModelModelQuery(
//       reference.limit(limit),
//       _collection,
//     );
//   }

//   @override
//   ModelModelQuery limitToLast(int limit) {
//     return _$ModelModelQuery(
//       reference.limitToLast(limit),
//       _collection,
//     );
//   }

//   ModelModelQuery orderByFieldPath(
//     FieldPath fieldPath, {
//     bool descending = false,
//     Object? startAt = _sentinel,
//     Object? startAfter = _sentinel,
//     Object? endAt = _sentinel,
//     Object? endBefore = _sentinel,
//     ModelModelDocumentSnapshot? startAtDocument,
//     ModelModelDocumentSnapshot? endAtDocument,
//     ModelModelDocumentSnapshot? endBeforeDocument,
//     ModelModelDocumentSnapshot? startAfterDocument,
//   }) {
//     var query = reference.orderBy(fieldPath, descending: descending);

//     if (startAtDocument != null) {
//       query = query.startAtDocument(startAtDocument.snapshot);
//     }
//     if (startAfterDocument != null) {
//       query = query.startAfterDocument(startAfterDocument.snapshot);
//     }
//     if (endAtDocument != null) {
//       query = query.endAtDocument(endAtDocument.snapshot);
//     }
//     if (endBeforeDocument != null) {
//       query = query.endBeforeDocument(endBeforeDocument.snapshot);
//     }

//     if (startAt != _sentinel) {
//       query = query.startAt([startAt]);
//     }
//     if (startAfter != _sentinel) {
//       query = query.startAfter([startAfter]);
//     }
//     if (endAt != _sentinel) {
//       query = query.endAt([endAt]);
//     }
//     if (endBefore != _sentinel) {
//       query = query.endBefore([endBefore]);
//     }

//     return _$ModelModelQuery(query, _collection);
//   }

//   ModelModelQuery whereFieldPath(
//     FieldPath fieldPath, {
//     Object? isEqualTo,
//     Object? isNotEqualTo,
//     Object? isLessThan,
//     Object? isLessThanOrEqualTo,
//     Object? isGreaterThan,
//     Object? isGreaterThanOrEqualTo,
//     Object? arrayContains,
//     List<Object?>? arrayContainsAny,
//     List<Object?>? whereIn,
//     List<Object?>? whereNotIn,
//     bool? isNull,
//   }) {
//     return _$ModelModelQuery(
//       reference.where(
//         fieldPath,
//         isEqualTo: isEqualTo,
//         isNotEqualTo: isNotEqualTo,
//         isLessThan: isLessThan,
//         isLessThanOrEqualTo: isLessThanOrEqualTo,
//         isGreaterThan: isGreaterThan,
//         isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
//         arrayContains: arrayContains,
//         arrayContainsAny: arrayContainsAny,
//         whereIn: whereIn,
//         whereNotIn: whereNotIn,
//         isNull: isNull,
//       ),
//       _collection,
//     );
//   }

//   ModelModelQuery whereDocumentId({
//     String? isEqualTo,
//     String? isNotEqualTo,
//     String? isLessThan,
//     String? isLessThanOrEqualTo,
//     String? isGreaterThan,
//     String? isGreaterThanOrEqualTo,
//     bool? isNull,
//     List<String>? whereIn,
//     List<String>? whereNotIn,
//   }) {
//     return _$ModelModelQuery(
//       reference.where(
//         FieldPath.documentId,
//         isEqualTo: isEqualTo,
//         isNotEqualTo: isNotEqualTo,
//         isLessThan: isLessThan,
//         isLessThanOrEqualTo: isLessThanOrEqualTo,
//         isGreaterThan: isGreaterThan,
//         isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
//         isNull: isNull,
//         whereIn: whereIn,
//         whereNotIn: whereNotIn,
//       ),
//       _collection,
//     );
//   }

//   ModelModelQuery whereName({
//     String? isEqualTo,
//     String? isNotEqualTo,
//     String? isLessThan,
//     String? isLessThanOrEqualTo,
//     String? isGreaterThan,
//     String? isGreaterThanOrEqualTo,
//     bool? isNull,
//     List<String?>? whereIn,
//     List<String?>? whereNotIn,
//   }) {
//     return _$ModelModelQuery(
//       reference.where(
//         _$ModelModelFieldMap["name"]!,
//         isEqualTo: isEqualTo,
//         isNotEqualTo: isNotEqualTo,
//         isLessThan: isLessThan,
//         isLessThanOrEqualTo: isLessThanOrEqualTo,
//         isGreaterThan: isGreaterThan,
//         isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
//         isNull: isNull,
//         whereIn: whereIn,
//         whereNotIn: whereNotIn,
//       ),
//       _collection,
//     );
//   }

//   ModelModelQuery whereId({
//     String? isEqualTo,
//     String? isNotEqualTo,
//     String? isLessThan,
//     String? isLessThanOrEqualTo,
//     String? isGreaterThan,
//     String? isGreaterThanOrEqualTo,
//     bool? isNull,
//     List<String?>? whereIn,
//     List<String?>? whereNotIn,
//   }) {
//     return _$ModelModelQuery(
//       reference.where(
//         _$ModelModelFieldMap["id"]!,
//         isEqualTo: isEqualTo,
//         isNotEqualTo: isNotEqualTo,
//         isLessThan: isLessThan,
//         isLessThanOrEqualTo: isLessThanOrEqualTo,
//         isGreaterThan: isGreaterThan,
//         isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
//         isNull: isNull,
//         whereIn: whereIn,
//         whereNotIn: whereNotIn,
//       ),
//       _collection,
//     );
//   }

//   ModelModelQuery whereBrandID({
//     String? isEqualTo,
//     String? isNotEqualTo,
//     String? isLessThan,
//     String? isLessThanOrEqualTo,
//     String? isGreaterThan,
//     String? isGreaterThanOrEqualTo,
//     bool? isNull,
//     List<String?>? whereIn,
//     List<String?>? whereNotIn,
//   }) {
//     return _$ModelModelQuery(
//       reference.where(
//         _$ModelModelFieldMap["brandID"]!,
//         isEqualTo: isEqualTo,
//         isNotEqualTo: isNotEqualTo,
//         isLessThan: isLessThan,
//         isLessThanOrEqualTo: isLessThanOrEqualTo,
//         isGreaterThan: isGreaterThan,
//         isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
//         isNull: isNull,
//         whereIn: whereIn,
//         whereNotIn: whereNotIn,
//       ),
//       _collection,
//     );
//   }

//   ModelModelQuery whereDocId({
//     String? isEqualTo,
//     String? isNotEqualTo,
//     String? isLessThan,
//     String? isLessThanOrEqualTo,
//     String? isGreaterThan,
//     String? isGreaterThanOrEqualTo,
//     bool? isNull,
//     List<String?>? whereIn,
//     List<String?>? whereNotIn,
//   }) {
//     return _$ModelModelQuery(
//       reference.where(
//         _$ModelModelFieldMap["docId"]!,
//         isEqualTo: isEqualTo,
//         isNotEqualTo: isNotEqualTo,
//         isLessThan: isLessThan,
//         isLessThanOrEqualTo: isLessThanOrEqualTo,
//         isGreaterThan: isGreaterThan,
//         isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
//         isNull: isNull,
//         whereIn: whereIn,
//         whereNotIn: whereNotIn,
//       ),
//       _collection,
//     );
//   }

//   ModelModelQuery whereProps({
//     List<Object?>? isEqualTo,
//     List<Object?>? isNotEqualTo,
//     List<Object?>? isLessThan,
//     List<Object?>? isLessThanOrEqualTo,
//     List<Object?>? isGreaterThan,
//     List<Object?>? isGreaterThanOrEqualTo,
//     bool? isNull,
//     Object? arrayContains,
//     List<Object?>? arrayContainsAny,
//   }) {
//     return _$ModelModelQuery(
//       reference.where(
//         _$ModelModelFieldMap["props"]!,
//         isEqualTo: isEqualTo,
//         isNotEqualTo: isNotEqualTo,
//         isLessThan: isLessThan,
//         isLessThanOrEqualTo: isLessThanOrEqualTo,
//         isGreaterThan: isGreaterThan,
//         isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
//         isNull: isNull,
//         arrayContains: arrayContains,
//         arrayContainsAny: arrayContainsAny,
//       ),
//       _collection,
//     );
//   }

//   ModelModelQuery whereStringify({
//     bool? isEqualTo,
//     bool? isNotEqualTo,
//     bool? isLessThan,
//     bool? isLessThanOrEqualTo,
//     bool? isGreaterThan,
//     bool? isGreaterThanOrEqualTo,
//     bool? isNull,
//     List<bool?>? whereIn,
//     List<bool?>? whereNotIn,
//   }) {
//     return _$ModelModelQuery(
//       reference.where(
//         _$ModelModelFieldMap["stringify"]!,
//         isEqualTo: isEqualTo,
//         isNotEqualTo: isNotEqualTo,
//         isLessThan: isLessThan,
//         isLessThanOrEqualTo: isLessThanOrEqualTo,
//         isGreaterThan: isGreaterThan,
//         isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
//         isNull: isNull,
//         whereIn: whereIn,
//         whereNotIn: whereNotIn,
//       ),
//       _collection,
//     );
//   }

//   ModelModelQuery whereHashCode({
//     int? isEqualTo,
//     int? isNotEqualTo,
//     int? isLessThan,
//     int? isLessThanOrEqualTo,
//     int? isGreaterThan,
//     int? isGreaterThanOrEqualTo,
//     bool? isNull,
//     List<int>? whereIn,
//     List<int>? whereNotIn,
//   }) {
//     return _$ModelModelQuery(
//       reference.where(
//         _$ModelModelFieldMap["hashCode"]!,
//         isEqualTo: isEqualTo,
//         isNotEqualTo: isNotEqualTo,
//         isLessThan: isLessThan,
//         isLessThanOrEqualTo: isLessThanOrEqualTo,
//         isGreaterThan: isGreaterThan,
//         isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
//         isNull: isNull,
//         whereIn: whereIn,
//         whereNotIn: whereNotIn,
//       ),
//       _collection,
//     );
//   }

//   ModelModelQuery orderByDocumentId({
//     bool descending = false,
//     Object? startAt = _sentinel,
//     Object? startAfter = _sentinel,
//     Object? endAt = _sentinel,
//     Object? endBefore = _sentinel,
//     ModelModelDocumentSnapshot? startAtDocument,
//     ModelModelDocumentSnapshot? endAtDocument,
//     ModelModelDocumentSnapshot? endBeforeDocument,
//     ModelModelDocumentSnapshot? startAfterDocument,
//   }) {
//     var query = reference.orderBy(FieldPath.documentId, descending: descending);

//     if (startAtDocument != null) {
//       query = query.startAtDocument(startAtDocument.snapshot);
//     }
//     if (startAfterDocument != null) {
//       query = query.startAfterDocument(startAfterDocument.snapshot);
//     }
//     if (endAtDocument != null) {
//       query = query.endAtDocument(endAtDocument.snapshot);
//     }
//     if (endBeforeDocument != null) {
//       query = query.endBeforeDocument(endBeforeDocument.snapshot);
//     }

//     if (startAt != _sentinel) {
//       query = query.startAt([startAt]);
//     }
//     if (startAfter != _sentinel) {
//       query = query.startAfter([startAfter]);
//     }
//     if (endAt != _sentinel) {
//       query = query.endAt([endAt]);
//     }
//     if (endBefore != _sentinel) {
//       query = query.endBefore([endBefore]);
//     }

//     return _$ModelModelQuery(query, _collection);
//   }

//   ModelModelQuery orderByName({
//     bool descending = false,
//     Object? startAt = _sentinel,
//     Object? startAfter = _sentinel,
//     Object? endAt = _sentinel,
//     Object? endBefore = _sentinel,
//     ModelModelDocumentSnapshot? startAtDocument,
//     ModelModelDocumentSnapshot? endAtDocument,
//     ModelModelDocumentSnapshot? endBeforeDocument,
//     ModelModelDocumentSnapshot? startAfterDocument,
//   }) {
//     var query = reference.orderBy(_$ModelModelFieldMap["name"]!,
//         descending: descending);

//     if (startAtDocument != null) {
//       query = query.startAtDocument(startAtDocument.snapshot);
//     }
//     if (startAfterDocument != null) {
//       query = query.startAfterDocument(startAfterDocument.snapshot);
//     }
//     if (endAtDocument != null) {
//       query = query.endAtDocument(endAtDocument.snapshot);
//     }
//     if (endBeforeDocument != null) {
//       query = query.endBeforeDocument(endBeforeDocument.snapshot);
//     }

//     if (startAt != _sentinel) {
//       query = query.startAt([startAt]);
//     }
//     if (startAfter != _sentinel) {
//       query = query.startAfter([startAfter]);
//     }
//     if (endAt != _sentinel) {
//       query = query.endAt([endAt]);
//     }
//     if (endBefore != _sentinel) {
//       query = query.endBefore([endBefore]);
//     }

//     return _$ModelModelQuery(query, _collection);
//   }

//   ModelModelQuery orderById({
//     bool descending = false,
//     Object? startAt = _sentinel,
//     Object? startAfter = _sentinel,
//     Object? endAt = _sentinel,
//     Object? endBefore = _sentinel,
//     ModelModelDocumentSnapshot? startAtDocument,
//     ModelModelDocumentSnapshot? endAtDocument,
//     ModelModelDocumentSnapshot? endBeforeDocument,
//     ModelModelDocumentSnapshot? startAfterDocument,
//   }) {
//     var query =
//         reference.orderBy(_$ModelModelFieldMap["id"]!, descending: descending);

//     if (startAtDocument != null) {
//       query = query.startAtDocument(startAtDocument.snapshot);
//     }
//     if (startAfterDocument != null) {
//       query = query.startAfterDocument(startAfterDocument.snapshot);
//     }
//     if (endAtDocument != null) {
//       query = query.endAtDocument(endAtDocument.snapshot);
//     }
//     if (endBeforeDocument != null) {
//       query = query.endBeforeDocument(endBeforeDocument.snapshot);
//     }

//     if (startAt != _sentinel) {
//       query = query.startAt([startAt]);
//     }
//     if (startAfter != _sentinel) {
//       query = query.startAfter([startAfter]);
//     }
//     if (endAt != _sentinel) {
//       query = query.endAt([endAt]);
//     }
//     if (endBefore != _sentinel) {
//       query = query.endBefore([endBefore]);
//     }

//     return _$ModelModelQuery(query, _collection);
//   }

//   ModelModelQuery orderByBrandID({
//     bool descending = false,
//     Object? startAt = _sentinel,
//     Object? startAfter = _sentinel,
//     Object? endAt = _sentinel,
//     Object? endBefore = _sentinel,
//     ModelModelDocumentSnapshot? startAtDocument,
//     ModelModelDocumentSnapshot? endAtDocument,
//     ModelModelDocumentSnapshot? endBeforeDocument,
//     ModelModelDocumentSnapshot? startAfterDocument,
//   }) {
//     var query = reference.orderBy(_$ModelModelFieldMap["brandID"]!,
//         descending: descending);

//     if (startAtDocument != null) {
//       query = query.startAtDocument(startAtDocument.snapshot);
//     }
//     if (startAfterDocument != null) {
//       query = query.startAfterDocument(startAfterDocument.snapshot);
//     }
//     if (endAtDocument != null) {
//       query = query.endAtDocument(endAtDocument.snapshot);
//     }
//     if (endBeforeDocument != null) {
//       query = query.endBeforeDocument(endBeforeDocument.snapshot);
//     }

//     if (startAt != _sentinel) {
//       query = query.startAt([startAt]);
//     }
//     if (startAfter != _sentinel) {
//       query = query.startAfter([startAfter]);
//     }
//     if (endAt != _sentinel) {
//       query = query.endAt([endAt]);
//     }
//     if (endBefore != _sentinel) {
//       query = query.endBefore([endBefore]);
//     }

//     return _$ModelModelQuery(query, _collection);
//   }

//   ModelModelQuery orderByDocId({
//     bool descending = false,
//     Object? startAt = _sentinel,
//     Object? startAfter = _sentinel,
//     Object? endAt = _sentinel,
//     Object? endBefore = _sentinel,
//     ModelModelDocumentSnapshot? startAtDocument,
//     ModelModelDocumentSnapshot? endAtDocument,
//     ModelModelDocumentSnapshot? endBeforeDocument,
//     ModelModelDocumentSnapshot? startAfterDocument,
//   }) {
//     var query = reference.orderBy(_$ModelModelFieldMap["docId"]!,
//         descending: descending);

//     if (startAtDocument != null) {
//       query = query.startAtDocument(startAtDocument.snapshot);
//     }
//     if (startAfterDocument != null) {
//       query = query.startAfterDocument(startAfterDocument.snapshot);
//     }
//     if (endAtDocument != null) {
//       query = query.endAtDocument(endAtDocument.snapshot);
//     }
//     if (endBeforeDocument != null) {
//       query = query.endBeforeDocument(endBeforeDocument.snapshot);
//     }

//     if (startAt != _sentinel) {
//       query = query.startAt([startAt]);
//     }
//     if (startAfter != _sentinel) {
//       query = query.startAfter([startAfter]);
//     }
//     if (endAt != _sentinel) {
//       query = query.endAt([endAt]);
//     }
//     if (endBefore != _sentinel) {
//       query = query.endBefore([endBefore]);
//     }

//     return _$ModelModelQuery(query, _collection);
//   }

//   ModelModelQuery orderByProps({
//     bool descending = false,
//     Object? startAt = _sentinel,
//     Object? startAfter = _sentinel,
//     Object? endAt = _sentinel,
//     Object? endBefore = _sentinel,
//     ModelModelDocumentSnapshot? startAtDocument,
//     ModelModelDocumentSnapshot? endAtDocument,
//     ModelModelDocumentSnapshot? endBeforeDocument,
//     ModelModelDocumentSnapshot? startAfterDocument,
//   }) {
//     var query = reference.orderBy(_$ModelModelFieldMap["props"]!,
//         descending: descending);

//     if (startAtDocument != null) {
//       query = query.startAtDocument(startAtDocument.snapshot);
//     }
//     if (startAfterDocument != null) {
//       query = query.startAfterDocument(startAfterDocument.snapshot);
//     }
//     if (endAtDocument != null) {
//       query = query.endAtDocument(endAtDocument.snapshot);
//     }
//     if (endBeforeDocument != null) {
//       query = query.endBeforeDocument(endBeforeDocument.snapshot);
//     }

//     if (startAt != _sentinel) {
//       query = query.startAt([startAt]);
//     }
//     if (startAfter != _sentinel) {
//       query = query.startAfter([startAfter]);
//     }
//     if (endAt != _sentinel) {
//       query = query.endAt([endAt]);
//     }
//     if (endBefore != _sentinel) {
//       query = query.endBefore([endBefore]);
//     }

//     return _$ModelModelQuery(query, _collection);
//   }

//   ModelModelQuery orderByStringify({
//     bool descending = false,
//     Object? startAt = _sentinel,
//     Object? startAfter = _sentinel,
//     Object? endAt = _sentinel,
//     Object? endBefore = _sentinel,
//     ModelModelDocumentSnapshot? startAtDocument,
//     ModelModelDocumentSnapshot? endAtDocument,
//     ModelModelDocumentSnapshot? endBeforeDocument,
//     ModelModelDocumentSnapshot? startAfterDocument,
//   }) {
//     var query = reference.orderBy(_$ModelModelFieldMap["stringify"]!,
//         descending: descending);

//     if (startAtDocument != null) {
//       query = query.startAtDocument(startAtDocument.snapshot);
//     }
//     if (startAfterDocument != null) {
//       query = query.startAfterDocument(startAfterDocument.snapshot);
//     }
//     if (endAtDocument != null) {
//       query = query.endAtDocument(endAtDocument.snapshot);
//     }
//     if (endBeforeDocument != null) {
//       query = query.endBeforeDocument(endBeforeDocument.snapshot);
//     }

//     if (startAt != _sentinel) {
//       query = query.startAt([startAt]);
//     }
//     if (startAfter != _sentinel) {
//       query = query.startAfter([startAfter]);
//     }
//     if (endAt != _sentinel) {
//       query = query.endAt([endAt]);
//     }
//     if (endBefore != _sentinel) {
//       query = query.endBefore([endBefore]);
//     }

//     return _$ModelModelQuery(query, _collection);
//   }

//   ModelModelQuery orderByHashCode({
//     bool descending = false,
//     Object? startAt = _sentinel,
//     Object? startAfter = _sentinel,
//     Object? endAt = _sentinel,
//     Object? endBefore = _sentinel,
//     ModelModelDocumentSnapshot? startAtDocument,
//     ModelModelDocumentSnapshot? endAtDocument,
//     ModelModelDocumentSnapshot? endBeforeDocument,
//     ModelModelDocumentSnapshot? startAfterDocument,
//   }) {
//     var query = reference.orderBy(_$ModelModelFieldMap["hashCode"]!,
//         descending: descending);

//     if (startAtDocument != null) {
//       query = query.startAtDocument(startAtDocument.snapshot);
//     }
//     if (startAfterDocument != null) {
//       query = query.startAfterDocument(startAfterDocument.snapshot);
//     }
//     if (endAtDocument != null) {
//       query = query.endAtDocument(endAtDocument.snapshot);
//     }
//     if (endBeforeDocument != null) {
//       query = query.endBeforeDocument(endBeforeDocument.snapshot);
//     }

//     if (startAt != _sentinel) {
//       query = query.startAt([startAt]);
//     }
//     if (startAfter != _sentinel) {
//       query = query.startAfter([startAfter]);
//     }
//     if (endAt != _sentinel) {
//       query = query.endAt([endAt]);
//     }
//     if (endBefore != _sentinel) {
//       query = query.endBefore([endBefore]);
//     }

//     return _$ModelModelQuery(query, _collection);
//   }

//   @override
//   bool operator ==(Object other) {
//     return other is _$ModelModelQuery &&
//         other.runtimeType == runtimeType &&
//         other.reference == reference;
//   }

//   @override
//   int get hashCode => Object.hash(runtimeType, reference);
// }

// class ModelModelQuerySnapshot extends FirestoreQuerySnapshot<ModelModel,
//     ModelModelQueryDocumentSnapshot> {
//   ModelModelQuerySnapshot._(
//     this.snapshot,
//     this.docs,
//     this.docChanges,
//   );

//   final QuerySnapshot<ModelModel> snapshot;

//   @override
//   final List<ModelModelQueryDocumentSnapshot> docs;

//   @override
//   final List<FirestoreDocumentChange<ModelModelDocumentSnapshot>> docChanges;
// }

// class ModelModelQueryDocumentSnapshot
//     extends FirestoreQueryDocumentSnapshot<ModelModel>
//     implements ModelModelDocumentSnapshot {
//   ModelModelQueryDocumentSnapshot._(this.snapshot, this.data);

//   @override
//   final QueryDocumentSnapshot<ModelModel> snapshot;

//   @override
//   ModelModelDocumentReference get reference {
//     return ModelModelDocumentReference(snapshot.reference);
//   }

//   @override
//   final ModelModel data;
// }

// // **************************************************************************
// // JsonSerializableGenerator
// // **************************************************************************

// ModelModel _$ModelModelFromJson(Map<String, dynamic> json) => ModelModel(
//       name: json['name'] as String?,
//       id: json['id'] as String?,
//       brandID: json['brandID'] as String?,
//       docId: json['docId'] as String?,
//       brand: json['brand'] == null
//           ? null
//           : BrandModel.fromJson(json['brand'] as String),
//     );

// Map<String, dynamic> _$ModelModelToJson(ModelModel instance) =>
//     <String, dynamic>{
//       'name': instance.name,
//       'id': instance.id,
//       'brandID': instance.brandID,
//       'docId': instance.docId,
//       'brand': instance.brand,
//     };

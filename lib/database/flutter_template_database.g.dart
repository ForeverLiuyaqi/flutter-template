// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flutter_template_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class DbTodo extends DataClass implements Insertable<DbTodo> {
  final int id;
  final String title;
  final bool completed;
  DbTodo({@required this.id, @required this.title, @required this.completed});
  factory DbTodo.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final boolType = db.typeSystem.forDartType<bool>();
    return DbTodo(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      title:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}title']),
      completed:
          boolType.mapFromDatabaseResponse(data['${effectivePrefix}completed']),
    );
  }
  factory DbTodo.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return DbTodo(
      id: serializer.fromJson<int>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      completed: serializer.fromJson<bool>(json['completed']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'title': serializer.toJson<String>(title),
      'completed': serializer.toJson<bool>(completed),
    };
  }

  @override
  DbTodoTableCompanion createCompanion(bool nullToAbsent) {
    return DbTodoTableCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      title:
          title == null && nullToAbsent ? const Value.absent() : Value(title),
      completed: completed == null && nullToAbsent
          ? const Value.absent()
          : Value(completed),
    );
  }

  DbTodo copyWith({int id, String title, bool completed}) => DbTodo(
        id: id ?? this.id,
        title: title ?? this.title,
        completed: completed ?? this.completed,
      );
  @override
  String toString() {
    return (StringBuffer('DbTodo(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('completed: $completed')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      $mrjf($mrjc(id.hashCode, $mrjc(title.hashCode, completed.hashCode)));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is DbTodo &&
          other.id == this.id &&
          other.title == this.title &&
          other.completed == this.completed);
}

class DbTodoTableCompanion extends UpdateCompanion<DbTodo> {
  final Value<int> id;
  final Value<String> title;
  final Value<bool> completed;
  const DbTodoTableCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.completed = const Value.absent(),
  });
  DbTodoTableCompanion.insert({
    this.id = const Value.absent(),
    @required String title,
    @required bool completed,
  })  : title = Value(title),
        completed = Value(completed);
  DbTodoTableCompanion copyWith(
      {Value<int> id, Value<String> title, Value<bool> completed}) {
    return DbTodoTableCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      completed: completed ?? this.completed,
    );
  }
}

class $DbTodoTableTable extends DbTodoTable
    with TableInfo<$DbTodoTableTable, DbTodo> {
  final GeneratedDatabase _db;
  final String _alias;
  $DbTodoTableTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _titleMeta = const VerificationMeta('title');
  GeneratedTextColumn _title;
  @override
  GeneratedTextColumn get title => _title ??= _constructTitle();
  GeneratedTextColumn _constructTitle() {
    return GeneratedTextColumn(
      'title',
      $tableName,
      false,
    );
  }

  final VerificationMeta _completedMeta = const VerificationMeta('completed');
  GeneratedBoolColumn _completed;
  @override
  GeneratedBoolColumn get completed => _completed ??= _constructCompleted();
  GeneratedBoolColumn _constructCompleted() {
    return GeneratedBoolColumn(
      'completed',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [id, title, completed];
  @override
  $DbTodoTableTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'db_todo_table';
  @override
  final String actualTableName = 'db_todo_table';
  @override
  VerificationContext validateIntegrity(DbTodoTableCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.id.present) {
      context.handle(_idMeta, id.isAcceptableValue(d.id.value, _idMeta));
    }
    if (d.title.present) {
      context.handle(
          _titleMeta, title.isAcceptableValue(d.title.value, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (d.completed.present) {
      context.handle(_completedMeta,
          completed.isAcceptableValue(d.completed.value, _completedMeta));
    } else if (isInserting) {
      context.missing(_completedMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DbTodo map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return DbTodo.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(DbTodoTableCompanion d) {
    final map = <String, Variable>{};
    if (d.id.present) {
      map['id'] = Variable<int, IntType>(d.id.value);
    }
    if (d.title.present) {
      map['title'] = Variable<String, StringType>(d.title.value);
    }
    if (d.completed.present) {
      map['completed'] = Variable<bool, BoolType>(d.completed.value);
    }
    return map;
  }

  @override
  $DbTodoTableTable createAlias(String alias) {
    return $DbTodoTableTable(_db, alias);
  }
}

abstract class _$FlutterTemplateDatabase extends GeneratedDatabase {
  _$FlutterTemplateDatabase(QueryExecutor e)
      : super(SqlTypeSystem.defaultInstance, e);
  _$FlutterTemplateDatabase.connect(DatabaseConnection c) : super.connect(c);
  $DbTodoTableTable _dbTodoTable;
  $DbTodoTableTable get dbTodoTable => _dbTodoTable ??= $DbTodoTableTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [dbTodoTable];
}

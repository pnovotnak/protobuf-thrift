namespace go test.test.test
namespace py test.test.test

enum Status {
    StatusUnknown = 0
    StatusUnreviewed = 1
    StatusOnline = 2
    StatusRejected = 3
    StatusOffline = 4
}
enum OtherEnum {
    OtherEnumUnknown = 0
    Unreviewed = 1
    Online = 2
    Rejected = 3
    Offline = 4
}
struct RespOfTestGetApi {
    1: i32 Code
    2: string Message
}
struct ReqOfTestPostApi {
    1: i64 A
    2: string B
}
struct RespOfTestPostApi {
    1: i32 Code
    2: string Message
}
struct Config {
    1: i64 Id
    2: optional i32 Tag
    3: optional list<i32> TypeList
    4: bool Boolean
    5: Status Status
    6: map<i64,string> FailMap
    7: double Fl
    8: double Db
    9: binary Bs
    10: TimeRange Nested
    11: list<TimeRange> NestedTypeList
    12: map<string,TimeRange> NestedTypeMap
}
struct TimeRange {
    1: i64 Start
    2: i64 End
}
struct ReqOfTestGetApi {
    1: i64 A
    2: string B
}
struct ReqOfTestOther {
    1: i64 A
    2: string B
}
struct RespOfTestOther {
    1: i64 A
    2: string B
}
service APIs {
    RespOfTestGetApi TestGetApi (1: ReqOfTestGetApi Req)
    RespOfTestPostApi TestPostApi (1: ReqOfTestPostApi Req)
    RespOfTestOther TestOther (1: ReqOfTestOther Req)
}

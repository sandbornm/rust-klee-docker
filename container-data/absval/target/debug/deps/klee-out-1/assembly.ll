; ModuleID = '/home/ubuntu/container-data/absval/target/debug/deps/absval-a99700d653c39e61.ll'
source_filename = "absval.8ktvm719-cgu.0"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"panic::PanicInfo<'a>::internal_constructor::NoPayload" = type {}
%"core::panic::Location" = type { [0 x i64], { [0 x i8]*, i64 }, [0 x i32], i32, [0 x i32], i32, [0 x i32] }
%"klee_sys::CStr" = type { [0 x i8], [0 x i8] }
%"fmt::Arguments" = type { [0 x i64], { [0 x { [0 x i8]*, i64 }]*, i64 }, [0 x i64], { i64*, i64 }, [0 x i64], { [0 x { i8*, i64* }]*, i64 }, [0 x i64] }
%"panic::PanicInfo" = type { [0 x i64], { {}*, [3 x i64]* }, [0 x i64], i64*, [0 x i64], %"core::panic::Location"*, [0 x i64] }

@alloc3 = private unnamed_addr constant <{ [75 x i8] }> <{ [75 x i8] c"/rustc/2fd73fabe469357a12c2c974c140f67e7cdd76d0/library/core/src/num/mod.rs" }>, align 1
@alloc4 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [75 x i8] }>, <{ [75 x i8] }>* @alloc3, i32 0, i32 0, i32 0), [16 x i8] c"K\00\00\00\00\00\00\00a\00\00\00\05\00\00\00" }>, align 8
@str.0 = internal constant [31 x i8] c"attempt to negate with overflow"
@alloc5 = private unnamed_addr constant <{ [30 x i8] }> <{ [30 x i8] c"assertion failed: a.abs() >= 0" }>, align 1
@alloc6 = private unnamed_addr constant <{ [11 x i8] }> <{ [11 x i8] c"src/main.rs" }>, align 1
@alloc7 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [11 x i8] }>, <{ [11 x i8] }>* @alloc6, i32 0, i32 0, i32 0), [16 x i8] c"\0B\00\00\00\00\00\00\00\09\00\00\00\05\00\00\00" }>, align 8
@alloc8 = private unnamed_addr constant <{ [2 x i8] }> <{ [2 x i8] c"x\00" }>, align 1
@anon.965c706604096d42e5b155eaa3c30edf.12 = private unnamed_addr constant <{ [0 x i8] }> zeroinitializer, align 8
@anon.965c706604096d42e5b155eaa3c30edf.177 = private unnamed_addr constant { void (%"panic::PanicInfo<'a>::internal_constructor::NoPayload"*)*, i64, i64, i64 (%"panic::PanicInfo<'a>::internal_constructor::NoPayload"*)* } { void (%"panic::PanicInfo<'a>::internal_constructor::NoPayload"*)* bitcast (void ({ i8*, i8* }**)* @"_ZN4core3ptr102drop_in_place$LT$$RF$core..iter..adapters..copied..Copied$LT$core..slice..iter..Iter$LT$u8$GT$$GT$$GT$17h5913dccf4681891cE" to void (%"panic::PanicInfo<'a>::internal_constructor::NoPayload"*)*), i64 0, i64 1, i64 (%"panic::PanicInfo<'a>::internal_constructor::NoPayload"*)* @"_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h108f63b8120e9c9cE" }, align 8

; Function Attrs: inlinehint norecurse nounwind nonlazybind readnone
define internal zeroext i1 @"_ZN4core3num21_$LT$impl$u20$i16$GT$11is_negative17hf3c4dc1c2e854810E"(i16 %self) unnamed_addr #0 !dbg !385 {
start:
  %self.dbg.spill = alloca i16, align 2
  store i16 %self, i16* %self.dbg.spill, align 2
  call void @llvm.dbg.declare(metadata i16* %self.dbg.spill, metadata !394, metadata !DIExpression()), !dbg !395
  %0 = icmp slt i16 %self, 0, !dbg !396
  ret i1 %0, !dbg !397
}

; Function Attrs: inlinehint nounwind nonlazybind
define internal i16 @"_ZN4core3num21_$LT$impl$u20$i16$GT$3abs17h6dab7a3cef96a154E"(i16 %self) unnamed_addr #1 !dbg !398 {
start:
  %self.dbg.spill = alloca i16, align 2
  %0 = alloca i16, align 2
  store i16 %self, i16* %self.dbg.spill, align 2
  call void @llvm.dbg.declare(metadata i16* %self.dbg.spill, metadata !402, metadata !DIExpression()), !dbg !403
  %_2 = call zeroext i1 @"_ZN4core3num21_$LT$impl$u20$i16$GT$11is_negative17hf3c4dc1c2e854810E"(i16 %self), !dbg !404
  br i1 %_2, label %bb2, label %bb3, !dbg !405

bb2:                                              ; preds = %start
  %_5 = icmp eq i16 %self, -32768, !dbg !406
  br i1 %_5, label %panic, label %bb4, !dbg !406

bb3:                                              ; preds = %start
  store i16 %self, i16* %0, align 2, !dbg !407
  br label %bb5, !dbg !405

bb4:                                              ; preds = %bb2
  %1 = sub i16 0, %self, !dbg !406
  store i16 %1, i16* %0, align 2, !dbg !406
  br label %bb5, !dbg !405

bb5:                                              ; preds = %bb4, %bb3
  %2 = load i16, i16* %0, align 2, !dbg !408
  ret i16 %2, !dbg !408

panic:                                            ; preds = %bb2
  call void @_ZN4core9panicking5panic17h07405d6be4bce887E([0 x i8]* noalias nonnull readonly align 1 bitcast ([31 x i8]* @str.0 to [0 x i8]*), i64 31, %"core::panic::Location"* noalias readonly align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8] }>* @alloc4 to %"core::panic::Location"*)), !dbg !406
  unreachable, !dbg !406
}

; Function Attrs: inlinehint norecurse nounwind nonlazybind readnone
define internal { %"klee_sys::CStr"*, i64 } @_ZN9cstr_core4CStr29from_bytes_with_nul_unchecked17h09afc92fc7a9ebf2E([0 x i8]* noalias nonnull readonly align 1 %bytes.0, i64 %bytes.1) unnamed_addr #0 !dbg !409 {
start:
  %bytes.dbg.spill = alloca { [0 x i8]*, i64 }, align 8
  %0 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %bytes.dbg.spill, i32 0, i32 0
  store [0 x i8]* %bytes.0, [0 x i8]** %0, align 8
  %1 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %bytes.dbg.spill, i32 0, i32 1
  store i64 %bytes.1, i64* %1, align 8
  call void @llvm.dbg.declare(metadata { [0 x i8]*, i64 }* %bytes.dbg.spill, metadata !425, metadata !DIExpression()), !dbg !426
  %_2.0 = bitcast [0 x i8]* %bytes.0 to %"klee_sys::CStr"*, !dbg !427
  %2 = insertvalue { %"klee_sys::CStr"*, i64 } undef, %"klee_sys::CStr"* %_2.0, 0, !dbg !428
  %3 = insertvalue { %"klee_sys::CStr"*, i64 } %2, i64 %bytes.1, 1, !dbg !428
  ret { %"klee_sys::CStr"*, i64 } %3, !dbg !428
}

; Function Attrs: inlinehint norecurse nounwind nonlazybind readnone
define internal nonnull i8* @_ZN9cstr_core4CStr6as_ptr17hc7f21281fcf441e7E(%"klee_sys::CStr"* noalias nonnull readonly align 1 %self.0, i64 %self.1) unnamed_addr #0 !dbg !429 {
start:
  %self.dbg.spill = alloca { %"klee_sys::CStr"*, i64 }, align 8
  %0 = getelementptr inbounds { %"klee_sys::CStr"*, i64 }, { %"klee_sys::CStr"*, i64 }* %self.dbg.spill, i32 0, i32 0
  store %"klee_sys::CStr"* %self.0, %"klee_sys::CStr"** %0, align 8
  %1 = getelementptr inbounds { %"klee_sys::CStr"*, i64 }, { %"klee_sys::CStr"*, i64 }* %self.dbg.spill, i32 0, i32 1
  store i64 %self.1, i64* %1, align 8
  call void @llvm.dbg.declare(metadata { %"klee_sys::CStr"*, i64 }* %self.dbg.spill, metadata !434, metadata !DIExpression()), !dbg !435
  %_2.0 = bitcast %"klee_sys::CStr"* %self.0 to [0 x i8]*, !dbg !436
  %2 = call i8* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17h3e32bddb1561f66bE"([0 x i8]* noalias nonnull readonly align 1 %_2.0, i64 %self.1), !dbg !436
  ret i8* %2, !dbg !437
}

; Function Attrs: nounwind nonlazybind
define internal void @_ZN6absval13absolute_test17hadc50189d3f132bcE(i16 %a) unnamed_addr #2 !dbg !438 {
start:
  %a.dbg.spill = alloca i16, align 2
  store i16 %a, i16* %a.dbg.spill, align 2
  call void @llvm.dbg.declare(metadata i16* %a.dbg.spill, metadata !444, metadata !DIExpression()), !dbg !445
  %_4 = call i16 @"_ZN4core3num21_$LT$impl$u20$i16$GT$3abs17h6dab7a3cef96a154E"(i16 %a), !dbg !446
  %_3 = icmp sge i16 %_4, 0, !dbg !446
  %_2 = xor i1 %_3, true, !dbg !447
  br i1 %_2, label %bb2, label %bb3, !dbg !447

bb2:                                              ; preds = %start
  call void @_ZN4core9panicking5panic17h07405d6be4bce887E([0 x i8]* noalias nonnull readonly align 1 bitcast (<{ [30 x i8] }>* @alloc5 to [0 x i8]*), i64 30, %"core::panic::Location"* noalias readonly align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8] }>* @alloc7 to %"core::panic::Location"*)), !dbg !447
  unreachable, !dbg !447

bb3:                                              ; preds = %start
  ret void, !dbg !448
}

; Function Attrs: nounwind nonlazybind
define void @main() unnamed_addr #2 !dbg !449 {
start:
  %name.dbg.spill.i = alloca { %"klee_sys::CStr"*, i64 }, align 8
  %t.dbg.spill.i = alloca i16*, align 8
  %0 = alloca { [0 x i8]*, i64 }, align 8
  %self.dbg.spill.i = alloca { [0 x i8]*, i64 }, align 8
  %x = alloca i16, align 2
  call void @llvm.dbg.declare(metadata i16* %x, metadata !453, metadata !DIExpression()), !dbg !455
  store i16 6, i16* %x, align 2, !dbg !456
  %1 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %self.dbg.spill.i, i32 0, i32 0
  store [0 x i8]* bitcast (<{ [2 x i8] }>* @alloc8 to [0 x i8]*), [0 x i8]** %1, align 8, !noalias !457
  %2 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %self.dbg.spill.i, i32 0, i32 1
  store i64 2, i64* %2, align 8, !noalias !457
  call void @llvm.dbg.declare(metadata { [0 x i8]*, i64 }* %self.dbg.spill.i, metadata !460, metadata !DIExpression()), !dbg !472
  %3 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 0, !dbg !474
  store [0 x i8]* bitcast (<{ [2 x i8] }>* @alloc8 to [0 x i8]*), [0 x i8]** %3, align 8, !dbg !474, !noalias !457
  %4 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 1, !dbg !474
  store i64 2, i64* %4, align 8, !dbg !474, !noalias !457
  %5 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 0, !dbg !474
  %6 = load [0 x i8]*, [0 x i8]** %5, align 8, !dbg !474, !noalias !457, !nonnull !6
  %7 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 1, !dbg !474
  %8 = load i64, i64* %7, align 8, !dbg !474, !noalias !457
  %9 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %6, 0, !dbg !475
  %10 = insertvalue { [0 x i8]*, i64 } %9, i64 %8, 1, !dbg !475
  %_9.0 = extractvalue { [0 x i8]*, i64 } %10, 0, !dbg !476
  %_9.1 = extractvalue { [0 x i8]*, i64 } %10, 1, !dbg !476
  %11 = call { %"klee_sys::CStr"*, i64 } @_ZN9cstr_core4CStr29from_bytes_with_nul_unchecked17h09afc92fc7a9ebf2E([0 x i8]* noalias nonnull readonly align 1 %_9.0, i64 %_9.1), !dbg !476
  %_7.0 = extractvalue { %"klee_sys::CStr"*, i64 } %11, 0, !dbg !476
  %_7.1 = extractvalue { %"klee_sys::CStr"*, i64 } %11, 1, !dbg !476
  store i16* %x, i16** %t.dbg.spill.i, align 8, !noalias !477
  call void @llvm.dbg.declare(metadata i16** %t.dbg.spill.i, metadata !480, metadata !DIExpression()) #11, !dbg !492
  %12 = getelementptr inbounds { %"klee_sys::CStr"*, i64 }, { %"klee_sys::CStr"*, i64 }* %name.dbg.spill.i, i32 0, i32 0
  store %"klee_sys::CStr"* %_7.0, %"klee_sys::CStr"** %12, align 8, !noalias !477
  %13 = getelementptr inbounds { %"klee_sys::CStr"*, i64 }, { %"klee_sys::CStr"*, i64 }* %name.dbg.spill.i, i32 0, i32 1
  store i64 %_7.1, i64* %13, align 8, !noalias !477
  call void @llvm.dbg.declare(metadata { %"klee_sys::CStr"*, i64 }* %name.dbg.spill.i, metadata !489, metadata !DIExpression()) #11, !dbg !494
  %_3.i = bitcast i16* %x to i8*, !dbg !495
  %_6.i = call i8* @_ZN9cstr_core4CStr6as_ptr17hc7f21281fcf441e7E(%"klee_sys::CStr"* noalias nonnull readonly align 1 %_7.0, i64 %_7.1) #11, !dbg !496
  call void @klee_make_symbolic(i8* %_3.i, i64 2, i8* %_6.i) #11, !dbg !497
  %_12 = load i16, i16* %x, align 2, !dbg !498
  call void @_ZN6absval13absolute_test17hadc50189d3f132bcE(i16 %_12), !dbg !499
  ret void, !dbg !500
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.expect.i1(i1, i1) #4

; Function Attrs: nounwind nonlazybind
declare void @klee_make_symbolic(i8*, i64, i8*) unnamed_addr #2

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
define internal void @_ZN4core9panicking5panic17h07405d6be4bce887E([0 x i8]* noalias nonnull readonly align 1 %0, i64 %1, %"core::panic::Location"* noalias readonly align 8 dereferenceable(24) %2) unnamed_addr #5 !dbg !501 {
  %4 = alloca [1 x { [0 x i8]*, i64 }], align 8
  %5 = alloca %"fmt::Arguments", align 8
  %6 = bitcast %"fmt::Arguments"* %5 to i8*, !dbg !505
  %7 = bitcast [1 x { [0 x i8]*, i64 }]* %4 to i8*, !dbg !506
  %8 = getelementptr inbounds [1 x { [0 x i8]*, i64 }], [1 x { [0 x i8]*, i64 }]* %4, i64 0, i64 0, i32 0, !dbg !506
  store [0 x i8]* %0, [0 x i8]** %8, align 8, !dbg !506
  %9 = getelementptr inbounds [1 x { [0 x i8]*, i64 }], [1 x { [0 x i8]*, i64 }]* %4, i64 0, i64 0, i32 1, !dbg !506
  store i64 %1, i64* %9, align 8, !dbg !506
  %10 = bitcast %"fmt::Arguments"* %5 to [1 x { [0 x i8]*, i64 }]**, !dbg !507
  store [1 x { [0 x i8]*, i64 }]* %4, [1 x { [0 x i8]*, i64 }]** %10, align 8, !dbg !507, !alias.scope !512, !noalias !515
  %11 = getelementptr inbounds %"fmt::Arguments", %"fmt::Arguments"* %5, i64 0, i32 1, i32 1, !dbg !507
  store i64 1, i64* %11, align 8, !dbg !507, !alias.scope !512, !noalias !515
  %12 = getelementptr inbounds %"fmt::Arguments", %"fmt::Arguments"* %5, i64 0, i32 3, i32 0, !dbg !507
  store i64* null, i64** %12, align 8, !dbg !507, !alias.scope !512, !noalias !515
  %13 = getelementptr inbounds %"fmt::Arguments", %"fmt::Arguments"* %5, i64 0, i32 5, i32 0, !dbg !507
  store [0 x { i8*, i64* }]* bitcast (<{ [0 x i8] }>* @anon.965c706604096d42e5b155eaa3c30edf.12 to [0 x { i8*, i64* }]*), [0 x { i8*, i64* }]** %13, align 8, !dbg !507, !alias.scope !512, !noalias !515
  %14 = getelementptr inbounds %"fmt::Arguments", %"fmt::Arguments"* %5, i64 0, i32 5, i32 1, !dbg !507
  store i64 0, i64* %14, align 8, !dbg !507, !alias.scope !512, !noalias !515
  call void @_ZN4core9panicking9panic_fmt17hcd56f7f635f62c74E(%"fmt::Arguments"* noalias nocapture nonnull dereferenceable(48) %5, %"core::panic::Location"* noalias nonnull readonly align 8 dereferenceable(24) %2), !dbg !518
  unreachable, !dbg !518
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #6

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
define internal void @_ZN4core9panicking9panic_fmt17hcd56f7f635f62c74E(%"fmt::Arguments"* noalias nocapture dereferenceable(48) %0, %"core::panic::Location"* noalias readonly align 8 dereferenceable(24) %1) unnamed_addr #5 !dbg !519 {
  %3 = alloca %"panic::PanicInfo", align 8
  %4 = bitcast %"panic::PanicInfo"* %3 to i8*, !dbg !520
  %5 = getelementptr inbounds %"fmt::Arguments", %"fmt::Arguments"* %0, i64 0, i32 0, i64 0, !dbg !521
  %6 = bitcast %"panic::PanicInfo"* %3 to {}**, !dbg !522
  store {}* bitcast (<{ [0 x i8] }>* @anon.965c706604096d42e5b155eaa3c30edf.12 to {}*), {}** %6, align 8, !dbg !522, !alias.scope !528, !noalias !531
  %7 = getelementptr inbounds %"panic::PanicInfo", %"panic::PanicInfo"* %3, i64 0, i32 1, i32 1, !dbg !522
  store [3 x i64]* bitcast ({ void (%"panic::PanicInfo<'a>::internal_constructor::NoPayload"*)*, i64, i64, i64 (%"panic::PanicInfo<'a>::internal_constructor::NoPayload"*)* }* @anon.965c706604096d42e5b155eaa3c30edf.177 to [3 x i64]*), [3 x i64]** %7, align 8, !dbg !522, !alias.scope !528, !noalias !531
  %8 = getelementptr inbounds %"panic::PanicInfo", %"panic::PanicInfo"* %3, i64 0, i32 3, !dbg !522
  store i64* %5, i64** %8, align 8, !dbg !522, !alias.scope !528, !noalias !531
  %9 = getelementptr inbounds %"panic::PanicInfo", %"panic::PanicInfo"* %3, i64 0, i32 5, !dbg !522
  store %"core::panic::Location"* %1, %"core::panic::Location"** %9, align 8, !dbg !522, !alias.scope !528, !noalias !531
  call void @rust_begin_unwind(%"panic::PanicInfo"* noalias nonnull readonly align 8 dereferenceable(32) %3), !dbg !534
  unreachable, !dbg !534
}

; Function Attrs: inlinehint norecurse nounwind nonlazybind readnone uwtable
define internal void @"_ZN4core3ptr102drop_in_place$LT$$RF$core..iter..adapters..copied..Copied$LT$core..slice..iter..Iter$LT$u8$GT$$GT$$GT$17h5913dccf4681891cE"({ i8*, i8* }** nocapture %0) unnamed_addr #7 !dbg !535 {
  ret void, !dbg !538
}

; Function Attrs: norecurse nounwind nonlazybind readnone uwtable
define internal i64 @"_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h108f63b8120e9c9cE"(%"panic::PanicInfo<'a>::internal_constructor::NoPayload"* noalias nocapture nonnull readonly align 1 %0) unnamed_addr #8 !dbg !539 {
  ret i64 6876091270197435960, !dbg !543
}

; Function Attrs: inlinehint norecurse nounwind nonlazybind readnone
define internal nonnull i8* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17h3e32bddb1561f66bE"([0 x i8]* noalias nonnull readonly align 1 %0, i64 %1) unnamed_addr #0 !dbg !544 {
  %3 = alloca { [0 x i8]*, i64 }, align 8
  %4 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %3, i32 0, i32 0
  store [0 x i8]* %0, [0 x i8]** %4, align 8
  %5 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %3, i32 0, i32 1
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata { [0 x i8]*, i64 }* %3, metadata !555, metadata !DIExpression()), !dbg !558
  %6 = bitcast [0 x i8]* %0 to i8*, !dbg !559
  ret i8* %6, !dbg !560
}

; Function Attrs: noinline noreturn nounwind nonlazybind
define internal void @rust_begin_unwind(%"panic::PanicInfo"* noalias readonly align 8 dereferenceable(32) %0) unnamed_addr #9 !dbg !561 {
  %2 = alloca %"panic::PanicInfo"*, align 8
  store %"panic::PanicInfo"* %0, %"panic::PanicInfo"** %2, align 8
  call void @llvm.dbg.declare(metadata %"panic::PanicInfo"** %2, metadata !696, metadata !DIExpression()), !dbg !697
  call void @abort(), !dbg !698
  unreachable, !dbg !698
}

; Function Attrs: alwaysinline noreturn nounwind nonlazybind
declare void @abort() unnamed_addr #10

attributes #0 = { inlinehint norecurse nounwind nonlazybind readnone "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #1 = { inlinehint nounwind nonlazybind "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #2 = { nounwind nonlazybind "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { nounwind readnone willreturn }
attributes #5 = { cold noinline noreturn nounwind nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #6 = { argmemonly nounwind willreturn }
attributes #7 = { inlinehint norecurse nounwind nonlazybind readnone uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #8 = { norecurse nounwind nonlazybind readnone uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #9 = { noinline noreturn nounwind nonlazybind "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #10 = { alwaysinline noreturn nounwind nonlazybind "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.dbg.cu = !{!4, !7, !9, !59, !61, !63, !380, !383}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 2, !"RtLibUseGOT", i32 1}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = distinct !DICompileUnit(language: DW_LANG_Rust, file: !5, producer: "clang LLVM (rustc version 1.51.0 (2fd73fabe 2021-03-23))", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !6)
!5 = !DIFile(filename: "src/main.rs", directory: "/home/ubuntu/container-data/absval/target/debug/deps")
!6 = !{}
!7 = distinct !DICompileUnit(language: DW_LANG_Rust, file: !8, producer: "clang LLVM (rustc version 1.51.0 (2fd73fabe 2021-03-23))", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !6)
!8 = !DIFile(filename: "library/core/src/lib.rs", directory: "/checkout/obj/build/x86_64-unknown-linux-gnu/stage1-std/x86_64-unknown-linux-gnu/release/deps")
!9 = distinct !DICompileUnit(language: DW_LANG_Rust, file: !10, producer: "clang LLVM (rustc version 1.51.0 (2fd73fabe 2021-03-23))", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !11, globals: !36)
!10 = !DIFile(filename: "/home/ubuntu/.cargo/registry/src/github.com-1ecc6299db9ec823/cstr_core-0.2.5/src/lib.rs", directory: "/home/ubuntu/container-data/absval/target/debug/deps")
!11 = !{!12, !20, !29}
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "Result", scope: !14, file: !13, baseType: !16, size: 8, align: 8, flags: DIFlagEnumClass, elements: !17)
!13 = !DIFile(filename: "<unknown>", directory: "")
!14 = !DINamespace(name: "result", scope: !15)
!15 = !DINamespace(name: "core", scope: null)
!16 = !DIBasicType(name: "u8", size: 8, encoding: DW_ATE_unsigned)
!17 = !{!18, !19}
!18 = !DIEnumerator(name: "Ok", value: 0)
!19 = !DIEnumerator(name: "Err", value: 1)
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "Alignment", scope: !21, file: !13, baseType: !16, size: 8, align: 8, flags: DIFlagEnumClass, elements: !24)
!21 = !DINamespace(name: "v1", scope: !22)
!22 = !DINamespace(name: "rt", scope: !23)
!23 = !DINamespace(name: "fmt", scope: !15)
!24 = !{!25, !26, !27, !28}
!25 = !DIEnumerator(name: "Left", value: 0)
!26 = !DIEnumerator(name: "Right", value: 1)
!27 = !DIEnumerator(name: "Center", value: 2)
!28 = !DIEnumerator(name: "Unknown", value: 3)
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "Ordering", scope: !30, file: !13, baseType: !31, size: 8, align: 8, flags: DIFlagEnumClass, elements: !32)
!30 = !DINamespace(name: "cmp", scope: !15)
!31 = !DIBasicType(name: "i8", size: 8, encoding: DW_ATE_signed)
!32 = !{!33, !34, !35}
!33 = !DIEnumerator(name: "Less", value: -1)
!34 = !DIEnumerator(name: "Equal", value: 0)
!35 = !DIEnumerator(name: "Greater", value: 1)
!36 = !{!37, !55}
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(name: "vtable", scope: null, file: !13, type: !39, isLocal: true, isDefinition: true)
!39 = !DICompositeType(tag: DW_TAG_structure_type, name: "vtable", file: !13, align: 64, flags: DIFlagArtificial, elements: !6, vtableHolder: !40, identifier: "vtable")
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&cstr_core::FromBytesWithNulErrorKind", baseType: !41, size: 64, align: 64, dwarfAddressSpace: 0)
!41 = !DICompositeType(tag: DW_TAG_structure_type, name: "FromBytesWithNulErrorKind", scope: !42, file: !13, size: 128, align: 64, elements: !43, identifier: "b3a593a4f6620af0228c5feb909fb0a2")
!42 = !DINamespace(name: "cstr_core", scope: null)
!43 = !{!44}
!44 = !DICompositeType(tag: DW_TAG_variant_part, scope: !42, file: !13, size: 128, align: 64, elements: !45, templateParams: !6, identifier: "b3a593a4f6620af0228c5feb909fb0a2_variant_part", discriminator: !53)
!45 = !{!46, !51}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "InteriorNul", scope: !44, file: !13, baseType: !47, size: 128, align: 64, extraData: i64 0)
!47 = !DICompositeType(tag: DW_TAG_structure_type, name: "InteriorNul", scope: !41, file: !13, size: 128, align: 64, elements: !48, templateParams: !6, identifier: "b3a593a4f6620af0228c5feb909fb0a2::InteriorNul")
!48 = !{!49}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !47, file: !13, baseType: !50, size: 64, align: 64, offset: 64)
!50 = !DIBasicType(name: "usize", size: 64, encoding: DW_ATE_unsigned)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "NotNulTerminated", scope: !44, file: !13, baseType: !52, size: 128, align: 64, extraData: i64 1)
!52 = !DICompositeType(tag: DW_TAG_structure_type, name: "NotNulTerminated", scope: !41, file: !13, size: 128, align: 64, elements: !6, templateParams: !6, identifier: "b3a593a4f6620af0228c5feb909fb0a2::NotNulTerminated")
!53 = !DIDerivedType(tag: DW_TAG_member, scope: !42, file: !13, baseType: !54, size: 64, align: 64, flags: DIFlagArtificial)
!54 = !DIBasicType(name: "u64", size: 64, encoding: DW_ATE_unsigned)
!55 = !DIGlobalVariableExpression(var: !56, expr: !DIExpression())
!56 = distinct !DIGlobalVariable(name: "vtable", scope: null, file: !13, type: !57, isLocal: true, isDefinition: true)
!57 = !DICompositeType(tag: DW_TAG_structure_type, name: "vtable", file: !13, align: 64, flags: DIFlagArtificial, elements: !6, vtableHolder: !58, identifier: "vtable")
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&usize", baseType: !50, size: 64, align: 64, dwarfAddressSpace: 0)
!59 = distinct !DICompileUnit(language: DW_LANG_Rust, file: !60, producer: "clang LLVM (rustc version 1.51.0 (2fd73fabe 2021-03-23))", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !6)
!60 = !DIFile(filename: "/home/ubuntu/.cargo/registry/src/github.com-1ecc6299db9ec823/cty-0.2.2/src/lib.rs", directory: "/home/ubuntu/container-data/absval/target/debug/deps")
!61 = distinct !DICompileUnit(language: DW_LANG_Rust, file: !62, producer: "clang LLVM (rustc version 1.51.0 (2fd73fabe 2021-03-23))", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !6)
!62 = !DIFile(filename: "/home/ubuntu/.cargo/git/checkouts/klee-sys-7ee2aa8a1a6bbc46/9f462cc/src/lib.rs", directory: "/home/ubuntu/container-data/absval/target/debug/deps")
!63 = distinct !DICompileUnit(language: DW_LANG_Rust, file: !64, producer: "clang LLVM (rustc version 1.51.0 (2fd73fabe 2021-03-23))", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !65, globals: !87)
!64 = !DIFile(filename: "/home/ubuntu/.cargo/registry/src/github.com-1ecc6299db9ec823/memchr-2.4.1/src/lib.rs", directory: "/home/ubuntu/container-data/absval/target/debug/deps")
!65 = !{!12, !20, !66, !29, !73, !78, !83}
!66 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "Prefilter", scope: !67, file: !13, baseType: !16, size: 8, align: 8, flags: DIFlagEnumClass, elements: !70)
!67 = !DINamespace(name: "prefilter", scope: !68)
!68 = !DINamespace(name: "memmem", scope: !69)
!69 = !DINamespace(name: "memchr", scope: null)
!70 = !{!71, !72}
!71 = !DIEnumerator(name: "None", value: 0)
!72 = !DIEnumerator(name: "Auto", value: 1)
!73 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "SuffixKind", scope: !74, file: !13, baseType: !16, size: 8, align: 8, flags: DIFlagEnumClass, elements: !75)
!74 = !DINamespace(name: "twoway", scope: !68)
!75 = !{!76, !77}
!76 = !DIEnumerator(name: "Minimal", value: 0)
!77 = !DIEnumerator(name: "Maximal", value: 1)
!78 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "SuffixOrdering", scope: !74, file: !13, baseType: !16, size: 8, align: 8, flags: DIFlagEnumClass, elements: !79)
!79 = !{!80, !81, !82}
!80 = !DIEnumerator(name: "Accept", value: 0)
!81 = !DIEnumerator(name: "Skip", value: 1)
!82 = !DIEnumerator(name: "Push", value: 2)
!83 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "Option", scope: !84, file: !13, baseType: !16, size: 8, align: 8, flags: DIFlagEnumClass, elements: !85)
!84 = !DINamespace(name: "option", scope: !15)
!85 = !{!71, !86}
!86 = !DIEnumerator(name: "Some", value: 1)
!87 = !{!88, !92, !144, !146, !154, !158, !162, !166, !191, !195, !199, !203, !208, !217, !221, !285, !314, !318, !322, !326, !333, !337, !340, !344, !348, !352, !356, !360, !364, !368, !372, !376}
!88 = !DIGlobalVariableExpression(var: !89, expr: !DIExpression())
!89 = distinct !DIGlobalVariable(name: "vtable", scope: null, file: !13, type: !90, isLocal: true, isDefinition: true)
!90 = !DICompositeType(tag: DW_TAG_structure_type, name: "vtable", file: !13, align: 64, flags: DIFlagArtificial, elements: !6, vtableHolder: !91, identifier: "vtable")
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&u8", baseType: !16, size: 64, align: 64, dwarfAddressSpace: 0)
!92 = !DIGlobalVariableExpression(var: !93, expr: !DIExpression())
!93 = distinct !DIGlobalVariable(name: "vtable", scope: null, file: !13, type: !94, isLocal: true, isDefinition: true)
!94 = !DICompositeType(tag: DW_TAG_structure_type, name: "vtable", file: !13, align: 64, flags: DIFlagArtificial, elements: !6, vtableHolder: !95, identifier: "vtable")
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&memchr::memmem::prefilter::PrefilterFn", baseType: !96, size: 64, align: 64, dwarfAddressSpace: 0)
!96 = !DICompositeType(tag: DW_TAG_structure_type, name: "PrefilterFn", scope: !67, file: !13, size: 64, align: 64, elements: !97, templateParams: !6, identifier: "35291da01e698d492305dbcfddd3ab55")
!97 = !{!98}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !96, file: !13, baseType: !99, size: 64, align: 64)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "unsafe fn(&mut memchr::memmem::prefilter::PrefilterState, &memchr::memmem::NeedleInfo, &[u8], &[u8]) -> core::option::Option<usize>", baseType: !100, size: 64, align: 64, dwarfAddressSpace: 0)
!100 = !DISubroutineType(types: !101)
!101 = !{!102, !115, !121, !139, !139}
!102 = !DICompositeType(tag: DW_TAG_structure_type, name: "Option<usize>", scope: !84, file: !13, size: 128, align: 64, elements: !103, identifier: "9332858134cb740a2a89b17fc22aeac2")
!103 = !{!104}
!104 = !DICompositeType(tag: DW_TAG_variant_part, scope: !84, file: !13, size: 128, align: 64, elements: !105, templateParams: !108, identifier: "9332858134cb740a2a89b17fc22aeac2_variant_part", discriminator: !114)
!105 = !{!106, !110}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "None", scope: !104, file: !13, baseType: !107, size: 128, align: 64, extraData: i64 0)
!107 = !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !102, file: !13, size: 128, align: 64, elements: !6, templateParams: !108, identifier: "9332858134cb740a2a89b17fc22aeac2::None")
!108 = !{!109}
!109 = !DITemplateTypeParameter(name: "T", type: !50)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "Some", scope: !104, file: !13, baseType: !111, size: 128, align: 64, extraData: i64 1)
!111 = !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !102, file: !13, size: 128, align: 64, elements: !112, templateParams: !108, identifier: "9332858134cb740a2a89b17fc22aeac2::Some")
!112 = !{!113}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !111, file: !13, baseType: !50, size: 64, align: 64, offset: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, scope: !84, file: !13, baseType: !54, size: 64, align: 64, flags: DIFlagArtificial)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut memchr::memmem::prefilter::PrefilterState", baseType: !116, size: 64, align: 64, dwarfAddressSpace: 0)
!116 = !DICompositeType(tag: DW_TAG_structure_type, name: "PrefilterState", scope: !67, file: !13, size: 64, align: 32, elements: !117, templateParams: !6, identifier: "7a46a0786f77c6ca31cca041edaa39c9")
!117 = !{!118, !120}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "skips", scope: !116, file: !13, baseType: !119, size: 32, align: 32)
!119 = !DIBasicType(name: "u32", size: 32, encoding: DW_ATE_unsigned)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "skipped", scope: !116, file: !13, baseType: !119, size: 32, align: 32, offset: 32)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&memchr::memmem::NeedleInfo", baseType: !122, size: 64, align: 64, dwarfAddressSpace: 0)
!122 = !DICompositeType(tag: DW_TAG_structure_type, name: "NeedleInfo", scope: !68, file: !13, size: 96, align: 32, elements: !123, templateParams: !6, identifier: "2794df66e254547a3ecf72eeb3adc1a3")
!123 = !{!124, !130}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "rarebytes", scope: !122, file: !13, baseType: !125, size: 16, align: 8, offset: 64)
!125 = !DICompositeType(tag: DW_TAG_structure_type, name: "RareNeedleBytes", scope: !126, file: !13, size: 16, align: 8, elements: !127, templateParams: !6, identifier: "3e9d1cf68222a25e737f836c18ac5f61")
!126 = !DINamespace(name: "rarebytes", scope: !68)
!127 = !{!128, !129}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "rare1i", scope: !125, file: !13, baseType: !16, size: 8, align: 8)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "rare2i", scope: !125, file: !13, baseType: !16, size: 8, align: 8, offset: 8)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "nhash", scope: !122, file: !13, baseType: !131, size: 64, align: 32)
!131 = !DICompositeType(tag: DW_TAG_structure_type, name: "NeedleHash", scope: !132, file: !13, size: 64, align: 32, elements: !133, templateParams: !6, identifier: "e8c3308ce7df1aecf4010206fad4c524")
!132 = !DINamespace(name: "rabinkarp", scope: !68)
!133 = !{!134, !138}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !131, file: !13, baseType: !135, size: 32, align: 32)
!135 = !DICompositeType(tag: DW_TAG_structure_type, name: "Hash", scope: !132, file: !13, size: 32, align: 32, elements: !136, templateParams: !6, identifier: "80d527764142fef851d43e22a89497af")
!136 = !{!137}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !135, file: !13, baseType: !119, size: 32, align: 32)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "hash_2pow", scope: !131, file: !13, baseType: !119, size: 32, align: 32, offset: 32)
!139 = !DICompositeType(tag: DW_TAG_structure_type, name: "&[u8]", file: !13, size: 128, align: 64, elements: !140, templateParams: !6, identifier: "585202bcfc7dfd1dd72e8befe2491ee4")
!140 = !{!141, !143}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !139, file: !13, baseType: !142, size: 64, align: 64)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*const u8", baseType: !16, size: 64, align: 64, dwarfAddressSpace: 0)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !139, file: !13, baseType: !50, size: 64, align: 64, offset: 64)
!144 = !DIGlobalVariableExpression(var: !145, expr: !DIExpression())
!145 = distinct !DIGlobalVariable(name: "vtable", scope: null, file: !13, type: !57, isLocal: true, isDefinition: true)
!146 = !DIGlobalVariableExpression(var: !147, expr: !DIExpression())
!147 = distinct !DIGlobalVariable(name: "vtable", scope: null, file: !13, type: !148, isLocal: true, isDefinition: true)
!148 = !DICompositeType(tag: DW_TAG_structure_type, name: "vtable", file: !13, align: 64, flags: DIFlagArtificial, elements: !6, vtableHolder: !149, identifier: "vtable")
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&memchr::cow::Imp", baseType: !150, size: 64, align: 64, dwarfAddressSpace: 0)
!150 = !DICompositeType(tag: DW_TAG_structure_type, name: "Imp", scope: !151, file: !13, size: 128, align: 64, elements: !152, templateParams: !6, identifier: "82936cfed83eede2831bcad32e146c5e")
!151 = !DINamespace(name: "cow", scope: !69)
!152 = !{!153}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !150, file: !13, baseType: !139, size: 128, align: 64)
!154 = !DIGlobalVariableExpression(var: !155, expr: !DIExpression())
!155 = distinct !DIGlobalVariable(name: "vtable", scope: null, file: !13, type: !156, isLocal: true, isDefinition: true)
!156 = !DICompositeType(tag: DW_TAG_structure_type, name: "vtable", file: !13, align: 64, flags: DIFlagArtificial, elements: !6, vtableHolder: !157, identifier: "vtable")
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&&[u8]", baseType: !139, size: 64, align: 64, dwarfAddressSpace: 0)
!158 = !DIGlobalVariableExpression(var: !159, expr: !DIExpression())
!159 = distinct !DIGlobalVariable(name: "vtable", scope: null, file: !13, type: !160, isLocal: true, isDefinition: true)
!160 = !DICompositeType(tag: DW_TAG_structure_type, name: "vtable", file: !13, align: 64, flags: DIFlagArtificial, elements: !6, vtableHolder: !161, identifier: "vtable")
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&u32", baseType: !119, size: 64, align: 64, dwarfAddressSpace: 0)
!162 = !DIGlobalVariableExpression(var: !163, expr: !DIExpression())
!163 = distinct !DIGlobalVariable(name: "vtable", scope: null, file: !13, type: !164, isLocal: true, isDefinition: true)
!164 = !DICompositeType(tag: DW_TAG_structure_type, name: "vtable", file: !13, align: 64, flags: DIFlagArtificial, elements: !6, vtableHolder: !165, identifier: "vtable")
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&memchr::memmem::rabinkarp::Hash", baseType: !135, size: 64, align: 64, dwarfAddressSpace: 0)
!166 = !DIGlobalVariableExpression(var: !167, expr: !DIExpression())
!167 = distinct !DIGlobalVariable(name: "vtable", scope: null, file: !13, type: !168, isLocal: true, isDefinition: true)
!168 = !DICompositeType(tag: DW_TAG_structure_type, name: "vtable", file: !13, align: 64, flags: DIFlagArtificial, elements: !6, vtableHolder: !169, identifier: "vtable")
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&memchr::memmem::twoway::TwoWay", baseType: !170, size: 64, align: 64, dwarfAddressSpace: 0)
!170 = !DICompositeType(tag: DW_TAG_structure_type, name: "TwoWay", scope: !74, file: !13, size: 256, align: 64, elements: !171, templateParams: !6, identifier: "8da270f3fa0f9425736f249045cf222")
!171 = !{!172, !176, !177}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "byteset", scope: !170, file: !13, baseType: !173, size: 64, align: 64)
!173 = !DICompositeType(tag: DW_TAG_structure_type, name: "ApproximateByteSet", scope: !74, file: !13, size: 64, align: 64, elements: !174, templateParams: !6, identifier: "2e5c071fde4e3272719a0504dc91855d")
!174 = !{!175}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !173, file: !13, baseType: !54, size: 64, align: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "critical_pos", scope: !170, file: !13, baseType: !50, size: 64, align: 64, offset: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "shift", scope: !170, file: !13, baseType: !178, size: 128, align: 64, offset: 128)
!178 = !DICompositeType(tag: DW_TAG_structure_type, name: "Shift", scope: !74, file: !13, size: 128, align: 64, elements: !179, identifier: "72ac1a9bec6a6334575ccf9a301579cc")
!179 = !{!180}
!180 = !DICompositeType(tag: DW_TAG_variant_part, scope: !74, file: !13, size: 128, align: 64, elements: !181, templateParams: !6, identifier: "72ac1a9bec6a6334575ccf9a301579cc_variant_part", discriminator: !190)
!181 = !{!182, !186}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "Small", scope: !180, file: !13, baseType: !183, size: 128, align: 64, extraData: i64 0)
!183 = !DICompositeType(tag: DW_TAG_structure_type, name: "Small", scope: !178, file: !13, size: 128, align: 64, elements: !184, templateParams: !6, identifier: "72ac1a9bec6a6334575ccf9a301579cc::Small")
!184 = !{!185}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "period", scope: !183, file: !13, baseType: !50, size: 64, align: 64, offset: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "Large", scope: !180, file: !13, baseType: !187, size: 128, align: 64, extraData: i64 1)
!187 = !DICompositeType(tag: DW_TAG_structure_type, name: "Large", scope: !178, file: !13, size: 128, align: 64, elements: !188, templateParams: !6, identifier: "72ac1a9bec6a6334575ccf9a301579cc::Large")
!188 = !{!189}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "shift", scope: !187, file: !13, baseType: !50, size: 64, align: 64, offset: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, scope: !74, file: !13, baseType: !54, size: 64, align: 64, flags: DIFlagArtificial)
!191 = !DIGlobalVariableExpression(var: !192, expr: !DIExpression())
!192 = distinct !DIGlobalVariable(name: "vtable", scope: null, file: !13, type: !193, isLocal: true, isDefinition: true)
!193 = !DICompositeType(tag: DW_TAG_structure_type, name: "vtable", file: !13, align: 64, flags: DIFlagArtificial, elements: !6, vtableHolder: !194, identifier: "vtable")
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&memchr::memmem::twoway::ApproximateByteSet", baseType: !173, size: 64, align: 64, dwarfAddressSpace: 0)
!195 = !DIGlobalVariableExpression(var: !196, expr: !DIExpression())
!196 = distinct !DIGlobalVariable(name: "vtable", scope: null, file: !13, type: !197, isLocal: true, isDefinition: true)
!197 = !DICompositeType(tag: DW_TAG_structure_type, name: "vtable", file: !13, align: 64, flags: DIFlagArtificial, elements: !6, vtableHolder: !198, identifier: "vtable")
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&memchr::memmem::twoway::Shift", baseType: !178, size: 64, align: 64, dwarfAddressSpace: 0)
!199 = !DIGlobalVariableExpression(var: !200, expr: !DIExpression())
!200 = distinct !DIGlobalVariable(name: "vtable", scope: null, file: !13, type: !201, isLocal: true, isDefinition: true)
!201 = !DICompositeType(tag: DW_TAG_structure_type, name: "vtable", file: !13, align: 64, flags: DIFlagArtificial, elements: !6, vtableHolder: !202, identifier: "vtable")
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&u64", baseType: !54, size: 64, align: 64, dwarfAddressSpace: 0)
!203 = !DIGlobalVariableExpression(var: !204, expr: !DIExpression())
!204 = distinct !DIGlobalVariable(name: "vtable", scope: null, file: !13, type: !205, isLocal: true, isDefinition: true)
!205 = !DICompositeType(tag: DW_TAG_structure_type, name: "vtable", file: !13, align: 64, flags: DIFlagArtificial, elements: !6, vtableHolder: !206, identifier: "vtable")
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&()", baseType: !207, size: 64, align: 64, dwarfAddressSpace: 0)
!207 = !DIBasicType(name: "()", encoding: DW_ATE_unsigned)
!208 = !DIGlobalVariableExpression(var: !209, expr: !DIExpression())
!209 = distinct !DIGlobalVariable(name: "vtable", scope: null, file: !13, type: !210, isLocal: true, isDefinition: true)
!210 = !DICompositeType(tag: DW_TAG_structure_type, name: "vtable", file: !13, align: 64, flags: DIFlagArtificial, elements: !6, vtableHolder: !211, identifier: "vtable")
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&memchr::memmem::genericsimd::Forward", baseType: !212, size: 64, align: 64, dwarfAddressSpace: 0)
!212 = !DICompositeType(tag: DW_TAG_structure_type, name: "Forward", scope: !213, file: !13, size: 16, align: 8, elements: !214, templateParams: !6, identifier: "613971f51ad51364c73d494c2f0c2f6c")
!213 = !DINamespace(name: "genericsimd", scope: !68)
!214 = !{!215, !216}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "rare1i", scope: !212, file: !13, baseType: !16, size: 8, align: 8)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "rare2i", scope: !212, file: !13, baseType: !16, size: 8, align: 8, offset: 8)
!217 = !DIGlobalVariableExpression(var: !218, expr: !DIExpression())
!218 = distinct !DIGlobalVariable(name: "vtable", scope: null, file: !13, type: !219, isLocal: true, isDefinition: true)
!219 = !DICompositeType(tag: DW_TAG_structure_type, name: "vtable", file: !13, align: 64, flags: DIFlagArtificial, elements: !6, vtableHolder: !220, identifier: "vtable")
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&memchr::memmem::prefilter::PrefilterState", baseType: !116, size: 64, align: 64, dwarfAddressSpace: 0)
!221 = !DIGlobalVariableExpression(var: !222, expr: !DIExpression())
!222 = distinct !DIGlobalVariable(name: "vtable", scope: null, file: !13, type: !223, isLocal: true, isDefinition: true)
!223 = !DICompositeType(tag: DW_TAG_structure_type, name: "vtable", file: !13, align: 64, flags: DIFlagArtificial, elements: !6, vtableHolder: !224, identifier: "vtable")
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&memchr::memmem::Finder", baseType: !225, size: 64, align: 64, dwarfAddressSpace: 0)
!225 = !DICompositeType(tag: DW_TAG_structure_type, name: "Finder", scope: !68, file: !13, size: 640, align: 64, elements: !226, templateParams: !6, identifier: "6d66587fd4fcd5493286ad0718939c55")
!226 = !{!227}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "searcher", scope: !225, file: !13, baseType: !228, size: 640, align: 64)
!228 = !DICompositeType(tag: DW_TAG_structure_type, name: "Searcher", scope: !68, file: !13, size: 640, align: 64, elements: !229, templateParams: !6, identifier: "bf5be8d361b42a4e9f381b04ec4677f0")
!229 = !{!230, !234, !235, !248}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "needle", scope: !228, file: !13, baseType: !231, size: 128, align: 64)
!231 = !DICompositeType(tag: DW_TAG_structure_type, name: "CowBytes", scope: !151, file: !13, size: 128, align: 64, elements: !232, templateParams: !6, identifier: "9e544ec536d86404659011a29422101c")
!232 = !{!233}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !231, file: !13, baseType: !150, size: 128, align: 64)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "ninfo", scope: !228, file: !13, baseType: !122, size: 96, align: 32, offset: 512)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "prefn", scope: !228, file: !13, baseType: !236, size: 64, align: 64, offset: 128)
!236 = !DICompositeType(tag: DW_TAG_structure_type, name: "Option<memchr::memmem::prefilter::PrefilterFn>", scope: !84, file: !13, size: 64, align: 64, elements: !237, identifier: "c167e9489f4b9d2dc0e0d55d893d86f4")
!237 = !{!238}
!238 = !DICompositeType(tag: DW_TAG_variant_part, scope: !84, file: !13, size: 64, align: 64, elements: !239, templateParams: !242, identifier: "c167e9489f4b9d2dc0e0d55d893d86f4_variant_part", discriminator: !114)
!239 = !{!240, !244}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "None", scope: !238, file: !13, baseType: !241, size: 64, align: 64, extraData: i64 0)
!241 = !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !236, file: !13, size: 64, align: 64, elements: !6, templateParams: !242, identifier: "c167e9489f4b9d2dc0e0d55d893d86f4::None")
!242 = !{!243}
!243 = !DITemplateTypeParameter(name: "T", type: !96)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "Some", scope: !238, file: !13, baseType: !245, size: 64, align: 64)
!245 = !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !236, file: !13, size: 64, align: 64, elements: !246, templateParams: !242, identifier: "c167e9489f4b9d2dc0e0d55d893d86f4::Some")
!246 = !{!247}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !245, file: !13, baseType: !96, size: 64, align: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !228, file: !13, baseType: !249, size: 320, align: 64, offset: 192)
!249 = !DICompositeType(tag: DW_TAG_structure_type, name: "SearcherKind", scope: !68, file: !13, size: 320, align: 64, elements: !250, identifier: "3e968070321709718bacc1737eaef715")
!250 = !{!251}
!251 = !DICompositeType(tag: DW_TAG_variant_part, scope: !68, file: !13, size: 320, align: 64, elements: !252, templateParams: !6, identifier: "3e968070321709718bacc1737eaef715_variant_part", discriminator: !284)
!252 = !{!253, !255, !259, !266, !275}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "Empty", scope: !251, file: !13, baseType: !254, size: 320, align: 64, extraData: i64 0)
!254 = !DICompositeType(tag: DW_TAG_structure_type, name: "Empty", scope: !249, file: !13, size: 320, align: 64, elements: !6, templateParams: !6, identifier: "3e968070321709718bacc1737eaef715::Empty")
!255 = !DIDerivedType(tag: DW_TAG_member, name: "OneByte", scope: !251, file: !13, baseType: !256, size: 320, align: 64, extraData: i64 1)
!256 = !DICompositeType(tag: DW_TAG_structure_type, name: "OneByte", scope: !249, file: !13, size: 320, align: 64, elements: !257, templateParams: !6, identifier: "3e968070321709718bacc1737eaef715::OneByte")
!257 = !{!258}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !256, file: !13, baseType: !16, size: 8, align: 8, offset: 8)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "TwoWay", scope: !251, file: !13, baseType: !260, size: 320, align: 64, extraData: i64 2)
!260 = !DICompositeType(tag: DW_TAG_structure_type, name: "TwoWay", scope: !249, file: !13, size: 320, align: 64, elements: !261, templateParams: !6, identifier: "3e968070321709718bacc1737eaef715::TwoWay")
!261 = !{!262}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !260, file: !13, baseType: !263, size: 256, align: 64, offset: 64)
!263 = !DICompositeType(tag: DW_TAG_structure_type, name: "Forward", scope: !74, file: !13, size: 256, align: 64, elements: !264, templateParams: !6, identifier: "6c5a601d73dc84c9adb765b7491c65b9")
!264 = !{!265}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !263, file: !13, baseType: !170, size: 256, align: 64)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "GenericSIMD128", scope: !251, file: !13, baseType: !267, size: 320, align: 64, extraData: i64 3)
!267 = !DICompositeType(tag: DW_TAG_structure_type, name: "GenericSIMD128", scope: !249, file: !13, size: 320, align: 64, elements: !268, templateParams: !6, identifier: "3e968070321709718bacc1737eaef715::GenericSIMD128")
!268 = !{!269}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !267, file: !13, baseType: !270, size: 16, align: 8, offset: 8)
!270 = !DICompositeType(tag: DW_TAG_structure_type, name: "Forward", scope: !271, file: !13, size: 16, align: 8, elements: !273, templateParams: !6, identifier: "4b683479de2780e97f83ccfd54539cd4")
!271 = !DINamespace(name: "sse", scope: !272)
!272 = !DINamespace(name: "x86", scope: !68)
!273 = !{!274}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !270, file: !13, baseType: !212, size: 16, align: 8)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "GenericSIMD256", scope: !251, file: !13, baseType: !276, size: 320, align: 64, extraData: i64 4)
!276 = !DICompositeType(tag: DW_TAG_structure_type, name: "GenericSIMD256", scope: !249, file: !13, size: 320, align: 64, elements: !277, templateParams: !6, identifier: "3e968070321709718bacc1737eaef715::GenericSIMD256")
!277 = !{!278}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !276, file: !13, baseType: !279, align: 8, offset: 8)
!279 = !DICompositeType(tag: DW_TAG_structure_type, name: "Forward", scope: !280, file: !13, align: 8, elements: !282, templateParams: !6, identifier: "4a53c111fc3b6332cd69d8efc713ddcf")
!280 = !DINamespace(name: "nostd", scope: !281)
!281 = !DINamespace(name: "avx", scope: !272)
!282 = !{!283}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !279, file: !13, baseType: !207, align: 8)
!284 = !DIDerivedType(tag: DW_TAG_member, scope: !68, file: !13, baseType: !16, size: 8, align: 8, flags: DIFlagArtificial)
!285 = !DIGlobalVariableExpression(var: !286, expr: !DIExpression())
!286 = distinct !DIGlobalVariable(name: "vtable", scope: null, file: !13, type: !287, isLocal: true, isDefinition: true)
!287 = !DICompositeType(tag: DW_TAG_structure_type, name: "vtable", file: !13, align: 64, flags: DIFlagArtificial, elements: !6, vtableHolder: !288, identifier: "vtable")
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&memchr::memmem::FinderRev", baseType: !289, size: 64, align: 64, dwarfAddressSpace: 0)
!289 = !DICompositeType(tag: DW_TAG_structure_type, name: "FinderRev", scope: !68, file: !13, size: 512, align: 64, elements: !290, templateParams: !6, identifier: "a2f650c078523eb6bc676f98e334e71")
!290 = !{!291}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "searcher", scope: !289, file: !13, baseType: !292, size: 512, align: 64)
!292 = !DICompositeType(tag: DW_TAG_structure_type, name: "SearcherRev", scope: !68, file: !13, size: 512, align: 64, elements: !293, templateParams: !6, identifier: "60391049e81f8c95916c2438e5b4f022")
!293 = !{!294, !295, !296}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "needle", scope: !292, file: !13, baseType: !231, size: 128, align: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "nhash", scope: !292, file: !13, baseType: !131, size: 64, align: 32, offset: 448)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !292, file: !13, baseType: !297, size: 320, align: 64, offset: 128)
!297 = !DICompositeType(tag: DW_TAG_structure_type, name: "SearcherRevKind", scope: !68, file: !13, size: 320, align: 64, elements: !298, identifier: "aabf02e456a42bfba7be951cc9f592ce")
!298 = !{!299}
!299 = !DICompositeType(tag: DW_TAG_variant_part, scope: !68, file: !13, size: 320, align: 64, elements: !300, templateParams: !6, identifier: "aabf02e456a42bfba7be951cc9f592ce_variant_part", discriminator: !284)
!300 = !{!301, !303, !307}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "Empty", scope: !299, file: !13, baseType: !302, size: 320, align: 64, extraData: i64 0)
!302 = !DICompositeType(tag: DW_TAG_structure_type, name: "Empty", scope: !297, file: !13, size: 320, align: 64, elements: !6, templateParams: !6, identifier: "aabf02e456a42bfba7be951cc9f592ce::Empty")
!303 = !DIDerivedType(tag: DW_TAG_member, name: "OneByte", scope: !299, file: !13, baseType: !304, size: 320, align: 64, extraData: i64 1)
!304 = !DICompositeType(tag: DW_TAG_structure_type, name: "OneByte", scope: !297, file: !13, size: 320, align: 64, elements: !305, templateParams: !6, identifier: "aabf02e456a42bfba7be951cc9f592ce::OneByte")
!305 = !{!306}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !304, file: !13, baseType: !16, size: 8, align: 8, offset: 8)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "TwoWay", scope: !299, file: !13, baseType: !308, size: 320, align: 64, extraData: i64 2)
!308 = !DICompositeType(tag: DW_TAG_structure_type, name: "TwoWay", scope: !297, file: !13, size: 320, align: 64, elements: !309, templateParams: !6, identifier: "aabf02e456a42bfba7be951cc9f592ce::TwoWay")
!309 = !{!310}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !308, file: !13, baseType: !311, size: 256, align: 64, offset: 64)
!311 = !DICompositeType(tag: DW_TAG_structure_type, name: "Reverse", scope: !74, file: !13, size: 256, align: 64, elements: !312, templateParams: !6, identifier: "349db6a4601594aaf42433e65ead4607")
!312 = !{!313}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !311, file: !13, baseType: !170, size: 256, align: 64)
!314 = !DIGlobalVariableExpression(var: !315, expr: !DIExpression())
!315 = distinct !DIGlobalVariable(name: "vtable", scope: null, file: !13, type: !316, isLocal: true, isDefinition: true)
!316 = !DICompositeType(tag: DW_TAG_structure_type, name: "vtable", file: !13, align: 64, flags: DIFlagArtificial, elements: !6, vtableHolder: !317, identifier: "vtable")
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&core::option::Option<usize>", baseType: !102, size: 64, align: 64, dwarfAddressSpace: 0)
!318 = !DIGlobalVariableExpression(var: !319, expr: !DIExpression())
!319 = distinct !DIGlobalVariable(name: "vtable", scope: null, file: !13, type: !320, isLocal: true, isDefinition: true)
!320 = !DICompositeType(tag: DW_TAG_structure_type, name: "vtable", file: !13, align: 64, flags: DIFlagArtificial, elements: !6, vtableHolder: !321, identifier: "vtable")
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&memchr::memmem::Searcher", baseType: !228, size: 64, align: 64, dwarfAddressSpace: 0)
!322 = !DIGlobalVariableExpression(var: !323, expr: !DIExpression())
!323 = distinct !DIGlobalVariable(name: "vtable", scope: null, file: !13, type: !324, isLocal: true, isDefinition: true)
!324 = !DICompositeType(tag: DW_TAG_structure_type, name: "vtable", file: !13, align: 64, flags: DIFlagArtificial, elements: !6, vtableHolder: !325, identifier: "vtable")
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&memchr::memmem::SearcherRev", baseType: !292, size: 64, align: 64, dwarfAddressSpace: 0)
!326 = !DIGlobalVariableExpression(var: !327, expr: !DIExpression())
!327 = distinct !DIGlobalVariable(name: "vtable", scope: null, file: !13, type: !328, isLocal: true, isDefinition: true)
!328 = !DICompositeType(tag: DW_TAG_structure_type, name: "vtable", file: !13, align: 64, flags: DIFlagArtificial, elements: !6, vtableHolder: !329, identifier: "vtable")
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&memchr::memmem::SearcherConfig", baseType: !330, size: 64, align: 64, dwarfAddressSpace: 0)
!330 = !DICompositeType(tag: DW_TAG_structure_type, name: "SearcherConfig", scope: !68, file: !13, size: 8, align: 8, elements: !331, templateParams: !6, identifier: "708d31c0c262cdcdbdf9157f077dcb2a")
!331 = !{!332}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "prefilter", scope: !330, file: !13, baseType: !66, size: 8, align: 8)
!333 = !DIGlobalVariableExpression(var: !334, expr: !DIExpression())
!334 = distinct !DIGlobalVariable(name: "vtable", scope: null, file: !13, type: !335, isLocal: true, isDefinition: true)
!335 = !DICompositeType(tag: DW_TAG_structure_type, name: "vtable", file: !13, align: 64, flags: DIFlagArtificial, elements: !6, vtableHolder: !336, identifier: "vtable")
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&memchr::cow::CowBytes", baseType: !231, size: 64, align: 64, dwarfAddressSpace: 0)
!337 = !DIGlobalVariableExpression(var: !338, expr: !DIExpression())
!338 = distinct !DIGlobalVariable(name: "vtable", scope: null, file: !13, type: !339, isLocal: true, isDefinition: true)
!339 = !DICompositeType(tag: DW_TAG_structure_type, name: "vtable", file: !13, align: 64, flags: DIFlagArtificial, elements: !6, vtableHolder: !121, identifier: "vtable")
!340 = !DIGlobalVariableExpression(var: !341, expr: !DIExpression())
!341 = distinct !DIGlobalVariable(name: "vtable", scope: null, file: !13, type: !342, isLocal: true, isDefinition: true)
!342 = !DICompositeType(tag: DW_TAG_structure_type, name: "vtable", file: !13, align: 64, flags: DIFlagArtificial, elements: !6, vtableHolder: !343, identifier: "vtable")
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&core::option::Option<memchr::memmem::prefilter::PrefilterFn>", baseType: !236, size: 64, align: 64, dwarfAddressSpace: 0)
!344 = !DIGlobalVariableExpression(var: !345, expr: !DIExpression())
!345 = distinct !DIGlobalVariable(name: "vtable", scope: null, file: !13, type: !346, isLocal: true, isDefinition: true)
!346 = !DICompositeType(tag: DW_TAG_structure_type, name: "vtable", file: !13, align: 64, flags: DIFlagArtificial, elements: !6, vtableHolder: !347, identifier: "vtable")
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&memchr::memmem::SearcherKind", baseType: !249, size: 64, align: 64, dwarfAddressSpace: 0)
!348 = !DIGlobalVariableExpression(var: !349, expr: !DIExpression())
!349 = distinct !DIGlobalVariable(name: "vtable", scope: null, file: !13, type: !350, isLocal: true, isDefinition: true)
!350 = !DICompositeType(tag: DW_TAG_structure_type, name: "vtable", file: !13, align: 64, flags: DIFlagArtificial, elements: !6, vtableHolder: !351, identifier: "vtable")
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&memchr::memmem::rarebytes::RareNeedleBytes", baseType: !125, size: 64, align: 64, dwarfAddressSpace: 0)
!352 = !DIGlobalVariableExpression(var: !353, expr: !DIExpression())
!353 = distinct !DIGlobalVariable(name: "vtable", scope: null, file: !13, type: !354, isLocal: true, isDefinition: true)
!354 = !DICompositeType(tag: DW_TAG_structure_type, name: "vtable", file: !13, align: 64, flags: DIFlagArtificial, elements: !6, vtableHolder: !355, identifier: "vtable")
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&memchr::memmem::rabinkarp::NeedleHash", baseType: !131, size: 64, align: 64, dwarfAddressSpace: 0)
!356 = !DIGlobalVariableExpression(var: !357, expr: !DIExpression())
!357 = distinct !DIGlobalVariable(name: "vtable", scope: null, file: !13, type: !358, isLocal: true, isDefinition: true)
!358 = !DICompositeType(tag: DW_TAG_structure_type, name: "vtable", file: !13, align: 64, flags: DIFlagArtificial, elements: !6, vtableHolder: !359, identifier: "vtable")
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&memchr::memmem::prefilter::Prefilter", baseType: !66, size: 64, align: 64, dwarfAddressSpace: 0)
!360 = !DIGlobalVariableExpression(var: !361, expr: !DIExpression())
!361 = distinct !DIGlobalVariable(name: "vtable", scope: null, file: !13, type: !362, isLocal: true, isDefinition: true)
!362 = !DICompositeType(tag: DW_TAG_structure_type, name: "vtable", file: !13, align: 64, flags: DIFlagArtificial, elements: !6, vtableHolder: !363, identifier: "vtable")
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&memchr::memmem::x86::avx::nostd::Forward", baseType: !279, size: 64, align: 64, dwarfAddressSpace: 0)
!364 = !DIGlobalVariableExpression(var: !365, expr: !DIExpression())
!365 = distinct !DIGlobalVariable(name: "vtable", scope: null, file: !13, type: !366, isLocal: true, isDefinition: true)
!366 = !DICompositeType(tag: DW_TAG_structure_type, name: "vtable", file: !13, align: 64, flags: DIFlagArtificial, elements: !6, vtableHolder: !367, identifier: "vtable")
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&memchr::memmem::x86::sse::Forward", baseType: !270, size: 64, align: 64, dwarfAddressSpace: 0)
!368 = !DIGlobalVariableExpression(var: !369, expr: !DIExpression())
!369 = distinct !DIGlobalVariable(name: "vtable", scope: null, file: !13, type: !370, isLocal: true, isDefinition: true)
!370 = !DICompositeType(tag: DW_TAG_structure_type, name: "vtable", file: !13, align: 64, flags: DIFlagArtificial, elements: !6, vtableHolder: !371, identifier: "vtable")
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&memchr::memmem::twoway::Forward", baseType: !263, size: 64, align: 64, dwarfAddressSpace: 0)
!372 = !DIGlobalVariableExpression(var: !373, expr: !DIExpression())
!373 = distinct !DIGlobalVariable(name: "vtable", scope: null, file: !13, type: !374, isLocal: true, isDefinition: true)
!374 = !DICompositeType(tag: DW_TAG_structure_type, name: "vtable", file: !13, align: 64, flags: DIFlagArtificial, elements: !6, vtableHolder: !375, identifier: "vtable")
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&memchr::memmem::SearcherRevKind", baseType: !297, size: 64, align: 64, dwarfAddressSpace: 0)
!376 = !DIGlobalVariableExpression(var: !377, expr: !DIExpression())
!377 = distinct !DIGlobalVariable(name: "vtable", scope: null, file: !13, type: !378, isLocal: true, isDefinition: true)
!378 = !DICompositeType(tag: DW_TAG_structure_type, name: "vtable", file: !13, align: 64, flags: DIFlagArtificial, elements: !6, vtableHolder: !379, identifier: "vtable")
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&memchr::memmem::twoway::Reverse", baseType: !311, size: 64, align: 64, dwarfAddressSpace: 0)
!380 = distinct !DICompileUnit(language: DW_LANG_Rust, file: !381, producer: "clang LLVM (rustc version 1.51.0 (2fd73fabe 2021-03-23))", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !382)
!381 = !DIFile(filename: "/home/ubuntu/.cargo/git/checkouts/panic-klee-aa8d015442188497/3b0c897/src/lib.rs", directory: "/home/ubuntu/container-data/absval/target/debug/deps")
!382 = !{!20, !12}
!383 = distinct !DICompileUnit(language: DW_LANG_Rust, file: !384, producer: "clang LLVM (rustc version 1.51.0 (2fd73fabe 2021-03-23))", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !6)
!384 = !DIFile(filename: "library/rustc-std-workspace-core/lib.rs", directory: "/checkout/obj/build/x86_64-unknown-linux-gnu/stage1-std/x86_64-unknown-linux-gnu/release/deps")
!385 = distinct !DISubprogram(name: "is_negative", linkageName: "_ZN4core3num21_$LT$impl$u20$i16$GT$11is_negative17hf3c4dc1c2e854810E", scope: !387, file: !386, line: 1768, type: !389, scopeLine: 1768, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4, templateParams: !6, retainedNodes: !393)
!386 = !DIFile(filename: "/rustc/2fd73fabe469357a12c2c974c140f67e7cdd76d0/library/core/src/num/int_macros.rs", directory: "", checksumkind: CSK_MD5, checksum: "3e363918b275de56081ecce23e391966")
!387 = !DINamespace(name: "{{impl}}", scope: !388)
!388 = !DINamespace(name: "num", scope: !15)
!389 = !DISubroutineType(types: !390)
!390 = !{!391, !392}
!391 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!392 = !DIBasicType(name: "i16", size: 16, encoding: DW_ATE_signed)
!393 = !{!394}
!394 = !DILocalVariable(name: "self", arg: 1, scope: !385, file: !386, line: 1768, type: !392)
!395 = !DILocation(line: 1768, column: 34, scope: !385)
!396 = !DILocation(line: 1768, column: 50, scope: !385)
!397 = !DILocation(line: 1768, column: 60, scope: !385)
!398 = distinct !DISubprogram(name: "abs", linkageName: "_ZN4core3num21_$LT$impl$u20$i16$GT$3abs17h6dab7a3cef96a154E", scope: !387, file: !386, line: 1701, type: !399, scopeLine: 1701, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4, templateParams: !6, retainedNodes: !401)
!399 = !DISubroutineType(types: !400)
!400 = !{!392, !392}
!401 = !{!402}
!402 = !DILocalVariable(name: "self", arg: 1, scope: !398, file: !386, line: 1701, type: !392)
!403 = !DILocation(line: 1701, column: 26, scope: !398)
!404 = !DILocation(line: 1705, column: 16, scope: !398)
!405 = !DILocation(line: 1705, column: 13, scope: !398)
!406 = !DILocation(line: 1706, column: 17, scope: !398)
!407 = !DILocation(line: 1708, column: 17, scope: !398)
!408 = !DILocation(line: 1710, column: 10, scope: !398)
!409 = distinct !DISubprogram(name: "from_bytes_with_nul_unchecked", linkageName: "_ZN9cstr_core4CStr29from_bytes_with_nul_unchecked17h09afc92fc7a9ebf2E", scope: !411, file: !410, line: 1162, type: !417, scopeLine: 1162, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4, templateParams: !6, retainedNodes: !424)
!410 = !DIFile(filename: "/home/ubuntu/.cargo/registry/src/github.com-1ecc6299db9ec823/cstr_core-0.2.5/src/lib.rs", directory: "", checksumkind: CSK_MD5, checksum: "3a4727b3481b2bcf3c156ce21ae07237")
!411 = !DICompositeType(tag: DW_TAG_structure_type, name: "CStr", scope: !42, file: !13, align: 8, elements: !412, templateParams: !6, identifier: "816043fef5ec2c8f99a3ea64db77b1b6")
!412 = !{!413}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !411, file: !13, baseType: !414, align: 8)
!414 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, align: 8, elements: !415)
!415 = !{!416}
!416 = !DISubrange(count: -1)
!417 = !DISubroutineType(types: !418)
!418 = !{!419, !420}
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&cstr_core::CStr", baseType: !411, size: 128, align: 64, dwarfAddressSpace: 0)
!420 = !DICompositeType(tag: DW_TAG_structure_type, name: "&[u8]", file: !13, size: 128, align: 64, elements: !421, templateParams: !6, identifier: "585202bcfc7dfd1dd72e8befe2491ee4")
!421 = !{!422, !423}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !420, file: !13, baseType: !142, size: 64, align: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !420, file: !13, baseType: !50, size: 64, align: 64, offset: 64)
!424 = !{!425}
!425 = !DILocalVariable(name: "bytes", arg: 1, scope: !409, file: !410, line: 1162, type: !420)
!426 = !DILocation(line: 1162, column: 49, scope: !409)
!427 = !DILocation(line: 1163, column: 11, scope: !409)
!428 = !DILocation(line: 1164, column: 6, scope: !409)
!429 = distinct !DISubprogram(name: "as_ptr", linkageName: "_ZN9cstr_core4CStr6as_ptr17hc7f21281fcf441e7E", scope: !411, file: !410, line: 1214, type: !430, scopeLine: 1214, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4, templateParams: !6, retainedNodes: !433)
!430 = !DISubroutineType(types: !431)
!431 = !{!432, !419}
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*const i8", baseType: !31, size: 64, align: 64, dwarfAddressSpace: 0)
!433 = !{!434}
!434 = !DILocalVariable(name: "self", arg: 1, scope: !429, file: !410, line: 1214, type: !419)
!435 = !DILocation(line: 1214, column: 25, scope: !429)
!436 = !DILocation(line: 1215, column: 9, scope: !429)
!437 = !DILocation(line: 1216, column: 6, scope: !429)
!438 = distinct !DISubprogram(name: "absolute_test", linkageName: "_ZN6absval13absolute_test17hadc50189d3f132bcE", scope: !440, file: !439, line: 8, type: !441, scopeLine: 8, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4, templateParams: !6, retainedNodes: !443)
!439 = !DIFile(filename: "src/main.rs", directory: "/home/ubuntu/container-data/absval", checksumkind: CSK_MD5, checksum: "b08a2e28005110480699b3bb9c60f9a8")
!440 = !DINamespace(name: "absval", scope: null)
!441 = !DISubroutineType(types: !442)
!442 = !{null, !392}
!443 = !{!444}
!444 = !DILocalVariable(name: "a", arg: 1, scope: !438, file: !439, line: 8, type: !392)
!445 = !DILocation(line: 8, column: 18, scope: !438)
!446 = !DILocation(line: 9, column: 13, scope: !438)
!447 = !DILocation(line: 9, column: 5, scope: !438)
!448 = !DILocation(line: 10, column: 2, scope: !438)
!449 = distinct !DISubprogram(name: "main", scope: !440, file: !439, line: 13, type: !450, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4, templateParams: !6, retainedNodes: !452)
!450 = !DISubroutineType(types: !451)
!451 = !{null}
!452 = !{!453}
!453 = !DILocalVariable(name: "x", scope: !454, file: !439, line: 14, type: !392, align: 2)
!454 = distinct !DILexicalBlock(scope: !449, file: !439, line: 14, column: 5)
!455 = !DILocation(line: 14, column: 9, scope: !454)
!456 = !DILocation(line: 14, column: 22, scope: !449)
!457 = !{!458}
!458 = distinct !{!458, !459, !"_ZN4core3str21_$LT$impl$u20$str$GT$8as_bytes17hd4a894810077290dE: %self.0"}
!459 = distinct !{!459, !"_ZN4core3str21_$LT$impl$u20$str$GT$8as_bytes17hd4a894810077290dE"}
!460 = !DILocalVariable(name: "self", arg: 1, scope: !461, file: !462, line: 224, type: !467)
!461 = distinct !DISubprogram(name: "as_bytes", linkageName: "_ZN4core3str21_$LT$impl$u20$str$GT$8as_bytes17hd4a894810077290dE", scope: !463, file: !462, line: 224, type: !465, scopeLine: 224, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4, templateParams: !6, retainedNodes: !471)
!462 = !DIFile(filename: "/rustc/2fd73fabe469357a12c2c974c140f67e7cdd76d0/library/core/src/str/mod.rs", directory: "", checksumkind: CSK_MD5, checksum: "288711a6cf0e0d8143d78b5fe87cac66")
!463 = !DINamespace(name: "{{impl}}", scope: !464)
!464 = !DINamespace(name: "str", scope: !15)
!465 = !DISubroutineType(types: !466)
!466 = !{!420, !467}
!467 = !DICompositeType(tag: DW_TAG_structure_type, name: "&str", file: !13, size: 128, align: 64, elements: !468, templateParams: !6, identifier: "7ef2a91eecc7bcf4b4aaea2dbce79437")
!468 = !{!469, !470}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !467, file: !13, baseType: !142, size: 64, align: 64)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !467, file: !13, baseType: !50, size: 64, align: 64, offset: 64)
!471 = !{!460}
!472 = !DILocation(line: 224, column: 27, scope: !461, inlinedAt: !473)
!473 = distinct !DILocation(line: 15, column: 5, scope: !454)
!474 = !DILocation(line: 226, column: 18, scope: !461, inlinedAt: !473)
!475 = !DILocation(line: 227, column: 6, scope: !461, inlinedAt: !473)
!476 = !DILocation(line: 15, column: 5, scope: !454)
!477 = !{!478}
!478 = distinct !{!478, !479, !"_ZN8klee_sys17lib_klee_analysis18klee_make_symbolic17h262826803d5abea4E: %name.0"}
!479 = distinct !{!479, !"_ZN8klee_sys17lib_klee_analysis18klee_make_symbolic17h262826803d5abea4E"}
!480 = !DILocalVariable(name: "t", arg: 1, scope: !481, file: !482, line: 17, type: !487)
!481 = distinct !DISubprogram(name: "klee_make_symbolic<i16>", linkageName: "_ZN8klee_sys17lib_klee_analysis18klee_make_symbolic17h262826803d5abea4E", scope: !483, file: !482, line: 17, type: !485, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !4, templateParams: !490, retainedNodes: !488)
!482 = !DIFile(filename: "/home/ubuntu/.cargo/git/checkouts/klee-sys-7ee2aa8a1a6bbc46/9f462cc/src/lib_klee_analysis.rs", directory: "", checksumkind: CSK_MD5, checksum: "e3bdc37403934781364daca8b62851bf")
!483 = !DINamespace(name: "lib_klee_analysis", scope: !484)
!484 = !DINamespace(name: "klee_sys", scope: null)
!485 = !DISubroutineType(types: !486)
!486 = !{null, !487, !419}
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut i16", baseType: !392, size: 64, align: 64, dwarfAddressSpace: 0)
!488 = !{!480, !489}
!489 = !DILocalVariable(name: "name", arg: 2, scope: !481, file: !482, line: 17, type: !419)
!490 = !{!491}
!491 = !DITemplateTypeParameter(name: "T", type: !392)
!492 = !DILocation(line: 17, column: 30, scope: !481, inlinedAt: !493)
!493 = distinct !DILocation(line: 15, column: 5, scope: !454)
!494 = !DILocation(line: 17, column: 41, scope: !481, inlinedAt: !493)
!495 = !DILocation(line: 20, column: 13, scope: !481, inlinedAt: !493)
!496 = !DILocation(line: 22, column: 13, scope: !481, inlinedAt: !493)
!497 = !DILocation(line: 19, column: 9, scope: !481, inlinedAt: !493)
!498 = !DILocation(line: 16, column: 19, scope: !454)
!499 = !DILocation(line: 16, column: 5, scope: !454)
!500 = !DILocation(line: 17, column: 2, scope: !449)
!501 = distinct !DISubprogram(name: "panic", linkageName: "_ZN4core9panicking5panic17h07405d6be4bce887E", scope: !503, file: !502, line: 39, type: !504, scopeLine: 39, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !6, retainedNodes: !6)
!502 = !DIFile(filename: "library/core/src/panicking.rs", directory: "/rustc/2fd73fabe469357a12c2c974c140f67e7cdd76d0/", checksumkind: CSK_MD5, checksum: "10dfc2feb63a9eaaccae13649da4c2f4")
!503 = !DINamespace(name: "panicking", scope: !15)
!504 = !DISubroutineType(types: !6)
!505 = !DILocation(line: 50, column: 15, scope: !501)
!506 = !DILocation(line: 50, column: 39, scope: !501)
!507 = !DILocation(line: 314, column: 9, scope: !508, inlinedAt: !511)
!508 = distinct !DISubprogram(name: "new_v1", linkageName: "_ZN4core3fmt9Arguments6new_v117hb7d5c859a9eeb48fE", scope: !510, file: !509, line: 313, type: !504, scopeLine: 313, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !6, retainedNodes: !6)
!509 = !DIFile(filename: "library/core/src/fmt/mod.rs", directory: "/rustc/2fd73fabe469357a12c2c974c140f67e7cdd76d0/", checksumkind: CSK_MD5, checksum: "9c2303bc954c30225b64b2e88dce24d2")
!510 = !DINamespace(name: "Arguments", scope: !23)
!511 = distinct !DILocation(line: 50, column: 15, scope: !501)
!512 = !{!513}
!513 = distinct !{!513, !514, !"_ZN4core3fmt9Arguments6new_v117hb7d5c859a9eeb48fE: argument 0"}
!514 = distinct !{!514, !"_ZN4core3fmt9Arguments6new_v117hb7d5c859a9eeb48fE"}
!515 = !{!516, !517}
!516 = distinct !{!516, !514, !"_ZN4core3fmt9Arguments6new_v117hb7d5c859a9eeb48fE: argument 1"}
!517 = distinct !{!517, !514, !"_ZN4core3fmt9Arguments6new_v117hb7d5c859a9eeb48fE: argument 2"}
!518 = !DILocation(line: 50, column: 5, scope: !501)
!519 = distinct !DISubprogram(name: "panic_fmt", linkageName: "_ZN4core9panicking9panic_fmt17hcd56f7f635f62c74E", scope: !503, file: !502, line: 77, type: !504, scopeLine: 77, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !6, retainedNodes: !6)
!520 = !DILocation(line: 89, column: 9, scope: !519)
!521 = !DILocation(line: 89, column: 46, scope: !519)
!522 = !DILocation(line: 86, column: 9, scope: !523, inlinedAt: !527)
!523 = distinct !DISubprogram(name: "internal_constructor", linkageName: "_ZN4core5panic9PanicInfo20internal_constructor17hdae4be701f994da1E", scope: !525, file: !524, line: 81, type: !504, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !6, retainedNodes: !6)
!524 = !DIFile(filename: "library/core/src/panic.rs", directory: "/rustc/2fd73fabe469357a12c2c974c140f67e7cdd76d0/", checksumkind: CSK_MD5, checksum: "4b2dd965887c76cebc0a34a2a83ddd98")
!525 = !DINamespace(name: "PanicInfo", scope: !526)
!526 = !DINamespace(name: "panic", scope: !15)
!527 = distinct !DILocation(line: 89, column: 14, scope: !519)
!528 = !{!529}
!529 = distinct !{!529, !530, !"_ZN4core5panic9PanicInfo20internal_constructor17hdae4be701f994da1E: argument 0"}
!530 = distinct !{!530, !"_ZN4core5panic9PanicInfo20internal_constructor17hdae4be701f994da1E"}
!531 = !{!532, !533}
!532 = distinct !{!532, !530, !"_ZN4core5panic9PanicInfo20internal_constructor17hdae4be701f994da1E: argument 1"}
!533 = distinct !{!533, !530, !"_ZN4core5panic9PanicInfo20internal_constructor17hdae4be701f994da1E: argument 2"}
!534 = !DILocation(line: 92, column: 14, scope: !519)
!535 = distinct !DISubprogram(name: "drop_in_place<&core::iter::adapters::copied::Copied<core::slice::iter::Iter<u8>>>", linkageName: "_ZN4core3ptr102drop_in_place$LT$$RF$core..iter..adapters..copied..Copied$LT$core..slice..iter..Iter$LT$u8$GT$$GT$$GT$17h5913dccf4681891cE", scope: !537, file: !536, line: 179, type: !504, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !6, retainedNodes: !6)
!536 = !DIFile(filename: "library/core/src/ptr/mod.rs", directory: "/rustc/2fd73fabe469357a12c2c974c140f67e7cdd76d0/", checksumkind: CSK_MD5, checksum: "a4f2d8ba04981bbf92ef9174cf1f1763")
!537 = !DINamespace(name: "ptr", scope: !15)
!538 = !DILocation(line: 179, column: 1, scope: !535)
!539 = distinct !DISubprogram(name: "type_id<core::panic::{{impl}}::internal_constructor::NoPayload>", linkageName: "_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h108f63b8120e9c9cE", scope: !541, file: !540, line: 132, type: !504, scopeLine: 132, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !7, templateParams: !6, retainedNodes: !6)
!540 = !DIFile(filename: "library/core/src/any.rs", directory: "/rustc/2fd73fabe469357a12c2c974c140f67e7cdd76d0/", checksumkind: CSK_MD5, checksum: "32c34b48413f866c45095b7ff538e0e3")
!541 = !DINamespace(name: "{{impl}}", scope: !542)
!542 = !DINamespace(name: "any", scope: !15)
!543 = !DILocation(line: 134, column: 6, scope: !539)
!544 = distinct !DISubprogram(name: "as_ptr<i8>", linkageName: "_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17h3e32bddb1561f66bE", scope: !546, file: !545, line: 412, type: !548, scopeLine: 412, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, templateParams: !556, retainedNodes: !554)
!545 = !DIFile(filename: "/rustc/2fd73fabe469357a12c2c974c140f67e7cdd76d0/library/core/src/slice/mod.rs", directory: "", checksumkind: CSK_MD5, checksum: "ea4e5ca9ae063a46c5941966a2eac2e5")
!546 = !DINamespace(name: "{{impl}}", scope: !547)
!547 = !DINamespace(name: "slice", scope: !15)
!548 = !DISubroutineType(types: !549)
!549 = !{!432, !550}
!550 = !DICompositeType(tag: DW_TAG_structure_type, name: "&[i8]", file: !13, size: 128, align: 64, elements: !551, templateParams: !6, identifier: "ff2d3342965f88c921150103b65d8d80")
!551 = !{!552, !553}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !550, file: !13, baseType: !432, size: 64, align: 64)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !550, file: !13, baseType: !50, size: 64, align: 64, offset: 64)
!554 = !{!555}
!555 = !DILocalVariable(name: "self", arg: 1, scope: !544, file: !545, line: 412, type: !550)
!556 = !{!557}
!557 = !DITemplateTypeParameter(name: "T", type: !31)
!558 = !DILocation(line: 412, column: 25, scope: !544)
!559 = !DILocation(line: 413, column: 9, scope: !544)
!560 = !DILocation(line: 414, column: 6, scope: !544)
!561 = distinct !DISubprogram(name: "panic", linkageName: "rust_begin_unwind", scope: !563, file: !562, line: 6, type: !564, scopeLine: 6, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition, unit: !380, templateParams: !6, retainedNodes: !695)
!562 = !DIFile(filename: "/home/ubuntu/.cargo/git/checkouts/panic-klee-aa8d015442188497/3b0c897/src/lib.rs", directory: "/home/ubuntu/.cargo/git/checkouts/panic-klee-aa8d015442188497/3b0c897", checksumkind: CSK_MD5, checksum: "679d388356417fae6fea835aa77aa0fa")
!563 = !DINamespace(name: "panic_klee", scope: null)
!564 = !DISubroutineType(types: !565)
!565 = !{null, !566}
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&core::panic::PanicInfo", baseType: !567, size: 64, align: 64, dwarfAddressSpace: 0)
!567 = !DICompositeType(tag: DW_TAG_structure_type, name: "PanicInfo", scope: !526, file: !13, size: 256, align: 64, elements: !568, templateParams: !6, identifier: "23073a3e1c3066e8dd151ebb635ec7a")
!568 = !{!569, !579, !688}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !567, file: !13, baseType: !570, size: 128, align: 64)
!570 = !DICompositeType(tag: DW_TAG_structure_type, name: "&Any", scope: !542, file: !13, size: 128, align: 64, elements: !571, templateParams: !6, identifier: "e5fb504cf2ab20f61e7b2437df5533a9")
!571 = !{!572, !574}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !570, file: !13, baseType: !573, size: 64, align: 64, flags: DIFlagArtificial)
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*mut u8", baseType: !16, size: 64, align: 64, dwarfAddressSpace: 0)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !570, file: !13, baseType: !575, size: 64, align: 64, offset: 64, flags: DIFlagArtificial)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&[usize; 3]", baseType: !576, size: 64, align: 64, dwarfAddressSpace: 0)
!576 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 192, align: 64, elements: !577)
!577 = !{!578}
!578 = !DISubrange(count: 3)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !567, file: !13, baseType: !580, size: 64, align: 64, offset: 128)
!580 = !DICompositeType(tag: DW_TAG_structure_type, name: "Option<&core::fmt::Arguments>", scope: !84, file: !13, size: 64, align: 64, elements: !581, identifier: "35d00f907d3af51c4ed332ee10d7e5c5")
!581 = !{!582}
!582 = !DICompositeType(tag: DW_TAG_variant_part, scope: !84, file: !13, size: 64, align: 64, elements: !583, templateParams: !586, identifier: "35d00f907d3af51c4ed332ee10d7e5c5_variant_part", discriminator: !114)
!583 = !{!584, !684}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "None", scope: !582, file: !13, baseType: !585, size: 64, align: 64, extraData: i64 0)
!585 = !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !580, file: !13, size: 64, align: 64, elements: !6, templateParams: !586, identifier: "35d00f907d3af51c4ed332ee10d7e5c5::None")
!586 = !{!587}
!587 = !DITemplateTypeParameter(name: "T", type: !588)
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&core::fmt::Arguments", baseType: !589, size: 64, align: 64, dwarfAddressSpace: 0)
!589 = !DICompositeType(tag: DW_TAG_structure_type, name: "Arguments", scope: !23, file: !13, size: 384, align: 64, elements: !590, templateParams: !6, identifier: "1a7c27c0b75627fec59278fe321fba57")
!590 = !{!591, !601, !646}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "pieces", scope: !589, file: !13, baseType: !592, size: 128, align: 64)
!592 = !DICompositeType(tag: DW_TAG_structure_type, name: "&[&str]", file: !13, size: 128, align: 64, elements: !593, templateParams: !6, identifier: "e5181a2ba73cefd2b9372dc5646453a9")
!593 = !{!594, !600}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !592, file: !13, baseType: !595, size: 64, align: 64)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*const &str", baseType: !596, size: 64, align: 64, dwarfAddressSpace: 0)
!596 = !DICompositeType(tag: DW_TAG_structure_type, name: "&str", file: !13, size: 128, align: 64, elements: !597, templateParams: !6, identifier: "7ef2a91eecc7bcf4b4aaea2dbce79437")
!597 = !{!598, !599}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !596, file: !13, baseType: !142, size: 64, align: 64)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !596, file: !13, baseType: !50, size: 64, align: 64, offset: 64)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !592, file: !13, baseType: !50, size: 64, align: 64, offset: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "fmt", scope: !589, file: !13, baseType: !602, size: 128, align: 64, offset: 128)
!602 = !DICompositeType(tag: DW_TAG_structure_type, name: "Option<&[core::fmt::rt::v1::Argument]>", scope: !84, file: !13, size: 128, align: 64, elements: !603, identifier: "b56d67b9b7feca2adbc2832ec8d0c46a")
!603 = !{!604}
!604 = !DICompositeType(tag: DW_TAG_variant_part, scope: !84, file: !13, size: 128, align: 64, elements: !605, templateParams: !608, identifier: "b56d67b9b7feca2adbc2832ec8d0c46a_variant_part", discriminator: !114)
!605 = !{!606, !642}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "None", scope: !604, file: !13, baseType: !607, size: 128, align: 64, extraData: i64 0)
!607 = !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !602, file: !13, size: 128, align: 64, elements: !6, templateParams: !608, identifier: "b56d67b9b7feca2adbc2832ec8d0c46a::None")
!608 = !{!609}
!609 = !DITemplateTypeParameter(name: "T", type: !610)
!610 = !DICompositeType(tag: DW_TAG_structure_type, name: "&[core::fmt::rt::v1::Argument]", file: !13, size: 128, align: 64, elements: !611, templateParams: !6, identifier: "8308f45ba37f738f58ea77e9c86e039b")
!611 = !{!612, !641}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !610, file: !13, baseType: !613, size: 64, align: 64)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*const core::fmt::rt::v1::Argument", baseType: !614, size: 64, align: 64, dwarfAddressSpace: 0)
!614 = !DICompositeType(tag: DW_TAG_structure_type, name: "Argument", scope: !21, file: !13, size: 448, align: 64, elements: !615, templateParams: !6, identifier: "691eb57fd0c8590a95019e7601130547")
!615 = !{!616, !617}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "position", scope: !614, file: !13, baseType: !50, size: 64, align: 64)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !614, file: !13, baseType: !618, size: 384, align: 64, offset: 64)
!618 = !DICompositeType(tag: DW_TAG_structure_type, name: "FormatSpec", scope: !21, file: !13, size: 384, align: 64, elements: !619, templateParams: !6, identifier: "7d53aaf36b2d51081e1179e46fb0ab6")
!619 = !{!620, !622, !623, !624, !640}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !618, file: !13, baseType: !621, size: 32, align: 32, offset: 256)
!621 = !DIBasicType(name: "char", size: 32, encoding: DW_ATE_unsigned_char)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !618, file: !13, baseType: !20, size: 8, align: 8, offset: 320)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !618, file: !13, baseType: !119, size: 32, align: 32, offset: 288)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !618, file: !13, baseType: !625, size: 128, align: 64)
!625 = !DICompositeType(tag: DW_TAG_structure_type, name: "Count", scope: !21, file: !13, size: 128, align: 64, elements: !626, identifier: "42e154d3efa76c68e7c6c9e5f44b41a2")
!626 = !{!627}
!627 = !DICompositeType(tag: DW_TAG_variant_part, scope: !21, file: !13, size: 128, align: 64, elements: !628, templateParams: !6, identifier: "42e154d3efa76c68e7c6c9e5f44b41a2_variant_part", discriminator: !639)
!628 = !{!629, !633, !637}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "Is", scope: !627, file: !13, baseType: !630, size: 128, align: 64, extraData: i64 0)
!630 = !DICompositeType(tag: DW_TAG_structure_type, name: "Is", scope: !625, file: !13, size: 128, align: 64, elements: !631, templateParams: !6, identifier: "42e154d3efa76c68e7c6c9e5f44b41a2::Is")
!631 = !{!632}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !630, file: !13, baseType: !50, size: 64, align: 64, offset: 64)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "Param", scope: !627, file: !13, baseType: !634, size: 128, align: 64, extraData: i64 1)
!634 = !DICompositeType(tag: DW_TAG_structure_type, name: "Param", scope: !625, file: !13, size: 128, align: 64, elements: !635, templateParams: !6, identifier: "42e154d3efa76c68e7c6c9e5f44b41a2::Param")
!635 = !{!636}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !634, file: !13, baseType: !50, size: 64, align: 64, offset: 64)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "Implied", scope: !627, file: !13, baseType: !638, size: 128, align: 64, extraData: i64 2)
!638 = !DICompositeType(tag: DW_TAG_structure_type, name: "Implied", scope: !625, file: !13, size: 128, align: 64, elements: !6, templateParams: !6, identifier: "42e154d3efa76c68e7c6c9e5f44b41a2::Implied")
!639 = !DIDerivedType(tag: DW_TAG_member, scope: !21, file: !13, baseType: !54, size: 64, align: 64, flags: DIFlagArtificial)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !618, file: !13, baseType: !625, size: 128, align: 64, offset: 128)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !610, file: !13, baseType: !50, size: 64, align: 64, offset: 64)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "Some", scope: !604, file: !13, baseType: !643, size: 128, align: 64)
!643 = !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !602, file: !13, size: 128, align: 64, elements: !644, templateParams: !608, identifier: "b56d67b9b7feca2adbc2832ec8d0c46a::Some")
!644 = !{!645}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !643, file: !13, baseType: !610, size: 128, align: 64)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !589, file: !13, baseType: !647, size: 128, align: 64, offset: 256)
!647 = !DICompositeType(tag: DW_TAG_structure_type, name: "&[core::fmt::ArgumentV1]", file: !13, size: 128, align: 64, elements: !648, templateParams: !6, identifier: "e95cec6dff5f479c9a45e2dcffa4a08f")
!648 = !{!649, !683}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "data_ptr", scope: !647, file: !13, baseType: !650, size: 64, align: 64)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "*const core::fmt::ArgumentV1", baseType: !651, size: 64, align: 64, dwarfAddressSpace: 0)
!651 = !DICompositeType(tag: DW_TAG_structure_type, name: "ArgumentV1", scope: !23, file: !13, size: 128, align: 64, elements: !652, templateParams: !6, identifier: "6619fd31a8de7fb48cfbb958bcaec8fe")
!652 = !{!653, !656}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !651, file: !13, baseType: !654, size: 64, align: 64)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&core::fmt::::Opaque", baseType: !655, size: 64, align: 64, dwarfAddressSpace: 0)
!655 = !DICompositeType(tag: DW_TAG_structure_type, name: "Opaque", file: !13, align: 8, elements: !6, identifier: "c7b909a8549e774811ca83990f5da58d")
!656 = !DIDerivedType(tag: DW_TAG_member, name: "formatter", scope: !651, file: !13, baseType: !657, size: 64, align: 64, offset: 64)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "fn(&core::fmt::::Opaque, &mut core::fmt::Formatter) -> core::result::Result<(), core::fmt::Error>", baseType: !658, size: 64, align: 64, dwarfAddressSpace: 0)
!658 = !DISubroutineType(types: !659)
!659 = !{!12, !654, !660}
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&mut core::fmt::Formatter", baseType: !661, size: 64, align: 64, dwarfAddressSpace: 0)
!661 = !DICompositeType(tag: DW_TAG_structure_type, name: "Formatter", scope: !23, file: !13, size: 512, align: 64, elements: !662, templateParams: !6, identifier: "d1c22cb052fcd55becb4d9e9c2761003")
!662 = !{!663, !664, !665, !666, !677, !678}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !661, file: !13, baseType: !119, size: 32, align: 32, offset: 384)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "fill", scope: !661, file: !13, baseType: !621, size: 32, align: 32, offset: 416)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !661, file: !13, baseType: !20, size: 8, align: 8, offset: 448)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !661, file: !13, baseType: !667, size: 128, align: 64)
!667 = !DICompositeType(tag: DW_TAG_structure_type, name: "Option<usize>", scope: !84, file: !13, size: 128, align: 64, elements: !668, identifier: "9332858134cb740a2a89b17fc22aeac2")
!668 = !{!669}
!669 = !DICompositeType(tag: DW_TAG_variant_part, scope: !84, file: !13, size: 128, align: 64, elements: !670, templateParams: !108, identifier: "9332858134cb740a2a89b17fc22aeac2_variant_part", discriminator: !114)
!670 = !{!671, !673}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "None", scope: !669, file: !13, baseType: !672, size: 128, align: 64, extraData: i64 0)
!672 = !DICompositeType(tag: DW_TAG_structure_type, name: "None", scope: !667, file: !13, size: 128, align: 64, elements: !6, templateParams: !108, identifier: "9332858134cb740a2a89b17fc22aeac2::None")
!673 = !DIDerivedType(tag: DW_TAG_member, name: "Some", scope: !669, file: !13, baseType: !674, size: 128, align: 64, extraData: i64 1)
!674 = !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !667, file: !13, size: 128, align: 64, elements: !675, templateParams: !108, identifier: "9332858134cb740a2a89b17fc22aeac2::Some")
!675 = !{!676}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !674, file: !13, baseType: !50, size: 64, align: 64, offset: 64)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !661, file: !13, baseType: !667, size: 128, align: 64, offset: 128)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !661, file: !13, baseType: !679, size: 128, align: 64, offset: 256)
!679 = !DICompositeType(tag: DW_TAG_structure_type, name: "&mut Write", scope: !23, file: !13, size: 128, align: 64, elements: !680, templateParams: !6, identifier: "110b4069ef19c710e8c916442189e601")
!680 = !{!681, !682}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !679, file: !13, baseType: !573, size: 64, align: 64, flags: DIFlagArtificial)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !679, file: !13, baseType: !575, size: 64, align: 64, offset: 64, flags: DIFlagArtificial)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !647, file: !13, baseType: !50, size: 64, align: 64, offset: 64)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "Some", scope: !582, file: !13, baseType: !685, size: 64, align: 64)
!685 = !DICompositeType(tag: DW_TAG_structure_type, name: "Some", scope: !580, file: !13, size: 64, align: 64, elements: !686, templateParams: !586, identifier: "35d00f907d3af51c4ed332ee10d7e5c5::Some")
!686 = !{!687}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "__0", scope: !685, file: !13, baseType: !588, size: 64, align: 64)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "location", scope: !567, file: !13, baseType: !689, size: 64, align: 64, offset: 192)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "&core::panic::Location", baseType: !690, size: 64, align: 64, dwarfAddressSpace: 0)
!690 = !DICompositeType(tag: DW_TAG_structure_type, name: "Location", scope: !526, file: !13, size: 192, align: 64, elements: !691, templateParams: !6, identifier: "56a2253ad3c59077399a1387cf540e32")
!691 = !{!692, !693, !694}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !690, file: !13, baseType: !596, size: 128, align: 64)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !690, file: !13, baseType: !119, size: 32, align: 32, offset: 128)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "col", scope: !690, file: !13, baseType: !119, size: 32, align: 32, offset: 160)
!695 = !{!696}
!696 = !DILocalVariable(name: "_info", arg: 1, scope: !561, file: !562, line: 6, type: !566)
!697 = !DILocation(line: 6, column: 10, scope: !561)
!698 = !DILocation(line: 8, column: 14, scope: !561)

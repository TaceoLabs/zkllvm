; ModuleID = '/opt/shared/Onnx2LLVM/Add/AddSimple.0.mlir.llvm'
source_filename = "LLVMDialectModule"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_entry_point_1_addsimple.llvm.0 = constant [32 x i8] c"run_main_graph_addsimple.llvm.0\00"
@_entry_point_1_in_sig_addsimple.llvm.0 = constant [128 x i8] c"[    { \22type\22 : \22f32\22 , \22dims\22 : [1 , 10] , \22name\22 : \22in_a\22 }\0A ,    { \22type\22 : \22f32\22 , \22dims\22 : [1 , 10] , \22name\22 : \22in_b\22 }\0A\0A]\00"
@_entry_point_1_out_sig_addsimple.llvm.0 = constant [65 x i8] c"[   { \22type\22 : \22f32\22 , \22dims\22 : [1 , 10] , \22name\22 : \22out_a\22 }\0A\0A]\00"
@_entry_point_0_addsimple.llvm.0 = constant [15 x i8] c"run_main_graph\00"
@_entry_point_0_in_sig_addsimple.llvm.0 = constant [128 x i8] c"[    { \22type\22 : \22f32\22 , \22dims\22 : [1 , 10] , \22name\22 : \22in_a\22 }\0A ,    { \22type\22 : \22f32\22 , \22dims\22 : [1 , 10] , \22name\22 : \22in_b\22 }\0A\0A]\00"
@_entry_point_0_out_sig_addsimple.llvm.0 = constant [65 x i8] c"[   { \22type\22 : \22f32\22 , \22dims\22 : [1 , 10] , \22name\22 : \22out_a\22 }\0A\0A]\00"

declare ptr @llvm.assigner.malloc(i64) #1

declare void @free(ptr)

declare i32 @strncmp(ptr, ptr, i64)

declare void @omGetExternalConstantAddr(ptr, ptr, i64)

declare void @omMMapBinaryFile(ptr, ptr, i64, i64)

declare i64 @omTensorListGetSize(ptr)

declare void @omTensorPrint(ptr, ptr)

declare ptr @omTensorListGetOmtArray(ptr)

declare void @omTensorSetDataType(ptr, i64)

declare i64 @omTensorGetDataType(ptr)

declare ptr @omTensorGetStrides(ptr)

declare ptr @omTensorGetShape(ptr)

declare i64 @omTensorGetRank(ptr)

declare void @omTensorSetDataPtr(ptr, i64, ptr, ptr)

declare ptr @omTensorGetDataPtr(ptr)

declare void @omTensorDestroy(ptr)

declare ptr @omTensorCreateUntyped(i64)

declare ptr @omTensorListCreate(ptr, i64)

define dso_local ptr @malloc(i64 noundef %size) local_unnamed_addr #2 {
entry:
  %0 = tail call ptr @llvm.assigner.malloc(i64 %size)
  ret ptr %0
}

define { ptr, ptr, i64, [2 x i64], [2 x i64] } @main_graph_addsimple.llvm.0(ptr %0, ptr %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, ptr %7, ptr %8, i64 %9, i64 %10, i64 %11, i64 %12, i64 %13) {
  %something = getelementptr __zkllvm_fixed1616, ptr null, i32 10
  %something1 = ptrtoint ptr %something to i64
  %result = add i64 %something1, 16
  %15 = call ptr @malloc(i64 %result)
  %16 = ptrtoint ptr %15 to i64
  %17 = add i64 %16, 15
  %18 = urem i64 %17, 16
  %19 = sub i64 %17, %18
  %20 = inttoptr i64 %19 to ptr
  %21 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %15, 0
  %22 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %21, ptr %20, 1
  %23 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %22, i64 0, 2
  %24 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %23, i64 1, 3, 0
  %25 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %24, i64 10, 3, 1
  %26 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %25, i64 10, 4, 0
  %27 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %26, i64 1, 4, 1
  br label %28

28:                                               ; preds = %47, %14
  %29 = phi i64 [ %48, %47 ], [ 0, %14 ]
  %30 = icmp slt i64 %29, 1
  br i1 %30, label %31, label %49

31:                                               ; preds = %28
  br label %32

32:                                               ; preds = %35, %31
  %33 = phi i64 [ %46, %35 ], [ 0, %31 ]
  %34 = icmp slt i64 %33, 10
  br i1 %34, label %35, label %47

35:                                               ; preds = %32
  %36 = add i64 0, %33
  %37 = getelementptr __zkllvm_fixed1616, ptr %1, i64 %36
  %38 = load __zkllvm_fixed1616, ptr %37, align 4
  %39 = add i64 0, %33
  %40 = getelementptr __zkllvm_fixed1616, ptr %8, i64 %39
  %41 = load __zkllvm_fixed1616, ptr %40, align 4
  %42 = fadd __zkllvm_fixed1616 %38, %41
  %43 = mul i64 %29, 10
  %44 = add i64 %43, %33
  %45 = getelementptr __zkllvm_fixed1616, ptr %20, i64 %44
  store __zkllvm_fixed1616 %42, ptr %45, align 4
  %46 = add i64 %33, 1
  br label %32

47:                                               ; preds = %32
  %48 = add i64 %29, 1
  br label %28

49:                                               ; preds = %28
  ret { ptr, ptr, i64, [2 x i64], [2 x i64] } %27
}

define void @_mlir_ciface_main_graph_addsimple.llvm.0(ptr %0, ptr %1, ptr %2) {
  %4 = load { ptr, ptr, i64, [2 x i64], [2 x i64] }, ptr %1, align 8
  %5 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %4, 0
  %6 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %4, 1
  %7 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %4, 2
  %8 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %4, 3, 0
  %9 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %4, 3, 1
  %10 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %4, 4, 0
  %11 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %4, 4, 1
  %12 = load { ptr, ptr, i64, [2 x i64], [2 x i64] }, ptr %2, align 8
  %13 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %12, 0
  %14 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %12, 1
  %15 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %12, 2
  %16 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %12, 3, 0
  %17 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %12, 3, 1
  %18 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %12, 4, 0
  %19 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %12, 4, 1
  %20 = call { ptr, ptr, i64, [2 x i64], [2 x i64] } @main_graph_addsimple.llvm.0(ptr %5, ptr %6, i64 %7, i64 %8, i64 %9, i64 %10, i64 %11, ptr %13, ptr %14, i64 %15, i64 %16, i64 %17, i64 %18, i64 %19)
  store { ptr, ptr, i64, [2 x i64], [2 x i64] } %20, ptr %0, align 8
  ret void
}

define ptr @run_main_graph_addsimple.llvm.0(ptr %0) {
  %2 = call ptr @omTensorListGetOmtArray(ptr %0)
  %3 = alloca { ptr, ptr, i64, [2 x i64], [2 x i64] }, i64 1, align 8
  %4 = load ptr, ptr %2, align 8
  %5 = alloca { ptr, ptr, i64, [2 x i64], [2 x i64] }, i64 1, align 8
  %6 = call ptr @omTensorGetDataPtr(ptr %4)
  %7 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %6, 0
  %8 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %7, ptr %6, 1
  %9 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %8, i64 0, 2
  %10 = call ptr @omTensorGetShape(ptr %4)
  %11 = call ptr @omTensorGetStrides(ptr %4)
  %12 = load i64, ptr %10, align 8
  %13 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %9, i64 %12, 3, 0
  %14 = load i64, ptr %11, align 8
  %15 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %13, i64 %14, 4, 0
  %16 = getelementptr i64, ptr %10, i32 1
  %17 = load i64, ptr %16, align 8
  %18 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %15, i64 %17, 3, 1
  %19 = getelementptr i64, ptr %11, i32 1
  %20 = load i64, ptr %19, align 8
  %21 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %18, i64 %20, 4, 1
  store { ptr, ptr, i64, [2 x i64], [2 x i64] } %21, ptr %5, align 8
  %22 = getelementptr ptr, ptr %2, i32 1
  %23 = load ptr, ptr %22, align 8
  %24 = alloca { ptr, ptr, i64, [2 x i64], [2 x i64] }, i64 1, align 8
  %25 = call ptr @omTensorGetDataPtr(ptr %23)
  %26 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %25, 0
  %27 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %26, ptr %25, 1
  %28 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %27, i64 0, 2
  %29 = call ptr @omTensorGetShape(ptr %23)
  %30 = call ptr @omTensorGetStrides(ptr %23)
  %31 = load i64, ptr %29, align 8
  %32 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %28, i64 %31, 3, 0
  %33 = load i64, ptr %30, align 8
  %34 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %32, i64 %33, 4, 0
  %35 = getelementptr i64, ptr %29, i32 1
  %36 = load i64, ptr %35, align 8
  %37 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %34, i64 %36, 3, 1
  %38 = getelementptr i64, ptr %30, i32 1
  %39 = load i64, ptr %38, align 8
  %40 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %37, i64 %39, 4, 1
  store { ptr, ptr, i64, [2 x i64], [2 x i64] } %40, ptr %24, align 8
  call void @_mlir_ciface_main_graph_addsimple.llvm.0(ptr %3, ptr %5, ptr %24)
  %41 = load { ptr, ptr, i64, [2 x i64], [2 x i64] }, ptr %3, align 8
  %42 = alloca ptr, i64 1, align 8
  %43 = call ptr @omTensorCreateUntyped(i64 2)
  %44 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %41, 0
  %45 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %41, 1
  call void @omTensorSetDataPtr(ptr %43, i64 1, ptr %44, ptr %45)
  call void @omTensorSetDataType(ptr %43, i64 1)
  %46 = call ptr @omTensorGetShape(ptr %43)
  %47 = call ptr @omTensorGetStrides(ptr %43)
  %48 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %41, 3, 0
  store i64 %48, ptr %46, align 8
  %49 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %41, 4, 0
  store i64 %49, ptr %47, align 8
  %50 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %41, 3, 1
  %51 = getelementptr i64, ptr %46, i32 1
  store i64 %50, ptr %51, align 8
  %52 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %41, 4, 1
  %53 = getelementptr i64, ptr %47, i32 1
  store i64 %52, ptr %53, align 8
  store ptr %43, ptr %42, align 8
  %54 = call ptr @omTensorListCreate(ptr %42, i64 1)
  ret ptr %54
}

define ptr @run_main_graph(ptr %0) #0{
  %2 = call ptr @run_main_graph_addsimple.llvm.0(ptr %0)
  ret ptr %2
}


define ptr @omInputSignature_addsimple.llvm.0(ptr %0) {
  %2 = call i32 @strncmp(ptr %0, ptr @_entry_point_0_addsimple.llvm.0, i64 15)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  ret ptr @_entry_point_0_in_sig_addsimple.llvm.0

5:                                                ; preds = %1
  %6 = call i32 @strncmp(ptr %0, ptr @_entry_point_1_addsimple.llvm.0, i64 32)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  ret ptr @_entry_point_1_in_sig_addsimple.llvm.0

9:                                                ; preds = %5
  ret ptr null
}

define ptr @omInputSignature(ptr %0) {
  %2 = call ptr @omInputSignature_addsimple.llvm.0(ptr %0)
  ret ptr %2
}

define ptr @omOutputSignature_addsimple.llvm.0(ptr %0) {
  %2 = call i32 @strncmp(ptr %0, ptr @_entry_point_0_addsimple.llvm.0, i64 15)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  ret ptr @_entry_point_0_out_sig_addsimple.llvm.0

5:                                                ; preds = %1
  %6 = call i32 @strncmp(ptr %0, ptr @_entry_point_1_addsimple.llvm.0, i64 32)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  ret ptr @_entry_point_1_out_sig_addsimple.llvm.0

9:                                                ; preds = %5
  ret ptr null
}

define ptr @omOutputSignature(ptr %0) {
  %2 = call ptr @omOutputSignature_addsimple.llvm.0(ptr %0)
  ret ptr %2
}

attributes #0 = { circuit }
attributes #1 = { nounwind }
attributes #2 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}

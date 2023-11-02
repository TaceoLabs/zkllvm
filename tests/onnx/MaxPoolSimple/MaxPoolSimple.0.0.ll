; ModuleID = '/opt/shared/Onnx2LLVM/MaxPool/MaxPoolSimple.0.mlir.llvm'
source_filename = "LLVMDialectModule"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_entry_point_1_maxpoolsimple.llvm.0 = constant [36 x i8] c"run_main_graph_maxpoolsimple.llvm.0\00"
@_entry_point_1_in_sig_maxpoolsimple.llvm.0 = constant [74 x i8] c"[    { \22type\22 : \22f32\22 , \22dims\22 : [1 , 1 , 28 , 28] , \22name\22 : \22in_a\22 }\0A\0A]\00"
@_entry_point_1_out_sig_maxpoolsimple.llvm.0 = constant [74 x i8] c"[   { \22type\22 : \22f32\22 , \22dims\22 : [1 , 1 , 14 , 14] , \22name\22 : \22out_a\22 }\0A\0A]\00"
@_entry_point_0_maxpoolsimple.llvm.0 = constant [15 x i8] c"run_main_graph\00"
@_entry_point_0_in_sig_maxpoolsimple.llvm.0 = constant [74 x i8] c"[    { \22type\22 : \22f32\22 , \22dims\22 : [1 , 1 , 28 , 28] , \22name\22 : \22in_a\22 }\0A\0A]\00"
@_entry_point_0_out_sig_maxpoolsimple.llvm.0 = constant [74 x i8] c"[   { \22type\22 : \22f32\22 , \22dims\22 : [1 , 1 , 14 , 14] , \22name\22 : \22out_a\22 }\0A\0A]\00"

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

declare ptr @llvm.assigner.malloc(i64) #3

declare void @llvm.assigner.free(ptr) #4

define dso_local ptr @malloc(i64 noundef %size) local_unnamed_addr #2 {
entry:
  %0 = tail call ptr @llvm.assigner.malloc(i64 %size)
  ret ptr %0
}

define dso_local void @free(ptr noundef %ptr) local_unnamed_addr #2 {
entry:
  tail call void @llvm.assigner.free(ptr %ptr)
  ret void
}

define { ptr, ptr, i64, [4 x i64], [4 x i64] } @main_graph_maxpoolsimple.llvm.0(ptr %0, ptr %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, i64 %7, i64 %8, i64 %9, i64 %10) {
  %something = getelementptr __zkllvm_fixed1616, ptr null, i32 196
  %something1 = ptrtoint ptr %something to i64
  %result = add i64 %something1, 16
  %12 = call ptr @malloc(i64 %result)
  %13 = ptrtoint ptr %12 to i64
  %14 = add i64 %13, 15
  %15 = urem i64 %14, 16
  %16 = sub i64 %14, %15
  %17 = inttoptr i64 %16 to ptr
  %18 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } undef, ptr %12, 0
  %19 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %18, ptr %17, 1
  %20 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %19, i64 0, 2
  %21 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %20, i64 1, 3, 0
  %22 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %21, i64 1, 3, 1
  %23 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %22, i64 14, 3, 2
  %24 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %23, i64 14, 3, 3
  %25 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %24, i64 196, 4, 0
  %26 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %25, i64 196, 4, 1
  %27 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %26, i64 14, 4, 2
  %28 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %27, i64 1, 4, 3
  %29 = alloca __zkllvm_fixed1616, i64 1, align 4
  br label %30

30:                                               ; preds = %90, %11
  %31 = phi i64 [ %91, %90 ], [ 0, %11 ]
  %32 = icmp slt i64 %31, 1
  br i1 %32, label %33, label %92

33:                                               ; preds = %30
  br label %34

34:                                               ; preds = %88, %33
  %35 = phi i64 [ %89, %88 ], [ 0, %33 ]
  %36 = icmp slt i64 %35, 1
  br i1 %36, label %37, label %90

37:                                               ; preds = %34
  br label %38

38:                                               ; preds = %86, %37
  %39 = phi i64 [ %87, %86 ], [ 0, %37 ]
  %40 = icmp slt i64 %39, 14
  br i1 %40, label %41, label %88

41:                                               ; preds = %38
  br label %42

42:                                               ; preds = %76, %41
  %43 = phi i64 [ %85, %76 ], [ 0, %41 ]
  %44 = icmp slt i64 %43, 14
  br i1 %44, label %45, label %86

45:                                               ; preds = %42
  store __zkllvm_fixed1616 0xFFF0000000000000, ptr %29, align 4
  %46 = mul i64 %39, 2
  %47 = icmp slt i64 %46, 0
  %48 = select i1 %47, i64 0, i64 %46
  %49 = mul i64 %43, 2
  %50 = icmp slt i64 %49, 0
  %51 = select i1 %50, i64 0, i64 %49
  br label %52

52:                                               ; preds = %74, %45
  %53 = phi i64 [ %75, %74 ], [ 0, %45 ]
  %54 = icmp slt i64 %53, 2
  br i1 %54, label %55, label %76

55:                                               ; preds = %52
  br label %56

56:                                               ; preds = %59, %55
  %57 = phi i64 [ %73, %59 ], [ 0, %55 ]
  %58 = icmp slt i64 %57, 2
  br i1 %58, label %59, label %74

59:                                               ; preds = %56
  %60 = add i64 %53, %48
  %61 = add i64 %57, %51
  %62 = mul i64 %31, 784
  %63 = mul i64 %35, 784
  %64 = add i64 %62, %63
  %65 = mul i64 %60, 28
  %66 = add i64 %64, %65
  %67 = add i64 %66, %61
  %68 = getelementptr __zkllvm_fixed1616, ptr %1, i64 %67
  %69 = load __zkllvm_fixed1616, ptr %68, align 4
  %70 = load __zkllvm_fixed1616, ptr %29, align 4
  %71 = fcmp ogt __zkllvm_fixed1616 %70, %69
  %72 = select i1 %71, __zkllvm_fixed1616 %70, __zkllvm_fixed1616 %69
  store __zkllvm_fixed1616 %72, ptr %29, align 4
  %73 = add i64 %57, 1
  br label %56

74:                                               ; preds = %56
  %75 = add i64 %53, 1
  br label %52

76:                                               ; preds = %52
  %77 = load __zkllvm_fixed1616, ptr %29, align 4
  %78 = mul i64 %31, 196
  %79 = mul i64 %35, 196
  %80 = add i64 %78, %79
  %81 = mul i64 %39, 14
  %82 = add i64 %80, %81
  %83 = add i64 %82, %43
  %84 = getelementptr __zkllvm_fixed1616, ptr %17, i64 %83
  store __zkllvm_fixed1616 %77, ptr %84, align 4
  %85 = add i64 %43, 1
  br label %42

86:                                               ; preds = %42
  %87 = add i64 %39, 1
  br label %38

88:                                               ; preds = %38
  %89 = add i64 %35, 1
  br label %34

90:                                               ; preds = %34
  %91 = add i64 %31, 1
  br label %30

92:                                               ; preds = %30
  ret { ptr, ptr, i64, [4 x i64], [4 x i64] } %28
}

define void @_mlir_ciface_main_graph_maxpoolsimple.llvm.0(ptr %0, ptr %1) {
  %3 = load { ptr, ptr, i64, [4 x i64], [4 x i64] }, ptr %1, align 8
  %4 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %3, 0
  %5 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %3, 1
  %6 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %3, 2
  %7 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %3, 3, 0
  %8 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %3, 3, 1
  %9 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %3, 3, 2
  %10 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %3, 3, 3
  %11 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %3, 4, 0
  %12 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %3, 4, 1
  %13 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %3, 4, 2
  %14 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %3, 4, 3
  %15 = call { ptr, ptr, i64, [4 x i64], [4 x i64] } @main_graph_maxpoolsimple.llvm.0(ptr %4, ptr %5, i64 %6, i64 %7, i64 %8, i64 %9, i64 %10, i64 %11, i64 %12, i64 %13, i64 %14)
  store { ptr, ptr, i64, [4 x i64], [4 x i64] } %15, ptr %0, align 8
  ret void
}

define ptr @run_main_graph_maxpoolsimple.llvm.0(ptr %0) {
  %2 = call ptr @omTensorListGetOmtArray(ptr %0)
  %3 = alloca { ptr, ptr, i64, [4 x i64], [4 x i64] }, i64 1, align 8
  %4 = load ptr, ptr %2, align 8
  %5 = alloca { ptr, ptr, i64, [4 x i64], [4 x i64] }, i64 1, align 8
  %6 = call ptr @omTensorGetDataPtr(ptr %4)
  %7 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } undef, ptr %6, 0
  %8 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %7, ptr %6, 1
  %9 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %8, i64 0, 2
  %10 = call ptr @omTensorGetShape(ptr %4)
  %11 = call ptr @omTensorGetStrides(ptr %4)
  %12 = load i64, ptr %10, align 8
  %13 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %9, i64 %12, 3, 0
  %14 = load i64, ptr %11, align 8
  %15 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %13, i64 %14, 4, 0
  %16 = getelementptr i64, ptr %10, i32 1
  %17 = load i64, ptr %16, align 8
  %18 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %15, i64 %17, 3, 1
  %19 = getelementptr i64, ptr %11, i32 1
  %20 = load i64, ptr %19, align 8
  %21 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %18, i64 %20, 4, 1
  %22 = getelementptr i64, ptr %10, i32 2
  %23 = load i64, ptr %22, align 8
  %24 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %21, i64 %23, 3, 2
  %25 = getelementptr i64, ptr %11, i32 2
  %26 = load i64, ptr %25, align 8
  %27 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %24, i64 %26, 4, 2
  %28 = getelementptr i64, ptr %10, i32 3
  %29 = load i64, ptr %28, align 8
  %30 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %27, i64 %29, 3, 3
  %31 = getelementptr i64, ptr %11, i32 3
  %32 = load i64, ptr %31, align 8
  %33 = insertvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %30, i64 %32, 4, 3
  store { ptr, ptr, i64, [4 x i64], [4 x i64] } %33, ptr %5, align 8
  call void @_mlir_ciface_main_graph_maxpoolsimple.llvm.0(ptr %3, ptr %5)
  %34 = load { ptr, ptr, i64, [4 x i64], [4 x i64] }, ptr %3, align 8
  %35 = alloca ptr, i64 1, align 8
  %36 = call ptr @omTensorCreateUntyped(i64 4)
  %37 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %34, 0
  %38 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %34, 1
  call void @omTensorSetDataPtr(ptr %36, i64 1, ptr %37, ptr %38)
  call void @omTensorSetDataType(ptr %36, i64 1)
  %39 = call ptr @omTensorGetShape(ptr %36)
  %40 = call ptr @omTensorGetStrides(ptr %36)
  %41 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %34, 3, 0
  store i64 %41, ptr %39, align 8
  %42 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %34, 4, 0
  store i64 %42, ptr %40, align 8
  %43 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %34, 3, 1
  %44 = getelementptr i64, ptr %39, i32 1
  store i64 %43, ptr %44, align 8
  %45 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %34, 4, 1
  %46 = getelementptr i64, ptr %40, i32 1
  store i64 %45, ptr %46, align 8
  %47 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %34, 3, 2
  %48 = getelementptr i64, ptr %39, i32 2
  store i64 %47, ptr %48, align 8
  %49 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %34, 4, 2
  %50 = getelementptr i64, ptr %40, i32 2
  store i64 %49, ptr %50, align 8
  %51 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %34, 3, 3
  %52 = getelementptr i64, ptr %39, i32 3
  store i64 %51, ptr %52, align 8
  %53 = extractvalue { ptr, ptr, i64, [4 x i64], [4 x i64] } %34, 4, 3
  %54 = getelementptr i64, ptr %40, i32 3
  store i64 %53, ptr %54, align 8
  store ptr %36, ptr %35, align 8
  %55 = call ptr @omTensorListCreate(ptr %35, i64 1)
  ret ptr %55
}

define ptr @run_main_graph(ptr %0) #1 {
  %2 = call ptr @run_main_graph_maxpoolsimple.llvm.0(ptr %0)
  ret ptr %2
}


define ptr @omInputSignature_maxpoolsimple.llvm.0(ptr %0) {
  %2 = call i32 @strncmp(ptr %0, ptr @_entry_point_0_maxpoolsimple.llvm.0, i64 15)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  ret ptr @_entry_point_0_in_sig_maxpoolsimple.llvm.0

5:                                                ; preds = %1
  %6 = call i32 @strncmp(ptr %0, ptr @_entry_point_1_maxpoolsimple.llvm.0, i64 36)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  ret ptr @_entry_point_1_in_sig_maxpoolsimple.llvm.0

9:                                                ; preds = %5
  ret ptr null
}

define ptr @omInputSignature(ptr %0) {
  %2 = call ptr @omInputSignature_maxpoolsimple.llvm.0(ptr %0)
  ret ptr %2
}

define ptr @omOutputSignature_maxpoolsimple.llvm.0(ptr %0) {
  %2 = call i32 @strncmp(ptr %0, ptr @_entry_point_0_maxpoolsimple.llvm.0, i64 15)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  ret ptr @_entry_point_0_out_sig_maxpoolsimple.llvm.0

5:                                                ; preds = %1
  %6 = call i32 @strncmp(ptr %0, ptr @_entry_point_1_maxpoolsimple.llvm.0, i64 36)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  ret ptr @_entry_point_1_out_sig_maxpoolsimple.llvm.0

9:                                                ; preds = %5
  ret ptr null
}

define ptr @omOutputSignature(ptr %0) {
  %2 = call ptr @omOutputSignature_maxpoolsimple.llvm.0(ptr %0)
  ret ptr %2
}

attributes #1 = { circuit }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #3 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #4 = { nounwind }
!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}

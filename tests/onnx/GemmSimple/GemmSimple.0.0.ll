; ModuleID = '/opt/shared/Onnx2LLVM/Gemm/GemmSimple.0.mlir.llvm'
source_filename = "LLVMDialectModule"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_entry_point_1_gemmsimple.llvm.0 = constant [33 x i8] c"run_main_graph_gemmsimple.llvm.0\00"
@_entry_point_1_in_sig_gemmsimple.llvm.0 = constant [192 x i8] c"[    { \22type\22 : \22f32\22 , \22dims\22 : [1 , 196] , \22name\22 : \22in_a\22 }\0A ,    { \22type\22 : \22f32\22 , \22dims\22 : [128 , 196] , \22name\22 : \22in_b\22 }\0A ,    { \22type\22 : \22f32\22 , \22dims\22 : [128] , \22name\22 : \22in_c\22 }\0A\0A]\00"
@_entry_point_1_out_sig_gemmsimple.llvm.0 = constant [66 x i8] c"[   { \22type\22 : \22f32\22 , \22dims\22 : [1 , 128] , \22name\22 : \22out_a\22 }\0A\0A]\00"
@_entry_point_0_gemmsimple.llvm.0 = constant [15 x i8] c"run_main_graph\00"
@_entry_point_0_in_sig_gemmsimple.llvm.0 = constant [192 x i8] c"[    { \22type\22 : \22f32\22 , \22dims\22 : [1 , 196] , \22name\22 : \22in_a\22 }\0A ,    { \22type\22 : \22f32\22 , \22dims\22 : [128 , 196] , \22name\22 : \22in_b\22 }\0A ,    { \22type\22 : \22f32\22 , \22dims\22 : [128] , \22name\22 : \22in_c\22 }\0A\0A]\00"
@_entry_point_0_out_sig_gemmsimple.llvm.0 = constant [66 x i8] c"[   { \22type\22 : \22f32\22 , \22dims\22 : [1 , 128] , \22name\22 : \22out_a\22 }\0A\0A]\00"

declare ptr @llvm.assigner.malloc(i64) #3

declare void @llvm.assigner.free(ptr) #4

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

define dso_local void @free(ptr noundef %ptr) local_unnamed_addr #2 {
entry:
  tail call void @llvm.assigner.free(ptr %ptr)
  ret void
}

define { ptr, ptr, i64, [2 x i64], [2 x i64] } @main_graph_gemmsimple.llvm.0(ptr %0, ptr %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, ptr %7, ptr %8, i64 %9, i64 %10, i64 %11, i64 %12, i64 %13, ptr %14, ptr %15, i64 %16, i64 %17, i64 %18) {
  %something = getelementptr __zkllvm_fixed1616, ptr null, i32 128
  %something1 = ptrtoint ptr %something to i64
  %result = add i64 %something1, 128
  %20 = call ptr @malloc(i64 %result)
  %21 = ptrtoint ptr %20 to i64
  %22 = add i64 %21, 127
  %23 = urem i64 %22, 128
  %24 = sub i64 %22, %23
  %25 = inttoptr i64 %24 to ptr
  %26 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %20, 0
  %27 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %26, ptr %25, 1
  %28 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %27, i64 0, 2
  %29 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %28, i64 1, 3, 0
  %30 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %29, i64 128, 3, 1
  %31 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %30, i64 128, 4, 0
  %32 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %31, i64 1, 4, 1
  %33 = alloca __zkllvm_fixed1616, i64 1, align 4
  br label %34

34:                                               ; preds = %67, %19
  %35 = phi i64 [ %68, %67 ], [ 0, %19 ]
  %36 = icmp slt i64 %35, 1
  br i1 %36, label %37, label %69

37:                                               ; preds = %34
  br label %38

38:                                               ; preds = %58, %37
  %39 = phi i64 [ %66, %58 ], [ 0, %37 ]
  %40 = icmp slt i64 %39, 128
  br i1 %40, label %41, label %67

41:                                               ; preds = %38
  store __zkllvm_fixed1616 0.000000e+00, ptr %33, align 4
  br label %42

42:                                               ; preds = %45, %41
  %43 = phi i64 [ %57, %45 ], [ 0, %41 ]
  %44 = icmp slt i64 %43, 196
  br i1 %44, label %45, label %58

45:                                               ; preds = %42
  %46 = mul i64 %35, 196
  %47 = add i64 %46, %43
  %48 = getelementptr __zkllvm_fixed1616, ptr %1, i64 %47
  %49 = load __zkllvm_fixed1616, ptr %48, align 4
  %50 = mul i64 %39, 196
  %51 = add i64 %50, %43
  %52 = getelementptr __zkllvm_fixed1616, ptr %8, i64 %51
  %53 = load __zkllvm_fixed1616, ptr %52, align 4
  %54 = fmul __zkllvm_fixed1616 %49, %53
  %55 = load __zkllvm_fixed1616, ptr %33, align 4
  %56 = fadd __zkllvm_fixed1616 %54, %55
  store __zkllvm_fixed1616 %56, ptr %33, align 4
  %57 = add i64 %43, 1
  br label %42

58:                                               ; preds = %42
  %59 = load __zkllvm_fixed1616, ptr %33, align 4
  %60 = getelementptr __zkllvm_fixed1616, ptr %15, i64 %39
  %61 = load __zkllvm_fixed1616, ptr %60, align 4
  %62 = fadd __zkllvm_fixed1616 %59, %61
  %63 = mul i64 %35, 128
  %64 = add i64 %63, %39
  %65 = getelementptr __zkllvm_fixed1616, ptr %25, i64 %64
  store __zkllvm_fixed1616 %62, ptr %65, align 4
  %66 = add i64 %39, 1
  br label %38

67:                                               ; preds = %38
  %68 = add i64 %35, 1
  br label %34

69:                                               ; preds = %34
  ret { ptr, ptr, i64, [2 x i64], [2 x i64] } %32
}

define void @_mlir_ciface_main_graph_gemmsimple.llvm.0(ptr %0, ptr %1, ptr %2, ptr %3) {
  %5 = load { ptr, ptr, i64, [2 x i64], [2 x i64] }, ptr %1, align 8
  %6 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %5, 0
  %7 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %5, 1
  %8 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %5, 2
  %9 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %5, 3, 0
  %10 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %5, 3, 1
  %11 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %5, 4, 0
  %12 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %5, 4, 1
  %13 = load { ptr, ptr, i64, [2 x i64], [2 x i64] }, ptr %2, align 8
  %14 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %13, 0
  %15 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %13, 1
  %16 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %13, 2
  %17 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %13, 3, 0
  %18 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %13, 3, 1
  %19 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %13, 4, 0
  %20 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %13, 4, 1
  %21 = load { ptr, ptr, i64, [1 x i64], [1 x i64] }, ptr %3, align 8
  %22 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %21, 0
  %23 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %21, 1
  %24 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %21, 2
  %25 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %21, 3, 0
  %26 = extractvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %21, 4, 0
  %27 = call { ptr, ptr, i64, [2 x i64], [2 x i64] } @main_graph_gemmsimple.llvm.0(ptr %6, ptr %7, i64 %8, i64 %9, i64 %10, i64 %11, i64 %12, ptr %14, ptr %15, i64 %16, i64 %17, i64 %18, i64 %19, i64 %20, ptr %22, ptr %23, i64 %24, i64 %25, i64 %26)
  store { ptr, ptr, i64, [2 x i64], [2 x i64] } %27, ptr %0, align 8
  ret void
}

define ptr @run_main_graph_gemmsimple.llvm.0(ptr %0) {
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
  %41 = getelementptr ptr, ptr %2, i32 2
  %42 = load ptr, ptr %41, align 8
  %43 = alloca { ptr, ptr, i64, [1 x i64], [1 x i64] }, i64 1, align 8
  %44 = call ptr @omTensorGetDataPtr(ptr %42)
  %45 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } undef, ptr %44, 0
  %46 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %45, ptr %44, 1
  %47 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %46, i64 0, 2
  %48 = call ptr @omTensorGetShape(ptr %42)
  %49 = call ptr @omTensorGetStrides(ptr %42)
  %50 = load i64, ptr %48, align 8
  %51 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %47, i64 %50, 3, 0
  %52 = load i64, ptr %49, align 8
  %53 = insertvalue { ptr, ptr, i64, [1 x i64], [1 x i64] } %51, i64 %52, 4, 0
  store { ptr, ptr, i64, [1 x i64], [1 x i64] } %53, ptr %43, align 8
  call void @_mlir_ciface_main_graph_gemmsimple.llvm.0(ptr %3, ptr %5, ptr %24, ptr %43)
  %54 = load { ptr, ptr, i64, [2 x i64], [2 x i64] }, ptr %3, align 8
  %55 = alloca ptr, i64 1, align 8
  %56 = call ptr @omTensorCreateUntyped(i64 2)
  %57 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %54, 0
  %58 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %54, 1
  call void @omTensorSetDataPtr(ptr %56, i64 1, ptr %57, ptr %58)
  call void @omTensorSetDataType(ptr %56, i64 1)
  %59 = call ptr @omTensorGetShape(ptr %56)
  %60 = call ptr @omTensorGetStrides(ptr %56)
  %61 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %54, 3, 0
  store i64 %61, ptr %59, align 8
  %62 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %54, 4, 0
  store i64 %62, ptr %60, align 8
  %63 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %54, 3, 1
  %64 = getelementptr i64, ptr %59, i32 1
  store i64 %63, ptr %64, align 8
  %65 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %54, 4, 1
  %66 = getelementptr i64, ptr %60, i32 1
  store i64 %65, ptr %66, align 8
  store ptr %56, ptr %55, align 8
  %67 = call ptr @omTensorListCreate(ptr %55, i64 1)
  ret ptr %67
}

define ptr @run_main_graph(ptr %0) #1 {
  %2 = call ptr @run_main_graph_gemmsimple.llvm.0(ptr %0)
  ret ptr %2
}


define ptr @omInputSignature_gemmsimple.llvm.0(ptr %0) {
  %2 = call i32 @strncmp(ptr %0, ptr @_entry_point_0_gemmsimple.llvm.0, i64 15)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  ret ptr @_entry_point_0_in_sig_gemmsimple.llvm.0

5:                                                ; preds = %1
  %6 = call i32 @strncmp(ptr %0, ptr @_entry_point_1_gemmsimple.llvm.0, i64 33)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  ret ptr @_entry_point_1_in_sig_gemmsimple.llvm.0

9:                                                ; preds = %5
  ret ptr null
}

define ptr @omInputSignature(ptr %0) {
  %2 = call ptr @omInputSignature_gemmsimple.llvm.0(ptr %0)
  ret ptr %2
}

define ptr @omOutputSignature_gemmsimple.llvm.0(ptr %0) {
  %2 = call i32 @strncmp(ptr %0, ptr @_entry_point_0_gemmsimple.llvm.0, i64 15)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  ret ptr @_entry_point_0_out_sig_gemmsimple.llvm.0

5:                                                ; preds = %1
  %6 = call i32 @strncmp(ptr %0, ptr @_entry_point_1_gemmsimple.llvm.0, i64 33)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  ret ptr @_entry_point_1_out_sig_gemmsimple.llvm.0

9:                                                ; preds = %5
  ret ptr null
}

define ptr @omOutputSignature(ptr %0) {
  %2 = call ptr @omOutputSignature_gemmsimple.llvm.0(ptr %0)
  ret ptr %2
}

attributes #1 = { circuit }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #3 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #4 = { nounwind }
!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}

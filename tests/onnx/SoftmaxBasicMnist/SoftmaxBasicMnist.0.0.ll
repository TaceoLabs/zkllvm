; ModuleID = '/opt/shared/Onnx2LLVM/Softmax/SoftmaxBasicMnist.0.mlir.llvm'
source_filename = "LLVMDialectModule"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_entry_point_1_softmaxbasicmnist.llvm.0 = constant [40 x i8] c"run_main_graph_softmaxbasicmnist.llvm.0\00"
@_entry_point_1_in_sig_softmaxbasicmnist.llvm.0 = constant [65 x i8] c"[    { \22type\22 : \22f32\22 , \22dims\22 : [1 , 10] , \22name\22 : \22in_a\22 }\0A\0A]\00"
@_entry_point_1_out_sig_softmaxbasicmnist.llvm.0 = constant [65 x i8] c"[   { \22type\22 : \22f32\22 , \22dims\22 : [1 , 10] , \22name\22 : \22out_a\22 }\0A\0A]\00"
@_entry_point_0_softmaxbasicmnist.llvm.0 = constant [15 x i8] c"run_main_graph\00"
@_entry_point_0_in_sig_softmaxbasicmnist.llvm.0 = constant [65 x i8] c"[    { \22type\22 : \22f32\22 , \22dims\22 : [1 , 10] , \22name\22 : \22in_a\22 }\0A\0A]\00"
@_entry_point_0_out_sig_softmaxbasicmnist.llvm.0 = constant [65 x i8] c"[   { \22type\22 : \22f32\22 , \22dims\22 : [1 , 10] , \22name\22 : \22out_a\22 }\0A\0A]\00"

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

define { ptr, ptr, i64, [2 x i64], [2 x i64] } @main_graph_softmaxbasicmnist.llvm.0(ptr %0, ptr %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6) {
  %something = getelementptr __zkllvm_fixed1616, ptr null, i32 10
  %something1 = ptrtoint ptr %something to i64
  %result = add i64 %something1, 16
  %8 = call ptr @malloc(i64 %result)
  %9 = ptrtoint ptr %8 to i64
  %10 = add i64 %9, 15
  %11 = urem i64 %10, 16
  %12 = sub i64 %10, %11
  %13 = inttoptr i64 %12 to ptr
  %14 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %8, 0
  %15 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %14, ptr %13, 1
  %16 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %15, i64 0, 2
  %17 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %16, i64 1, 3, 0
  %18 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %17, i64 10, 3, 1
  %19 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %18, i64 10, 4, 0
  %20 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %19, i64 1, 4, 1
  %21 = call ptr @malloc(i64 1)
  %22 = call ptr @malloc(i64 1)
  br label %23

23:                                               ; preds = %72, %7
  %24 = phi i64 [ %73, %72 ], [ 0, %7 ]
  %25 = icmp slt i64 %24, 1
  br i1 %25, label %26, label %74

26:                                               ; preds = %23
  store __zkllvm_fixed1616 0.000000e+00, ptr %21, align 4
  store __zkllvm_fixed1616 0xFFF0000000000000, ptr %22, align 4
  br label %27

27:                                               ; preds = %30, %26
  %28 = phi i64 [ %38, %30 ], [ 0, %26 ]
  %29 = icmp slt i64 %28, 10
  br i1 %29, label %30, label %39

30:                                               ; preds = %27
  %31 = load __zkllvm_fixed1616, ptr %22, align 4
  %32 = mul i64 %24, 10
  %33 = add i64 %32, %28
  %34 = getelementptr __zkllvm_fixed1616, ptr %1, i64 %33
  %35 = load __zkllvm_fixed1616, ptr %34, align 4
  %36 = fcmp ogt __zkllvm_fixed1616 %31, %35
  %37 = select i1 %36, __zkllvm_fixed1616 %31, __zkllvm_fixed1616 %35
  store __zkllvm_fixed1616 %37, ptr %22, align 4
  %38 = add i64 %28, 1
  br label %27

39:                                               ; preds = %27
  %40 = load __zkllvm_fixed1616, ptr %22, align 4
  br label %41

41:                                               ; preds = %44, %39
  %42 = phi i64 [ %56, %44 ], [ 0, %39 ]
  %43 = icmp slt i64 %42, 10
  br i1 %43, label %44, label %57

44:                                               ; preds = %41
  %45 = load __zkllvm_fixed1616, ptr %21, align 4
  %46 = mul i64 %24, 10
  %47 = add i64 %46, %42
  %48 = getelementptr __zkllvm_fixed1616, ptr %1, i64 %47
  %49 = load __zkllvm_fixed1616, ptr %48, align 4
  %50 = fsub __zkllvm_fixed1616 %49, %40
  %51 = call __zkllvm_fixed1616 @llvm.exp.f32(__zkllvm_fixed1616 %50)
  %52 = fadd __zkllvm_fixed1616 %45, %51
  store __zkllvm_fixed1616 %52, ptr %21, align 4
  %53 = mul i64 %24, 10
  %54 = add i64 %53, %42
  %55 = getelementptr __zkllvm_fixed1616, ptr %13, i64 %54
  store __zkllvm_fixed1616 %51, ptr %55, align 4
  %56 = add i64 %42, 1
  br label %41

57:                                               ; preds = %41
  %58 = load __zkllvm_fixed1616, ptr %21, align 4
  br label %59

59:                                               ; preds = %62, %57
  %60 = phi i64 [ %71, %62 ], [ 0, %57 ]
  %61 = icmp slt i64 %60, 10
  br i1 %61, label %62, label %72

62:                                               ; preds = %59
  %63 = mul i64 %24, 10
  %64 = add i64 %63, %60
  %65 = getelementptr __zkllvm_fixed1616, ptr %13, i64 %64
  %66 = load __zkllvm_fixed1616, ptr %65, align 4
  %67 = fdiv __zkllvm_fixed1616 %66, %58
  %68 = mul i64 %24, 10
  %69 = add i64 %68, %60
  %70 = getelementptr __zkllvm_fixed1616, ptr %13, i64 %69
  store __zkllvm_fixed1616 %67, ptr %70, align 4
  %71 = add i64 %60, 1
  br label %59

72:                                               ; preds = %59
  %73 = add i64 %24, 1
  br label %23

74:                                               ; preds = %23
  call void @free(ptr %22)
  call void @free(ptr %21)
  ret { ptr, ptr, i64, [2 x i64], [2 x i64] } %20
}

define void @_mlir_ciface_main_graph_softmaxbasicmnist.llvm.0(ptr %0, ptr %1) {
  %3 = load { ptr, ptr, i64, [2 x i64], [2 x i64] }, ptr %1, align 8
  %4 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %3, 0
  %5 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %3, 1
  %6 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %3, 2
  %7 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %3, 3, 0
  %8 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %3, 3, 1
  %9 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %3, 4, 0
  %10 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %3, 4, 1
  %11 = call { ptr, ptr, i64, [2 x i64], [2 x i64] } @main_graph_softmaxbasicmnist.llvm.0(ptr %4, ptr %5, i64 %6, i64 %7, i64 %8, i64 %9, i64 %10)
  store { ptr, ptr, i64, [2 x i64], [2 x i64] } %11, ptr %0, align 8
  ret void
}

define ptr @run_main_graph_softmaxbasicmnist.llvm.0(ptr %0) {
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
  call void @_mlir_ciface_main_graph_softmaxbasicmnist.llvm.0(ptr %3, ptr %5)
  %22 = load { ptr, ptr, i64, [2 x i64], [2 x i64] }, ptr %3, align 8
  %23 = alloca ptr, i64 1, align 8
  %24 = call ptr @omTensorCreateUntyped(i64 2)
  %25 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %22, 0
  %26 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %22, 1
  call void @omTensorSetDataPtr(ptr %24, i64 1, ptr %25, ptr %26)
  call void @omTensorSetDataType(ptr %24, i64 1)
  %27 = call ptr @omTensorGetShape(ptr %24)
  %28 = call ptr @omTensorGetStrides(ptr %24)
  %29 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %22, 3, 0
  store i64 %29, ptr %27, align 8
  %30 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %22, 4, 0
  store i64 %30, ptr %28, align 8
  %31 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %22, 3, 1
  %32 = getelementptr i64, ptr %27, i32 1
  store i64 %31, ptr %32, align 8
  %33 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %22, 4, 1
  %34 = getelementptr i64, ptr %28, i32 1
  store i64 %33, ptr %34, align 8
  store ptr %24, ptr %23, align 8
  %35 = call ptr @omTensorListCreate(ptr %23, i64 1)
  ret ptr %35
}

define ptr @run_main_graph(ptr %0) #1 {
  %2 = call ptr @run_main_graph_softmaxbasicmnist.llvm.0(ptr %0)
  ret ptr %2
}



define ptr @omInputSignature_softmaxbasicmnist.llvm.0(ptr %0) {
  %2 = call i32 @strncmp(ptr %0, ptr @_entry_point_0_softmaxbasicmnist.llvm.0, i64 15)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  ret ptr @_entry_point_0_in_sig_softmaxbasicmnist.llvm.0

5:                                                ; preds = %1
  %6 = call i32 @strncmp(ptr %0, ptr @_entry_point_1_softmaxbasicmnist.llvm.0, i64 40)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  ret ptr @_entry_point_1_in_sig_softmaxbasicmnist.llvm.0

9:                                                ; preds = %5
  ret ptr null
}

define ptr @omInputSignature(ptr %0) {
  %2 = call ptr @omInputSignature_softmaxbasicmnist.llvm.0(ptr %0)
  ret ptr %2
}

define ptr @omOutputSignature_softmaxbasicmnist.llvm.0(ptr %0) {
  %2 = call i32 @strncmp(ptr %0, ptr @_entry_point_0_softmaxbasicmnist.llvm.0, i64 15)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  ret ptr @_entry_point_0_out_sig_softmaxbasicmnist.llvm.0

5:                                                ; preds = %1
  %6 = call i32 @strncmp(ptr %0, ptr @_entry_point_1_softmaxbasicmnist.llvm.0, i64 40)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  ret ptr @_entry_point_1_out_sig_softmaxbasicmnist.llvm.0

9:                                                ; preds = %5
  ret ptr null
}

define ptr @omOutputSignature(ptr %0) {
  %2 = call ptr @omOutputSignature_softmaxbasicmnist.llvm.0(ptr %0)
  ret ptr %2
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare __zkllvm_fixed1616 @llvm.exp.f32(__zkllvm_fixed1616) #0


attributes #0 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #1 = { circuit }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #3 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #4 = { nounwind }
!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}

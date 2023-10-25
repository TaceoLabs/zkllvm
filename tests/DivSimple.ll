; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"

@"Wrong size for the dimension 1 of the input 1: expect 10, but got %lld\0A" = internal constant [71 x i8] c"Wrong size for the dimension 1 of the input 1: expect 10, but got %lld\0A", align 16
@"Wrong size for the dimension 0 of the input 1: expect 1, but got %lld\0A" = internal constant [70 x i8] c"Wrong size for the dimension 0 of the input 1: expect 1, but got %lld\0A", align 16
@"Wrong rank for the input 1: expect 2, but got %lld\0A" = internal constant [51 x i8] c"Wrong rank for the input 1: expect 2, but got %lld\0A", align 16
@"Wrong data type for the input 1: expect f32\0A" = internal constant [44 x i8] c"Wrong data type for the input 1: expect f32\0A", align 16
@"Wrong size for the dimension 1 of the input 0: expect 10, but got %lld\0A" = internal constant [71 x i8] c"Wrong size for the dimension 1 of the input 0: expect 10, but got %lld\0A", align 16
@"Wrong size for the dimension 0 of the input 0: expect 1, but got %lld\0A" = internal constant [70 x i8] c"Wrong size for the dimension 0 of the input 0: expect 1, but got %lld\0A", align 16
@"Wrong rank for the input 0: expect 2, but got %lld\0A" = internal constant [51 x i8] c"Wrong rank for the input 0: expect 2, but got %lld\0A", align 16
@"Wrong data type for the input 0: expect f32\0A" = internal constant [44 x i8] c"Wrong data type for the input 0: expect f32\0A", align 16
@"Wrong number of input tensors: expect 2, but got %lld\0A" = internal constant [54 x i8] c"Wrong number of input tensors: expect 2, but got %lld\0A", align 16
@_entry_point_0 = constant [15 x i8] c"run_main_graph\00"
@_entry_point_0_in_sig = constant [128 x i8] c"[    { \22type\22 : \22f32\22 , \22dims\22 : [1 , 10] , \22name\22 : \22in_a\22 }\0A ,    { \22type\22 : \22f32\22 , \22dims\22 : [1 , 10] , \22name\22 : \22in_b\22 }\0A\0A]\00"
@_entry_point_0_out_sig = constant [65 x i8] c"[   { \22type\22 : \22f32\22 , \22dims\22 : [1 , 10] , \22name\22 : \22out_a\22 }\0A\0A]\00"
@_entry_point_arrays = internal constant [2 x ptr] [ptr null, ptr null]

declare void @free(ptr)

declare i32 @strncmp(ptr, ptr, i64)

declare void @printf(ptr, ...)

declare ptr @__errno_location()

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

declare ptr @omTensorCreateUntyped(i64)

declare ptr @omTensorListCreateWithOwnership(ptr, i64, i64)

declare ptr @llvm.assigner.malloc(i64) #1

define dso_local ptr @malloc(i64 noundef %size) local_unnamed_addr #2 {
entry:
  %0 = tail call ptr @llvm.assigner.malloc(i64 %size)
  ret ptr %0
}


define { ptr, ptr, i64, [2 x i64], [2 x i64] } @main_graph(ptr %0, ptr %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, ptr %7, ptr %8, i64 %9, i64 %10, i64 %11, i64 %12, i64 %13) {
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

28:                                               ; preds = %49, %14
  %29 = phi i64 [ %50, %49 ], [ 0, %14 ]
  %30 = icmp slt i64 %29, 1
  br i1 %30, label %31, label %51

31:                                               ; preds = %28
  br label %32

32:                                               ; preds = %35, %31
  %33 = phi i64 [ %48, %35 ], [ 0, %31 ]
  %34 = icmp slt i64 %33, 10
  br i1 %34, label %35, label %49

35:                                               ; preds = %32
  %36 = mul i64 %29, 10
  %37 = add i64 %36, %33
  %38 = getelementptr __zkllvm_fixed1616, ptr %1, i64 %37
  %39 = load __zkllvm_fixed1616, ptr %38, align 4
  %40 = mul i64 %29, 10
  %41 = add i64 %40, %33
  %42 = getelementptr __zkllvm_fixed1616, ptr %8, i64 %41
  %43 = load __zkllvm_fixed1616, ptr %42, align 4
  %44 = fdiv __zkllvm_fixed1616 %39, %43
  %45 = mul i64 %29, 10
  %46 = add i64 %45, %33
  %47 = getelementptr __zkllvm_fixed1616, ptr %20, i64 %46
  store __zkllvm_fixed1616 %44, ptr %47, align 4
  %48 = add i64 %33, 1
  br label %32

49:                                               ; preds = %32
  %50 = add i64 %29, 1
  br label %28

51:                                               ; preds = %28
  ret { ptr, ptr, i64, [2 x i64], [2 x i64] } %27
}

define void @_mlir_ciface_main_graph(ptr %0, ptr %1, ptr %2) {
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
  %20 = call { ptr, ptr, i64, [2 x i64], [2 x i64] } @main_graph(ptr %5, ptr %6, i64 %7, i64 %8, i64 %9, i64 %10, i64 %11, ptr %13, ptr %14, i64 %15, i64 %16, i64 %17, i64 %18, i64 %19)
  store { ptr, ptr, i64, [2 x i64], [2 x i64] } %20, ptr %0, align 8
  ret void
}

define ptr @run_main_graph(ptr %0) #0 {
  %2 = call i64 @omTensorListGetSize(ptr %0)
  %3 = icmp ne i64 2, %2
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  call void (ptr, ...) @printf(ptr @"Wrong number of input tensors: expect 2, but got %lld\0A", i64 %2)
  %5 = call ptr @__errno_location()
  store i32 22, ptr %5, align 4
  ret ptr null

6:                                                ; preds = %1
  %7 = call ptr @omTensorListGetOmtArray(ptr %0)
  %8 = load ptr, ptr %7, align 8
  %9 = call i64 @omTensorGetDataType(ptr %8)
  %10 = icmp ne i64 1, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %6
  call void (ptr, ...) @printf(ptr @"Wrong data type for the input 0: expect f32\0A")
  %12 = call ptr @__errno_location()
  store i32 22, ptr %12, align 4
  ret ptr null

13:                                               ; preds = %6
  %14 = call i64 @omTensorGetRank(ptr %8)
  %15 = icmp ne i64 2, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  call void (ptr, ...) @printf(ptr @"Wrong rank for the input 0: expect 2, but got %lld\0A", i64 %14)
  %17 = call ptr @__errno_location()
  store i32 22, ptr %17, align 4
  ret ptr null

18:                                               ; preds = %13
  %19 = call ptr @omTensorGetShape(ptr %8)
  %20 = load i64, ptr %19, align 4
  %21 = icmp ne i64 1, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  call void (ptr, ...) @printf(ptr @"Wrong size for the dimension 0 of the input 0: expect 1, but got %lld\0A", i64 %20)
  %23 = call ptr @__errno_location()
  store i32 22, ptr %23, align 4
  ret ptr null

24:                                               ; preds = %18
  %25 = getelementptr i64, ptr %19, i32 1
  %26 = load i64, ptr %25, align 4
  %27 = icmp ne i64 10, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  call void (ptr, ...) @printf(ptr @"Wrong size for the dimension 1 of the input 0: expect 10, but got %lld\0A", i64 %26)
  %29 = call ptr @__errno_location()
  store i32 22, ptr %29, align 4
  ret ptr null

30:                                               ; preds = %24
  %31 = getelementptr ptr, ptr %7, i32 1
  %32 = load ptr, ptr %31, align 8
  %33 = call i64 @omTensorGetDataType(ptr %32)
  %34 = icmp ne i64 1, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  call void (ptr, ...) @printf(ptr @"Wrong data type for the input 1: expect f32\0A")
  %36 = call ptr @__errno_location()
  store i32 22, ptr %36, align 4
  ret ptr null

37:                                               ; preds = %30
  %38 = call i64 @omTensorGetRank(ptr %32)
  %39 = icmp ne i64 2, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  call void (ptr, ...) @printf(ptr @"Wrong rank for the input 1: expect 2, but got %lld\0A", i64 %38)
  %41 = call ptr @__errno_location()
  store i32 22, ptr %41, align 4
  ret ptr null

42:                                               ; preds = %37
  %43 = call ptr @omTensorGetShape(ptr %32)
  %44 = load i64, ptr %43, align 4
  %45 = icmp ne i64 1, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  call void (ptr, ...) @printf(ptr @"Wrong size for the dimension 0 of the input 1: expect 1, but got %lld\0A", i64 %44)
  %47 = call ptr @__errno_location()
  store i32 22, ptr %47, align 4
  ret ptr null

48:                                               ; preds = %42
  %49 = getelementptr i64, ptr %43, i32 1
  %50 = load i64, ptr %49, align 4
  %51 = icmp ne i64 10, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  call void (ptr, ...) @printf(ptr @"Wrong size for the dimension 1 of the input 1: expect 10, but got %lld\0A", i64 %50)
  %53 = call ptr @__errno_location()
  store i32 22, ptr %53, align 4
  ret ptr null

54:                                               ; preds = %48
  %55 = call ptr @omTensorListGetOmtArray(ptr %0)
  %56 = alloca { ptr, ptr, i64, [2 x i64], [2 x i64] }, i64 1, align 8
  %57 = load ptr, ptr %55, align 8
  %58 = alloca { ptr, ptr, i64, [2 x i64], [2 x i64] }, i64 1, align 8
  %59 = call ptr @omTensorGetDataPtr(ptr %57)
  %60 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %59, 0
  %61 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %60, ptr %59, 1
  %62 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %61, i64 0, 2
  %63 = call ptr @omTensorGetShape(ptr %57)
  %64 = call ptr @omTensorGetStrides(ptr %57)
  %65 = load i64, ptr %63, align 4
  %66 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %62, i64 %65, 3, 0
  %67 = load i64, ptr %64, align 4
  %68 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %66, i64 %67, 4, 0
  %69 = getelementptr i64, ptr %63, i32 1
  %70 = load i64, ptr %69, align 4
  %71 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %68, i64 %70, 3, 1
  %72 = getelementptr i64, ptr %64, i32 1
  %73 = load i64, ptr %72, align 4
  %74 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %71, i64 %73, 4, 1
  store { ptr, ptr, i64, [2 x i64], [2 x i64] } %74, ptr %58, align 8
  %75 = getelementptr ptr, ptr %55, i32 1
  %76 = load ptr, ptr %75, align 8
  %77 = alloca { ptr, ptr, i64, [2 x i64], [2 x i64] }, i64 1, align 8
  %78 = call ptr @omTensorGetDataPtr(ptr %76)
  %79 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } undef, ptr %78, 0
  %80 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %79, ptr %78, 1
  %81 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %80, i64 0, 2
  %82 = call ptr @omTensorGetShape(ptr %76)
  %83 = call ptr @omTensorGetStrides(ptr %76)
  %84 = load i64, ptr %82, align 4
  %85 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %81, i64 %84, 3, 0
  %86 = load i64, ptr %83, align 4
  %87 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %85, i64 %86, 4, 0
  %88 = getelementptr i64, ptr %82, i32 1
  %89 = load i64, ptr %88, align 4
  %90 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %87, i64 %89, 3, 1
  %91 = getelementptr i64, ptr %83, i32 1
  %92 = load i64, ptr %91, align 4
  %93 = insertvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %90, i64 %92, 4, 1
  store { ptr, ptr, i64, [2 x i64], [2 x i64] } %93, ptr %77, align 8
  call void @_mlir_ciface_main_graph(ptr %56, ptr %58, ptr %77)
  %94 = load { ptr, ptr, i64, [2 x i64], [2 x i64] }, ptr %56, align 8
  %95 = call ptr @malloc(i64 8)
  %96 = call ptr @omTensorCreateUntyped(i64 2)
  %97 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %94, 0
  %98 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %94, 1
  call void @omTensorSetDataPtr(ptr %96, i64 1, ptr %97, ptr %98)
  call void @omTensorSetDataType(ptr %96, i64 1)
  %99 = call ptr @omTensorGetShape(ptr %96)
  %100 = call ptr @omTensorGetStrides(ptr %96)
  %101 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %94, 3, 0
  store i64 %101, ptr %99, align 4
  %102 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %94, 4, 0
  store i64 %102, ptr %100, align 4
  %103 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %94, 3, 1
  %104 = getelementptr i64, ptr %99, i32 1
  store i64 %103, ptr %104, align 4
  %105 = extractvalue { ptr, ptr, i64, [2 x i64], [2 x i64] } %94, 4, 1
  %106 = getelementptr i64, ptr %100, i32 1
  store i64 %105, ptr %106, align 4
  store ptr %96, ptr %95, align 8
  %107 = call ptr @omTensorListCreateWithOwnership(ptr %95, i64 1, i64 1)
  ret ptr %107
}

define ptr @omQueryEntryPoints(ptr %0) {
  %2 = icmp ne ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  store i64 1, ptr %0, align 4
  br label %4

4:                                                ; preds = %3, %1
  ret ptr @_entry_point_arrays
}

define ptr @omInputSignature(ptr %0) {
  %2 = call i32 @strncmp(ptr %0, ptr @_entry_point_0, i64 15)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  ret ptr @_entry_point_0_in_sig

5:                                                ; preds = %1
  ret ptr null
}

define ptr @omOutputSignature(ptr %0) {
  %2 = call i32 @strncmp(ptr %0, ptr @_entry_point_0, i64 15)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  ret ptr @_entry_point_0_out_sig

5:                                                ; preds = %1
  ret ptr null
}

attributes #0 = { circuit }
attributes #1 = { nounwind }
attributes #2 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
!llvm.module.flags = !{!0}

!0 = !{i32 2, !"Debug Info Version", i32 3}

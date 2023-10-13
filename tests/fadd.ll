; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "assigner"

$_ZN3nil7crypto37algebra6fields17pallas_base_field12modulus_bitsE = comdat any

$_ZN3nil7crypto37algebra6fields17pallas_base_field11number_bitsE = comdat any

$_ZN3nil7crypto37algebra6fields17pallas_base_field10value_bitsE = comdat any

$_ZN3nil7crypto37algebra6fields16vesta_base_field12modulus_bitsE = comdat any

$_ZN3nil7crypto37algebra6fields16vesta_base_field11number_bitsE = comdat any

$_ZN3nil7crypto37algebra6fields16vesta_base_field10value_bitsE = comdat any

@_ZZN3nil7crypto314multiprecision8backends11window_bitsEmE5wsize = internal unnamed_addr constant [6 x [2 x i64]] [[2 x i64] [i64 1434, i64 7], [2 x i64] [i64 539, i64 6], [2 x i64] [i64 197, i64 4], [2 x i64] [i64 70, i64 3], [2 x i64] [i64 17, i64 2], [2 x i64] zeroinitializer], align 8
@_ZN3nil7crypto37algebra6fields17pallas_base_field12modulus_bitsE = weak_odr dso_local local_unnamed_addr constant i64 255, comdat, align 8
@_ZN3nil7crypto37algebra6fields17pallas_base_field11number_bitsE = weak_odr dso_local local_unnamed_addr constant i64 255, comdat, align 8
@_ZN3nil7crypto37algebra6fields17pallas_base_field10value_bitsE = weak_odr dso_local local_unnamed_addr constant i64 255, comdat, align 8
@_ZN3nil7crypto37algebra6fields16vesta_base_field12modulus_bitsE = weak_odr dso_local local_unnamed_addr constant i64 255, comdat, align 8
@_ZN3nil7crypto37algebra6fields16vesta_base_field11number_bitsE = weak_odr dso_local local_unnamed_addr constant i64 255, comdat, align 8
@_ZN3nil7crypto37algebra6fields16vesta_base_field10value_bitsE = weak_odr dso_local local_unnamed_addr constant i64 255, comdat, align 8

; Function Attrs: mustprogress nounwind
define dso_local noundef i64 @_ZN3nil7crypto314multiprecision8backends11window_bitsEm(i64 noundef %exp_bits) local_unnamed_addr #0 {
entry:
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %entry
  %j.0 = phi i64 [ 5, %entry ], [ %dec, %while.cond ]
  %arrayidx = getelementptr inbounds [6 x [2 x i64]], ptr @_ZZN3nil7crypto314multiprecision8backends11window_bitsEmE5wsize, i64 0, i64 %j.0
  %0 = load i64, ptr %arrayidx, align 8, !tbaa !3
  %cmp = icmp ugt i64 %0, %exp_bits
  %dec = add i64 %j.0, -1
  br i1 %cmp, label %while.cond, label %while.end, !llvm.loop !7

while.end:                                        ; preds = %while.cond
  %arrayidx3 = getelementptr inbounds [2 x i64], ptr %arrayidx, i64 0, i64 1
  %1 = load i64, ptr %arrayidx3, align 8, !tbaa !3
  %add = add i64 1, %1
  ret i64 %add
}

; Function Attrs: circuit mustprogress nounwind
define dso_local noundef zeroext __zkllvm_fixed1616 @_Z15assert_equalutyjj(__zkllvm_fixed1616 noundef %a, __zkllvm_fixed1616 noundef %b, __zkllvm_fixed1616 noundef %c) local_unnamed_addr #1 {
entry:
  %0 = fadd __zkllvm_fixed1616 %a, %b
  %1 = fadd __zkllvm_fixed1616 %0, %c
  ret __zkllvm_fixed1616 %1
}

; Function Attrs: nounwind
declare void @llvm.assigner.exit.check(i1) #2

; Function Attrs: nounwind
define dso_local void @free(ptr noundef %ptr) local_unnamed_addr #3 {
entry:
  tail call void @llvm.assigner.free(ptr %ptr)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.assigner.free(ptr) #2

; Function Attrs: nounwind allocsize(0)
define dso_local ptr @malloc(i64 noundef %size) local_unnamed_addr #4 {
entry:
  %0 = tail call ptr @llvm.assigner.malloc(i64 %size)
  ret ptr %0
}

; Function Attrs: nounwind
declare ptr @llvm.assigner.malloc(i64) #2

attributes #0 = { mustprogress nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #1 = { circuit mustprogress nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #2 = { nounwind }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #4 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }

!llvm.ident = !{!0, !0}
!llvm.module.flags = !{!1, !2}

!0 = !{!"clang version 16.0.0 (git@github.com:TaceoLabs/zkllvm-circifier.git 7cf2986b144c70beae1e3a45af550b37c9838d19)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!4, !4, i64 0}
!4 = !{!"long", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = distinct !{!7, !8, !9}
!8 = !{!"llvm.loop.mustprogress"}
!9 = !{!"llvm.loop.unroll.disable"}

; NOTE: Assertions have been autogenerated by utils/update_test_checks.py
; RUN: llc < %s -mtriple=i686-apple-darwin -mattr=+sse2 | FileCheck %s

define <2 x i64> @test_x86_sse2_psll_dq_bs(<2 x i64> %a0) {
; CHECK-LABEL: test_x86_sse2_psll_dq_bs:
; CHECK:       ## BB#0:
; CHECK-NEXT:    pslldq {{.*#+}} xmm0 = zero,zero,zero,zero,zero,zero,zero,xmm0[0,1,2,3,4,5,6,7,8]
; CHECK-NEXT:    retl
  %res = call <2 x i64> @llvm.x86.sse2.psll.dq.bs(<2 x i64> %a0, i32 7) ; <<2 x i64>> [#uses=1]
  ret <2 x i64> %res
}
declare <2 x i64> @llvm.x86.sse2.psll.dq.bs(<2 x i64>, i32) nounwind readnone


define <2 x i64> @test_x86_sse2_psrl_dq_bs(<2 x i64> %a0) {
; CHECK-LABEL: test_x86_sse2_psrl_dq_bs:
; CHECK:       ## BB#0:
; CHECK-NEXT:    psrldq {{.*#+}} xmm0 = xmm0[7,8,9,10,11,12,13,14,15],zero,zero,zero,zero,zero,zero,zero
; CHECK-NEXT:    retl
  %res = call <2 x i64> @llvm.x86.sse2.psrl.dq.bs(<2 x i64> %a0, i32 7) ; <<2 x i64>> [#uses=1]
  ret <2 x i64> %res
}
declare <2 x i64> @llvm.x86.sse2.psrl.dq.bs(<2 x i64>, i32) nounwind readnone

define <2 x i64> @test_x86_sse2_psll_dq(<2 x i64> %a0) {
; CHECK-LABEL: test_x86_sse2_psll_dq:
; CHECK:       ## BB#0:
; CHECK-NEXT:    pslldq {{.*#+}} xmm0 = zero,xmm0[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14]
; CHECK-NEXT:    retl
  %res = call <2 x i64> @llvm.x86.sse2.psll.dq(<2 x i64> %a0, i32 8) ; <<2 x i64>> [#uses=1]
  ret <2 x i64> %res
}
declare <2 x i64> @llvm.x86.sse2.psll.dq(<2 x i64>, i32) nounwind readnone


define <2 x i64> @test_x86_sse2_psrl_dq(<2 x i64> %a0) {
; CHECK-LABEL: test_x86_sse2_psrl_dq:
; CHECK:       ## BB#0:
; CHECK-NEXT:    psrldq {{.*#+}} xmm0 = xmm0[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15],zero
; CHECK-NEXT:    retl
  %res = call <2 x i64> @llvm.x86.sse2.psrl.dq(<2 x i64> %a0, i32 8) ; <<2 x i64>> [#uses=1]
  ret <2 x i64> %res
}
declare <2 x i64> @llvm.x86.sse2.psrl.dq(<2 x i64>, i32) nounwind readnone


define <2 x double> @test_x86_sse2_cvtdq2pd(<4 x i32> %a0) {
; SSE-LABEL: test_x86_sse2_cvtdq2pd:
; SSE:       ## BB#0:
; SSE-NEXT:    cvtdq2pd %xmm0, %xmm0
; SSE-NEXT:    retl
;
; KNL-LABEL: test_x86_sse2_cvtdq2pd:
; KNL:       ## BB#0:
; KNL-NEXT:    vcvtdq2pd %xmm0, %xmm0
; KNL-NEXT:    retl
; CHECK-LABEL: test_x86_sse2_cvtdq2pd:
; CHECK:       ## BB#0:
; CHECK-NEXT:    cvtdq2pd %xmm0, %xmm0
; CHECK-NEXT:    retl
  %res = call <2 x double> @llvm.x86.sse2.cvtdq2pd(<4 x i32> %a0) ; <<2 x double>> [#uses=1]
  ret <2 x double> %res
}
declare <2 x double> @llvm.x86.sse2.cvtdq2pd(<4 x i32>) nounwind readnone


define <2 x double> @test_x86_sse2_cvtps2pd(<4 x float> %a0) {
; SSE-LABEL: test_x86_sse2_cvtps2pd:
; SSE:       ## BB#0:
; SSE-NEXT:    cvtps2pd %xmm0, %xmm0
; SSE-NEXT:    retl
;
; KNL-LABEL: test_x86_sse2_cvtps2pd:
; KNL:       ## BB#0:
; KNL-NEXT:    vcvtps2pd %xmm0, %xmm0
; KNL-NEXT:    retl
; CHECK-LABEL: test_x86_sse2_cvtps2pd:
; CHECK:       ## BB#0:
; CHECK-NEXT:    cvtps2pd %xmm0, %xmm0
; CHECK-NEXT:    retl
  %res = call <2 x double> @llvm.x86.sse2.cvtps2pd(<4 x float> %a0) ; <<2 x double>> [#uses=1]
  ret <2 x double> %res
}
declare <2 x double> @llvm.x86.sse2.cvtps2pd(<4 x float>) nounwind readnone


define void @test_x86_sse2_storel_dq(i8* %a0, <4 x i32> %a1) {
; CHECK-LABEL: test_x86_sse2_storel_dq:
; CHECK:       ## BB#0:
; CHECK-NEXT:    movl {{[0-9]+}}(%esp), %eax
; CHECK-NEXT:    movlps %xmm0, (%eax)
; CHECK-NEXT:    retl
  call void @llvm.x86.sse2.storel.dq(i8* %a0, <4 x i32> %a1)
  ret void
}
declare void @llvm.x86.sse2.storel.dq(i8*, <4 x i32>) nounwind




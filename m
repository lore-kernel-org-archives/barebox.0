Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x236.google.com ([2607:f8b0:400e:c00::236])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fSoL6-0008QF-9j
 for barebox@lists.infradead.org; Tue, 12 Jun 2018 18:48:22 +0000
Received: by mail-pf0-x236.google.com with SMTP id c22-v6so2555pfi.2
 for <barebox@lists.infradead.org>; Tue, 12 Jun 2018 11:48:10 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 12 Jun 2018 11:47:47 -0700
Message-Id: <20180612184800.4940-2-andrew.smirnov@gmail.com>
In-Reply-To: <20180612184800.4940-1-andrew.smirnov@gmail.com>
References: <20180612184800.4940-1-andrew.smirnov@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 01/14] VFxxx: Remove stale code from DCD files
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Remove various bits of debug code, commented DCD commands and
separators as a small clean-up in preparation for commits that would
follow.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 .../flash-header-vf610-twr.imxcfg             | 34 -----------------
 .../flash-header-zii-vf610-dev.imxcfg         | 37 -------------------
 2 files changed, 71 deletions(-)

diff --git a/arch/arm/boards/freescale-vf610-twr/flash-header-vf610-twr.imxcfg b/arch/arm/boards/freescale-vf610-twr/flash-header-vf610-twr.imxcfg
index 8dd62be21..ae7447b4f 100644
--- a/arch/arm/boards/freescale-vf610-twr/flash-header-vf610-twr.imxcfg
+++ b/arch/arm/boards/freescale-vf610-twr/flash-header-vf610-twr.imxcfg
@@ -13,16 +13,6 @@ dcdofs 0x400
 #define DDRMC_PHY_OFF		0x00000000
 #define DDRMC_PHY_PROC_PAD_ODT	0x00010101
 
-#ifdef DEBUG
-#define CHECKPOINT(n) wm 32 0x3f040000 n
-#else
-#define CHECKPOINT(n)
-#endif
-
-CHECKPOINT(1)
-
-/* ======================= Clock initialization =======================*/
-
 /*
  * Ungate all IP block clocks
  */
@@ -60,28 +50,17 @@ wm 32 0x4006b06c 0xffffffff
  */
 wm 32 0x40050030 0x00002001 /* Fout = Fin * 22 */
 
-CHECKPOINT(2)
-
 /*
  * Wait for PLLs to lock
  */
 check 32 until_any_bit_set 0x40050030 0x80000000
 
-
-CHECKPOINT(3)
-
 /*
  * Switch DDRMC to be clocked with PLL2 PFD2 and enable PFD2 output
  */
 clear_bits 32 0x4006b008 0x00000040
 set_bits   32 0x4006b008 0x00002000
 
-
-
-/* ======================= DDR IOMUX ======================= */
-
-CHECKPOINT(4)
-
 wm 32 0x40048220 VF610_DDR_PAD_CTRL
 wm 32 0x40048224 VF610_DDR_PAD_CTRL
 wm 32 0x40048228 VF610_DDR_PAD_CTRL
@@ -131,10 +110,6 @@ wm 32 0x400482d4 VF610_DDR_PAD_CTRL
 wm 32 0x400482d8 VF610_DDR_PAD_CTRL
 wm 32 0x4004821c VF610_DDR_PAD_CTRL
 
-/* ======================= DDR Controller =======================*/
-
-CHECKPOINT(5)
-
 wm 32 0x400ae000 0x00000600
 wm 32 0x400ae008 0x00000020
 wm 32 0x400ae028 0x00013880
@@ -214,10 +189,6 @@ wm 32 0x400ae26c 0x00000012
 wm 32 0x400ae278 0x00000006
 wm 32 0x400ae284 0x00010202
 
-/* ======================= DDR PHY =======================*/
-
-CHECKPOINT(6)
-
 wm 32 0x400ae400 DDRMC_PHY_DQ_TIMING
 wm 32 0x400ae440 DDRMC_PHY_DQ_TIMING
 wm 32 0x400ae480 DDRMC_PHY_DQ_TIMING
@@ -238,12 +209,8 @@ wm 32 0x400ae4d0 DDRMC_PHY_PROC_PAD_ODT
 
 wm 32 0x400ae000 0x00000601
 
-CHECKPOINT(7)
-
 check 32 until_any_bit_set 0x400ae140 0x100
 
-CHECKPOINT(8)
-
 /*
  * Cargo cult DDR controller initialization here we come!
  *
@@ -275,4 +242,3 @@ wm 32 0x400ae000 0x00000601
 
 check 32 until_any_bit_set 0x400ae140 0x100
 
-CHECKPOINT(9)
diff --git a/arch/arm/boards/zii-vf610-dev/flash-header-zii-vf610-dev.imxcfg b/arch/arm/boards/zii-vf610-dev/flash-header-zii-vf610-dev.imxcfg
index bb858907a..a641ff82e 100644
--- a/arch/arm/boards/zii-vf610-dev/flash-header-zii-vf610-dev.imxcfg
+++ b/arch/arm/boards/zii-vf610-dev/flash-header-zii-vf610-dev.imxcfg
@@ -13,12 +13,6 @@ dcdofs 0x400
 #define DDRMC_PHY_OFF		0x00000000
 #define DDRMC_PHY_PROC_PAD_ODT	0x00010101
 
-#define CHECKPOINT(n) wm 32 0x3f000000 n
-
-CHECKPOINT(1)
-
-/* ======================= Clock initialization =======================*/
-
 /*
  * Ungate all IP block clocks
  */
@@ -40,25 +34,14 @@ wm 32 0x4006b06c 0xffffffff
  */
 wm 32 0x40050030 0x00002001 /* Fout = Fin * 22 */
 
-CHECKPOINT(2)
-
 /*
  * Wait for PLLs to lock
  */
 check 32 until_any_bit_set 0x40050030 0x80000000
 
-
-CHECKPOINT(3)
-
 clear_bits 32 0x4006b008 0x00000040
 set_bits   32 0x4006b008 0x00002000
 
-
-
-/* ======================= DDR IOMUX =======================*/
-
-CHECKPOINT(4)
-
 wm 32 0x40048220 0x00000180
 wm 32 0x40048224 0x00000180
 wm 32 0x40048228 0x00000180
@@ -108,9 +91,6 @@ wm 32 0x400482d4 0x00000180
 wm 32 0x400482d8 0x00000180
 wm 32 0x4004821c 0x00000180
 
-/* ======================= DDR Controller =======================*/
-
-CHECKPOINT(5)
 wm 32 0x400ae000 0x00000600
 wm 32 0x400ae008 0x00000005
 wm 32 0x400ae028 0x00013880
@@ -193,10 +173,6 @@ wm 32 0x400ae26c 0x00000012
 wm 32 0x400ae278 0x00000006
 wm 32 0x400ae284 0x00010202
 
-/* ======================= DDR PHY =======================*/
-
-CHECKPOINT(6)
-
 wm 32 0x400ae400 0x00002613
 wm 32 0x400ae440 0x00002613
 wm 32 0x400ae480 0x00002613
@@ -216,14 +192,7 @@ wm 32 0x400ae4c8 0x00001100
 wm 32 0x400ae4d0 0x00010101
 wm 32 0x400ae000 0x00000601
 
-CHECKPOINT(7)
-
 check 32 until_any_bit_set 0x400ae140 0x100
-# check 32 until_any_bit_set 0x400ae42c 0x1
-# check 32 until_any_bit_set 0x400ae46c 0x1
-# check 32 until_any_bit_set 0x400ae4ac 0x1
-
-CHECKPOINT(8)
 
 wm 32 0x80000000 0xa5a5a5a5
 check 32 until_any_bit_set 0x80000000 0xa5a5a5a5
@@ -232,12 +201,6 @@ wm 32 0x400ae000 0x00000600
 wm 32 0x400ae000 0x00000601
 
 check 32 until_any_bit_set 0x400ae140 0x100
-# check 32 until_any_bit_set 0x400ae42c 0x1
-# check 32 until_any_bit_set 0x400ae46c 0x1
-# check 32 until_any_bit_set 0x400ae4ac 0x1
 
-/* wm 32 0x3f040000 0xf0
- check 32 until_any_bit_set 0x3f040000 0x0f */
 
 
-CHECKPOINT(9)
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

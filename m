Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TMiNj-0001uf-Vc
 for barebox@lists.infradead.org; Fri, 12 Oct 2012 16:46:41 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 12 Oct 2012 18:46:36 +0200
Message-Id: <1350060396-14229-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] ARM: introduce arm_setup_stack function and use it
To: barebox@lists.infradead.org

We have enough places which setup0 a stack to justify
a static inline function for it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/eukrea_cpuimx25/lowlevel.c |    3 +--
 arch/arm/boards/eukrea_cpuimx35/lowlevel.c |    3 +--
 arch/arm/boards/guf-cupid/lowlevel.c       |    6 ++----
 arch/arm/boards/guf-neso/lowlevel.c        |    3 +--
 arch/arm/boards/karo-tx25/lowlevel.c       |    3 +--
 arch/arm/boards/panda/lowlevel.c           |    3 +--
 arch/arm/boards/pcm038/lowlevel.c          |    3 +--
 arch/arm/boards/pcm043/lowlevel.c          |    3 +--
 arch/arm/boards/pcm049/lowlevel.c          |    3 +--
 arch/arm/boards/phycard-a-xl2/lowlevel.c   |    3 +--
 arch/arm/cpu/start-pbl.c                   |    5 ++---
 arch/arm/cpu/start.c                       |    6 ++----
 arch/arm/include/asm/common.h              |    5 +++++
 13 files changed, 20 insertions(+), 29 deletions(-)

diff --git a/arch/arm/boards/eukrea_cpuimx25/lowlevel.c b/arch/arm/boards/eukrea_cpuimx25/lowlevel.c
index cd80b25..8d6cd1f 100644
--- a/arch/arm/boards/eukrea_cpuimx25/lowlevel.c
+++ b/arch/arm/boards/eukrea_cpuimx25/lowlevel.c
@@ -36,8 +36,7 @@ static void __bare_init __naked insdram(void)
 	uint32_t r;
 
 	/* setup a stack to be able to call imx_nand_load_image() */
-	r = STACK_BASE + STACK_SIZE - 12;
-	__asm__ __volatile__("mov sp, %0" : : "r"(r));
+	arm_setup_stack(STACK_BASE + STACK_SIZE - 12);
 
 	imx_nand_load_image(_text, barebox_image_size);
 
diff --git a/arch/arm/boards/eukrea_cpuimx35/lowlevel.c b/arch/arm/boards/eukrea_cpuimx35/lowlevel.c
index ea932f7..8689f9e 100644
--- a/arch/arm/boards/eukrea_cpuimx35/lowlevel.c
+++ b/arch/arm/boards/eukrea_cpuimx35/lowlevel.c
@@ -47,8 +47,7 @@ static void __bare_init __naked insdram(void)
 	writel(r, MX35_CCM_BASE_ADDR + CCM_PDR4);
 
 	/* setup a stack to be able to call imx_nand_load_image() */
-	r = STACK_BASE + STACK_SIZE - 12;
-	__asm__ __volatile__("mov sp, %0" : : "r"(r));
+	arm_setup_stack(STACK_BASE + STACK_SIZE - 12);
 
 	imx_nand_load_image(_text, barebox_image_size);
 
diff --git a/arch/arm/boards/guf-cupid/lowlevel.c b/arch/arm/boards/guf-cupid/lowlevel.c
index d451fd9..a1b58cc 100644
--- a/arch/arm/boards/guf-cupid/lowlevel.c
+++ b/arch/arm/boards/guf-cupid/lowlevel.c
@@ -54,8 +54,7 @@ static void __bare_init __naked insdram(void)
 	writel(r, MX35_CCM_BASE_ADDR + CCM_PDR4);
 
 	/* setup a stack to be able to call imx_nand_load_image() */
-	r = STACK_BASE + STACK_SIZE - 12;
-	__asm__ __volatile__("mov sp, %0" : : "r"(r));
+	arm_setup_stack(STACK_BASE + STACK_SIZE - 12);
 
 	imx_nand_load_image(_text, barebox_image_size);
 
@@ -190,8 +189,7 @@ void __bare_init __naked reset(void)
 
 	common_reset();
 
-	r0 = 0x10000000 + 128 * 1024 - 16;
-	__asm__ __volatile__("mov sp, %0" : : "r"(r0));
+	arm_setup_stack(0x10000000 + 128 * 1024 - 16);
 
 	/*
 	 *       ARM1136 init
diff --git a/arch/arm/boards/guf-neso/lowlevel.c b/arch/arm/boards/guf-neso/lowlevel.c
index 52fe6cf..298bbd7 100644
--- a/arch/arm/boards/guf-neso/lowlevel.c
+++ b/arch/arm/boards/guf-neso/lowlevel.c
@@ -38,8 +38,7 @@ static void __bare_init __naked insdram(void)
 	PCCR1 |= PCCR1_NFC_BAUDEN;
 
 	/* setup a stack to be able to call imx_nand_load_image() */
-	r = STACK_BASE + STACK_SIZE - 12;
-	__asm__ __volatile__("mov sp, %0" : : "r"(r));
+	arm_setup_stack(STACK_BASE + STACK_SIZE - 12);
 
 	imx_nand_load_image(_text, barebox_image_size);
 
diff --git a/arch/arm/boards/karo-tx25/lowlevel.c b/arch/arm/boards/karo-tx25/lowlevel.c
index 3192abd..2d09fd7 100644
--- a/arch/arm/boards/karo-tx25/lowlevel.c
+++ b/arch/arm/boards/karo-tx25/lowlevel.c
@@ -34,8 +34,7 @@ static void __bare_init __naked insdram(void)
 	uint32_t r;
 
 	/* setup a stack to be able to call imx_nand_load_image() */
-	r = STACK_BASE + STACK_SIZE - 12;
-	__asm__ __volatile__("mov sp, %0" : : "r"(r));
+	arm_setup_stack(STACK_BASE + STACK_SIZE - 12);
 
 	imx_nand_load_image(_text, barebox_image_size);
 
diff --git a/arch/arm/boards/panda/lowlevel.c b/arch/arm/boards/panda/lowlevel.c
index 33d06be..97b4125 100644
--- a/arch/arm/boards/panda/lowlevel.c
+++ b/arch/arm/boards/panda/lowlevel.c
@@ -83,8 +83,7 @@ void reset(void)
 	if (get_pc() > 0x80000000)
 		board_init_lowlevel_return();
 
-	r = 0x4030d000;
-	__asm__ __volatile__("mov sp, %0" : : "r"(r));
+	arm_setup_stack(0x4030d000);
 
 	panda_init_lowlevel();
 }
diff --git a/arch/arm/boards/pcm038/lowlevel.c b/arch/arm/boards/pcm038/lowlevel.c
index 7ecff3a..a1b37b8 100644
--- a/arch/arm/boards/pcm038/lowlevel.c
+++ b/arch/arm/boards/pcm038/lowlevel.c
@@ -39,8 +39,7 @@ static void __bare_init __naked insdram(void)
 	PCCR1 |= PCCR1_NFC_BAUDEN;
 
 	/* setup a stack to be able to call imx_nand_load_image() */
-	r = STACK_BASE + STACK_SIZE - 12;
-	__asm__ __volatile__("mov sp, %0" : : "r"(r));
+	arm_setup_stack(STACK_BASE + STACK_SIZE - 12);
 
 	imx_nand_load_image(_text, barebox_image_size);
 
diff --git a/arch/arm/boards/pcm043/lowlevel.c b/arch/arm/boards/pcm043/lowlevel.c
index 4516e9f..6bd6508 100644
--- a/arch/arm/boards/pcm043/lowlevel.c
+++ b/arch/arm/boards/pcm043/lowlevel.c
@@ -52,8 +52,7 @@ static void __bare_init __naked insdram(void)
 	writel(r, MX35_CCM_BASE_ADDR + CCM_PDR4);
 
 	/* setup a stack to be able to call imx_nand_load_image() */
-	r = STACK_BASE + STACK_SIZE - 12;
-	__asm__ __volatile__("mov sp, %0" : : "r"(r));
+	arm_setup_stack(STACK_BASE + STACK_SIZE - 12);
 
 	imx_nand_load_image(_text, barebox_image_size);
 
diff --git a/arch/arm/boards/pcm049/lowlevel.c b/arch/arm/boards/pcm049/lowlevel.c
index c3fc6c7..e98a7b4 100644
--- a/arch/arm/boards/pcm049/lowlevel.c
+++ b/arch/arm/boards/pcm049/lowlevel.c
@@ -93,8 +93,7 @@ void reset(void)
 	if (get_pc() > 0x80000000)
 		board_init_lowlevel_return();
 
-	r = 0x4030d000;
-	__asm__ __volatile__("mov sp, %0" : : "r"(r));
+	arm_setup_stack(0x4030d000);
 
 	pcm049_init_lowlevel();
 }
diff --git a/arch/arm/boards/phycard-a-xl2/lowlevel.c b/arch/arm/boards/phycard-a-xl2/lowlevel.c
index 24b4ab8..f1b3bf8 100644
--- a/arch/arm/boards/phycard-a-xl2/lowlevel.c
+++ b/arch/arm/boards/phycard-a-xl2/lowlevel.c
@@ -93,8 +93,7 @@ void reset(void)
 	if (get_pc() > 0x80000000)
 		board_init_lowlevel_return();
 
-	r = 0x4030d000;
-	__asm__ __volatile__("mov sp, %0" : : "r"(r));
+	arm_setup_stack(0x4030d000);
 
 	pcaaxl2_init_lowlevel();
 }
diff --git a/arch/arm/cpu/start-pbl.c b/arch/arm/cpu/start-pbl.c
index 0467dfe..198c8da 100644
--- a/arch/arm/cpu/start-pbl.c
+++ b/arch/arm/cpu/start-pbl.c
@@ -174,12 +174,11 @@ static void barebox_uncompress(void *compressed_start, unsigned int len)
  */
 void __naked board_init_lowlevel_return(void)
 {
-	uint32_t r, offset;
+	uint32_t offset;
 	uint32_t pg_start, pg_end, pg_len;
 
 	/* Setup the stack */
-	r = STACK_BASE + STACK_SIZE - 16;
-	__asm__ __volatile__("mov sp, %0" : : "r"(r));
+	arm_setup_stack(STACK_BASE + STACK_SIZE - 16);
 
 	/* Get offset between linked address and runtime address */
 	offset = get_runtime_offset();
diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index 8676267..613443f 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -70,11 +70,9 @@ void __naked __bare_init reset(void)
  */
 void __naked board_init_lowlevel_return(void)
 {
-	uint32_t r, offset;
+	uint32_t offset;
 
-	/* Setup the stack */
-	r = STACK_BASE + STACK_SIZE - 16;
-	__asm__ __volatile__("mov sp, %0" : : "r"(r));
+	arm_setup_stack(STACK_BASE + STACK_SIZE - 16);
 
 	/* Get offset between linked address and runtime address */
 	offset = get_runtime_offset();
diff --git a/arch/arm/include/asm/common.h b/arch/arm/include/asm/common.h
index f3a87c8..133bb8e 100644
--- a/arch/arm/include/asm/common.h
+++ b/arch/arm/include/asm/common.h
@@ -16,4 +16,9 @@ static inline unsigned long get_pc(void)
 	return pc;
 }
 
+static inline void arm_setup_stack(unsigned long top)
+{
+	__asm__ __volatile__("mov sp, %0" : : "r"(top));
+}
+
 #endif /* __ASM_ARM_COMMON_H */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

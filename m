Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Pwv2A-0001Rx-R4
	for barebox@lists.infradead.org; Tue, 08 Mar 2011 11:25:02 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  8 Mar 2011 12:24:50 +0100
Message-Id: <1299583492-29504-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1299583492-29504-1-git-send-email-s.hauer@pengutronix.de>
References: <1299583492-29504-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/3] ARM: create a second level page table entry for the
	exception vectors
To: barebox@lists.infradead.org

Often enough the exception vectors are not on TEXT_BASE (for example
on i.MX SoCs in internal boot mode), so the board specific code did
not map the exception vectors to 0x0 but whatever happens to be on
TEXT_BASE. Also, the current section-only mapping requires the
exception vectors to be on a 1MB boundary.
Instead, create the possibility to create second level tables and
use this to map a copy of the exception vectors in a board
independent way.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/chumby_falconwing/falconwing.c    |    5 --
 arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c |    5 --
 arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c |    5 --
 arch/arm/boards/freescale-mx51-pdk/board.c        |    6 ---
 arch/arm/boards/guf-cupid/board.c                 |    6 ---
 arch/arm/boards/guf-neso/board.c                  |    5 --
 arch/arm/boards/karo-tx28/tx28.c                  |    5 --
 arch/arm/boards/pcm037/pcm037.c                   |    5 --
 arch/arm/boards/pcm038/pcm038.c                   |    5 --
 arch/arm/boards/pcm043/pcm043.c                   |    6 ---
 arch/arm/boards/phycard-i.MX27/pca100.c           |    5 --
 arch/arm/cpu/mmu.c                                |   48 +++++++++++++++++++++
 12 files changed, 48 insertions(+), 58 deletions(-)

diff --git a/arch/arm/boards/chumby_falconwing/falconwing.c b/arch/arm/boards/chumby_falconwing/falconwing.c
index d46431c..6de8e28 100644
--- a/arch/arm/boards/chumby_falconwing/falconwing.c
+++ b/arch/arm/boards/chumby_falconwing/falconwing.c
@@ -292,11 +292,6 @@ static int falconwing_mmu_init(void)
 
 	setup_dma_coherent(0x10000000);
 
-#if TEXT_BASE & (0x100000 - 1)
-#warning cannot create vector section. Adjust TEXT_BASE to a 1M boundary
-#else
-	arm_create_section(0x0,        TEXT_BASE,   1, PMD_SECT_DEF_UNCACHED);
-#endif
 	mmu_enable();
 
 	return 0;
diff --git a/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c b/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
index 4567cba..a7e9951 100644
--- a/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
+++ b/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
@@ -153,11 +153,6 @@ static void eukrea_cpuimx27_mmu_init(void)
 
 	setup_dma_coherent(0x10000000);
 
-#if TEXT_BASE & (0x100000 - 1)
-#warning cannot create vector section. Adjust TEXT_BASE to a 1M boundary
-#else
-	arm_create_section(0x0,        TEXT_BASE,   1, PMD_SECT_DEF_UNCACHED);
-#endif
 	mmu_enable();
 }
 #else
diff --git a/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c b/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
index f377793..73bb2e1 100644
--- a/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
+++ b/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
@@ -161,11 +161,6 @@ static int eukrea_cpuimx35_mmu_init(void)
 
 	setup_dma_coherent(0x10000000);
 
-#if TEXT_BASE & (0x100000 - 1)
-#warning cannot create vector section. Adjust TEXT_BASE to a 1M boundary
-#else
-	arm_create_section(0x0,        TEXT_BASE,   1, PMD_SECT_DEF_UNCACHED);
-#endif
 	mmu_enable();
 
 #ifdef CONFIG_CACHE_L2X0
diff --git a/arch/arm/boards/freescale-mx51-pdk/board.c b/arch/arm/boards/freescale-mx51-pdk/board.c
index ff779ca..35d6153 100644
--- a/arch/arm/boards/freescale-mx51-pdk/board.c
+++ b/arch/arm/boards/freescale-mx51-pdk/board.c
@@ -96,12 +96,6 @@ static void babbage_mmu_init(void)
 
 	setup_dma_coherent(0x20000000);
 
-#if TEXT_BASE & (0x100000 - 1)
-#warning cannot create vector section. Adjust TEXT_BASE to a 1M boundary
-#else
-	arm_create_section(0x0,        TEXT_BASE,   1, PMD_SECT_DEF_UNCACHED);
-#endif
-
 	mmu_enable();
 }
 #else
diff --git a/arch/arm/boards/guf-cupid/board.c b/arch/arm/boards/guf-cupid/board.c
index e30f8e5..d04af78 100644
--- a/arch/arm/boards/guf-cupid/board.c
+++ b/arch/arm/boards/guf-cupid/board.c
@@ -145,12 +145,6 @@ static int cupid_mmu_init(void)
 
 	setup_dma_coherent(0x10000000);
 
-#if TEXT_BASE & (0x100000 - 1)
-#warning cannot create vector section. Adjust TEXT_BASE to a 1M boundary
-#else
-	arm_create_section(0x0,        TEXT_BASE,   1, PMD_SECT_DEF_UNCACHED);
-#endif
-
 	mmu_enable();
 
 #ifdef CONFIG_CACHE_L2X0
diff --git a/arch/arm/boards/guf-neso/board.c b/arch/arm/boards/guf-neso/board.c
index d371dd6..c4b2fa1 100644
--- a/arch/arm/boards/guf-neso/board.c
+++ b/arch/arm/boards/guf-neso/board.c
@@ -167,11 +167,6 @@ static void neso_mmu_init(void)
 
 	setup_dma_coherent(0x10000000);
 
-#if TEXT_BASE & (0x100000 - 1)
-#warning cannot create vector section. Adjust TEXT_BASE to a 1M boundary
-#else
-	arm_create_section(0x0,        TEXT_BASE,   1, PMD_SECT_DEF_UNCACHED);
-#endif
 	mmu_enable();
 }
 #else
diff --git a/arch/arm/boards/karo-tx28/tx28.c b/arch/arm/boards/karo-tx28/tx28.c
index 5692171..1f47a8d 100644
--- a/arch/arm/boards/karo-tx28/tx28.c
+++ b/arch/arm/boards/karo-tx28/tx28.c
@@ -93,11 +93,6 @@ static int tx28_mmu_init(void)
 
 	setup_dma_coherent(0x10000000);
 
-#if TEXT_BASE & (0x100000 - 1)
-#warning cannot create vector section. Adjust TEXT_BASE to a 1M boundary
-#else
-	arm_create_section(0x0,        TEXT_BASE,   1, PMD_SECT_DEF_UNCACHED);
-#endif
 	mmu_enable();
 
 	return 0;
diff --git a/arch/arm/boards/pcm037/pcm037.c b/arch/arm/boards/pcm037/pcm037.c
index ffecec2..cb4ffe6 100644
--- a/arch/arm/boards/pcm037/pcm037.c
+++ b/arch/arm/boards/pcm037/pcm037.c
@@ -239,11 +239,6 @@ static void pcm037_mmu_init(void)
 
 	setup_dma_coherent(0x10000000);
 
-#if TEXT_BASE & (0x100000 - 1)
-#warning cannot create vector section. Adjust TEXT_BASE to a 1M boundary
-#else
-	arm_create_section(0x0,        TEXT_BASE,   1, PMD_SECT_DEF_UNCACHED);
-#endif
 	mmu_enable();
 
 #ifdef CONFIG_CACHE_L2X0
diff --git a/arch/arm/boards/pcm038/pcm038.c b/arch/arm/boards/pcm038/pcm038.c
index 1dbc6b6..3ca6650 100644
--- a/arch/arm/boards/pcm038/pcm038.c
+++ b/arch/arm/boards/pcm038/pcm038.c
@@ -179,11 +179,6 @@ static void pcm038_mmu_init(void)
 
 	setup_dma_coherent(0x10000000);
 
-#if TEXT_BASE & (0x100000 - 1)
-#warning cannot create vector section. Adjust TEXT_BASE to a 1M boundary
-#else
-	arm_create_section(0x0,        TEXT_BASE,   1, PMD_SECT_DEF_UNCACHED);
-#endif
 	mmu_enable();
 }
 #else
diff --git a/arch/arm/boards/pcm043/pcm043.c b/arch/arm/boards/pcm043/pcm043.c
index 36bde45..7db3c83 100644
--- a/arch/arm/boards/pcm043/pcm043.c
+++ b/arch/arm/boards/pcm043/pcm043.c
@@ -133,12 +133,6 @@ static int pcm043_mmu_init(void)
 
 	setup_dma_coherent(0x10000000);
 
-#if TEXT_BASE & (0x100000 - 1)
-#warning cannot create vector section. Adjust TEXT_BASE to a 1M boundary
-#else
-	arm_create_section(0x0,        TEXT_BASE,   1, PMD_SECT_DEF_UNCACHED);
-#endif
-
 	mmu_enable();
 
 #ifdef CONFIG_CACHE_L2X0
diff --git a/arch/arm/boards/phycard-i.MX27/pca100.c b/arch/arm/boards/phycard-i.MX27/pca100.c
index c539ea1..89c0a14 100644
--- a/arch/arm/boards/phycard-i.MX27/pca100.c
+++ b/arch/arm/boards/phycard-i.MX27/pca100.c
@@ -106,11 +106,6 @@ static void pca100_mmu_init(void)
 
 	setup_dma_coherent(0x10000000);
 
-#if TEXT_BASE & (0x100000 - 1)
-#warning cannot create vector section. Adjust TEXT_BASE to a 1M boundary
-#else
-	arm_create_section(0x0,        TEXT_BASE,   1, PMD_SECT_DEF_UNCACHED);
-#endif
 	mmu_enable();
 }
 #else
diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
index df664f6..593e39c 100644
--- a/arch/arm/cpu/mmu.c
+++ b/arch/arm/cpu/mmu.c
@@ -24,6 +24,52 @@ void arm_create_section(unsigned long virt, unsigned long phys, int size_m,
 }
 
 /*
+ * Create a second level translation table for the given virtual address.
+ * We initially create a flat uncached mapping on it.
+ * Not yet exported, but may be later if someone finds use for it.
+ */
+static u32 *arm_create_pte(unsigned long virt)
+{
+	u32 *table;
+	int i;
+
+	table = memalign(0x400, 0x400);
+
+	ttb[virt] = (unsigned long)table | PMD_TYPE_TABLE;
+
+	for (i = 0; i < 256; i++)
+		table[i] = virt | PTE_TYPE_SMALL | PTE_SMALL_AP_UNO_SRW;
+
+	return table;
+}
+
+/*
+ * We have 8 exception vectors and the table consists of absolute
+ * jumps, so we need 8 * 4 bytes for the instructions and another
+ * 8 * 4 bytes for the addresses.
+ */
+#define ARM_VECTORS_SIZE	(sizeof(u32) * 8 * 2)
+
+/*
+ * Allocate a page, map it to the zero page and copy our exception
+ * vectors there.
+ */
+static void vectors_init(void)
+{
+	u32 *exc;
+	void *vectors;
+	extern unsigned long exception_vectors;
+
+	exc = arm_create_pte(0x0);
+
+	vectors = xmemalign(PAGE_SIZE, PAGE_SIZE);
+	memset(vectors, 0, PAGE_SIZE);
+	memcpy(vectors, &exception_vectors, ARM_VECTORS_SIZE);
+
+	exc[0] = (u32)vectors | PTE_TYPE_SMALL | PTE_SMALL_AP_UNO_SRW;
+}
+
+/*
  * Prepare MMU for usage and create a flat mapping. Board
  * code is responsible to remap the SDRAM cached
  */
@@ -43,6 +89,8 @@ void mmu_init(void)
 
 	/* create a flat mapping */
 	arm_create_section(0, 0, 4096, PMD_SECT_AP_WRITE | PMD_SECT_AP_READ | PMD_TYPE_SECT);
+
+	vectors_init();
 }
 
 /*
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

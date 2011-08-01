Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 10.mo4.mail-out.ovh.net ([188.165.33.109]
	helo=mo4.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QnsqM-0003hR-PP
	for barebox@lists.infradead.org; Mon, 01 Aug 2011 13:47:51 +0000
Received: from mail182.ha.ovh.net (b6.ovh.net [213.186.33.56])
	by mo4.mail-out.ovh.net (Postfix) with SMTP id 7BAD0FFA5E8
	for <barebox@lists.infradead.org>;
	Mon,  1 Aug 2011 15:48:37 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon,  1 Aug 2011 15:29:43 +0200
Message-Id: <1312205383-13266-9-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20110801132643.GH6255@game.jcrosoft.org>
References: <20110801132643.GH6255@game.jcrosoft.org>
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
Subject: [PATCH 9/9 v2] ARM boards: remove now unnecessary mmu calls
To: barebox@lists.infradead.org

From: Sascha Hauer <s.hauer@pengutronix.de>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/chumby_falconwing/falconwing.c    |   10 ----
 arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c |   10 ----
 arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c |   10 ----
 arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c |   20 +++-----
 arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c |   16 ------
 arch/arm/boards/freescale-mx51-pdk/board.c        |   10 ----
 arch/arm/boards/freescale-mx53-loco/board.c       |   12 -----
 arch/arm/boards/guf-cupid/board.c                 |   20 +++-----
 arch/arm/boards/guf-neso/board.c                  |   10 ----
 arch/arm/boards/karo-tx25/board.c                 |   12 -----
 arch/arm/boards/karo-tx28/tx28.c                  |   10 ----
 arch/arm/boards/panda/board.c                     |    8 ---
 arch/arm/boards/pcm037/pcm037.c                   |   20 +++-----
 arch/arm/boards/pcm038/pcm038.c                   |   10 ----
 arch/arm/boards/pcm043/pcm043.c                   |   21 +++-----
 arch/arm/boards/pcm049/board.c                    |    9 ---
 arch/arm/boards/phycard-i.MX27/pca100.c           |   10 ----
 arch/arm/boards/scb9328/env/config                |   56 +++++++++++++++++++++
 arch/arm/cpu/mmu.c                                |    3 +-
 arch/arm/include/asm/mmu.h                        |    7 ---
 20 files changed, 86 insertions(+), 198 deletions(-)
 create mode 100644 arch/arm/boards/scb9328/env/config

diff --git a/arch/arm/boards/chumby_falconwing/falconwing.c b/arch/arm/boards/chumby_falconwing/falconwing.c
index b20dd74..1c66eb2 100644
--- a/arch/arm/boards/chumby_falconwing/falconwing.c
+++ b/arch/arm/boards/chumby_falconwing/falconwing.c
@@ -265,16 +265,6 @@ static int falconwing_mem_init(void)
 {
 	arm_add_mem_device("ram0", IMX_MEMORY_BASE, 64 * 1024 * 1024);
 
-#ifdef CONFIG_MMU
-	mmu_init();
-
-	arm_create_section(0x40000000, 0x40000000, 64, PMD_SECT_DEF_CACHED);
-	arm_create_section(0x50000000, 0x40000000, 64, PMD_SECT_DEF_UNCACHED);
-
-	setup_dma_coherent(0x10000000);
-
-	mmu_enable();
-#endif
 	return 0;
 }
 mem_initcall(falconwing_mem_init);
diff --git a/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c b/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
index 5c07597..1c54202 100644
--- a/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
+++ b/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
@@ -160,16 +160,6 @@ static int eukrea_cpuimx25_mem_init(void)
 {
 	arm_add_mem_device("ram0", IMX_SDRAM_CS0, 64 * 1024 * 1024);
 
-#ifdef CONFIG_MMU
-	mmu_init();
-
-	arm_create_section(0x80000000, 0x80000000, 128, PMD_SECT_DEF_CACHED);
-	arm_create_section(0x90000000, 0x80000000, 128, PMD_SECT_DEF_UNCACHED);
-
-	setup_dma_coherent(0x10000000);
-
-	mmu_enable();
-#endif
 	return 0;
 }
 mem_initcall(eukrea_cpuimx25_mem_init);
diff --git a/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c b/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
index ac886fa..a5aadac 100644
--- a/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
+++ b/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
@@ -92,16 +92,6 @@ static int eukrea_cpuimx27_mem_init(void)
 {
 	arm_add_mem_device("ram0", 0xa0000000, SDRAM0 * 1024 * 1024);
 
-#ifdef CONFIG_MMU
-	mmu_init();
-
-	arm_create_section(0xa0000000, 0xa0000000, 128, PMD_SECT_DEF_CACHED);
-	arm_create_section(0xb0000000, 0xa0000000, 128, PMD_SECT_DEF_UNCACHED);
-
-	setup_dma_coherent(0x10000000);
-
-	mmu_enable();
-#endif
 	return 0;
 }
 mem_initcall(eukrea_cpuimx27_mem_init);
diff --git a/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c b/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
index 02df444..426445f 100644
--- a/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
+++ b/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
@@ -130,23 +130,17 @@ static int eukrea_cpuimx35_mem_init(void)
 {
 	arm_add_mem_device("ram0", IMX_SDRAM_CS0, 128 * 1024 * 1024);
 
-#ifdef CONFIG_MMU
-	mmu_init();
-
-	arm_create_section(0x80000000, 0x80000000, 128, PMD_SECT_DEF_CACHED);
-	arm_create_section(0x90000000, 0x80000000, 128, PMD_SECT_DEF_UNCACHED);
-
-	setup_dma_coherent(0x10000000);
-
-	mmu_enable();
+	return 0;
+}
+mem_initcall(eukrea_cpuimx35_mem_init);
 
-#ifdef CONFIG_CACHE_L2X0
+static int eukrea_cpuimx35_mmu_init(void)
+{
 	l2x0_init((void __iomem *)0x30000000, 0x00030024, 0x00000000);
-#endif
-#endif
+
 	return 0;
 }
-mem_initcall(eukrea_cpuimx35_mem_init);
+postmmu_initcall(eukrea_cpuimx35_mmu_init);
 
 static int eukrea_cpuimx35_devices_init(void)
 {
diff --git a/arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c b/arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c
index b6fce93..727db29 100644
--- a/arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c
+++ b/arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c
@@ -97,22 +97,6 @@ static int eukrea_cpuimx51_mem_init(void)
 {
 	arm_add_mem_device("ram0", 0x90000000, 256 * 1024 * 1024);
 
-#ifdef CONFIG_MMU
-	mmu_init();
-
-	arm_create_section(0x90000000, 0x90000000, 256, PMD_SECT_DEF_CACHED);
-	arm_create_section(0xa0000000, 0x90000000, 256, PMD_SECT_DEF_UNCACHED);
-
-	setup_dma_coherent(0x10000000);
-
-#if TEXT_BASE & (0x100000 - 1)
-#warning cannot create vector section. Adjust TEXT_BASE to a 1M boundary
-#else
-	arm_create_section(0x0,        TEXT_BASE,   1, PMD_SECT_DEF_UNCACHED);
-#endif
-
-	mmu_enable();
-#endif
 	return 0;
 }
 mem_initcall(eukrea_cpuimx51_mem_init);
diff --git a/arch/arm/boards/freescale-mx51-pdk/board.c b/arch/arm/boards/freescale-mx51-pdk/board.c
index f347657..d6472df 100644
--- a/arch/arm/boards/freescale-mx51-pdk/board.c
+++ b/arch/arm/boards/freescale-mx51-pdk/board.c
@@ -77,16 +77,6 @@ static int babbage_mem_init(void)
 {
 	arm_add_mem_device("ram0", 0x90000000, 512 * 1024 * 1024);
 
-#ifdef CONFIG_MMU
-	mmu_init();
-
-	arm_create_section(0x90000000, 0x90000000, 512, PMD_SECT_DEF_CACHED);
-	arm_create_section(0xb0000000, 0x90000000, 512, PMD_SECT_DEF_UNCACHED);
-
-	setup_dma_coherent(0x20000000);
-
-	mmu_enable();
-#endif
 	return 0;
 }
 mem_initcall(babbage_mem_init);
diff --git a/arch/arm/boards/freescale-mx53-loco/board.c b/arch/arm/boards/freescale-mx53-loco/board.c
index 92cff01..b5240f4 100644
--- a/arch/arm/boards/freescale-mx53-loco/board.c
+++ b/arch/arm/boards/freescale-mx53-loco/board.c
@@ -78,18 +78,6 @@ static int loco_mem_init(void)
 	arm_add_mem_device("ram0", 0x70000000, SZ_512M);
 	arm_add_mem_device("ram1", 0xb0000000, SZ_512M);
 
-#ifdef CONFIG_MMU
-	mmu_init();
-
-	arm_create_section(0x70000000, 0x70000000, 512, PMD_SECT_DEF_CACHED);
-	arm_create_section(0x90000000, 0x70000000, 512, PMD_SECT_DEF_UNCACHED);
-	arm_create_section(0xb0000000, 0xb0000000, 512, PMD_SECT_DEF_CACHED);
-	arm_create_section(0xd0000000, 0xb0000000, 512, PMD_SECT_DEF_UNCACHED);
-
-	setup_dma_coherent(0x20000000);
-
-	mmu_enable();
-#endif
 	return 0;
 }
 mem_initcall(loco_mem_init);
diff --git a/arch/arm/boards/guf-cupid/board.c b/arch/arm/boards/guf-cupid/board.c
index 134f377..706707d 100644
--- a/arch/arm/boards/guf-cupid/board.c
+++ b/arch/arm/boards/guf-cupid/board.c
@@ -100,23 +100,17 @@ static int cupid_mem_init(void)
 {
 	arm_add_mem_device("ram0", IMX_SDRAM_CS0, 128 * 1024 * 1024);
 
-#ifdef CONFIG_MMU
-	mmu_init();
-
-	arm_create_section(0x80000000, 0x80000000, 128, PMD_SECT_DEF_CACHED);
-	arm_create_section(0x90000000, 0x80000000, 128, PMD_SECT_DEF_UNCACHED);
-
-	setup_dma_coherent(0x10000000);
-
-	mmu_enable();
+	return 0;
+}
+mem_initcall(cupid_mem_init);
 
-#ifdef CONFIG_CACHE_L2X0
+static int cupid_mmu_init(void)
+{
 	l2x0_init((void __iomem *)0x30000000, 0x00030024, 0x00000000);
-#endif
-#endif
+
 	return 0;
 }
-mem_initcall(cupid_mem_init);
+postmmu_initcall(cupid_mmu_init);
 
 static int cupid_devices_init(void)
 {
diff --git a/arch/arm/boards/guf-neso/board.c b/arch/arm/boards/guf-neso/board.c
index 3517a5d..446b333 100644
--- a/arch/arm/boards/guf-neso/board.c
+++ b/arch/arm/boards/guf-neso/board.c
@@ -140,16 +140,6 @@ static int neso_mem_init(void)
 {
 	arm_add_mem_device("ram0", 0xa0000000, 128 * 1024 * 1024);
 
-#ifdef CONFIG_MMU
-	mmu_init();
-
-	arm_create_section(0xa0000000, 0xa0000000, 128, PMD_SECT_DEF_CACHED);
-	arm_create_section(0xb0000000, 0xa0000000, 128, PMD_SECT_DEF_UNCACHED);
-
-	setup_dma_coherent(0x10000000);
-
-	mmu_enable();
-#endif
 	return 0;
 }
 mem_initcall(neso_mem_init);
diff --git a/arch/arm/boards/karo-tx25/board.c b/arch/arm/boards/karo-tx25/board.c
index a01fa3c..22bc27a 100644
--- a/arch/arm/boards/karo-tx25/board.c
+++ b/arch/arm/boards/karo-tx25/board.c
@@ -59,18 +59,6 @@ static int tx25_mem_init(void)
 	add_mem_device("ram0", 0x78000000, 128 * 1024,
 				   IORESOURCE_MEM_WRITEABLE);
 
-#ifdef CONFIG_MMU
-	mmu_init();
-
-	arm_create_section(0x80000000, 0x80000000, 32, PMD_SECT_DEF_CACHED);
-	arm_create_section(0x82000000, 0x80000000, 32, PMD_SECT_DEF_UNCACHED);
-	arm_create_section(0x90000000, 0x90000000, 32, PMD_SECT_DEF_CACHED);
-	arm_create_section(0x92000000, 0x90000000, 32, PMD_SECT_DEF_UNCACHED);
-
-	setup_dma_coherent(0x02000000);
-
-	mmu_enable();
-#endif
 	return 0;
 }
 mem_initcall(tx25_mem_init);
diff --git a/arch/arm/boards/karo-tx28/tx28.c b/arch/arm/boards/karo-tx28/tx28.c
index d6e3f9c..def388a 100644
--- a/arch/arm/boards/karo-tx28/tx28.c
+++ b/arch/arm/boards/karo-tx28/tx28.c
@@ -74,16 +74,6 @@ static int tx28_mem_init(void)
 {
 	arm_add_mem_device("ram0", IMX_MEMORY_BASE, 128 * 1024 * 1024);
 
-#ifdef CONFIG_MMU
-	mmu_init();
-
-	arm_create_section(0x40000000, 0x40000000, 128, PMD_SECT_DEF_CACHED);
-	arm_create_section(0x50000000, 0x40000000, 128, PMD_SECT_DEF_UNCACHED);
-
-	setup_dma_coherent(0x10000000);
-
-	mmu_enable();
-#endif
 	return 0;
 }
 mem_initcall(tx28_mem_init);
diff --git a/arch/arm/boards/panda/board.c b/arch/arm/boards/panda/board.c
index 696d44a..1303c47 100644
--- a/arch/arm/boards/panda/board.c
+++ b/arch/arm/boards/panda/board.c
@@ -48,14 +48,6 @@ static int panda_mem_init(void)
 {
 	arm_add_mem_device("ram0", 0x80000000, SZ_1G);
 
-#ifdef CONFIG_MMU
-	mmu_init();
-
-	arm_create_section(0x80000000, 0x80000000, 256, PMD_SECT_DEF_CACHED);
-	arm_create_section(0x90000000, 0x80000000, 256, PMD_SECT_DEF_UNCACHED);
-
-	mmu_enable();
-#endif
 	return 0;
 }
 mem_initcall(panda_mem_init);
diff --git a/arch/arm/boards/pcm037/pcm037.c b/arch/arm/boards/pcm037/pcm037.c
index a026f23..85f004f 100644
--- a/arch/arm/boards/pcm037/pcm037.c
+++ b/arch/arm/boards/pcm037/pcm037.c
@@ -153,23 +153,17 @@ static int pcm037_mem_init(void)
 	arm_add_mem_device("ram1", IMX_SDRAM_CS1, SDRAM1 * 1024 * 1024);
 #endif
 
-#ifdef CONFIG_MMU
-	mmu_init();
-
-	arm_create_section(0x80000000, 0x80000000, 128, PMD_SECT_DEF_CACHED);
-	arm_create_section(0x90000000, 0x80000000, 128, PMD_SECT_DEF_UNCACHED);
-
-	setup_dma_coherent(0x10000000);
-
-	mmu_enable();
+	return 0;
+}
+mem_initcall(pcm037_mem_init);
 
-#ifdef CONFIG_CACHE_L2X0
+static int pcm037_mmu_init(void)
+{
 	l2x0_init((void __iomem *)0x30000000, 0x00030024, 0x00000000);
-#endif
-#endif
+
 	return 0;
 }
-mem_initcall(pcm037_mem_init);
+postmmu_initcall(pcm037_mmu_init);
 
 static int imx31_devices_init(void)
 {
diff --git a/arch/arm/boards/pcm038/pcm038.c b/arch/arm/boards/pcm038/pcm038.c
index 9588b9b..4db50fe 100644
--- a/arch/arm/boards/pcm038/pcm038.c
+++ b/arch/arm/boards/pcm038/pcm038.c
@@ -135,16 +135,6 @@ static int pcm038_mem_init(void)
 
 	add_mem_device("ram0", 0xc8000000, 512 * 1024, /* Can be up to 2MiB */
 				   IORESOURCE_MEM_WRITEABLE);
-#ifdef CONFIG_MMU
-	mmu_init();
-
-	arm_create_section(0xa0000000, 0xa0000000, 128, PMD_SECT_DEF_CACHED);
-	arm_create_section(0xb0000000, 0xa0000000, 128, PMD_SECT_DEF_UNCACHED);
-
-	setup_dma_coherent(0x10000000);
-
-	mmu_enable();
-#endif
 	return 0;
 }
 mem_initcall(pcm038_mem_init);
diff --git a/arch/arm/boards/pcm043/pcm043.c b/arch/arm/boards/pcm043/pcm043.c
index 10d319f..966899a 100644
--- a/arch/arm/boards/pcm043/pcm043.c
+++ b/arch/arm/boards/pcm043/pcm043.c
@@ -103,24 +103,17 @@ static int pcm043_mem_init(void)
 {
 	arm_add_mem_device("ram0", IMX_SDRAM_CS0, 128 * 1024 * 1024);
 
-#ifdef CONFIG_MMU
-	mmu_init();
-
-	arm_create_section(0x80000000, 0x80000000, 128, PMD_SECT_DEF_CACHED);
-	arm_create_section(0x90000000, 0x80000000, 128, PMD_SECT_DEF_UNCACHED);
-
-	setup_dma_coherent(0x10000000);
-
-	mmu_enable();
-
-#ifdef CONFIG_CACHE_L2X0
-	l2x0_init((void __iomem *)0x30000000, 0x00030024, 0x00000000);
-#endif
-#endif
 	return 0;
 }
 mem_initcall(pcm043_mem_init);
 
+static int pcm043_mmu_init(void)
+{
+	l2x0_init((void __iomem *)0x30000000, 0x00030024, 0x00000000);
+
+	return 0;
+}
+postmmu_initcall(pcm043_mmu_init);
 
 struct gpio_led led0 = {
 	.gpio = 1 * 32 + 6,
diff --git a/arch/arm/boards/pcm049/board.c b/arch/arm/boards/pcm049/board.c
index 83eb9be..502e121 100644
--- a/arch/arm/boards/pcm049/board.c
+++ b/arch/arm/boards/pcm049/board.c
@@ -60,15 +60,6 @@ static int pcm049_mem_init(void)
 
 	add_mem_device("sram0", 0x40300000, 48 * 1024,
 				   IORESOURCE_MEM_WRITEABLE);
-#ifdef CONFIG_MMU
-	mmu_init();
-
-	arm_create_section(0x80000000, 0x80000000, 256, PMD_SECT_DEF_CACHED);
-	/* warning: This shadows the second half of our ram */
-	arm_create_section(0x90000000, 0x80000000, 256, PMD_SECT_DEF_UNCACHED);
-
-	mmu_enable();
-#endif
 	return 0;
 }
 mem_initcall(pcm049_mem_init);
diff --git a/arch/arm/boards/phycard-i.MX27/pca100.c b/arch/arm/boards/phycard-i.MX27/pca100.c
index 3c2a0e4..f285466 100644
--- a/arch/arm/boards/phycard-i.MX27/pca100.c
+++ b/arch/arm/boards/phycard-i.MX27/pca100.c
@@ -73,16 +73,6 @@ static int pca100_mem_init(void)
 {
 	arm_add_mem_device("ram0", 0xa0000000, 128 * 1024 * 1024);
 
-#ifdef CONFIG_MMU
-	mmu_init();
-
-	arm_create_section(0xa0000000, 0xa0000000, 128, PMD_SECT_DEF_CACHED);
-	arm_create_section(0xb0000000, 0xa0000000, 128, PMD_SECT_DEF_UNCACHED);
-
-	setup_dma_coherent(0x10000000);
-
-	mmu_enable();
-#endif
 	return 0;
 }
 mem_initcall(pca100_mem_init);
diff --git a/arch/arm/boards/scb9328/env/config b/arch/arm/boards/scb9328/env/config
new file mode 100644
index 0000000..d0f3f25
--- /dev/null
+++ b/arch/arm/boards/scb9328/env/config
@@ -0,0 +1,56 @@
+#!/bin/sh
+
+machine=scb9328
+eth0.serverip=
+user=
+
+# use 'dhcp' to do dhcp in barebox and in kernel
+# use 'none' if you want to skip kernel ip autoconfiguration
+ip=dhcp
+
+# or set your networking parameters here
+#eth0.ipaddr=a.b.c.d
+#eth0.netmask=a.b.c.d
+#eth0.gateway=a.b.c.d
+#eth0.serverip=a.b.c.d
+
+# can be either 'net', 'nor' or 'nand'
+kernel_loc=net
+# can be either 'net', 'nor', 'nand' or 'initrd'
+rootfs_loc=net
+
+# can be either 'jffs2' or 'ubifs'
+rootfs_type=ubifs
+rootfsimage=root-$machine.$rootfs_type
+
+# The image type of the kernel. Can be uimage, zimage, raw, or raw_lzo
+kernelimage_type=zimage
+kernelimage=zImage-$machine
+#kernelimage_type=uimage
+#kernelimage=uImage-$machine
+#kernelimage_type=raw
+#kernelimage=Image-$machine
+#kernelimage_type=raw_lzo
+#kernelimage=Image-$machine.lzo
+
+if [ -n $user ]; then
+	kernelimage="$user"-"$kernelimage"
+	nfsroot="$eth0.serverip:/home/$user/nfsroot/$machine"
+	rootfsimage="$user"-"$rootfsimage"
+else
+	nfsroot="$eth0.serverip:/path/to/nfs/root"
+fi
+
+autoboot_timeout=3
+
+bootargs="console=ttymxc0,115200"
+
+nor_parts="256k(barebox)ro,128k(bareboxenv),2M(kernel),-(root)"
+rootfs_mtdblock_nor=3
+
+nand_parts="256k(barebox)ro,128k(bareboxenv),2M(kernel),-(root)"
+rootfs_mtdblock_nand=7
+
+# set a fancy prompt (if support is compiled in)
+PS1="\e[1;32mbarebox@\e[1;31m\h:\w\e[0m "
+
diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
index 53ba51a..ad63358 100644
--- a/arch/arm/cpu/mmu.c
+++ b/arch/arm/cpu/mmu.c
@@ -170,7 +170,7 @@ static void vectors_init(void)
 /*
  * Prepare MMU for usage enable it.
  */
-int mmu_init(void)
+static int mmu_init(void)
 {
 	struct arm_memory *mem;
 	int i;
@@ -217,6 +217,7 @@ int mmu_init(void)
 
 	return 0;
 }
+mmu_initcall(mmu_init);
 
 struct outer_cache_fns outer_cache;
 
diff --git a/arch/arm/include/asm/mmu.h b/arch/arm/include/asm/mmu.h
index b1aa781..9ca5e2a 100644
--- a/arch/arm/include/asm/mmu.h
+++ b/arch/arm/include/asm/mmu.h
@@ -24,8 +24,6 @@ static inline void setup_dma_coherent(unsigned long offset)
 }
 
 #ifdef CONFIG_MMU
-int mmu_init(void);
-
 void *dma_alloc_coherent(size_t size);
 void dma_free_coherent(void *mem, size_t size);
 
@@ -36,11 +34,6 @@ unsigned long virt_to_phys(void *virt);
 void *phys_to_virt(unsigned long phys);
 
 #else
-static inline int mmu_init(void)
-{
-	return -EINVAL;
-}
-
 static inline void *dma_alloc_coherent(size_t size)
 {
 	return xmemalign(4096, size);
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

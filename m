Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1Qmjbn-0005Ot-5w
	for barebox@lists.infradead.org; Fri, 29 Jul 2011 09:44:01 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 29 Jul 2011 11:43:50 +0200
Message-Id: <1311932630-5687-8-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1311932630-5687-1-git-send-email-s.hauer@pengutronix.de>
References: <1311932630-5687-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 7/7] ARM boards: remove now unnecessary mmu calls
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/chumby_falconwing/falconwing.c    |    8 ---
 arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c |    8 ---
 arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c |    8 ---
 arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c |   13 +-----
 arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c |   14 -----
 arch/arm/boards/freescale-mx51-pdk/board.c        |    8 ---
 arch/arm/boards/guf-cupid/board.c                 |   12 +----
 arch/arm/boards/guf-neso/board.c                  |    8 ---
 arch/arm/boards/karo-tx25/board.c                 |   10 ----
 arch/arm/boards/karo-tx28/tx28.c                  |    8 ---
 arch/arm/boards/panda/board.c                     |    6 --
 arch/arm/boards/pcm037/pcm037.c                   |   13 +-----
 arch/arm/boards/pcm038/pcm038.c                   |    8 ---
 arch/arm/boards/pcm043/pcm043.c                   |   13 +-----
 arch/arm/boards/pcm049/board.c                    |    7 ---
 arch/arm/boards/phycard-i.MX27/pca100.c           |    8 ---
 arch/arm/boards/scb9328/env/config                |   56 +++++++++++++++++++++
 17 files changed, 60 insertions(+), 148 deletions(-)
 create mode 100644 arch/arm/boards/scb9328/env/config

diff --git a/arch/arm/boards/chumby_falconwing/falconwing.c b/arch/arm/boards/chumby_falconwing/falconwing.c
index 0c9c339..31efe5e 100644
--- a/arch/arm/boards/chumby_falconwing/falconwing.c
+++ b/arch/arm/boards/chumby_falconwing/falconwing.c
@@ -282,16 +282,8 @@ static int falconwing_mmu_init(void)
 				   IORESOURCE_MEM_WRITEABLE);
 	armlinux_add_dram(sdram_dev);
 
-#ifdef CONFIG_MMU
 	mmu_init();
 
-	arm_create_section(0x40000000, 0x40000000, 64, PMD_SECT_DEF_CACHED);
-	arm_create_section(0x50000000, 0x40000000, 64, PMD_SECT_DEF_UNCACHED);
-
-	setup_dma_coherent(0x10000000);
-
-	mmu_enable();
-#endif
 	return 0;
 }
 postconsole_initcall(falconwing_mmu_init);
diff --git a/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c b/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
index 5a21636..f4a81eb 100644
--- a/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
+++ b/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
@@ -170,16 +170,8 @@ static int eukrea_cpuimx25_mmu_init(void)
 				   IORESOURCE_MEM_WRITEABLE);
 	armlinux_add_dram(sdram_dev);
 
-#ifdef CONFIG_MMU
 	mmu_init();
 
-	arm_create_section(0x80000000, 0x80000000, 128, PMD_SECT_DEF_CACHED);
-	arm_create_section(0x90000000, 0x80000000, 128, PMD_SECT_DEF_UNCACHED);
-
-	setup_dma_coherent(0x10000000);
-
-	mmu_enable();
-#endif
 	return 0;
 }
 postconsole_initcall(eukrea_cpuimx25_mmu_init);
diff --git a/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c b/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
index aea2d20..b2b64a3 100644
--- a/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
+++ b/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
@@ -116,16 +116,8 @@ static int eukrea_cpuimx27_mmu_init(void)
 				   IORESOURCE_MEM_WRITEABLE);
 	armlinux_add_dram(sdram_dev);
 
-#ifdef CONFIG_MMU
 	mmu_init();
 
-	arm_create_section(0xa0000000, 0xa0000000, 128, PMD_SECT_DEF_CACHED);
-	arm_create_section(0xb0000000, 0xa0000000, 128, PMD_SECT_DEF_UNCACHED);
-
-	setup_dma_coherent(0x10000000);
-
-	mmu_enable();
-#endif
 	return 0;
 }
 postconsole_initcall(eukrea_cpuimx27_mmu_init);
diff --git a/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c b/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
index d1b9da5..1c79cc9 100644
--- a/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
+++ b/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
@@ -139,20 +139,9 @@ static int eukrea_cpuimx35_mmu_init(void)
 				   IORESOURCE_MEM_WRITEABLE);
 	armlinux_add_dram(sdram_dev);
 
-#ifdef CONFIG_MMU
 	mmu_init();
-
-	arm_create_section(0x80000000, 0x80000000, 128, PMD_SECT_DEF_CACHED);
-	arm_create_section(0x90000000, 0x80000000, 128, PMD_SECT_DEF_UNCACHED);
-
-	setup_dma_coherent(0x10000000);
-
-	mmu_enable();
-
-#ifdef CONFIG_CACHE_L2X0
 	l2x0_init((void __iomem *)0x30000000, 0x00030024, 0x00000000);
-#endif
-#endif
+
 	return 0;
 }
 postconsole_initcall(eukrea_cpuimx35_mmu_init);
diff --git a/arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c b/arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c
index 4980a08..5d6094b 100644
--- a/arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c
+++ b/arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c
@@ -101,22 +101,8 @@ static int eukrea_cpuimx51_mmu_init(void)
 				   IORESOURCE_MEM_WRITEABLE);
 	armlinux_add_dram(sdram_dev);
 
-#ifdef CONFIG_MMU
 	mmu_init();
 
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
 postconsole_initcall(eukrea_cpuimx51_mmu_init);
diff --git a/arch/arm/boards/freescale-mx51-pdk/board.c b/arch/arm/boards/freescale-mx51-pdk/board.c
index b7e9540..4caace4 100644
--- a/arch/arm/boards/freescale-mx51-pdk/board.c
+++ b/arch/arm/boards/freescale-mx51-pdk/board.c
@@ -81,16 +81,8 @@ static int babbage_mmu_init(void)
 				   IORESOURCE_MEM_WRITEABLE);
 	armlinux_add_dram(sdram_dev);
 
-#ifdef CONFIG_MMU
 	mmu_init();
 
-	arm_create_section(0x90000000, 0x90000000, 512, PMD_SECT_DEF_CACHED);
-	arm_create_section(0xb0000000, 0x90000000, 512, PMD_SECT_DEF_UNCACHED);
-
-	setup_dma_coherent(0x20000000);
-
-	mmu_enable();
-#endif
 	return 0;
 }
 postconsole_initcall(babbage_mmu_init);
diff --git a/arch/arm/boards/guf-cupid/board.c b/arch/arm/boards/guf-cupid/board.c
index 8ee6376..b83451e 100644
--- a/arch/arm/boards/guf-cupid/board.c
+++ b/arch/arm/boards/guf-cupid/board.c
@@ -104,20 +104,10 @@ static int cupid_mmu_init(void)
 				   IORESOURCE_MEM_WRITEABLE);
 	armlinux_add_dram(sdram_dev);
 
-#ifdef CONFIG_MMU
 	mmu_init();
 
-	arm_create_section(0x80000000, 0x80000000, 128, PMD_SECT_DEF_CACHED);
-	arm_create_section(0x90000000, 0x80000000, 128, PMD_SECT_DEF_UNCACHED);
-
-	setup_dma_coherent(0x10000000);
-
-	mmu_enable();
-
-#ifdef CONFIG_CACHE_L2X0
 	l2x0_init((void __iomem *)0x30000000, 0x00030024, 0x00000000);
-#endif
-#endif
+
 	return 0;
 }
 postconsole_initcall(cupid_mmu_init);
diff --git a/arch/arm/boards/guf-neso/board.c b/arch/arm/boards/guf-neso/board.c
index a595abd..18676a2 100644
--- a/arch/arm/boards/guf-neso/board.c
+++ b/arch/arm/boards/guf-neso/board.c
@@ -144,16 +144,8 @@ static int neso_mmu_init(void)
 				   IORESOURCE_MEM_WRITEABLE);
 	armlinux_add_dram(sdram_dev);
 
-#ifdef CONFIG_MMU
 	mmu_init();
 
-	arm_create_section(0xa0000000, 0xa0000000, 128, PMD_SECT_DEF_CACHED);
-	arm_create_section(0xb0000000, 0xa0000000, 128, PMD_SECT_DEF_UNCACHED);
-
-	setup_dma_coherent(0x10000000);
-
-	mmu_enable();
-#endif
 	return 0;
 }
 postconsole_initcall(neso_mmu_init);
diff --git a/arch/arm/boards/karo-tx25/board.c b/arch/arm/boards/karo-tx25/board.c
index 7b3cd7e..1b597e3 100644
--- a/arch/arm/boards/karo-tx25/board.c
+++ b/arch/arm/boards/karo-tx25/board.c
@@ -64,18 +64,8 @@ static int tx25_mmu_init(void)
 	add_mem_device("ram0", 0x78000000, 128 * 1024,
 				   IORESOURCE_MEM_WRITEABLE);
 
-#ifdef CONFIG_MMU
 	mmu_init();
 
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
 postconsole_initcall(tx25_mmu_init);
diff --git a/arch/arm/boards/karo-tx28/tx28.c b/arch/arm/boards/karo-tx28/tx28.c
index bdec51d..8bb46b8 100644
--- a/arch/arm/boards/karo-tx28/tx28.c
+++ b/arch/arm/boards/karo-tx28/tx28.c
@@ -78,16 +78,8 @@ static int tx28_mmu_init(void)
 				   IORESOURCE_MEM_WRITEABLE);
 	armlinux_add_dram(sdram_dev);
 
-#ifdef CONFIG_MMU
 	mmu_init();
 
-	arm_create_section(0x40000000, 0x40000000, 128, PMD_SECT_DEF_CACHED);
-	arm_create_section(0x50000000, 0x40000000, 128, PMD_SECT_DEF_UNCACHED);
-
-	setup_dma_coherent(0x10000000);
-
-	mmu_enable();
-#endif
 	return 0;
 }
 postconsole_initcall(tx28_mmu_init);
diff --git a/arch/arm/boards/panda/board.c b/arch/arm/boards/panda/board.c
index b11da2e..6752ef0 100644
--- a/arch/arm/boards/panda/board.c
+++ b/arch/arm/boards/panda/board.c
@@ -54,14 +54,8 @@ static int panda_mmu_init(void)
 				   IORESOURCE_MEM_WRITEABLE);
 	armlinux_add_dram(sdram_dev);
 
-#ifdef CONFIG_MMU
 	mmu_init();
 
-	arm_create_section(0x80000000, 0x80000000, 256, PMD_SECT_DEF_CACHED);
-	arm_create_section(0x90000000, 0x80000000, 256, PMD_SECT_DEF_UNCACHED);
-
-	mmu_enable();
-#endif
 	return 0;
 }
 postconsole_initcall(panda_mmu_init);
diff --git a/arch/arm/boards/pcm037/pcm037.c b/arch/arm/boards/pcm037/pcm037.c
index acbfe54..4e42775 100644
--- a/arch/arm/boards/pcm037/pcm037.c
+++ b/arch/arm/boards/pcm037/pcm037.c
@@ -159,20 +159,9 @@ static int pcm037_mmu_init(void)
 	armlinux_add_dram(sdram_dev);
 #endif
 
-#ifdef CONFIG_MMU
 	mmu_init();
-
-	arm_create_section(0x80000000, 0x80000000, 128, PMD_SECT_DEF_CACHED);
-	arm_create_section(0x90000000, 0x80000000, 128, PMD_SECT_DEF_UNCACHED);
-
-	setup_dma_coherent(0x10000000);
-
-	mmu_enable();
-
-#ifdef CONFIG_CACHE_L2X0
 	l2x0_init((void __iomem *)0x30000000, 0x00030024, 0x00000000);
-#endif
-#endif
+
 	return 0;
 }
 postconsole_initcall(pcm037_mmu_init);
diff --git a/arch/arm/boards/pcm038/pcm038.c b/arch/arm/boards/pcm038/pcm038.c
index 4644550..848df55 100644
--- a/arch/arm/boards/pcm038/pcm038.c
+++ b/arch/arm/boards/pcm038/pcm038.c
@@ -137,16 +137,8 @@ static int pcm038_mmu_init(void)
 				   IORESOURCE_MEM_WRITEABLE);
 	armlinux_add_dram(sdram_dev);
 
-#ifdef CONFIG_MMU
 	mmu_init();
 
-	arm_create_section(0xa0000000, 0xa0000000, 128, PMD_SECT_DEF_CACHED);
-	arm_create_section(0xb0000000, 0xa0000000, 128, PMD_SECT_DEF_UNCACHED);
-
-	setup_dma_coherent(0x10000000);
-
-	mmu_enable();
-#endif
 	return 0;
 }
 postconsole_initcall(pcm038_mmu_init);
diff --git a/arch/arm/boards/pcm043/pcm043.c b/arch/arm/boards/pcm043/pcm043.c
index d1fede7..c6b6ef5 100644
--- a/arch/arm/boards/pcm043/pcm043.c
+++ b/arch/arm/boards/pcm043/pcm043.c
@@ -107,20 +107,9 @@ static int pcm043_mmu_init(void)
 				   IORESOURCE_MEM_WRITEABLE);
 	armlinux_add_dram(sdram_dev);
 
-#ifdef CONFIG_MMU
 	mmu_init();
-
-	arm_create_section(0x80000000, 0x80000000, 128, PMD_SECT_DEF_CACHED);
-	arm_create_section(0x90000000, 0x80000000, 128, PMD_SECT_DEF_UNCACHED);
-
-	setup_dma_coherent(0x10000000);
-
-	mmu_enable();
-
-#ifdef CONFIG_CACHE_L2X0
 	l2x0_init((void __iomem *)0x30000000, 0x00030024, 0x00000000);
-#endif
-#endif
+
 	return 0;
 }
 postconsole_initcall(pcm043_mmu_init);
diff --git a/arch/arm/boards/pcm049/board.c b/arch/arm/boards/pcm049/board.c
index e691f59..62eaa3d 100644
--- a/arch/arm/boards/pcm049/board.c
+++ b/arch/arm/boards/pcm049/board.c
@@ -65,15 +65,8 @@ static int pcm049_mmu_init(void)
 				   IORESOURCE_MEM_WRITEABLE);
 	armlinux_add_dram(sdram_dev);
 
-#ifdef CONFIG_MMU
 	mmu_init();
 
-	arm_create_section(0x80000000, 0x80000000, 256, PMD_SECT_DEF_CACHED);
-	/* warning: This shadows the second half of our ram */
-	arm_create_section(0x90000000, 0x80000000, 256, PMD_SECT_DEF_UNCACHED);
-
-	mmu_enable();
-#endif
 	return 0;
 }
 postconsole_initcall(pcm049_mmu_init);
diff --git a/arch/arm/boards/phycard-i.MX27/pca100.c b/arch/arm/boards/phycard-i.MX27/pca100.c
index 6d3e2e3..b66e43e 100644
--- a/arch/arm/boards/phycard-i.MX27/pca100.c
+++ b/arch/arm/boards/phycard-i.MX27/pca100.c
@@ -77,16 +77,8 @@ static int pca100_mmu_init(void)
 				   IORESOURCE_MEM_WRITEABLE);
 	armlinux_add_dram(sdram_dev);
 
-#ifdef CONFIG_MMU
 	mmu_init();
 
-	arm_create_section(0xa0000000, 0xa0000000, 128, PMD_SECT_DEF_CACHED);
-	arm_create_section(0xb0000000, 0xa0000000, 128, PMD_SECT_DEF_UNCACHED);
-
-	setup_dma_coherent(0x10000000);
-
-	mmu_enable();
-#endif
 	return 0;
 }
 postconsole_initcall(pca100_mmu_init);
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
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

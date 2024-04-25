Delivery-date: Thu, 25 Apr 2024 14:11:04 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rzxwO-00Ggpd-1y
	for lore@lore.pengutronix.de;
	Thu, 25 Apr 2024 14:11:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rzxwL-0007FA-M5
	for lore@pengutronix.de; Thu, 25 Apr 2024 14:11:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tsr2sd90hAs6vBQEXlZiJ7fNHZFl1ieIObERMOn9Q3o=; b=bq5efN+sVUMNAj
	EC/ooDYV4hV+xM3coTFRjY2U2pZcNVVh8AmfZZGqdSFsd2J26HYQ/0rMbWGTstFW641AXiT7AoLRU
	nR2Zdt3K9qwFEUMlmg7B2DGQBY0t/kZieIzo58xhPqMenfTKz+vBcqu9O/HoepqJgnxF6c2CLGJaV
	I5XusluDckNksCa4MkAf7CfoEpgIWea3zSfhLMhZc9cRUfRxIUX2YYUxpm500CTZhj1neP1gyHnIo
	XIAoxRGCjWgmCZb4/kVMG0EopurjC6eWwMS1RQx9Z4DuTvO9W3bhxuX/Kg52ZPRTH9hcHS/GDcI/k
	kusK2k8BjGygaSmIXglA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzxvm-000000089f6-1Cii;
	Thu, 25 Apr 2024 12:10:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzxvi-000000089cY-00gQ
	for barebox@lists.infradead.org;
	Thu, 25 Apr 2024 12:10:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rzxvg-0006ed-Cd; Thu, 25 Apr 2024 14:10:20 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rzxvf-00EFvQ-RF; Thu, 25 Apr 2024 14:10:19 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rzxgY-009aQk-32;
	Thu, 25 Apr 2024 13:54:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 25 Apr 2024 13:54:38 +0200
Message-Id: <20240425115439.2269239-15-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240425115439.2269239-1-s.hauer@pengutronix.de>
References: <20240425115439.2269239-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240425_051022_389852_E493A411 
X-CRM114-Status: GOOD (  21.37  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Cc: Jan Weitzel <j.weitzel@phytec.de>, Vicente Bergas <vicencb@gmail.com>, Bo Shen <voice.shen@atmel.com>, Matthias Kaehlcke <matthias@kaehlcke.net>, Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 14/15] ARM: make relocatable mandatory
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Most ARM boards use relocatable binaries already. Make it mandatory
for the remaining boards to better unify the ARM support.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Kconfig                   | 10 ++--------
 arch/arm/Makefile                  | 16 ++--------------
 arch/arm/cpu/exceptions_32.S       |  2 +-
 arch/arm/cpu/start.c               |  3 +--
 arch/arm/cpu/uncompress.c          | 27 +++++++++++----------------
 arch/arm/include/asm/barebox-arm.h | 11 ++---------
 arch/arm/lib/pbl.lds.S             | 18 ++++++------------
 arch/arm/lib32/barebox.lds.S       |  4 ----
 arch/arm/lib64/barebox.lds.S       |  4 ----
 arch/arm/mach-rockchip/Kconfig     |  1 -
 arch/arm/mach-zynq/Kconfig         |  3 ---
 11 files changed, 25 insertions(+), 74 deletions(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 9acda8d929..6a6d7955d1 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -4,7 +4,6 @@ config ARM
 	bool
 	select HAS_KALLSYMS
 	select HAS_CACHE
-	select HAVE_CONFIGURABLE_TEXT_BASE if !RELOCATABLE
 	select HAVE_IMAGE_COMPRESSION
 	select HAVE_ARCH_KASAN
 	select ARCH_HAS_SJLJ
@@ -12,6 +11,8 @@ config ARM
 	select HAVE_EFI_STUB
 	select HAVE_PBL_IMAGE
 	select HAVE_PBL_MULTI_IMAGES
+	select RELOCATABLE
+	select PBL_RELOCATABLE
 	default y
 
 config ARM_LINUX
@@ -67,7 +68,6 @@ config ARCH_CLPS711X
 	select GPIOLIB
 	select HAS_DEBUG_LL
 	select MFD_SYSCON
-	select RELOCATABLE
 
 config ARCH_MVEBU
 	bool "Marvell EBU platforms"
@@ -115,7 +115,6 @@ config ARCH_TEGRA
 	select GPIO_TEGRA
 	select OFDEVICE
 	select OFTREE
-	select RELOCATABLE
 	select RESET_CONTROLLER
 	select PINCTRL
 
@@ -131,7 +130,6 @@ config ARCH_ARM64_VIRT
 	bool "ARM64 QEMU Virt board"
 	depends on 64BIT
 	select CPU_V8
-	select RELOCATABLE
 	select ARM_AMBA
 	select BOARD_ARM_VIRT
 	select HW_HAS_PCI
@@ -145,7 +143,6 @@ config ARCH_BCM283X
 	select CLOCKSOURCE_BCM283X
 	select ARM_AMBA
 	select HAS_DEBUG_LL
-	select RELOCATABLE
 
 config ARCH_IMX
 	bool "Freescale iMX-based"
@@ -154,7 +151,6 @@ config ARCH_IMX
 	select COMMON_CLK
 	select WATCHDOG_IMX_RESET_SOURCE
 	select HAS_DEBUG_LL
-	select RELOCATABLE
 
 config ARCH_K3
 	bool "Texas Instruments Inc. K3 multicore SoC architecture"
@@ -229,7 +225,6 @@ config ARCH_VEXPRESS
 	select AMBA_SP804
 	select COMMON_CLK
 	select COMMON_CLK_OF_PROVIDER
-	select RELOCATABLE
 
 config ARCH_ZYNQMP
 	bool "Xilinx ZynqMP-based boards"
@@ -240,7 +235,6 @@ config ARCH_ZYNQMP
 	select COMMON_CLK
 	select COMMON_CLK_OF_PROVIDER
 	select GPIOLIB
-	select RELOCATABLE
 	select HAS_MACB
 
 source "arch/arm/cpu/Kconfig"
diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 67362d2023..f98770f66a 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -108,24 +108,12 @@ KBUILD_CPPFLAGS += -DTEXT_BASE=$(TEXT_BASE)
 
 # Add cleanup flags
 KBUILD_CPPFLAGS += -fdata-sections -ffunction-sections
-LDFLAGS_barebox += --gc-sections
-LDFLAGS_pbl += --gc-sections
+LDFLAGS_barebox += --gc-sections -pie
+LDFLAGS_pbl += --gc-sections -pie
 
 # early code often runs at addresses we are not linked at
 KBUILD_CFLAGS_KERNEL += -fPIE
 
-ifdef CONFIG_RELOCATABLE
-LDFLAGS_barebox += -pie
-else
-LDFLAGS_barebox += -static
-endif
-
-ifdef CONFIG_PBL_RELOCATABLE
-LDFLAGS_pbl += -pie
-else
-LDFLAGS_pbl += -static
-endif
-
 KBUILD_BINARY := barebox.bin
 
 quiet_cmd_mlo ?= IFT     $@
diff --git a/arch/arm/cpu/exceptions_32.S b/arch/arm/cpu/exceptions_32.S
index 749c713aab..235996f7ec 100644
--- a/arch/arm/cpu/exceptions_32.S
+++ b/arch/arm/cpu/exceptions_32.S
@@ -128,7 +128,7 @@ fiq:
 	bad_save_user_regs
 	bl 	do_fiq
 
-#if defined(CONFIG_RELOCATABLE) && defined(CONFIG_ARM_EXCEPTIONS)
+#ifdef CONFIG_ARM_EXCEPTIONS
 /*
  * With relocatable binary support the runtime exception vectors do not match
  * the addresses in the binary. We have to fix them up during runtime
diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index cc5529eef5..6d0a7cfc6b 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -158,8 +158,7 @@ __noreturn __prereloc void barebox_non_pbl_start(unsigned long membase,
 	if (IS_ENABLED(CONFIG_CPU_V7))
 		armv7_hyp_install();
 
-	if (IS_ENABLED(CONFIG_RELOCATABLE))
-		relocate_to_adr(barebox_base);
+	relocate_to_adr(barebox_base);
 
 	setup_c();
 
diff --git a/arch/arm/cpu/uncompress.c b/arch/arm/cpu/uncompress.c
index 4101cb36a4..aa1a49bfc9 100644
--- a/arch/arm/cpu/uncompress.c
+++ b/arch/arm/cpu/uncompress.c
@@ -43,26 +43,21 @@ void __noreturn barebox_pbl_start(unsigned long membase, unsigned long memsize,
 	pg_start = runtime_address(input_data);
 	pg_end = runtime_address(input_data_end);
 
-	if (IS_ENABLED(CONFIG_PBL_RELOCATABLE)) {
-		/*
-		 * If we run from inside the memory just relocate the binary
-		 * to the current address. Otherwise it may be a readonly location.
-		 * Copy and relocate to the start of the memory in this case.
-		 */
-		if (pc > membase && pc - membase < memsize)
-			relocate_to_current_adr();
-		else
-			relocate_to_adr(membase);
-	}
+	/*
+	 * If we run from inside the memory just relocate the binary
+	 * to the current address. Otherwise it may be a readonly location.
+	 * Copy and relocate to the start of the memory in this case.
+	 */
+	if (pc > membase && pc - membase < memsize)
+		relocate_to_current_adr();
+	else
+		relocate_to_adr(membase);
 
 	pg_len = pg_end - pg_start;
 	uncompressed_len = get_unaligned((const u32 *)(pg_start + pg_len - 4));
 
-	if (IS_ENABLED(CONFIG_RELOCATABLE))
-		barebox_base = arm_mem_barebox_image(membase, endmem,
-						     uncompressed_len + MAX_BSS_SIZE);
-	else
-		barebox_base = TEXT_BASE;
+	barebox_base = arm_mem_barebox_image(membase, endmem,
+					     uncompressed_len + MAX_BSS_SIZE);
 
 	setup_c();
 
diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/barebox-arm.h
index 7a7e5a2403..4d70360b91 100644
--- a/arch/arm/include/asm/barebox-arm.h
+++ b/arch/arm/include/asm/barebox-arm.h
@@ -42,7 +42,7 @@ struct barebox_arm_boarddata *barebox_arm_get_boarddata(void);
 
 #define barebox_arm_get_boarddata barebox_get_boarddata
 
-#if defined(CONFIG_RELOCATABLE) && defined(CONFIG_ARM_EXCEPTIONS)
+#ifdef CONFIG_ARM_EXCEPTIONS
 void arm_fixup_vectors(void);
 #else
 static inline void arm_fixup_vectors(void)
@@ -127,14 +127,7 @@ static inline unsigned long arm_mem_barebox_image(unsigned long membase,
 {
 	endmem = arm_mem_ramoops(endmem);
 
-	if (IS_ENABLED(CONFIG_RELOCATABLE)) {
-		return ALIGN_DOWN(endmem - size, SZ_1M);
-	} else {
-		if (TEXT_BASE >= membase && TEXT_BASE < endmem)
-			return TEXT_BASE;
-		else
-			return endmem;
-	}
+	return ALIGN_DOWN(endmem - size, SZ_1M);
 }
 
 /*
diff --git a/arch/arm/lib/pbl.lds.S b/arch/arm/lib/pbl.lds.S
index ec7296f0fb..4f58a4eba0 100644
--- a/arch/arm/lib/pbl.lds.S
+++ b/arch/arm/lib/pbl.lds.S
@@ -25,12 +25,6 @@ PECOFF_FILE_ALIGNMENT = 0x200;
 #define PECOFF_EDATA_PADDING
 #endif
 
-#ifdef CONFIG_PBL_RELOCATABLE
-#define BASE	0x0
-#else
-#define BASE	(TEXT_BASE - SZ_2M)
-#endif
-
 #ifdef CONFIG_HABV4_QSPI
 #define HAB_CSF_LEN	0x4000
 #else
@@ -42,7 +36,7 @@ OUTPUT_ARCH(BAREBOX_OUTPUT_ARCH)
 
 SECTIONS
 {
-	. = BASE;
+	. = 0x0;
 
 	.image_start : { *(.__image_start) }
 
@@ -97,7 +91,7 @@ SECTIONS
 
 	BAREBOX_RELOCATION_TABLE
 
-	pbl_code_size =  . - BASE;
+	pbl_code_size =  .;
 
 	. = ALIGN(4);
 	.__bss_start :  { *(.__bss_start) }
@@ -105,7 +99,7 @@ SECTIONS
 	.__bss_stop :  { *(.__bss_stop) }
 	_end = .;
 
-	pbl_memory_size =  . - BASE;
+	pbl_memory_size =  .;
 
 #if defined(CONFIG_CPU_64) && defined(CONFIG_HABV4)
 	. = ALIGN(0x1000);
@@ -142,8 +136,8 @@ SECTIONS
 
 	.image_end : { KEEP(*(.__image_end)) }
 
-	pbl_image_size =  . - BASE;
+	pbl_image_size =  .;
 
-	_barebox_image_size = __image_end - BASE;
-	_barebox_pbl_size = __bss_start - BASE;
+	_barebox_image_size = __image_end;
+	_barebox_pbl_size = __bss_start;
 }
diff --git a/arch/arm/lib32/barebox.lds.S b/arch/arm/lib32/barebox.lds.S
index 90be773840..ad9e9e84ef 100644
--- a/arch/arm/lib32/barebox.lds.S
+++ b/arch/arm/lib32/barebox.lds.S
@@ -9,11 +9,7 @@ OUTPUT_ARCH(BAREBOX_OUTPUT_ARCH)
 ENTRY(start)
 SECTIONS
 {
-#ifdef CONFIG_RELOCATABLE
 	. = 0x0;
-#else
-	. = TEXT_BASE;
-#endif
 	.image_start : { *(.__image_start) }
 
 	. = ALIGN(4);
diff --git a/arch/arm/lib64/barebox.lds.S b/arch/arm/lib64/barebox.lds.S
index a05340ad48..2479646d9d 100644
--- a/arch/arm/lib64/barebox.lds.S
+++ b/arch/arm/lib64/barebox.lds.S
@@ -8,11 +8,7 @@ OUTPUT_ARCH(BAREBOX_OUTPUT_ARCH)
 ENTRY(start)
 SECTIONS
 {
-#ifdef CONFIG_RELOCATABLE
 	. = 0x0;
-#else
-	. = TEXT_BASE;
-#endif
 
 	.image_start : { *(.__image_start) }
 
diff --git a/arch/arm/mach-rockchip/Kconfig b/arch/arm/mach-rockchip/Kconfig
index f373624f5c..1421b9e257 100644
--- a/arch/arm/mach-rockchip/Kconfig
+++ b/arch/arm/mach-rockchip/Kconfig
@@ -31,7 +31,6 @@ config ARCH_ROCKCHIP_V8
 	bool
 	select CPU_V8
 	select ARM_ATF
-	select RELOCATABLE
 
 config ARCH_RK3399
 	bool
diff --git a/arch/arm/mach-zynq/Kconfig b/arch/arm/mach-zynq/Kconfig
index be51411a43..2403c2edc3 100644
--- a/arch/arm/mach-zynq/Kconfig
+++ b/arch/arm/mach-zynq/Kconfig
@@ -19,9 +19,6 @@ config ARCH_ZYNQ7000
 	select HAS_MACB
 	select OFTREE
 	select OFDEVICE
-	select RELOCATABLE
-
-
 
 menu "select Zynq boards to be built"
 
-- 
2.39.2




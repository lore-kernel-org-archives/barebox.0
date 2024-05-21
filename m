Delivery-date: Tue, 21 May 2024 12:50:06 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s9N4I-00C7s3-0y
	for lore@lore.pengutronix.de;
	Tue, 21 May 2024 12:50:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s9N4H-0005ke-7e
	for lore@pengutronix.de; Tue, 21 May 2024 12:50:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=abG341Yfx8H828GnQVe0Q1B66qI0ocjprophCKH6y7s=; b=yESq69LPH4qhKdsjiAEkiXgW7z
	IuXicBof0a6NAfPL1guP5oaP3eeyJl216SVa7oKG6TFnAzRJJcx6sEDKY2eMRmC1jL+ImtxdcppPG
	srugZYlbwEI0TO/C4R59TZHQSKkldFCn/OM3dbmilJSOwE+ilx/64YUZs3wkcGJL/GGsXNWT7/+k7
	PbrJyvQs/lwnBjCQSeo62LHadBySXmjIu1jS937KtLqQcstbJx0rT/7aahLw/uiNGKZbeeEFBTggP
	DCczIM6LPpt2njKCGeJRhdXIbOPCpoPB+/lq9Z/33QLV1MEm10THY+bvcZmxLuFnlzaNX/HL14S5I
	GaNWiYew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9N3c-0000000HA95-0nM9;
	Tue, 21 May 2024 10:49:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s9N3W-0000000HA4v-2tiW
	for barebox@lists.infradead.org;
	Tue, 21 May 2024 10:49:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s9N3T-0005JX-K9; Tue, 21 May 2024 12:49:15 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s9N3T-002NUL-7F; Tue, 21 May 2024 12:49:15 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s9N3T-008KDT-0M;
	Tue, 21 May 2024 12:49:15 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 21 May 2024 12:49:13 +0200
Message-Id: <20240521104913.1983970-5-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240521104913.1983970-1-s.hauer@pengutronix.de>
References: <20240521104913.1983970-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240521_034918_972737_9CB94F7A 
X-CRM114-Status: GOOD (  21.97  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 4/4] ARM: replace boarddata with handoff data
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

struct boarddata can be used to pass a ARM machine number from PBL to
barebox proper. Now that we have handoff data for this purpose, retire
struct boarddata and use handoff data instead.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/beagle/lowlevel.c             |  6 +--
 arch/arm/boards/chumby_falconwing/lowlevel.c  |  7 +--
 .../boards/crystalfontz-cfa10036/lowlevel.c   |  7 +--
 arch/arm/boards/freescale-mx23-evk/lowlevel.c |  7 +--
 arch/arm/boards/imx233-olinuxino/lowlevel.c   |  7 +--
 arch/arm/boards/karo-tx28/lowlevel.c          |  7 +--
 arch/arm/cpu/start.c                          | 20 +++------
 arch/arm/cpu/uncompress.c                     |  3 --
 arch/arm/include/asm/barebox-arm.h            | 24 ++++------
 include/boarddata.h                           | 45 -------------------
 include/pbl/handoff-data.h                    |  2 +-
 pbl/handoff-data.c                            |  4 +-
 12 files changed, 31 insertions(+), 108 deletions(-)
 delete mode 100644 include/boarddata.h

diff --git a/arch/arm/boards/beagle/lowlevel.c b/arch/arm/boards/beagle/lowlevel.c
index 828c8c76b3..e7f76aca4e 100644
--- a/arch/arm/boards/beagle/lowlevel.c
+++ b/arch/arm/boards/beagle/lowlevel.c
@@ -164,11 +164,9 @@ static void sdrc_init(void)
 
 static noinline int beagle_board_init_sdram(void)
 {
-	struct barebox_arm_boarddata *bd = (void *)OMAP3_SRAM_SCRATCH_SPACE + 0x10;
+	handoff_add_arm_machine(MACH_TYPE_OMAP3_BEAGLE);
 
-	boarddata_create(bd, MACH_TYPE_OMAP3_BEAGLE);
-
-	barebox_arm_entry(0x80000000, SZ_128M, bd);
+	barebox_arm_entry(0x80000000, SZ_128M, NULL);
 }
 
 ENTRY_FUNCTION(start_omap3_beagleboard_sdram, bootinfo, r1, r2)
diff --git a/arch/arm/boards/chumby_falconwing/lowlevel.c b/arch/arm/boards/chumby_falconwing/lowlevel.c
index fdda6ba5f2..e823767739 100644
--- a/arch/arm/boards/chumby_falconwing/lowlevel.c
+++ b/arch/arm/boards/chumby_falconwing/lowlevel.c
@@ -9,12 +9,9 @@
 
 static noinline void continue_imx_entry(size_t size)
 {
-	static struct barebox_arm_boarddata boarddata = {
-		.magic = BAREBOX_ARM_BOARDDATA_MAGIC,
-		.machine = MACH_TYPE_CHUMBY,
-	};
+	handoff_add_arm_machine(MACH_TYPE_CHUMBY);
 
-	barebox_arm_entry(IMX_MEMORY_BASE, size, &boarddata);
+	barebox_arm_entry(IMX_MEMORY_BASE, size, NULL);
 }
 
 ENTRY_FUNCTION(start_chumby_falconwing, r0, r1, r2)
diff --git a/arch/arm/boards/crystalfontz-cfa10036/lowlevel.c b/arch/arm/boards/crystalfontz-cfa10036/lowlevel.c
index 447ef0dc66..2468f304e7 100644
--- a/arch/arm/boards/crystalfontz-cfa10036/lowlevel.c
+++ b/arch/arm/boards/crystalfontz-cfa10036/lowlevel.c
@@ -9,12 +9,9 @@
 
 static noinline void continue_imx_entry(size_t size)
 {
-	static struct barebox_arm_boarddata boarddata = {
-		.magic = BAREBOX_ARM_BOARDDATA_MAGIC,
-		.machine = MACH_TYPE_CFA10036,
-	};
+	handoff_add_arm_machine(MACH_TYPE_CFA10036);
 
-	barebox_arm_entry(IMX_MEMORY_BASE, size, &boarddata);
+	barebox_arm_entry(IMX_MEMORY_BASE, size, NULL);
 }
 
 ENTRY_FUNCTION(start_cfa10036, r0, r1, r2)
diff --git a/arch/arm/boards/freescale-mx23-evk/lowlevel.c b/arch/arm/boards/freescale-mx23-evk/lowlevel.c
index 195ade3a7f..2f31b4fd0c 100644
--- a/arch/arm/boards/freescale-mx23-evk/lowlevel.c
+++ b/arch/arm/boards/freescale-mx23-evk/lowlevel.c
@@ -9,12 +9,9 @@
 
 static noinline void continue_imx_entry(size_t size)
 {
-	static struct barebox_arm_boarddata boarddata = {
-		.magic = BAREBOX_ARM_BOARDDATA_MAGIC,
-		.machine = MACH_TYPE_MX23EVK,
-	};
+	handoff_add_arm_machine(MACH_TYPE_MX23EVK);
 
-	barebox_arm_entry(IMX_MEMORY_BASE, size, &boarddata);
+	barebox_arm_entry(IMX_MEMORY_BASE, size, NULL);
 }
 
 ENTRY_FUNCTION(start_imx23_evk, r0, r1, r2)
diff --git a/arch/arm/boards/imx233-olinuxino/lowlevel.c b/arch/arm/boards/imx233-olinuxino/lowlevel.c
index 91c1ba3dba..e4b6b1207f 100644
--- a/arch/arm/boards/imx233-olinuxino/lowlevel.c
+++ b/arch/arm/boards/imx233-olinuxino/lowlevel.c
@@ -13,12 +13,9 @@
 
 static noinline void continue_imx_entry(size_t size)
 {
-	static struct barebox_arm_boarddata boarddata = {
-		.magic = BAREBOX_ARM_BOARDDATA_MAGIC,
-		.machine = MACH_TYPE_IMX233_OLINUXINO,
-	};
+	handoff_add_arm_machine(MACH_TYPE_IMX233_OLINUXINO);
 
-	barebox_arm_entry(IMX_MEMORY_BASE, size, &boarddata);
+	barebox_arm_entry(IMX_MEMORY_BASE, size, NULL);
 }
 
 ENTRY_FUNCTION(start_barebox_olinuxino_imx23, r0, r1, r2)
diff --git a/arch/arm/boards/karo-tx28/lowlevel.c b/arch/arm/boards/karo-tx28/lowlevel.c
index 3be5f521e1..e423d5ecab 100644
--- a/arch/arm/boards/karo-tx28/lowlevel.c
+++ b/arch/arm/boards/karo-tx28/lowlevel.c
@@ -17,12 +17,9 @@
 
 static noinline void continue_imx_entry(size_t size)
 {
-	static struct barebox_arm_boarddata boarddata = {
-		.magic = BAREBOX_ARM_BOARDDATA_MAGIC,
-		.machine = MACH_TYPE_TX28,
-	};
+	handoff_add_arm_machine(MACH_TYPE_TX28);
 
-	barebox_arm_entry(IMX_MEMORY_BASE, size, &boarddata);
+	barebox_arm_entry(IMX_MEMORY_BASE, size, NULL);
 }
 
 ENTRY_FUNCTION(start_barebox_karo_tx28, r0, r1, r2)
diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index 4dbbbb56fa..3b38ad09fc 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -34,20 +34,18 @@ unsigned long arm_stack_top;
 static unsigned long arm_barebox_size;
 static unsigned long arm_endmem;
 static unsigned long arm_membase;
-static void *barebox_boarddata;
-static unsigned long barebox_boarddata_size;
 
-const struct barebox_boarddata *barebox_get_boarddata(void)
+u32 barebox_arm_machine(void)
 {
 	size_t size;
+	unsigned int *machine;
 
-	return handoff_data_get_entry(HANDOFF_DATA_BOARDDATA, &size);
-}
+	machine = handoff_data_get_entry(HANDOFF_DATA_ARM_MACHINE, &size);
 
-u32 barebox_arm_machine(void)
-{
-	const struct barebox_boarddata *bd = barebox_get_boarddata();
-	return bd ? bd->machine : 0;
+	if (machine)
+		return *machine;
+
+	return 0;
 }
 
 void *barebox_arm_boot_dtb(void)
@@ -119,10 +117,6 @@ EXPORT_SYMBOL_GPL(arm_mem_membase_get);
 
 static int barebox_memory_areas_init(void)
 {
-	if(barebox_boarddata)
-		request_barebox_region("board data", (unsigned long)barebox_boarddata,
-				     barebox_boarddata_size);
-
 	if (IS_ENABLED(CONFIG_KASAN))
 		request_sdram_region("kasan shadow", kasan_shadow_base,
 				     mem_malloc_start() - kasan_shadow_base);
diff --git a/arch/arm/cpu/uncompress.c b/arch/arm/cpu/uncompress.c
index af702d510e..daacd22866 100644
--- a/arch/arm/cpu/uncompress.c
+++ b/arch/arm/cpu/uncompress.c
@@ -43,9 +43,6 @@ static void add_handoff_data(void *boarddata)
 
 		handoff_data_add(HANDOFF_DATA_INTERNAL_DT_Z, boarddata,
 				 bd->datalen + sizeof(*bd));
-	} else if (blob_is_arm_boarddata(boarddata)) {
-		handoff_data_add(HANDOFF_DATA_BOARDDATA, boarddata,
-				 sizeof(struct barebox_arm_boarddata));
 	}
 }
 
diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/barebox-arm.h
index e9afd8f453..566986e515 100644
--- a/arch/arm/include/asm/barebox-arm.h
+++ b/arch/arm/include/asm/barebox-arm.h
@@ -24,21 +24,19 @@
 #include <asm/sections.h>
 #include <asm/reloc.h>
 #include <linux/stringify.h>
-#include <boarddata.h>
+#include <pbl/handoff-data.h>
 
 #define ARM_EARLY_PAGETABLE_SIZE	SZ_64K
 
-void __noreturn barebox_arm_entry(unsigned long membase, unsigned long memsize, void *boarddata);
-
-#define barebox_arm_boarddata		barebox_boarddata
-#define BAREBOX_ARM_BOARDDATA_MAGIC	BAREBOX_BOARDDATA_MAGIC
-
-static inline bool blob_is_arm_boarddata(const void *blob)
-{
-	const struct barebox_arm_boarddata *bd = blob;
+#define handoff_add_arm_machine(machine)				\
+	do {								\
+		static unsigned int machine_number = machine;		\
+									\
+		handoff_data_add(HANDOFF_DATA_ARM_MACHINE,		\
+			&machine_number, sizeof(unsigned int));		\
+	} while (0);
 
-	return bd->magic == BAREBOX_ARM_BOARDDATA_MAGIC;
-}
+void __noreturn barebox_arm_entry(unsigned long membase, unsigned long memsize, void *boarddata);
 
 u32 barebox_arm_machine(void);
 
@@ -46,10 +44,6 @@ unsigned long arm_mem_ramoops_get(void);
 unsigned long arm_mem_membase_get(void);
 unsigned long arm_mem_endmem_get(void);
 
-struct barebox_arm_boarddata *barebox_arm_get_boarddata(void);
-
-#define barebox_arm_get_boarddata barebox_get_boarddata
-
 #ifdef CONFIG_ARM_EXCEPTIONS
 void arm_fixup_vectors(void);
 #else
diff --git a/include/boarddata.h b/include/boarddata.h
deleted file mode 100644
index 6092d5f304..0000000000
--- a/include/boarddata.h
+++ /dev/null
@@ -1,45 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-or-later */
-
-#ifndef _BAREBOX_BOARDDATA_H_
-#define _BAREBOX_BOARDDATA_H_
-
-#include <linux/types.h>
-
-struct barebox_boarddata {
-#define BAREBOX_BOARDDATA_MAGIC		0xabe742c3
-	u32 magic;
-#define BAREBOX_MACH_TYPE_EFI		0xef1bbef1
-	u32 machine; /* machine number to pass to barebox. This may or may
-		      * not be a ARM machine number registered on arm.linux.org.uk.
-		      * It must only be unique across barebox. Please use a number
-		      * that do not potientially clashes with registered machines,
-		      * i.e. use a number > 0x10000.
-		      */
-};
-
-/*
- * Create a boarddata struct at given address. Suitable to be passed
- * as boarddata to barebox_$ARCH_entry(). The boarddata can be retrieved
- * later with barebox_get_boarddata().
- */
-static inline struct barebox_boarddata *boarddata_create(void *adr, u32 machine)
-{
-	struct barebox_boarddata *bd = adr;
-
-	bd->magic = BAREBOX_BOARDDATA_MAGIC;
-	bd->machine = machine;
-
-	return bd;
-}
-
-const struct barebox_boarddata *barebox_get_boarddata(void);
-
-static inline bool barebox_boarddata_is_machine(const struct barebox_boarddata *bd,
-						u32 machine)
-{
-	if (!bd || bd->magic != BAREBOX_BOARDDATA_MAGIC)
-		return false;
-	return bd->machine == machine;
-}
-
-#endif	/* _BAREBOX_BOARDDATA_H_ */
diff --git a/include/pbl/handoff-data.h b/include/pbl/handoff-data.h
index 044b4bb884..d475bdd694 100644
--- a/include/pbl/handoff-data.h
+++ b/include/pbl/handoff-data.h
@@ -11,7 +11,7 @@ struct handoff_data {
 #define HANDOFF_DATA_INTERNAL_DT	HANDOFF_DATA_BAREBOX(0)
 #define HANDOFF_DATA_INTERNAL_DT_Z	HANDOFF_DATA_BAREBOX(1)
 #define HANDOFF_DATA_EXTERNAL_DT	HANDOFF_DATA_BAREBOX(2)
-#define HANDOFF_DATA_BOARDDATA		HANDOFF_DATA_BAREBOX(3)
+#define HANDOFF_DATA_ARM_MACHINE	HANDOFF_DATA_BAREBOX(3)
 #define HANDOFF_DATA_EFI		HANDOFF_DATA_BAREBOX(4)
 
 #define HANDOFF_DATA_BOARD(n)		(0x951726fb + (n))
diff --git a/pbl/handoff-data.c b/pbl/handoff-data.c
index 85c3985995..7453c9c82c 100644
--- a/pbl/handoff-data.c
+++ b/pbl/handoff-data.c
@@ -171,8 +171,8 @@ static const char *handoff_data_entry_name(struct handoff_data_entry *hde)
 		return "handoff FDT (internal, compressed)";
 	case HANDOFF_DATA_EXTERNAL_DT:
 		return "handoff FDT (external)";
-	case HANDOFF_DATA_BOARDDATA:
-		return "handoff boarddata";
+	case HANDOFF_DATA_ARM_MACHINE:
+		return "ARM machine number";
 	default:
 		sprintf(name, "handoff %08x", hde->cookie);
 		return name;
-- 
2.39.2




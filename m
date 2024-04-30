Delivery-date: Tue, 30 Apr 2024 12:53:59 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s1l7X-00ACX3-1h
	for lore@lore.pengutronix.de;
	Tue, 30 Apr 2024 12:53:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s1l7W-000621-IE
	for lore@pengutronix.de; Tue, 30 Apr 2024 12:53:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5I8FM66/YHBWYdsK0glzaVNLlObY83J+5ZSXPQR3TbQ=; b=SRkMMTbR3rpcNKchL4Hka2NNvJ
	CXtB9DIrg12NdO+2ieoh2DSxIJ348YFRnbqrvZE7dkGdBBTFRUmftCqMZ0eE5ZnIg2xeepW7/RU3E
	t5tnCwNn6XaOSzquQpzrHlnGUY+djy9C6ssgVBu5AvygBANqNw2bY/YeIVqd2QYMSk5EfgEyZpgmm
	/q0PIGTvd84Ew+2C3je5RhQiwH2Qk/e3Y/vEoNu1bp6vmsgiK8XfNkYjCDEMrgmfLFpbrYHcZe/jA
	EI2tCp8ro0iZAXAPNUIVIXBh+FtWLubNH2XFTFmYmPSmxwKoMD7Mtwrp4/6fP7umC+blVcAEXT/Z0
	nowpkeDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1l6z-000000064wp-2ipi;
	Tue, 30 Apr 2024 10:53:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1l6p-000000064nx-1CDF
	for barebox@lists.infradead.org;
	Tue, 30 Apr 2024 10:53:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s1l6l-0005hi-VY; Tue, 30 Apr 2024 12:53:11 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s1l6l-00F99p-Iw; Tue, 30 Apr 2024 12:53:11 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1s1l6l-00DEvB-1Y;
	Tue, 30 Apr 2024 12:53:11 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 30 Apr 2024 12:53:10 +0200
Message-Id: <20240430105310.3149242-4-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240430105310.3149242-1-s.hauer@pengutronix.de>
References: <20240430105310.3149242-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240430_035315_395388_C0E34DCA 
X-CRM114-Status: GOOD (  17.12  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/3] ARM: pass handoff data from PBL to proper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Use newly introduced handoff data to pass data from PBL to barebox
proper. This will allow us later to pass more SoC and/or board specific
data from PBL to barebox proper.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/start.c      | 53 ++++++++++++---------------------------
 arch/arm/cpu/uncompress.c | 33 +++++++++++++++++++++---
 2 files changed, 45 insertions(+), 41 deletions(-)

diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index c13e93c243..b9dbe1f2fb 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -21,6 +21,7 @@
 #include <asm/mmu.h>
 #include <linux/kasan.h>
 #include <memory.h>
+#include <handoff-data.h>
 #include <uncompress.h>
 #include <compressed-dtb.h>
 #include <malloc.h>
@@ -38,10 +39,9 @@ static unsigned long barebox_boarddata_size;
 
 const struct barebox_boarddata *barebox_get_boarddata(void)
 {
-	if (!barebox_boarddata || !blob_is_arm_boarddata(barebox_boarddata))
-		return NULL;
+	size_t size;
 
-	return barebox_boarddata;
+	return handoff_data_get_entry(HANDOFF_DATA_BOARDDATA, &size);
 }
 
 u32 barebox_arm_machine(void)
@@ -56,19 +56,24 @@ void *barebox_arm_boot_dtb(void)
 	int ret = 0;
 	struct barebox_boarddata_compressed_dtb *compressed_dtb;
 	static void *boot_dtb;
+	void *blob;
+	size_t size;
 
 	if (boot_dtb)
 		return boot_dtb;
 
-	if (barebox_boarddata && blob_is_fdt(barebox_boarddata)) {
-		pr_debug("%s: using barebox_boarddata\n", __func__);
-		return barebox_boarddata;
-	}
+	blob = handoff_data_get_entry(HANDOFF_DATA_INTERNAL_DT, &size);
+	if (blob)
+		return blob;
+
+	blob = handoff_data_get_entry(HANDOFF_DATA_INTERNAL_DT_Z, &size);
+	if (!blob)
+		return NULL;
 
-	if (!fdt_blob_can_be_decompressed(barebox_boarddata))
+	if (!fdt_blob_can_be_decompressed(blob))
 		return NULL;
 
-	compressed_dtb = barebox_boarddata;
+	compressed_dtb = blob;
 
 	pr_debug("%s: using compressed_dtb\n", __func__);
 
@@ -167,34 +172,6 @@ __noreturn __prereloc void barebox_non_pbl_start(unsigned long membase,
 	arm_barebox_size = barebox_size;
 	malloc_end = barebox_base;
 
-	if (boarddata) {
-		uint32_t totalsize = 0;
-		const char *name;
-
-		if (blob_is_fdt(boarddata)) {
-			totalsize = get_unaligned_be32(boarddata + 4);
-			name = "DTB";
-		} else if (blob_is_compressed_fdt(boarddata)) {
-			struct barebox_boarddata_compressed_dtb *bd = boarddata;
-			totalsize = bd->datalen + sizeof(*bd);
-			name = "Compressed DTB";
-		} else if (blob_is_arm_boarddata(boarddata)) {
-			totalsize = sizeof(struct barebox_arm_boarddata);
-			name = "machine type";
-		}
-
-		if (totalsize) {
-			unsigned long mem = arm_mem_boarddata(membase, endmem,
-							      totalsize);
-			pr_debug("found %s in boarddata, copying to 0x%08lx\n",
-				 name, mem);
-			barebox_boarddata = memcpy((void *)mem, boarddata,
-						   totalsize);
-			barebox_boarddata_size = totalsize;
-			malloc_end = mem;
-		}
-	}
-
 	/*
 	 * Maximum malloc space is the Kconfig value if given
 	 * or 1GB.
@@ -216,6 +193,8 @@ __noreturn __prereloc void barebox_non_pbl_start(unsigned long membase,
 
 	mem_malloc_init((void *)malloc_start, (void *)malloc_end - 1);
 
+	handoff_data_set(boarddata);
+
 	if (IS_ENABLED(CONFIG_BOOTM_OPTEE))
 		of_add_reserve_entry(endmem - OPTEE_SIZE, endmem - 1);
 
diff --git a/arch/arm/cpu/uncompress.c b/arch/arm/cpu/uncompress.c
index aa1a49bfc9..a29703e760 100644
--- a/arch/arm/cpu/uncompress.c
+++ b/arch/arm/cpu/uncompress.c
@@ -10,6 +10,7 @@
 #include <init.h>
 #include <linux/sizes.h>
 #include <pbl.h>
+#include <handoff-data.h>
 #include <asm/barebox-arm.h>
 #include <asm/barebox-arm-head.h>
 #include <asm-generic/memory_layout.h>
@@ -18,6 +19,7 @@
 #include <asm/cache.h>
 #include <asm/mmu.h>
 #include <asm/unaligned.h>
+#include <compressed-dtb.h>
 
 #include <debug_ll.h>
 
@@ -29,6 +31,22 @@ unsigned long free_mem_end_ptr;
 extern unsigned char input_data[];
 extern unsigned char input_data_end[];
 
+static void add_handoff_data(void *boarddata)
+{
+	if (blob_is_fdt(boarddata)) {
+		handoff_data_add(HANDOFF_DATA_INTERNAL_DT, boarddata,
+				 get_unaligned_be32(boarddata + 4));
+	} else if (blob_is_compressed_fdt(boarddata)) {
+		struct barebox_boarddata_compressed_dtb *bd = boarddata;
+
+		handoff_data_add(HANDOFF_DATA_INTERNAL_DT_Z, boarddata,
+				 bd->datalen + sizeof(*bd));
+	} else if (blob_is_arm_boarddata(boarddata)) {
+		handoff_data_add(HANDOFF_DATA_BOARDDATA, boarddata,
+				 sizeof(struct barebox_arm_boarddata));
+	}
+}
+
 void __noreturn barebox_pbl_start(unsigned long membase, unsigned long memsize,
 				  void *boarddata)
 {
@@ -38,6 +56,7 @@ void __noreturn barebox_pbl_start(unsigned long membase, unsigned long memsize,
 	unsigned long barebox_base;
 	void *pg_start, *pg_end;
 	unsigned long pc = get_pc();
+	void *handoff_data;
 
 	/* piggy data is not relocated, so determine the bounds now */
 	pg_start = runtime_address(input_data);
@@ -56,9 +75,6 @@ void __noreturn barebox_pbl_start(unsigned long membase, unsigned long memsize,
 	pg_len = pg_end - pg_start;
 	uncompressed_len = get_unaligned((const u32 *)(pg_start + pg_len - 4));
 
-	barebox_base = arm_mem_barebox_image(membase, endmem,
-					     uncompressed_len + MAX_BSS_SIZE);
-
 	setup_c();
 
 	pr_debug("memory at 0x%08lx, size 0x%08lx\n", membase, memsize);
@@ -69,11 +85,20 @@ void __noreturn barebox_pbl_start(unsigned long membase, unsigned long memsize,
 	free_mem_ptr = arm_mem_early_malloc(endmem);
 	free_mem_end_ptr = arm_mem_early_malloc_end(endmem);
 
+	barebox_base = arm_mem_barebox_image(membase, endmem,
+					     uncompressed_len + MAX_BSS_SIZE + handoff_data_size());
+
+	handoff_data = (void *)barebox_base + uncompressed_len + MAX_BSS_SIZE;
+
 	pr_debug("uncompressing barebox binary at 0x%p (size 0x%08x) to 0x%08lx (uncompressed size: 0x%08x)\n",
 			pg_start, pg_len, barebox_base, uncompressed_len);
 
 	pbl_barebox_uncompress((void*)barebox_base, pg_start, pg_len);
 
+	add_handoff_data(boarddata);
+
+	handoff_data_move(handoff_data);
+
 	sync_caches_for_execution();
 
 	if (IS_ENABLED(CONFIG_THUMB2_BAREBOX))
@@ -86,5 +111,5 @@ void __noreturn barebox_pbl_start(unsigned long membase, unsigned long memsize,
 	if (IS_ENABLED(CONFIG_CPU_V7) && boot_cpu_mode() == HYP_MODE)
 		armv7_switch_to_hyp();
 
-	barebox(membase, memsize, boarddata);
+	barebox(membase, memsize, handoff_data);
 }
-- 
2.39.2




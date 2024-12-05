Delivery-date: Thu, 05 Dec 2024 07:48:28 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tJ5f1-004Dws-2C
	for lore@lore.pengutronix.de;
	Thu, 05 Dec 2024 07:48:28 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tJ5f1-0004di-3J
	for lore@pengutronix.de; Thu, 05 Dec 2024 07:48:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=9FFlD9WfI+YTiIc35dNxUkpYKvgbRGTzHdhNnGEAses=; b=CwaJ3fumODyBgAcQJPJc8xE5t3
	kbppcmtCsv1fTNxEIJMUvyg7eymFb6hZNOE9fVV+55dApMfVfojWgWPAwnI9YdqRq9KSFoU2cZyF+
	DCHeb2C1txiY69oWPAyxW/D7nI6Lcem0RPZ+W34SW55cpWfVdtBMJHVOT7lJzQMz9rdtum4lFU6qM
	T95kAOxJ07LEpfjkT4pU7M+xXOtLBPmS8QkkptXfc4VgQVPxUCi7mpcOoPgxbo0empuZ+LPcqSuOI
	95sgzV7EDdDKLHsEd5YEnaW5jrL76cJ/kL3e+6WmxVm/5Vcuu+JgEO74dljLCBu3qNMtOnvA/98JC
	Gmj3Mu8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tJ5eS-0000000EvOi-19WJ;
	Thu, 05 Dec 2024 06:47:52 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tJ5eP-0000000EvNb-3VYt
	for barebox@lists.infradead.org;
	Thu, 05 Dec 2024 06:47:51 +0000
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-53de880c77eso641533e87.1
        for <barebox@lists.infradead.org>; Wed, 04 Dec 2024 22:47:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1733381267; x=1733986067; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=9FFlD9WfI+YTiIc35dNxUkpYKvgbRGTzHdhNnGEAses=;
        b=Iq56YjEBb+30nkVNAJsNACY/gcaUBAujFyC1i44cyJBjTxgWq3JYpqwE9AhD0xnZv1
         FlgiEuZlSnxL3QTml4nz4DCkPu4AWXxhoQi1l3PgZvKalH7dmYunz6kuqOhBvoxLo/3y
         +JohH5P5Wq2fZFlgdGbMEECuHxzL6Hw/dCEvNQ0aThsCGMSGm70oDnoC+wdrWx3yXdDH
         RBvqwqV90iJrWMP6A2iPgNOd2Rl6o/9/v+RvDuSmIeQ5p+IqpjqLOqEaZRCDrI5+Z+GD
         8q80mXwsxr6aFpJkAI8j0XHXY/Zwcguo+R01yzXkkv4Ztizd5G+vwjfH49gz0jZPz6Uq
         A11w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733381267; x=1733986067;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9FFlD9WfI+YTiIc35dNxUkpYKvgbRGTzHdhNnGEAses=;
        b=tgIFJ8g0FpMy8NH/8l+HWoipwA+hxcvxw39nYjPDGzLV5B9xg8i0YBZUhymb4nFK+m
         QRd48M51Zc4kgA4JXLoUU42Ctk2f+QSG8sSXw3fm9N7sD1x+TgtEjvhAat29Lqp1bdIQ
         pYHB+ZtGbZ5uNDcIrcEs1t1J1rOjlDMgV5plx1yoG/I4gfNM1ePsyOCKItVZWJ2qlA4F
         xR7zrxiwuRxs+4atNHqu/sPm0Qn/7p9fCYkBzyzzXBOKAQMLg1hWLlo4yPbh7lKO8X1a
         hJc8EATNhYNi3j6MpNBeCrt6FRY8mDCazlCly+4aYb65EoPxKVA5OYpeVo+r1xsb0O/P
         W5hw==
X-Gm-Message-State: AOJu0Yz6n+akTRZBybym1SoKvkzJZlTt8wOWaEhu5VlIGFeOa57At78+
	BaqY5rVfIzY7oEiGCtckgrCHNnyMOlsYQ/2sRm8SQq8gRa2axcCMGUja9w==
X-Gm-Gg: ASbGnctGx1osePFyXQ1iriVYgitUu2mIQ7uuVnnkAG1JYv3W2yugk8aOy93cKs/PnvW
	RydV6yMuL9YQq+gtou/h8R2JN5mKkGjCjOk6Oqwm9NKqVSO80PUUal3Bkf+xp24rmWQx2pV4dLn
	difBfVzrOfOR9Fer+Orv157hNUrwd4DzN75l8nZhGdcMfznC7W4WjAZigecuQwd2Dh0GEzlgE3W
	QMzxCHX86R7k366EmLovtar1POcxIutyw+QMtnC1JYW2mIYEmmx/wzinAX9gSQwOWPuROqDQA==
X-Google-Smtp-Source: AGHT+IHWrYQZ598ERavj5o0N+UunBYBh2juyKHymjGQsnce0Ng9xVjGaO2JuALUmvl8UN2ddC38bWw==
X-Received: by 2002:a05:6512:2301:b0:535:82eb:21d1 with SMTP id 2adb3069b0e04-53e12a2906emr5350217e87.57.1733381267158;
        Wed, 04 Dec 2024 22:47:47 -0800 (PST)
Received: from localhost.localdomain ([188.243.23.53])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30020d85264sm1202071fa.17.2024.12.04.22.47.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Dec 2024 22:47:45 -0800 (PST)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Thu,  5 Dec 2024 09:47:34 +0300
Message-Id: <20241205064734.9305-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241204_224749_895174_D3144518 
X-CRM114-Status: GOOD (  17.92  )
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
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] ARM: omap: Unify the definition of DRAM start address
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Instead of using "magic" numbers, lets use a single definition
for the DRAM starting address.

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 arch/arm/boards/afi-gf/lowlevel.c            | 4 ++--
 arch/arm/boards/beagle/lowlevel.c            | 4 ++--
 arch/arm/boards/beaglebone/board.c           | 4 +++-
 arch/arm/boards/beaglebone/lowlevel.c        | 4 ++--
 arch/arm/boards/myirtech-x335x/lowlevel.c    | 2 +-
 arch/arm/boards/phytec-som-am335x/lowlevel.c | 2 +-
 arch/arm/boards/vscom-baltos/lowlevel.c      | 2 +-
 arch/arm/boards/wago-pfc-am35xx/board.c      | 3 ++-
 arch/arm/boards/wago-pfc-am35xx/lowlevel.c   | 4 ++--
 arch/arm/mach-omap/am33xx_generic.c          | 2 +-
 arch/arm/mach-omap/am33xx_scrm.c             | 3 ++-
 arch/arm/mach-omap/omap3_generic.c           | 2 +-
 arch/arm/mach-omap/omap4_generic.c           | 4 ++--
 arch/arm/mach-omap/omap_devices.c            | 3 ++-
 include/mach/omap/am33xx-silicon.h           | 3 ---
 include/mach/omap/generic.h                  | 2 ++
 include/mach/omap/omap3-silicon.h            | 3 ---
 include/mach/omap/omap4-silicon.h            | 4 ----
 18 files changed, 26 insertions(+), 29 deletions(-)

diff --git a/arch/arm/boards/afi-gf/lowlevel.c b/arch/arm/boards/afi-gf/lowlevel.c
index 5c38198a36..fcddd05341 100644
--- a/arch/arm/boards/afi-gf/lowlevel.c
+++ b/arch/arm/boards/afi-gf/lowlevel.c
@@ -230,7 +230,7 @@ static noinline int gf_sram_init(void)
 	omap_debug_ll_init();
 	putc_ll('>');
 
-	barebox_arm_entry(0x80000000, SZ_256M, fdt);
+	barebox_arm_entry(OMAP_DRAM_ADDR_SPACE_START, SZ_256M, fdt);
 }
 
 ENTRY_FUNCTION(start_am33xx_afi_gf_sram, bootinfo, r1, r2)
@@ -255,5 +255,5 @@ ENTRY_FUNCTION(start_am33xx_afi_gf_sdram, r0, r1, r2)
 
 	putc_ll('>');
 
-	barebox_arm_entry(0x80000000, SZ_256M, fdt);
+	barebox_arm_entry(OMAP_DRAM_ADDR_SPACE_START, SZ_256M, fdt);
 }
diff --git a/arch/arm/boards/beagle/lowlevel.c b/arch/arm/boards/beagle/lowlevel.c
index e22bc420b5..8b32e1a217 100644
--- a/arch/arm/boards/beagle/lowlevel.c
+++ b/arch/arm/boards/beagle/lowlevel.c
@@ -166,7 +166,7 @@ static noinline int beagle_board_init_sdram(void)
 {
 	handoff_add_arm_machine(MACH_TYPE_OMAP3_BEAGLE);
 
-	barebox_arm_entry(0x80000000, SZ_128M, NULL);
+	barebox_arm_entry(OMAP_DRAM_ADDR_SPACE_START, SZ_128M, NULL);
 }
 
 ENTRY_FUNCTION(start_omap3_beagleboard_sdram, bootinfo, r1, r2)
@@ -205,7 +205,7 @@ static noinline int beagle_board_init(void)
 
 	handoff_add_arm_machine(MACH_TYPE_OMAP3_BEAGLE);
 
-	barebox_arm_entry(0x80000000, SZ_128M, NULL);
+	barebox_arm_entry(OMAP_DRAM_ADDR_SPACE_START, SZ_128M, NULL);
 }
 
 ENTRY_FUNCTION(start_omap3_beagleboard_sram, bootinfo, r1, r2)
diff --git a/arch/arm/boards/beaglebone/board.c b/arch/arm/boards/beaglebone/board.c
index 43e2d81f38..752d608ea9 100644
--- a/arch/arm/boards/beaglebone/board.c
+++ b/arch/arm/boards/beaglebone/board.c
@@ -19,6 +19,7 @@
 #include <asm/armlinux.h>
 #include <asm/mach-types.h>
 #include <mach/omap/am33xx-silicon.h>
+#include <mach/omap/generic.h>
 #include <mach/omap/sys_info.h>
 #include <mach/omap/syslib.h>
 #include <mach/omap/gpmc.h>
@@ -49,7 +50,8 @@ static int beaglebone_mem_init(void)
 	else
 		sdram_size = SZ_256M;
 
-	arm_add_mem_device("ram0", 0x80000000, sdram_size);
+	arm_add_mem_device("ram0", OMAP_DRAM_ADDR_SPACE_START, sdram_size);
+
 	return 0;
 }
 mem_initcall(beaglebone_mem_init);
diff --git a/arch/arm/boards/beaglebone/lowlevel.c b/arch/arm/boards/beaglebone/lowlevel.c
index 5dc49dfaaf..e8dbb6be9c 100644
--- a/arch/arm/boards/beaglebone/lowlevel.c
+++ b/arch/arm/boards/beaglebone/lowlevel.c
@@ -136,7 +136,7 @@ static noinline int beaglebone_sram_init(void)
 	omap_debug_ll_init();
 	putc_ll('>');
 
-	barebox_arm_entry(0x80000000, sdram_size, fdt);
+	barebox_arm_entry(OMAP_DRAM_ADDR_SPACE_START, sdram_size, fdt);
 }
 
 ENTRY_FUNCTION(start_am33xx_beaglebone_sram, bootinfo, r1, r2)
@@ -168,5 +168,5 @@ ENTRY_FUNCTION(start_am33xx_beaglebone_sdram, r0, r1, r2)
 
 	fdt += get_runtime_offset();
 
-	barebox_arm_entry(0x80000000, sdram_size, fdt);
+	barebox_arm_entry(OMAP_DRAM_ADDR_SPACE_START, sdram_size, fdt);
 }
diff --git a/arch/arm/boards/myirtech-x335x/lowlevel.c b/arch/arm/boards/myirtech-x335x/lowlevel.c
index 0ac2370e57..c7b36b0173 100644
--- a/arch/arm/boards/myirtech-x335x/lowlevel.c
+++ b/arch/arm/boards/myirtech-x335x/lowlevel.c
@@ -83,7 +83,7 @@ ENTRY_FUNCTION(start_am33xx_myirtech_sram, bootinfo, r1, r2)
 
 	am335x_sdram_init(0x18b, &ddr3_cmd_ctrl, &ddr3_regs, &ddr3_data);
 
-	if (get_ram_size((void *)AM33XX_DRAM_ADDR_SPACE_START, SZ_512M) < SZ_512M) {
+	if (get_ram_size((void *)OMAP_DRAM_ADDR_SPACE_START, SZ_512M) < SZ_512M) {
 		/* MT41K128M8DA */
 		ddr3_regs.sdram_config = 0x61c04ab2;
 		am335x_sdram_init(0x18b, &ddr3_cmd_ctrl, &ddr3_regs, &ddr3_data);
diff --git a/arch/arm/boards/phytec-som-am335x/lowlevel.c b/arch/arm/boards/phytec-som-am335x/lowlevel.c
index 267f30b638..f1f8e066b9 100644
--- a/arch/arm/boards/phytec-som-am335x/lowlevel.c
+++ b/arch/arm/boards/phytec-som-am335x/lowlevel.c
@@ -152,7 +152,7 @@ static noinline void physom_board_init(void *fdt, int sdram, int module_family)
 				&timing->data);
 
 		/* Find the ram size and set up the correct ram timings */
-		ramsize = get_ram_size((long *) 0x80000000, SZ_1G);
+		ramsize = get_ram_size((long *)OMAP_DRAM_ADDR_SPACE_START, SZ_1G);
 		timing = get_timings_by_size(module_family, ramsize);
 		if (!timing)
 			hang();
diff --git a/arch/arm/boards/vscom-baltos/lowlevel.c b/arch/arm/boards/vscom-baltos/lowlevel.c
index aee0cde651..d32d77d47c 100644
--- a/arch/arm/boards/vscom-baltos/lowlevel.c
+++ b/arch/arm/boards/vscom-baltos/lowlevel.c
@@ -91,7 +91,7 @@ static noinline void baltos_sram_init(void)
 	/* Setup the PLLs and the clocks for the peripherals */
 	am33xx_pll_init(MPUPLL_M_600, DDRPLL_M_400);
 	am335x_sdram_init(0x18B, &ddr3_cmd_ctrl, &ddr3_regs, &ddr3_data);
-	sdram_size = get_ram_size((void *)0x80000000, (1024 << 20));
+	sdram_size = get_ram_size((void *)OMAP_DRAM_ADDR_SPACE_START, (1024 << 20));
 	if (sdram_size == SZ_256M)
 		am335x_sdram_init(0x18B, &ddr3_cmd_ctrl, &ddr3_regs_256mb,
 				&ddr3_data_256mb);
diff --git a/arch/arm/boards/wago-pfc-am35xx/board.c b/arch/arm/boards/wago-pfc-am35xx/board.c
index 091e606e21..57f51972a9 100644
--- a/arch/arm/boards/wago-pfc-am35xx/board.c
+++ b/arch/arm/boards/wago-pfc-am35xx/board.c
@@ -21,7 +21,8 @@ static int pfc200_mem_init(void)
 	if (!of_machine_is_compatible("ti,pfc200"))
 		return 0;
 
-	arm_add_mem_device("ram0", 0x80000000, SZ_256M);
+	arm_add_mem_device("ram0", OMAP_DRAM_ADDR_SPACE_START, SZ_256M);
+
 	return 0;
 }
 mem_initcall(pfc200_mem_init);
diff --git a/arch/arm/boards/wago-pfc-am35xx/lowlevel.c b/arch/arm/boards/wago-pfc-am35xx/lowlevel.c
index 5429065c2d..df4a74a313 100644
--- a/arch/arm/boards/wago-pfc-am35xx/lowlevel.c
+++ b/arch/arm/boards/wago-pfc-am35xx/lowlevel.c
@@ -202,7 +202,7 @@ static noinline void pfc200_board_init(void)
 	if (!in_sdram)
 		am35xx_emif4_init(IOMEM(OMAP3_SDRC_BASE));
 
-	barebox_arm_entry(0x80000000, SZ_256M, NULL);
+	barebox_arm_entry(OMAP_DRAM_ADDR_SPACE_START, SZ_256M, NULL);
 }
 
 ENTRY_FUNCTION(start_am35xx_pfc_750_820x_sram, bootinfo, r1, r2)
@@ -227,5 +227,5 @@ ENTRY_FUNCTION(start_am35xx_pfc_750_820x_sdram, r0, r1, r2)
 
 	fdt += get_runtime_offset();
 
-	barebox_arm_entry(0x80000000, SZ_256M, fdt);
+	barebox_arm_entry(OMAP_DRAM_ADDR_SPACE_START, SZ_256M, fdt);
 }
diff --git a/arch/arm/mach-omap/am33xx_generic.c b/arch/arm/mach-omap/am33xx_generic.c
index 850fbceaec..bcafc0677e 100644
--- a/arch/arm/mach-omap/am33xx_generic.c
+++ b/arch/arm/mach-omap/am33xx_generic.c
@@ -343,7 +343,7 @@ void am33xx_config_sdram(const struct am33xx_emif_regs *regs)
 
 void __noreturn am335x_barebox_entry(void *boarddata)
 {
-	barebox_arm_entry(0x80000000,
+	barebox_arm_entry(OMAP_DRAM_ADDR_SPACE_START,
 			  emif4_sdram_size(IOMEM(AM33XX_EMIF4_BASE)), boarddata);
 }
 
diff --git a/arch/arm/mach-omap/am33xx_scrm.c b/arch/arm/mach-omap/am33xx_scrm.c
index 431e72fdda..bc1249715f 100644
--- a/arch/arm/mach-omap/am33xx_scrm.c
+++ b/arch/arm/mach-omap/am33xx_scrm.c
@@ -22,10 +22,11 @@
 #include <asm/memory.h>
 #include <mach/omap/am33xx-silicon.h>
 #include <mach/omap/emif4.h>
+#include <mach/omap/generic.h>
 
 static int am33xx_scrm_probe(struct device *dev)
 {
-	return arm_add_mem_device("ram0", 0x80000000,
+	return arm_add_mem_device("ram0", OMAP_DRAM_ADDR_SPACE_START,
 				  emif4_sdram_size(IOMEM(AM33XX_EMIF4_BASE)));
 }
 
diff --git a/arch/arm/mach-omap/omap3_generic.c b/arch/arm/mach-omap/omap3_generic.c
index 8230b37619..67dfefa49b 100644
--- a/arch/arm/mach-omap/omap3_generic.c
+++ b/arch/arm/mach-omap/omap3_generic.c
@@ -193,7 +193,7 @@ u32 get_sdr_cs1_base(void)
 	base = (cs_cfg & 0x0000000F) << 2; /* get CS1STARTHIGH */
 	base = base | ((cs_cfg & 0x00000300) >> 8); /* get CS1STARTLOW */
 	base = base << 25;
-	base += 0x80000000;
+	base += OMAP_DRAM_ADDR_SPACE_START;
 	return base;
 }
 EXPORT_SYMBOL(get_sdr_cs1_base);
diff --git a/arch/arm/mach-omap/omap4_generic.c b/arch/arm/mach-omap/omap4_generic.c
index 10190b152b..bf77014b40 100644
--- a/arch/arm/mach-omap/omap4_generic.c
+++ b/arch/arm/mach-omap/omap4_generic.c
@@ -380,8 +380,8 @@ void omap4_ddr_init(const struct ddr_regs *ddr_regs,
 	reset_phy(OMAP44XX_EMIF1_BASE);
 	reset_phy(OMAP44XX_EMIF2_BASE);
 
-	writel(0, 0x80000000);
-	writel(0, 0x80000080);
+	writel(0, OMAP_DRAM_ADDR_SPACE_START);
+	writel(0, OMAP_DRAM_ADDR_SPACE_START);
 }
 
 void omap4_power_i2c_send(u32 r)
diff --git a/arch/arm/mach-omap/omap_devices.c b/arch/arm/mach-omap/omap_devices.c
index afa8940ec1..47a2e07774 100644
--- a/arch/arm/mach-omap/omap_devices.c
+++ b/arch/arm/mach-omap/omap_devices.c
@@ -3,11 +3,12 @@
 #include <driver.h>
 #include <asm/armlinux.h>
 
+#include <mach/omap/generic.h>
 #include <mach/omap/omap3-devices.h>
 
 void omap_add_ram0(resource_size_t size)
 {
-	arm_add_mem_device("ram0", 0x80000000, size);
+	arm_add_mem_device("ram0", OMAP_DRAM_ADDR_SPACE_START, size);
 }
 
 void omap_add_sram0(resource_size_t base, resource_size_t size)
diff --git a/include/mach/omap/am33xx-silicon.h b/include/mach/omap/am33xx-silicon.h
index 74b0b7638e..61025dcd73 100644
--- a/include/mach/omap/am33xx-silicon.h
+++ b/include/mach/omap/am33xx-silicon.h
@@ -37,9 +37,6 @@
 #define AM33XX_GPIO2_BASE		(AM33XX_L4_PER_BASE + 0x1AC000 + 0x100)
 #define AM33XX_GPIO3_BASE		(AM33XX_L4_PER_BASE + 0x1AE000 + 0x100)
 
-#define AM33XX_DRAM_ADDR_SPACE_START	0x80000000
-#define AM33XX_DRAM_ADDR_SPACE_END	0xC0000000
-
 /* I2C */
 #define AM33XX_I2C0_BASE	(AM33XX_L4_WKUP_BASE + 0x20B000)
 #define AM33XX_I2C1_BASE	(AM33XX_L4_PER_BASE + 0x02A000)
diff --git a/include/mach/omap/generic.h b/include/mach/omap/generic.h
index cb54b88211..2961c530bc 100644
--- a/include/mach/omap/generic.h
+++ b/include/mach/omap/generic.h
@@ -3,6 +3,8 @@
 #ifndef _MACH_GENERIC_H
 #define _MACH_GENERIC_H
 
+#define OMAP_DRAM_ADDR_SPACE_START	0x80000000
+
 /* I2C controller revisions */
 #define OMAP_I2C_OMAP1_REV_2            0x20
 
diff --git a/include/mach/omap/omap3-silicon.h b/include/mach/omap/omap3-silicon.h
index b4de045652..f8addbfa7b 100644
--- a/include/mach/omap/omap3-silicon.h
+++ b/include/mach/omap/omap3-silicon.h
@@ -125,9 +125,6 @@
 
 #define DEVICE_MASK		((0x1 << 8)|(0x1 << 9)|(0x1 << 10))
 
-#define OMAP_SDRC_CS0		0x80000000
-#define OMAP_SDRC_CS1		0xA0000000
-
 /* PRM */
 #define OMAP3_PRM_RSTCTRL_RESET	0x04
 
diff --git a/include/mach/omap/omap4-silicon.h b/include/mach/omap/omap4-silicon.h
index b9f6119894..ceff0c772b 100644
--- a/include/mach/omap/omap4-silicon.h
+++ b/include/mach/omap/omap4-silicon.h
@@ -43,10 +43,6 @@
 #define OMAP44XX_EMIF1_BASE		0x4c000000
 #define OMAP44XX_EMIF2_BASE		0x4d000000
 
-#define OMAP44XX_DRAM_ADDR_SPACE_START	0x80000000
-#define OMAP44XX_DRAM_ADDR_SPACE_END	0xD0000000
-
-
 /* CONTROL */
 #define OMAP44XX_CTRL_BASE		(OMAP44XX_L4_CORE_BASE + 0x2000)
 #define OMAP44XX_CONTROL_PADCONF_CORE	(OMAP44XX_L4_CORE_BASE + 0x100000)
-- 
2.39.1




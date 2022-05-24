Delivery-date: Tue, 24 May 2022 09:23:12 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ntOsq-007Izz-3I
	for lore@lore.pengutronix.de; Tue, 24 May 2022 09:23:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ntOsl-00040H-Ka
	for lore@pengutronix.de; Tue, 24 May 2022 09:23:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fL932w1DD5ICRi83wTt/mnJGWi6uHID2slZTD2qHfAM=; b=TT0a+6tGICOO2h
	h6Kz+TVH30Pqm5Cs9qfNs/OXlipTklTmqYEUxZ649aYsb74uUxJ0gjifomTnNlTj4mFRQROoqLMRc
	GCqyK+k+Ec3mOLbFznNETrub4lm+WqZWEV32mhzcsVF9B7kpQo5jA4WVDOuRK7HbTaxnGhEEYj8dJ
	g3A0i548/lreCVKu4v8hZj1fh5zG9cllWIMpJEB0UwKQtUIN8Oj8kXHsV7R8h9ntlQ3SNfsHUG7Hx
	n9cjd2SjHMMdEYiPE4UhpKM4CWI41WaE0zWGTD6noMwgZ013Uql0isKqAVuWhuoPe9kmlGcN3i9pC
	KhNefayoCqdiuhR66lxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ntOrQ-0073kl-PY; Tue, 24 May 2022 07:21:44 +0000
Received: from mail-lj1-x230.google.com ([2a00:1450:4864:20::230])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ntOrM-0073k0-J5
 for barebox@lists.infradead.org; Tue, 24 May 2022 07:21:41 +0000
Received: by mail-lj1-x230.google.com with SMTP id m11so8385522ljc.1
 for <barebox@lists.infradead.org>; Tue, 24 May 2022 00:21:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=l6uoYPZWYXEN+DAIJWuq5ygtj9e2J8A3j38dlVih8fg=;
 b=CVktWYEcCWvqvlDVL1pEpnuuoHc8b6Cg2sJCK551K5uRh37Xs6iNQw0ENx119Ydz7A
 hvbwwqFDHCCWLMYYDpSxMxY/OBKtczWNp5vSjnVqhIJAJJAoKhPeAPH/CuNbym6F30A+
 47o4h5FzbFGWsad4MQ/1KJ4AkTVvyu/gGZr2hA2Ii5CMo7TIeGT44/FmIYzSqaFVD2/O
 9CZ0f8eBQ5jUh+1Wa5XZHD703Mq358WO+npl+OJektvxedyNIORZ3O+/0E/TLg9W+Xqm
 r7utswarxBzqr+fwk1PrgP5SAKcVyPeR7gKQ5O3JUDnFSfwMsYypWXxoIVJKRqPGKjZ1
 ghng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=l6uoYPZWYXEN+DAIJWuq5ygtj9e2J8A3j38dlVih8fg=;
 b=5+kG0ifZRT2wlnzSwVrhB5kIBTVueqnSAmWjQ5hinQV3TrzWu1umXCEOLuUCCbZymC
 345Ri02jcHVAVBjx02fQkiGPS6GVn0GEygCt92zIltJe6FPKkcXPSpXY01UBDZ/+286U
 nBgVQNdsu18dUui3n4yT/b9QOzXu/0Fj7/CTXydC7GJNoBS/6O35nE151fmyrWu2gsl2
 4AordIV5LyTqlPA5JtBWgiMlC2qiwzVahqRefqmXLWBIkewrDZLR+YDeRocQbMdG20oG
 xapC0kG+/Uk1bwDIPfzhNgt2vLV/zJhN5KWjQz53ujd+/5LQbjj3Q9N2I6YkHYubd3n5
 f/Ng==
X-Gm-Message-State: AOAM532WDhsdsQ+9KsD6OPVT1HZlnfbDAMxIekfFazvMFFc/E50VKUu9
 536awoen+V6RXRws9nEozsOM3tcVht0=
X-Google-Smtp-Source: ABdhPJx83l9xo6jZQUm4GRjMJxIqLIpoq0d0vm6Ach8A90HbQi6lCw6UOkZLGLSuaw+6K5EaV/F2Kg==
X-Received: by 2002:a2e:9d87:0:b0:253:e12a:916a with SMTP id
 c7-20020a2e9d87000000b00253e12a916amr9212371ljj.502.1653376897928; 
 Tue, 24 May 2022 00:21:37 -0700 (PDT)
Received: from shc.milas.spb.ru ([188.243.217.78])
 by smtp.gmail.com with ESMTPSA id
 c11-20020a056512104b00b00477ce466e59sm2108040lfb.153.2022.05.24.00.21.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 May 2022 00:21:37 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Tue, 24 May 2022 10:21:35 +0300
Message-Id: <20220524072135.18007-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220524_002140_681392_7F8FDABE 
X-CRM114-Status: GOOD (  13.32  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: myir-x335x: Fix memory size detect
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Unfortunately, the memory size detect does not work properly.
Let's use the standard get_ram_size() function in the preloader
and just reinitialize the memory if it returns 256MB.

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 arch/arm/boards/myirtech-x335x/lowlevel.c | 20 +++++++++++---------
 1 file changed, 11 insertions(+), 9 deletions(-)

diff --git a/arch/arm/boards/myirtech-x335x/lowlevel.c b/arch/arm/boards/myirtech-x335x/lowlevel.c
index e867a0be7d..c43761ca23 100644
--- a/arch/arm/boards/myirtech-x335x/lowlevel.c
+++ b/arch/arm/boards/myirtech-x335x/lowlevel.c
@@ -1,6 +1,7 @@
 /* SPDX-License-Identifier: GPL-2.0+ */
 /* SPDX-FileCopyrightText: Alexander Shiyan <shc_work@mail.ru> */
 
+#include <common.h>
 #include <io.h>
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
@@ -41,12 +42,13 @@ static const struct am33xx_cmd_control ddr3_cmd_ctrl = {
 /* CPU module contains 512MB (2*256MB) DDR3 SDRAM (2*128MB compatible),
  * so we configure EMIF for 512MB then detect real size of memory.
  */
-static const struct am33xx_emif_regs ddr3_regs = {
+static struct am33xx_emif_regs ddr3_regs = {
 	.emif_read_latency	= 0x00100007,
 	.emif_tim1		= 0x0aaad4db,
 	.emif_tim2		= 0x266b7fda,
 	.emif_tim3		= 0x501f867f,
 	.zq_config		= 0x50074be4,
+	/* MT41K256M8DA */
 	.sdram_config		= 0x61c05332,
 	.sdram_config2		= 0x00,
 	.sdram_ref_ctrl		= 0xc30,
@@ -87,6 +89,12 @@ ENTRY_FUNCTION(start_am33xx_myirtech_sram, bootinfo, r1, r2)
 
 	am335x_sdram_init(0x18b, &ddr3_cmd_ctrl, &ddr3_regs, &ddr3_data);
 
+	if (get_ram_size((void *)AM33XX_DRAM_ADDR_SPACE_START, SZ_512M) < SZ_512M) {
+		/* MT41K128M8DA */
+		ddr3_regs.sdram_config = 0x61c04ab2;
+		am335x_sdram_init(0x18b, &ddr3_cmd_ctrl, &ddr3_regs, &ddr3_data);
+	}
+
 	if (IS_ENABLED(CONFIG_DEBUG_LL)) {
 		am33xx_uart_soft_reset(IOMEM(AM33XX_UART0_BASE));
 		am33xx_enable_uart0_pin_mux();
@@ -94,22 +102,16 @@ ENTRY_FUNCTION(start_am33xx_myirtech_sram, bootinfo, r1, r2)
 		putc_ll('>');
 	}
 
-	barebox_arm_entry(AM33XX_DRAM_ADDR_SPACE_START, SZ_256M, fdt);
+	am335x_barebox_entry(fdt);
 }
 
 ENTRY_FUNCTION(start_am33xx_myirtech_sdram, r0, r1, r2)
 {
 	void *fdt;
-	u32 sdram_size;
 
 	fdt = __dtb_z_am335x_myirtech_myd_start;
 
 	fdt += get_runtime_offset();
 
-	/* Detect 256M/512M module variant */
-	__raw_writel(SZ_512M, AM33XX_DRAM_ADDR_SPACE_START + SZ_256M);
-	__raw_writel(SZ_256M, AM33XX_DRAM_ADDR_SPACE_START + 0);
-	sdram_size = __raw_readl(AM33XX_DRAM_ADDR_SPACE_START + SZ_256M);
-
-	barebox_arm_entry(AM33XX_DRAM_ADDR_SPACE_START, sdram_size, fdt);
+	am335x_barebox_entry(fdt);
 }
-- 
2.32.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


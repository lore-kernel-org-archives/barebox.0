Delivery-date: Tue, 24 Jun 2025 11:20:52 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uTzpk-00AYZG-2Z
	for lore@lore.pengutronix.de;
	Tue, 24 Jun 2025 11:20:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uTzpk-0007zW-3T
	for lore@pengutronix.de; Tue, 24 Jun 2025 11:20:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=kwQSb5ZLP+3162zfOdmCmV7JhUy/PxWJz1j10JLMANw=; b=O+t12iQTNkWGvGVMzhRvC5l+S7
	PmcIiHW3rxxMXI7v8mP8JNYQ7q62Y3FEgK0hRomvXvFSBVwtypcVgP6HGE13UzsqY0pEeyDg9FMVB
	Pwddj8QMKDZpRwVSB3csT40AWihedk/bxMOLtfaiQUeEIVKR/2+LCRnFnK0ajAKvVuZoVXzoGJMvJ
	1vQWQOVu4L5jqk4bcCN9DfvNO/ILCoiDA9km6+LW8dmiDGgLrreQT3A7EnlqCEwJyOsmp//ZwpHYH
	9780CzjUDECqypUTF7RR5nH2o7ZgHJefPuSXDx3AC/Jq7ANqEwSSJ7I1fa6g2JXfUvd+vp9sbA5QB
	IpVxmxsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTzpG-00000005A7d-0lQ5;
	Tue, 24 Jun 2025 09:20:22 +0000
Received: from mail-lj1-x229.google.com ([2a00:1450:4864:20::229])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTzkU-0000000596F-1bBL
	for barebox@lists.infradead.org;
	Tue, 24 Jun 2025 09:15:28 +0000
Received: by mail-lj1-x229.google.com with SMTP id 38308e7fff4ca-32addf54a01so1962151fa.3
        for <barebox@lists.infradead.org>; Tue, 24 Jun 2025 02:15:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750756524; x=1751361324; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=kwQSb5ZLP+3162zfOdmCmV7JhUy/PxWJz1j10JLMANw=;
        b=W5RUUhsyQm4et5ZUTvmaYZHcGMFgpumsGGkHIOLUVCo7jmp7Jtb4FoyEbJE+IKQ0ii
         tcVR7jbKz18+HWMZ+TPcFA1TdkpVubJmt4soL4RmOEnRrw9QrY0Up84nekJRI4Cv2z41
         qMzcwJfL6iMxp6s8aH8RpQb81tv/lSBKbIE7HtikpE5i6s6dOybDSQ/L+IttMMUb0uK2
         5Axp33isiCKSftMuJbVy1BVYC+y5hLcvTQGFEm8BM4Xop+GfN7cuKx5G2vfkm3iLqlev
         RK6lm20vCcrTJxY7K8mNKDSUksUltcaJ7HPHGxbG9TJniRGHRrvsGSv/5MERfka2lmqF
         lQKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750756524; x=1751361324;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kwQSb5ZLP+3162zfOdmCmV7JhUy/PxWJz1j10JLMANw=;
        b=R4VHYwlKCol/4tEFnn0wZDV+ddg4a1fCMrjPPUYFy8FViX2cimKci4ACvJy0vWx9lM
         S4CPyVMrnq67e1vT1a/QGe9fVKvvpk7My3p8KIttb0Iunwqt0QE04nXou1rfwaXDrvXH
         +1+6ws6Jp2Ke03nbHqh+ZTeoBZ33RGDST4xEdUuPcak27dHgcc636LawEFCQlIaXfEYt
         szTKD2lNb6+izsB86bvgjqPm6k+QtBOYHB9yuKIqoumwvX/82BSunMIj4N+jmSEv+fFG
         VjSdBF1f1NrMzjHK5i86buDqk19F5toxEhTeIIiL+LvpPgQPIXk6QXA4Bk2uH37Mi9ew
         RDLg==
X-Gm-Message-State: AOJu0YwSILt0PrIXg3+7Ss795L5I3zj7PudCD40jVOaF7YFSA+6qPeIm
	7RpewA5P9sGuAojsRXw+YhL36QjgolP/2yeU5ogidXXXCpLgyoW73AFl0f1FDQ==
X-Gm-Gg: ASbGncskchmhnb0Rrq9M7N6L4qQaFQxOpSW0lwOXGvhCWpK4+KE3z6OyBxamzJQbCah
	ltGxV6NRRDZ6MrGvoB9BegOG/VamVVNYQO9KHy4gT4R9B3tdzStBXtw5+4SxkEK+SkQdriSreqk
	fyC+g6UxmcV6ZMfcmo4VlRcXWReeXwf1y2yNcRqzMigz9T2bmxMpR5JCskTQTQ6CHOGeyPNlrd1
	+3/W8Xuy9Ipjuufy+XhXsWXLaEVREQturuEq/Ik2J4mdhA2MjR0lF8d9jlByXpNMwPmJBwO7KNA
	r7yYsM/KvA+6Ngoh66yFFWNuy/X5Vp3rdD77/dmquf/tnFFFOBY0io4K9eE5mbFULLUfoO81FOZ
	bE+FpvwIE
X-Google-Smtp-Source: AGHT+IEutZPZqgYukMToytiK4spmjIoaSnLk/tZ/o2V3h22Q8D88jeT+q1DL2A7UCq/309deJrHwHg==
X-Received: by 2002:a05:651c:2203:b0:30b:c6fe:4529 with SMTP id 38308e7fff4ca-32b991c33b9mr47289561fa.8.1750756523730;
        Tue, 24 Jun 2025 02:15:23 -0700 (PDT)
Received: from localhost.localdomain ([188.243.23.53])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-553e41cc149sm1739572e87.222.2025.06.24.02.15.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Jun 2025 02:15:23 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Tue, 24 Jun 2025 12:15:09 +0300
Message-Id: <20250624091510.28947-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250624_021526_419982_5DF2DAA3 
X-CRM114-Status: GOOD (  13.09  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [RFC] ARM: at91: sama5d3: Migrate to MFD-based SMC driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This replaces the low-level SMC driver implementation with the
MFD-based driver for SAMA5D3 platforms.

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 arch/arm/boards/sama5d3_xplained/board.c | 46 ------------------------
 arch/arm/mach-at91/Kconfig               |  1 -
 arch/arm/mach-at91/sam9_smc.c            |  5 +--
 3 files changed, 1 insertion(+), 51 deletions(-)

diff --git a/arch/arm/boards/sama5d3_xplained/board.c b/arch/arm/boards/sama5d3_xplained/board.c
index 4d908e6b9f..3ee3f2166e 100644
--- a/arch/arm/boards/sama5d3_xplained/board.c
+++ b/arch/arm/boards/sama5d3_xplained/board.c
@@ -3,60 +3,14 @@
 #include <common.h>
 #include <init.h>
 #include <envfs.h>
-#include <mach/at91/at91sam9_smc.h>
-#include <mach/at91/hardware.h>
-#include <linux/clk.h>
-
-static struct sam9_smc_config sama5d3_xplained_nand_smc_config = {
-	.ncs_read_setup		= 1,
-	.nrd_setup		= 2,
-	.ncs_write_setup	= 1,
-	.nwe_setup		= 2,
-
-	.ncs_read_pulse		= 5,
-	.nrd_pulse		= 3,
-	.ncs_write_pulse	= 5,
-	.nwe_pulse		= 3,
-
-	.read_cycle		= 8,
-	.write_cycle		= 8,
-
-	.mode			= AT91_SMC_READMODE | AT91_SMC_WRITEMODE |
-				  AT91_SMC_EXNWMODE_DISABLE | AT91_SMC_DBW_8,
-	.tdf_cycles		= 3,
-
-	.tclr			= 3,
-	.tadl			= 10,
-	.tar			= 3,
-	.ocms			= 0,
-	.trr			= 4,
-	.twb			= 5,
-	.rbnsel			= 3,
-	.nfsel			= 1
-};
 
 static int sama5d3_xplained_probe(struct device *dev)
 {
-	struct clk *clk;
-
 	barebox_set_hostname("sama5d3_xplained");
 
 	if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT_GENERIC))
 		defaultenv_append_directory(defaultenv_sama5d3_xplained);
 
-	add_generic_device("at91sam9-smc", DEVICE_ID_SINGLE, NULL,
-			   SAMA5D3_BASE_HSMC + 0x600, 0xa0,
-			   IORESOURCE_MEM, NULL);
-
-	clk = clk_lookup("hsmc_clk");
-	if (IS_ERR(clk))
-		dev_warn(dev, "couldn't get hsmc_clk: %pe\n", clk);
-
-	clk_enable(clk);
-
-	/* configure chip-select 3 (NAND) */
-	sama5_smc_configure(0, 3, &sama5d3_xplained_nand_smc_config);
-
 	return 0;
 }
 
diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index db79ad2d26..22ab99d9c8 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -107,7 +107,6 @@ config SOC_SAMA5D2
 config SOC_SAMA5D3
 	bool
 	select SOC_SAMA5
-	select AT91SAM9_SMC
 	select CLOCKSOURCE_ATMEL_PIT
 	select HAVE_AT91_SMD
 	select HAVE_AT91_USB_CLK
diff --git a/arch/arm/mach-at91/sam9_smc.c b/arch/arm/mach-at91/sam9_smc.c
index 6c9e169a8e..66b30694ce 100644
--- a/arch/arm/mach-at91/sam9_smc.c
+++ b/arch/arm/mach-at91/sam9_smc.c
@@ -14,8 +14,7 @@
 
 #define AT91_SAM9_SMC_CS_STRIDE		0x10
 #define AT91_SAMA5_SMC_CS_STRIDE	0x14
-#define AT91_SMC_CS_STRIDE	((at91_soc_initdata.type == AT91_SOC_SAMA5D3 \
-				 || at91_soc_initdata.type == AT91_SOC_SAMA5D4) \
+#define AT91_SMC_CS_STRIDE	((at91_soc_initdata.type == AT91_SOC_SAMA5D4) \
 				 ? AT91_SAMA5_SMC_CS_STRIDE : AT91_SAM9_SMC_CS_STRIDE)
 #define AT91_SMC_CS(id, n)	(smc_base_addr[id] + ((n) * AT91_SMC_CS_STRIDE))
 
@@ -27,7 +26,6 @@ static void sam9_smc_cs_write_mode(void __iomem *base,
 	void __iomem *mode_reg;
 
 	switch (at91_soc_initdata.type) {
-	case AT91_SOC_SAMA5D3:
 	case AT91_SOC_SAMA5D4:
 		mode_reg = base + AT91_SAMA5_SMC_MODE;
 		break;
@@ -101,7 +99,6 @@ static void sam9_smc_cs_read_mode(void __iomem *base,
 	void __iomem *mode_reg;
 
 	switch (at91_soc_initdata.type) {
-	case AT91_SOC_SAMA5D3:
 	case AT91_SOC_SAMA5D4:
 		mode_reg = base + AT91_SAMA5_SMC_MODE;
 		break;
-- 
2.39.1




Delivery-date: Fri, 03 Jun 2022 13:27:39 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nx5St-001kVS-FN
	for lore@lore.pengutronix.de; Fri, 03 Jun 2022 13:27:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nx5Sr-0003ue-37
	for lore@pengutronix.de; Fri, 03 Jun 2022 13:27:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tDq0u1R5QCcBdvPzvk0jsSHyIyrukiPFJhj7lJOlEkQ=; b=kxAyn0uzxhnB/H
	Fdj5kC16xj217haIZqK0rGJGgdm/s9zzCr7NMLehZKHns2J+b1FnJVN2TuR60y4ownn8LFzVZrjgZ
	u9ZrH+hBDhHqYzczBmvbBV9uhnfKKE0cMVMOHNkaP8/Z8ker9J9ZH6/dbaZB5k70WNWeKI5zyXJ0W
	kbEnT2obacf1X0TBRj3KCKoFWh88KXGNDkYcgw7qhRddS4EL4vREspv97bCVHXqKsRGbphyuNSDwQ
	PFIHhtnYdiiQ5qbhHXXEEVBfe3hJHcE5laWSW3mSR9ATzvbJ2gwEqHpw5rInT6rj+OEGtYtKApwpB
	XR6UoGcBavr/g+C0FEwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nx5Rc-007BeZ-4Y; Fri, 03 Jun 2022 11:26:20 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nx5RG-007BSK-Dj
	for barebox@lists.infradead.org; Fri, 03 Jun 2022 11:26:00 +0000
Received: by mail-lf1-x12a.google.com with SMTP id j10so12086302lfe.12
        for <barebox@lists.infradead.org>; Fri, 03 Jun 2022 04:25:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=9Q89104iGF+LU8/tt0Oe9SvC0OlEixcDrGIteWNLS9o=;
        b=Rkd/fA4j3QiYENLOKfqIQA1y6cI8tCGOgyezzb3tGG/z81WBAd3jnOOsrGqJXc1wGY
         aPgek6BlyGR8Bs4Rpr+nD/4lStq7SeNsp6l0OVxeF9D6OFURsSmzK598vBRAvRoGGa3h
         dEUmbLryZ87kpdSfG64L+sJJMhGpEHhFtCOlzvP7uSgtyvCd50ExkLh+JlRNBcfGb2Hs
         nhuOWSZQxsj3YQNHBhdVkwiQ7Ig01DqOR4CVgChbMyKfXqocJwwy+ShLqWoSTmue5JdS
         cu77y7+ZRx9r2XHMfjw/hnbAJ9tlLaXOTrbYZnEFAJjZxs89y2sBYJp+kyhp5XLS4lYh
         NBEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=9Q89104iGF+LU8/tt0Oe9SvC0OlEixcDrGIteWNLS9o=;
        b=KIBjSt66qPJbo5vENteiS4kiGH2mssS3GAAB4bzPkOsyk0vPUzFTb+vuT4l3PaYQ1k
         ByVrC2lawvWjKNAP95FInYVXK7ghaN0EHzwgxKLs3wj5dWwSkoIcpBtrl9HIGT1oYZXj
         jfy5nyQoE9mJkEQMp61Z9dThQsJOuaOTcfi3LWIJTg5I+EqLU8887/i1EVKeHT4oIpbR
         dWMpDf2tJ81Y0lIQxk5hI1Ey2DD4lEA4SJVBZpCZXvPaRyJHgmt5ClIHnzpRXVxBvxEn
         GvvlZZ3LY7SGgFi7+whBUmugleXRvF2DiJnkaWsaWpsiT5e8nz+GTZ5RgJtH/gHHgdMU
         OsBA==
X-Gm-Message-State: AOAM532peY8OLC2TVA5x3RWXPlF0E5opagwY2rzcnsPI6QrPL5BC/ZjM
	xw+ZYqatNjFfNugbMK6coCxwi2EU2I8=
X-Google-Smtp-Source: ABdhPJxHJ1Fq16rGO9qTVsYZg3SpXii+bHrJUQ5hPE3IKxpNc6va5CsFyvopRjop6jvO9zO/SpnJmQ==
X-Received: by 2002:a05:6512:2511:b0:479:1723:a743 with SMTP id be17-20020a056512251100b004791723a743mr2684634lfb.433.1654255554148;
        Fri, 03 Jun 2022 04:25:54 -0700 (PDT)
Received: from shc.milas.spb.ru ([188.243.217.78])
        by smtp.gmail.com with ESMTPSA id q17-20020ac246f1000000b004790105d0cfsm1546121lfo.16.2022.06.03.04.25.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Jun 2022 04:25:53 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Fri,  3 Jun 2022 14:25:40 +0300
Message-Id: <20220603112540.51644-8-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220603112540.51644-1-eagle.alexander923@gmail.com>
References: <20220603112540.51644-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220603_042558_522937_7885C56A 
X-CRM114-Status: GOOD (  15.88  )
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
X-Spam-Status: No, score=-3.0 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [RFC 8/8] ARM: OMAP: Move am33xx_sdram_size() into EMIF module and make it generic
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 arch/arm/mach-omap/Makefile                   |  2 +-
 arch/arm/mach-omap/am33xx_generic.c           | 53 +------------------
 arch/arm/mach-omap/am33xx_scrm.c              |  4 +-
 arch/arm/mach-omap/emif4.c                    | 50 +++++++++++++++++
 .../mach-omap/include/mach/am33xx-silicon.h   |  1 -
 arch/arm/mach-omap/include/mach/emif4.h       |  2 +
 6 files changed, 58 insertions(+), 54 deletions(-)

diff --git a/arch/arm/mach-omap/Makefile b/arch/arm/mach-omap/Makefile
index 2c7f577856..88c6b1d594 100644
--- a/arch/arm/mach-omap/Makefile
+++ b/arch/arm/mach-omap/Makefile
@@ -21,7 +21,7 @@ obj-$(CONFIG_ARCH_OMAP3) += omap3_generic.o auxcr.o
 pbl-$(CONFIG_ARCH_OMAP3) += omap3_generic.o auxcr.o
 obj-$(CONFIG_ARCH_OMAP4) += omap4_generic.o omap4_clock.o
 pbl-$(CONFIG_ARCH_OMAP4) += omap4_generic.o omap4_clock.o
-obj-pbl-$(CONFIG_ARCH_AM33XX) += am33xx_generic.o am33xx_clock.o am33xx_mux.o am3xxx.o
+obj-pbl-$(CONFIG_ARCH_AM33XX) += am33xx_generic.o am33xx_clock.o am33xx_mux.o am3xxx.o emif4.o
 obj-pbl-$(CONFIG_ARCH_AM35XX) += am3xxx.o emif4.o
 obj-$(CONFIG_ARCH_AM33XX) += am33xx_scrm.o
 obj-$(CONFIG_ARCH_OMAP3) += omap3_clock.o
diff --git a/arch/arm/mach-omap/am33xx_generic.c b/arch/arm/mach-omap/am33xx_generic.c
index 2727ebdf7f..bfe5b3dc73 100644
--- a/arch/arm/mach-omap/am33xx_generic.c
+++ b/arch/arm/mach-omap/am33xx_generic.c
@@ -342,59 +342,10 @@ void am33xx_config_sdram(const struct am33xx_emif_regs *regs)
 	writel(regs->sdram_config, emif4 + EMIF4_SDRAM_CONFIG);
 }
 
-/**
- * am335x_sdram_size - read back SDRAM size from sdram_config register
- *
- * @return: The SDRAM size
- */
-unsigned long am335x_sdram_size(void)
-{
-	uint32_t sdram_config = readl(IOMEM(AM33XX_EMIF4_BASE + EMIF4_SDRAM_CONFIG));
-	int rows, cols, width, banks;
-	unsigned long size;
-
-	rows = ((sdram_config >> 7) & 0x7) + 9;
-	cols = (sdram_config & 0x7) + 8;
-
-	switch ((sdram_config >> 14) & 0x3) {
-	case 0:
-		width = 4;
-		break;
-	case 1:
-		width = 2;
-		break;
-	default:
-		return 0;
-	}
-
-	switch ((sdram_config >> 4) & 0x7) {
-	case 0:
-		banks = 1;
-		break;
-	case 1:
-		banks = 2;
-		break;
-	case 2:
-		banks = 4;
-		break;
-	case 3:
-		banks = 8;
-		break;
-	default:
-		return 0;
-	}
-
-	size = (1 << rows) * (1 << cols) * banks * width;
-
-	debug("%s: sdram_config: 0x%08x cols: %2d rows: %2d width: %2d banks: %2d size: 0x%08lx\n",
-			__func__, sdram_config, cols, rows, width, banks, size);
-
-	return size;
-}
-
 void __noreturn am335x_barebox_entry(void *boarddata)
 {
-	barebox_arm_entry(0x80000000, am335x_sdram_size(), boarddata);
+	barebox_arm_entry(0x80000000,
+			  emif4_sdram_size(IOMEM(AM33XX_EMIF4_BASE)), boarddata);
 }
 
 void am33xx_config_io_ctrl(int ioctrl)
diff --git a/arch/arm/mach-omap/am33xx_scrm.c b/arch/arm/mach-omap/am33xx_scrm.c
index 0f13a9deb6..e10e80ce31 100644
--- a/arch/arm/mach-omap/am33xx_scrm.c
+++ b/arch/arm/mach-omap/am33xx_scrm.c
@@ -21,10 +21,12 @@
 #include <asm/barebox-arm.h>
 #include <asm/memory.h>
 #include <mach/am33xx-silicon.h>
+#include <mach/emif4.h>
 
 static int am33xx_scrm_probe(struct device_d *dev)
 {
-	return arm_add_mem_device("ram0", 0x80000000, am335x_sdram_size());
+	return arm_add_mem_device("ram0", 0x80000000,
+				  emif4_sdram_size(IOMEM(AM33XX_EMIF4_BASE)));
 }
 
 static __maybe_unused struct of_device_id am33xx_scrm_dt_ids[] = {
diff --git a/arch/arm/mach-omap/emif4.c b/arch/arm/mach-omap/emif4.c
index e61cf00c57..b5a53e8c63 100644
--- a/arch/arm/mach-omap/emif4.c
+++ b/arch/arm/mach-omap/emif4.c
@@ -65,6 +65,56 @@
 #define EMIF4_DDR1_PWRDN_EN	(0x1 << 6)
 #define EMIF4_DDR1_READ_LAT	(0x6 << 0)
 
+/**
+ * emif4_sdram_size - read back SDRAM size from sdram_config register
+ *
+ * @return: The SDRAM size
+ */
+unsigned long emif4_sdram_size(const void __iomem *emif4)
+{
+	uint32_t sdram_config = readl(emif4 + EMIF4_SDRAM_CONFIG);
+	int rows, cols, width, banks;
+	unsigned long size;
+
+	rows = ((sdram_config >> 7) & 0x7) + 9;
+	cols = (sdram_config & 0x7) + 8;
+
+	switch ((sdram_config >> 14) & 0x3) {
+	case 0:
+		width = 4;
+		break;
+	case 1:
+		width = 2;
+		break;
+	default:
+		return 0;
+	}
+
+	switch ((sdram_config >> 4) & 0x7) {
+	case 0:
+		banks = 1;
+		break;
+	case 1:
+		banks = 2;
+		break;
+	case 2:
+		banks = 4;
+		break;
+	case 3:
+		banks = 8;
+		break;
+	default:
+		return 0;
+	}
+
+	size = (1 << rows) * (1 << cols) * banks * width;
+
+	debug("SDRAM_CONFIG: 0x%08x, cols: %2d, rows: %2d, width: %2d, banks: %2d, size: 0x%08lx\n",
+	      sdram_config, cols, rows, width, banks, size);
+
+	return size;
+}
+
 /*
  *  - Init the emif4 module for DDR access
  *  - Early init routines, called from flash or SRAM.
diff --git a/arch/arm/mach-omap/include/mach/am33xx-silicon.h b/arch/arm/mach-omap/include/mach/am33xx-silicon.h
index 671706ff49..74b0b7638e 100644
--- a/arch/arm/mach-omap/include/mach/am33xx-silicon.h
+++ b/arch/arm/mach-omap/include/mach/am33xx-silicon.h
@@ -220,7 +220,6 @@ void am33xx_config_ddr_data(const struct am33xx_ddr_data *data, int macronr);
 void am335x_sdram_init(int ioctrl, const struct am33xx_cmd_control *cmd_ctrl,
 			const struct am33xx_emif_regs *emif_regs,
 			const struct am33xx_ddr_data *ddr_data);
-unsigned long am335x_sdram_size(void);
 void am335x_barebox_entry(void *boarddata);
 
 #endif
diff --git a/arch/arm/mach-omap/include/mach/emif4.h b/arch/arm/mach-omap/include/mach/emif4.h
index 10ecfe6c6b..00702e60e8 100644
--- a/arch/arm/mach-omap/include/mach/emif4.h
+++ b/arch/arm/mach-omap/include/mach/emif4.h
@@ -45,6 +45,8 @@
 #define EMIF4_DDR_PHY_CTRL_2					0xec
 #define EMIF4_IODFT_TLGC					0x60
 
+unsigned long emif4_sdram_size(const void __iomem *emif4);
+
 void am35xx_emif4_init(const void __iomem *emif4);
 
 #endif /* endif _EMIF_H_ */
-- 
2.32.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


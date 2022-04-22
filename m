Delivery-date: Fri, 22 Apr 2022 11:23:47 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nhpW0-00B0Dd-AF
	for lore@lore.pengutronix.de; Fri, 22 Apr 2022 11:23:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nhpVx-0001GQ-Nz
	for lore@pengutronix.de; Fri, 22 Apr 2022 11:23:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NaAjx5+Nc4/1BguBt/pZLQ1nU4j4G6/LrkrBu/nb43k=; b=JDlIXOnK7mCaVS
	rDl0qWkXWdT/MJTpElYhWzcTQPZmI+NCKIG1SfxZCUhEed0cl2UTgV3ozQTiPJF0c3LXeXQaTE7zp
	rRRAQcaRTfrKSO+P5SWV0xQyecpOpndu/l0bPkfvHNNRyZdb1OxJH+NLo3pOXZJLhusigWm1SX3Rg
	t3YeYZtq5YLLt0TB9rOSCGyZp4/6aYPZonyEgWKxkc/QezVLmPauup8LcGrRF1NVp/6p/nR16ug0Z
	yNNE2l7WR8kKbxZq+qzQKYQuRTfq9EgAOJmNrLqg+IXW9F1mkrC+b4TTfx7kOEd5zE7EI9BelXrSw
	1hZol3HB/0FB3PeReHvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nhpUN-00HORg-90; Fri, 22 Apr 2022 09:22:07 +0000
Received: from mail-lj1-x232.google.com ([2a00:1450:4864:20::232])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nhpUI-00HOQN-HQ
 for barebox@lists.infradead.org; Fri, 22 Apr 2022 09:22:03 +0000
Received: by mail-lj1-x232.google.com with SMTP id bf11so8871895ljb.7
 for <barebox@lists.infradead.org>; Fri, 22 Apr 2022 02:21:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=JtTlZ2J3DxFDwUmYabTrzK+XJx/Dpc60k0EUUEY5QL4=;
 b=KfBs2QuPOPa+RayRHiUWEAsEBMw2jenWOn0zezjnnTxrEVIVbcw+uhz0nwT5OPhDHY
 +C0ThYvqsHgUlXm05buE7fLThc2vaceTZjvoZ2Uk1Orp6YV5KIY5/Lkqgr9YIrEHEm2b
 MU7CHXnlz7fJFVBRIr41eRF4JBzjsYESnu+7YdIVfAnwafxMIBUaTepXIpS9N31d6p8H
 t8eetK8Ez7zcUlNPfgy3LVi4KeZ8MUGpRH+p88X/EwA3VTIrW4FouQPFjb7Um5FQExSg
 CT1GvPkoAZlyf5X/eJcbFJbvVty9AC8WnOWx9I2Dtnd6tbsuY8ENIRu6zXGDOmJhgruF
 KR7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=JtTlZ2J3DxFDwUmYabTrzK+XJx/Dpc60k0EUUEY5QL4=;
 b=xYTIk9vPf7GaBYIjeST73KQQsc1l+NXu7f7W2pMLHiTm+RCgXEmcAp+naRqjoMx+Ng
 sRThTI7RMNixV/MidvDaBDRkYrzTIMOU9ZOU9LyaVmt4Gp6CQbbSm1JLlXEfMZmXMqaC
 q7XOu/Wg/gKMC1A9TUVqsm+2mu8RrL30DKxCX3qe8i+Z+FBYqIlWIvY9dEnn9UPngWVA
 /1em56FvmjTDpS0YpaZY2mbMmc4gVVZDu91RKG99p2OJVt8eoV0n2N5Kjb2jNVXidTBD
 QDZLYXz9M5pGvYrcQumDI1XmCF0ik/OAjjXfqa6JQdGdDLjWntd1VWYQR8m6A2judvtN
 Rozw==
X-Gm-Message-State: AOAM531aAdAfvHoE8LlKlvmPIuxX8ia6UgvKx813n624aIuGglCm2zIR
 DJz/Jg45B3WP6k4MFfuDChRDmpGFUB3jMw==
X-Google-Smtp-Source: ABdhPJzYSnONexLM5jqrJRyzUrFb3qweERjP2zjS0ulIEwRrIVaAW0+4DHZJZsqKVX4TulrMBbVw8Q==
X-Received: by 2002:a05:651c:1783:b0:249:43a8:b6f9 with SMTP id
 bn3-20020a05651c178300b0024943a8b6f9mr2188418ljb.273.1650619317621; 
 Fri, 22 Apr 2022 02:21:57 -0700 (PDT)
Received: from shc.milas.spb.ru ([188.243.217.78])
 by smtp.gmail.com with ESMTPSA id
 q8-20020a2ea688000000b0024d9e272511sm157924lje.121.2022.04.22.02.21.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 Apr 2022 02:21:57 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Fri, 22 Apr 2022 12:21:55 +0300
Message-Id: <20220422092155.41183-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220422_022202_611934_087C070A 
X-CRM114-Status: GOOD (  12.82  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] serial: ns16550: Reuse 16550 serial for tegra UART
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The initialization for the tegra UART is the same as for the standard 16550,
so there is no reason to keep a separate structure for it in the driver.

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 drivers/serial/serial_ns16550.c | 14 +++-----------
 1 file changed, 3 insertions(+), 11 deletions(-)

diff --git a/drivers/serial/serial_ns16550.c b/drivers/serial/serial_ns16550.c
index 464ae1aebc..f93a89ab95 100644
--- a/drivers/serial/serial_ns16550.c
+++ b/drivers/serial/serial_ns16550.c
@@ -366,11 +366,6 @@ static __maybe_unused struct ns16550_drvdata jz_drvdata = {
 	.init_port = ns16550_jz_init_port,
 };
 
-static __maybe_unused struct ns16550_drvdata tegra_drvdata = {
-	.init_port = ns16550_serial_init_port,
-	.linux_console_name = "ttyS",
-};
-
 static __maybe_unused struct ns16550_drvdata rpi_drvdata = {
 	.init_port = rpi_init_port,
 	.linux_console_name = "ttyS",
@@ -528,6 +523,9 @@ static struct of_device_id ns16550_serial_dt_ids[] = {
 	}, {
 		.compatible = "marvell,armada-38x-uart",
 		.data = &ns16550_drvdata,
+	}, {
+		.compatible = "nvidia,tegra20-uart",
+		.data = &ns16550_drvdata,
 	},
 #if IS_ENABLED(CONFIG_ARCH_OMAP)
 	{
@@ -541,12 +539,6 @@ static struct of_device_id ns16550_serial_dt_ids[] = {
 		.data = &omap_drvdata,
 	},
 #endif
-#if IS_ENABLED(CONFIG_ARCH_TEGRA)
-	{
-		.compatible = "nvidia,tegra20-uart",
-		.data = &tegra_drvdata,
-	},
-#endif
 #if IS_ENABLED(CONFIG_MACH_MIPS_XBURST)
 	{
 		.compatible = "ingenic,jz4740-uart",
-- 
2.32.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


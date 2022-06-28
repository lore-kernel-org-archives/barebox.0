Delivery-date: Tue, 28 Jun 2022 10:06:18 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o66Eg-00014x-Gk
	for lore@lore.pengutronix.de; Tue, 28 Jun 2022 10:06:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o66Ei-0006eu-BL
	for lore@pengutronix.de; Tue, 28 Jun 2022 10:06:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=YDSg5k6lfpfgxaNLEJ86b92bVz2gDKMhf0nEi2MVjtc=; b=P4sYmnDF6mFI8VzjB/389xrNit
	2kHM8KAn+zsNNiuLvp/+DOT52g3cj0odlYyDD4VzpBCYPbn5MmYeI4rioUc3m+dv81g7HtXFWF3Uf
	M/pUKowP5ZK4pSJNT4kn2S44CRcDlm7Tl5pwWc8TX0n4HCSWBI58ie4Tg858ud1w9wj3OVwBhfuBg
	DjahtDQbZrW7TrhBVoDDGYmdadjzUCRaDVVbJBJBmEtPuXbH+cB56NuquGmZaFhgFw/9VfU5f1/T8
	kuJu3OKNTVfVTWB5wCn9D2Q+zwEnrBWhcdtqjhu3DDOLX0ZOhiQKIKaOBmCFERx79oCWA4NgjA7bP
	JeSoIvAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o66Cy-0058ew-FL; Tue, 28 Jun 2022 08:04:28 +0000
Received: from mail-lj1-x22e.google.com ([2a00:1450:4864:20::22e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o66Ct-0058d4-GG
	for barebox@lists.infradead.org; Tue, 28 Jun 2022 08:04:24 +0000
Received: by mail-lj1-x22e.google.com with SMTP id a39so12759855ljq.11
        for <barebox@lists.infradead.org>; Tue, 28 Jun 2022 01:04:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=YDSg5k6lfpfgxaNLEJ86b92bVz2gDKMhf0nEi2MVjtc=;
        b=qL17cYeWc66A0e3o9h48YNx1T1op4k+kpW3mIXiZyusV3tF4g3aFFyJ9HbWCmpf1cj
         NDvVICunKiviH0RlzOvSLbxZo5hzkGD6v+ma2hxBfVXGMijsDbcRAgEiNskOrPjuzwaD
         KrqCbctZCmQ+borI4d98DJcJrXRoF2pJSSfmKqdlSnYrZvOkK1o34kIzDQz0/X5xt0ZA
         J/vJcu9w56T8Q/1rxHJEv4HtDwh8Ynf/W7MLb9kT3O5QDMnC2+U+5QsDHNy5eu0NCALX
         mzL1topKdrBt37JctTzzE3Ez1jg4NGlQl7AfZ2jpwchcqS8y0Nwi6rwvqXTpVqbPTF0i
         4DkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=YDSg5k6lfpfgxaNLEJ86b92bVz2gDKMhf0nEi2MVjtc=;
        b=cUW2AtuFUfGw5A/s6lgQW+GLjtAKj58hqSEDqvm1tykJyFTxgrl43aJ/d2eWw7FFEs
         Om7/NRJUhns9sbNpUbSFFkuCogCcA5YFsxHc/qK+SJ0t+zY5U4eignPMBcanLV5F0wlt
         LtsKz96rlgBxz5KIbUbO4VqkwOtBo1vnunK2UMrJNwZwYdlYPKvZqVl86lrtEohqFkKp
         Vu/YKzmoVjggY/QJPimZ6idpc/og8k+Foxi62O2PqOUbldRh4O4rE3ldcyKnwjmG6leE
         tmsV4QrSgD1GG61dssxLZIbAFK4/WcYFkZruUdhmODDQ1pSz9VYefidGN5CsPGMoTvQr
         QR5A==
X-Gm-Message-State: AJIora82jtt/Gb4ioF+tLN0VNid354Oq4KcgCZI/URyVmz1QvXaQv3/L
	E4ngnLTYxgCBn/EQSepByx0HymFrUoU=
X-Google-Smtp-Source: AGRyM1t1l/xP7QvHv/XEQ6kbW8fLQEdD4utVJnpT6M3figUv8PE8gTBZiS41Dd/Vr3N/1Fme3bFyAw==
X-Received: by 2002:a2e:8881:0:b0:255:7790:25e6 with SMTP id k1-20020a2e8881000000b00255779025e6mr8839212lji.525.1656403460720;
        Tue, 28 Jun 2022 01:04:20 -0700 (PDT)
Received: from shc.milas.spb.ru ([188.243.217.78])
        by smtp.gmail.com with ESMTPSA id 10-20020a2e164a000000b00255cb942318sm1473907ljw.110.2022.06.28.01.04.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Jun 2022 01:04:20 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Tue, 28 Jun 2022 11:04:14 +0300
Message-Id: <20220628080414.28960-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220628_010423_559104_91B65B62 
X-CRM114-Status: GOOD (  13.75  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] serial: ns16550: Reuse 48MHz default clock definition for non-DT OMAP boards
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 arch/arm/mach-omap/omap_devices.c | 8 +-------
 drivers/serial/serial_ns16550.c   | 8 ++++----
 2 files changed, 5 insertions(+), 11 deletions(-)

diff --git a/arch/arm/mach-omap/omap_devices.c b/arch/arm/mach-omap/omap_devices.c
index beae59f74d..022616ba54 100644
--- a/arch/arm/mach-omap/omap_devices.c
+++ b/arch/arm/mach-omap/omap_devices.c
@@ -1,7 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0-only
 
 #include <driver.h>
-#include <platform_data/serial-ns16550.h>
 #include <asm/armlinux.h>
 
 #include <mach/omap3-devices.h>
@@ -16,15 +15,10 @@ void omap_add_sram0(resource_size_t base, resource_size_t size)
 	add_mem_device("sram0", base, size, IORESOURCE_MEM_WRITEABLE);
 }
 
-static struct NS16550_plat serial_plat = {
-	.clock = 48000000,      /* 48MHz (APLL96/2) */
-	.shift = 2,
-};
-
 struct device_d *omap_add_uart(int id, unsigned long base)
 {
 	return add_generic_device("omap-uart", id, NULL, base, 1024,
-				  IORESOURCE_MEM | IORESOURCE_MEM_8BIT, &serial_plat);
+				  IORESOURCE_MEM | IORESOURCE_MEM_8BIT, NULL);
 }
 
 #if defined(CONFIG_DRIVER_VIDEO_OMAP)
diff --git a/drivers/serial/serial_ns16550.c b/drivers/serial/serial_ns16550.c
index 07f951e535..5998065c56 100644
--- a/drivers/serial/serial_ns16550.c
+++ b/drivers/serial/serial_ns16550.c
@@ -313,7 +313,7 @@ static void ns16550_probe_dt(struct device_d *dev, struct ns16550_priv *priv)
 	u32 offset;
 	u32 width = 1;
 
-	if (!IS_ENABLED(CONFIG_OFDEVICE))
+	if (!IS_ENABLED(CONFIG_OFDEVICE) || !np)
 		return;
 
 	of_property_read_u32(np, "clock-frequency", &priv->plat.clock);
@@ -368,7 +368,7 @@ static __maybe_unused struct ns16550_drvdata omap_drvdata = {
 	.linux_earlycon_name = "omap8250",
 };
 
-static __maybe_unused struct ns16550_drvdata am43xx_drvdata = {
+static __maybe_unused struct ns16550_drvdata omap_clk48m_drvdata = {
 	.init_port = ns16550_omap_init_port,
 	.linux_console_name = "ttyO",
 	.clk_default = 48000000,
@@ -561,7 +561,7 @@ static struct of_device_id ns16550_serial_dt_ids[] = {
 		.data = &omap_drvdata,
 	}, {
 		.compatible = "ti,am4372-uart",
-		.data = &am43xx_drvdata,
+		.data = &omap_clk48m_drvdata,
 	},
 #endif
 #if IS_ENABLED(CONFIG_MACH_MIPS_XBURST)
@@ -584,7 +584,7 @@ static struct of_device_id ns16550_serial_dt_ids[] = {
 static __maybe_unused struct platform_device_id ns16550_serial_ids[] = {
 	{
 		.name = "omap-uart",
-		.driver_data = (unsigned long)&omap_drvdata,
+		.driver_data = (unsigned long)&omap_clk48m_drvdata,
 	}, {
 		/* sentinel */
 	},

base-commit: 18767e06f63166a0f1db0292ffaff5347c138d54
-- 
2.32.0




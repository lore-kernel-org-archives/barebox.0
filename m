Delivery-date: Mon, 24 Oct 2022 13:52:11 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1omw03-000dax-98
	for lore@lore.pengutronix.de; Mon, 24 Oct 2022 13:52:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1omw01-0003ei-Mw
	for lore@pengutronix.de; Mon, 24 Oct 2022 13:52:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=19J1O1zf/KroDQ2FICHVV4THml6CixRpBhQH0B2g/b0=; b=FIZb3CbxSao2zfKRrUBU7ys+p8
	XFzZ/Tww6DKBkNvAFD2FM1OJQtCYOPWOMQklWReVyTUtyBX85Ep5J/CsfNHEk/YMDu5uZ4a+rH2Dm
	fYskYr3hc+mXcei0eBGkhCvNAa5HaRicBAID3SgY4Mkni4TDAUrFWTPOGZFs0zGOqKGHKa3b6fk/J
	lqbgpOwRY6UxML1b0fMZbR4mfiwrQ5wfUuN+cStLybedby0Awww0JMCbwZhEBuxj4amKfjpyqNfs6
	pP7SEsXe+SWIBIjmKbI1y/jcjEJ/JhGdJ6DWMsmvToaHS/IOaZluB+UJ/jdBPIIROxkurJbxplLRJ
	xcGRy7/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omvyD-001DKe-6K; Mon, 24 Oct 2022 11:50:17 +0000
Received: from mail-lj1-x234.google.com ([2a00:1450:4864:20::234])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omvy5-001DF8-GF
	for barebox@lists.infradead.org; Mon, 24 Oct 2022 11:50:11 +0000
Received: by mail-lj1-x234.google.com with SMTP id bs14so12415809ljb.9
        for <barebox@lists.infradead.org>; Mon, 24 Oct 2022 04:50:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=19J1O1zf/KroDQ2FICHVV4THml6CixRpBhQH0B2g/b0=;
        b=H/863QGJ0vdHlcjCswF+ocIWXhH8y3abCYV5luVa+x3M7qLfNTFWiDk4skKzSdQO3+
         skaVMYXm5Fd3zEOHKqMkvO9I0OaWz96/TMXRwQsxPrB3Sy9/LcP097X9rVStGseT7OM6
         W0NiJOma5RE6wq+FvS0gMQ6L00VvXZ/AQm6z/ihfSx8IAJHE+yMiEAT1mJFx4nFrTmLb
         TsxOqsGx5EiMU3r3br0UPuaw+5tGelFqdKrtVs6gNcOjlpKudE/O82oryUEIlnqg6w6d
         5yU0m/CG0GomUkfAru1GiSQHpAgO/ZXRuDNtvSguKmNBq9TiTzTAQUrprISiwKJG0vN2
         u5Kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=19J1O1zf/KroDQ2FICHVV4THml6CixRpBhQH0B2g/b0=;
        b=DFnzQ98C5Vp71shu37e1L63gLQ4rH0XsFsI/wTVvnrjDESS2qljaI2XKx96gfAxKWe
         u5yc9nVuY7LzXloB1dwPOEA3FqNT/Mkbr7XYqN4GL+rlK29o43rQ1rCYUfvo24OeOdSw
         SNXlZU8GL5s1wCIYq3oV4MfBSeb1xlKncGptuEF935QbQEbJ11f8L5K2roMAqZFlZZd2
         fPdRSTGXLxlFMOcgOdmqgoiZLQnRjJZFKJrkWJsM7Xi5jJUdlDnXOZ8F36tqbf6W0N9Z
         PEkvhvllc+M30+IJpBMSAJn1QXUXPdrUdiThv+qGxwlqi5BG5L32jkGK+V3x3tr4T8i6
         82KA==
X-Gm-Message-State: ACrzQf13kY9lJudc2+ri7PPdaB7FkT5CWE+vlx7+JUUNOoFv+Vy1bFIi
	vM+LozhHApVNnHJso9LkYjwhC/ZB8s4=
X-Google-Smtp-Source: AMsMyM45zLW1xjmfn4R2akpO0uPH3K5/lb6zTehYNqxj1TECZO4RsEiuOXjGYiuMmgB2MMuFu0oLQA==
X-Received: by 2002:a2e:b891:0:b0:26f:ec43:4f98 with SMTP id r17-20020a2eb891000000b0026fec434f98mr11716640ljp.501.1666612199723;
        Mon, 24 Oct 2022 04:49:59 -0700 (PDT)
Received: from localhost.localdomain ([188.243.217.78])
        by smtp.gmail.com with ESMTPSA id j13-20020a056512344d00b0049482adb3basm4484892lfr.63.2022.10.24.04.49.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Oct 2022 04:49:59 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Mon, 24 Oct 2022 14:49:40 +0300
Message-Id: <20221024114940.26197-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221024_045009_560070_E22ECDC9 
X-CRM114-Status: UNSURE (   9.32  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] clk: imx5: Add support for watchdog clock
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This adds a dummy clock definition for i.MX-50/51/53 CPUs,
what makes the driver work.

Fixes: 87cad179648 ("watchdog: imxwd: get and enable clock")
Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 drivers/clk/imx/clk-imx5.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/clk/imx/clk-imx5.c b/drivers/clk/imx/clk-imx5.c
index c7a1818bd7..81af9a9c88 100644
--- a/drivers/clk/imx/clk-imx5.c
+++ b/drivers/clk/imx/clk-imx5.c
@@ -205,6 +205,8 @@ static void __init mx5_clocks_common_init(struct device_d *dev, void __iomem *ba
 	writel(0xffffffff, base + CCM_CCGR6);
 	writel(0xffffffff, base + CCM_CCGR7);
 
+	clks[IMX5_CLK_DUMMY] = clk_fixed("dummy", 0);
+
 	if (!IS_ENABLED(CONFIG_COMMON_CLK_OF_PROVIDER) || !dev->device_node) {
 		clks[IMX5_CLK_CKIL] = clk_fixed("ckil", 32768);
 		clks[IMX5_CLK_OSC] = clk_fixed("osc", 24000000);
@@ -312,6 +314,7 @@ static int __init mx50_clocks_init(struct device_d *dev, void __iomem *regs)
 	clkdev_add_physbase(clks[IMX5_CLK_PER_ROOT], MX50_PWM1_BASE_ADDR, "per");
 	clkdev_add_physbase(clks[IMX5_CLK_PER_ROOT], MX50_PWM2_BASE_ADDR, "per");
 	clkdev_add_physbase(clks[IMX5_CLK_AHB], MX50_OTG_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[IMX5_CLK_DUMMY], MX50_WDOG1_BASE_ADDR, NULL);
 
 	return 0;
 }
@@ -392,6 +395,8 @@ static int __init mx51_clocks_init(struct device_d *dev, void __iomem *regs)
 	clkdev_add_physbase(clks[IMX5_CLK_IPG], MX51_ATA_BASE_ADDR, NULL);
 	clkdev_add_physbase(clks[IMX5_CLK_PER_ROOT], MX51_PWM1_BASE_ADDR, "per");
 	clkdev_add_physbase(clks[IMX5_CLK_PER_ROOT], MX51_PWM2_BASE_ADDR, "per");
+	clkdev_add_physbase(clks[IMX5_CLK_DUMMY], MX51_WDOG_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[IMX5_CLK_DUMMY], MX51_WDOG2_BASE_ADDR, NULL);
 
 	if (IS_ENABLED(CONFIG_DRIVER_VIDEO_IMX_IPUV3))
 		mx51_clocks_ipu_init(regs);
@@ -488,6 +493,8 @@ static int __init mx53_clocks_init(struct device_d *dev, void __iomem *regs)
 	clkdev_add_physbase(clks[IMX5_CLK_AHB], MX53_SATA_BASE_ADDR, NULL);
 	clkdev_add_physbase(clks[IMX5_CLK_PER_ROOT], MX53_PWM1_BASE_ADDR, "per");
 	clkdev_add_physbase(clks[IMX5_CLK_PER_ROOT], MX53_PWM2_BASE_ADDR, "per");
+	clkdev_add_physbase(clks[IMX5_CLK_DUMMY], MX53_WDOG1_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[IMX5_CLK_DUMMY], MX53_WDOG2_BASE_ADDR, NULL);
 
 	if (IS_ENABLED(CONFIG_DRIVER_VIDEO_IMX_IPUV3))
 		mx53_clocks_ipu_init(regs);
-- 
2.37.3




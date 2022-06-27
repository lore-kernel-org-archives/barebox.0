Delivery-date: Mon, 27 Jun 2022 12:35:34 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o5m5b-00GGpk-CN
	for lore@lore.pengutronix.de; Mon, 27 Jun 2022 12:35:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o5m5c-0002Ys-SM
	for lore@pengutronix.de; Mon, 27 Jun 2022 12:35:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bEdDkdm8xTOe7voQ7NIr89JjPlekADdCYkKk9vXKzuM=; b=y2VToa0Aa9rTWQCxWrOfpdOcur
	oPnVM5JzE/zY5yak/f1LgTujpqFZAbOAqpXq45X4S6Z8JVdM16HgXK6Xy12lv+Jn+dsWBoADEF4U1
	XFxadiTlZ1KXWx7WHMEIhOBZ3kS7AbEcbkOD6bO/UAwmzh1R08FY9VdR8ZTVu773nhUglswBN83h3
	TIY6GqPjyj/c8Rl6jnQvO3WvlxKUmTg5+J8NY41zDx7OoadMjwzJRm1AElYIiHnrk5pNnBvsixpks
	0ttQDqUGdsafykixNrPWmCypGlWOJ7pj6QHxwXvcpt3Y/YZya27gwoE2qWDLSqbB4/ydr2WWeKM2j
	ZYVvM/gg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o5m4P-0008to-74; Mon, 27 Jun 2022 10:34:17 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o5m4E-0008pw-Bz
	for barebox@lists.infradead.org; Mon, 27 Jun 2022 10:34:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1o5m4D-0002DQ-5s; Mon, 27 Jun 2022 12:34:05 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1o5m48-002zgl-UX; Mon, 27 Jun 2022 12:34:04 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1o5m4B-001SBN-B4; Mon, 27 Jun 2022 12:34:03 +0200
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon, 27 Jun 2022 12:33:58 +0200
Message-Id: <20220627103358.34487-3-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220627103358.34487-1-u.kleine-koenig@pengutronix.de>
References: <20220627103358.34487-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=2015; h=from:subject; bh=QPdzRoc1V1E8wq74ZNdMGnHB/fLJn2cXW4SuznaMy3w=; b=owEBbQGS/pANAwAKAcH8FHityuwJAcsmYgBiuYeArFn/xJgR0nAW9KU3ZZbJEln48W6mArD/QXj7 CRh4RTCJATMEAAEKAB0WIQR+cioWkBis/z50pAvB/BR4rcrsCQUCYrmHgAAKCRDB/BR4rcrsCUExB/ 0a/ZmztF5h8aTeLGzKhFizgPfgE3ZkpdqwZP9OfHumePWvS4vwUVzBfapx8BOoXLQg3S54BuIsJLW8 +rEImyZfqXb4OIvHkMl+arji9rqDq5ldg7snkwDV/S6Yg2pNV4vpyfFambKp/G2Av4TFLmKZvb87ao fGxKUllEfhgyAkE4NMwmB79VdeNdgCYW+T4rS7ImGQGQPMzPxIpfDFNiAEv6/2xVIa5Wc9nHRG8rHJ jmDoYWewCdLB3y0GhdDT6Ix/49R58uDUXIt4tBfs7CMwfRlLQUIMqkwdx04RtJWOXYyjgT1adm0U+P UiW0XP2OMEGKKmp0WCB4pPTjc9Fr31
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220627_033406_469829_5CA6F30F 
X-CRM114-Status: GOOD (  11.52  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 3/3] clk: imx25: Add support for watchdog clock
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This is necessary to make the watchdog driver probe successfully.

Fixes: 87cad179648c ("watchdog: imxwd: get and enable clock")
Signed-off-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
---
 arch/arm/mach-imx/include/mach/imx25-regs.h | 1 +
 drivers/clk/imx/clk-imx25.c                 | 4 ++++
 2 files changed, 5 insertions(+)

diff --git a/arch/arm/mach-imx/include/mach/imx25-regs.h b/arch/arm/mach-imx/include/mach/imx25-regs.h
index d63669e1e0e7..bf89701fe048 100644
--- a/arch/arm/mach-imx/include/mach/imx25-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx25-regs.h
@@ -56,6 +56,7 @@
 #define MX25_KPP_BASE_ADDR		0x43fa8000
 #define MX25_RNGB_BASE_ADDR		0x53fb0000
 #define MX25_SDMA_BASE_ADDR		0x53fd4000
+#define MX25_WATCHDOG_BASE_ADDR		0x53fdc000
 #define MX25_USB_BASE_ADDR		0x53ff4000
 #define MX25_USB_OTG_BASE_ADDR			(MX25_USB_BASE_ADDR + 0x0000)
 /*
diff --git a/drivers/clk/imx/clk-imx25.c b/drivers/clk/imx/clk-imx25.c
index 612edb222789..2bd0d6004b52 100644
--- a/drivers/clk/imx/clk-imx25.c
+++ b/drivers/clk/imx/clk-imx25.c
@@ -143,6 +143,9 @@ static int imx25_ccm_probe(struct device_d *dev)
 	clks[rngb_ipg] = imx_clk_gate("rngb_ipg", "ipg", base + CCM_CGCR2, 3);
 	clks[dryice_ipg] = imx_clk_gate("dryice_ipg", "ipg", base + CCM_CGCR1, 8);
 
+	/* reserved in datasheet, but used as wdt in FSL kernel */
+	clks[wdt_ipg] = imx_clk_gate("wdt_ipg", "ipg", base + CCM_CGCR2, 19);
+
 	clkdev_add_physbase(clks[per15], MX25_UART1_BASE_ADDR, NULL);
 	clkdev_add_physbase(clks[per15], MX25_UART2_BASE_ADDR, NULL);
 	clkdev_add_physbase(clks[per15], MX25_UART3_BASE_ADDR, NULL);
@@ -168,6 +171,7 @@ static int imx25_ccm_probe(struct device_d *dev)
 	clkdev_add_physbase(clks[scc_ipg], MX25_SCC_BASE_ADDR, "ipg");
 	clkdev_add_physbase(clks[rngb_ipg], MX25_RNGB_BASE_ADDR, "ipg");
 	clkdev_add_physbase(clks[dryice_ipg], MX25_DRYICE_BASE_ADDR, NULL);
+	clkdev_add_physbase(clks[wdt_ipg], MX25_WATCHDOG_BASE_ADDR, NULL);
 
 	return 0;
 }
-- 
2.36.1




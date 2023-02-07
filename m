Delivery-date: Tue, 07 Feb 2023 21:13:18 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pPUL9-00HMtq-U6
	for lore@lore.pengutronix.de; Tue, 07 Feb 2023 21:13:18 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pPUL7-0006Lr-DU
	for lore@pengutronix.de; Tue, 07 Feb 2023 21:13:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=zqBf+ULP+mcKfBneAl3mECNqfSJ985yAVxCv1KHtYl4=; b=xEooJTHAMm0nmgDIBeNGy1Azyh
	xcYLe4JNmaN//9tT8X9kviB8W7+AsUBaKzO0h/xAlNeyO+JVAnXI0nWCz1Hc+jS5MMtg/0z7XcAI4
	V+20bHh9Sbcpk3k17NJKi9yYRkiy2+acZTG5H1sdftkgPCRySlb+8R4VuR2qx5kytx98aGNn8RrK4
	57UG83E9SxDg1RN5b1VQRua3rwWYui1B3AHrRlXOUVD00Iyn2COG0dCI/h0Jtuv33yC3qcFmi57oX
	0UU4jzqQqhUhorYWObUEZuQigR6AFtYQT2cHG0RKnXGupuRiMYgK/Zo0Y8LxskP/nHB/imx0QgWHg
	JwrYaVRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPUJx-00DIVH-DG; Tue, 07 Feb 2023 20:12:05 +0000
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPUJt-00DIUp-6W
	for barebox@lists.infradead.org; Tue, 07 Feb 2023 20:12:02 +0000
Received: by lynxeye.de (Postfix, from userid 501)
	id D10ECE74013; Tue,  7 Feb 2023 21:11:29 +0100 (CET)
Received: from astat.fritz.box (a89-183-230-107.net-htp.de [89.183.230.107])
	by lynxeye.de (Postfix) with ESMTPA id 8C9DFE74004
	for <barebox@lists.infradead.org>; Tue,  7 Feb 2023 21:11:28 +0100 (CET)
From: Lucas Stach <l.stach@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue,  7 Feb 2023 21:11:24 +0100
Message-Id: <20230207201125.1092406-1-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230207_121201_427936_EED9A59A 
X-CRM114-Status: GOOD (  10.76  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] ddr: imx8m: add support for 3720 MHz DDR rate
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@pengutronix.de>

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/ddr/imx8m/ddrphy_utils.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/ddr/imx8m/ddrphy_utils.c b/drivers/ddr/imx8m/ddrphy_utils.c
index 98e6ae648aed..7f863a1736c6 100644
--- a/drivers/ddr/imx8m/ddrphy_utils.c
+++ b/drivers/ddr/imx8m/ddrphy_utils.c
@@ -17,6 +17,7 @@
  * clock / 2, which is therefor transfer rate / 4.  */
 enum ddr_rate {
 	DDR_4000,
+	DDR_3720,
 	DDR_3200,
 	DDR_3000,
 	DDR_2600, /* Unused */
@@ -52,6 +53,7 @@ static const struct imx8mm_fracpll_config {
 	bool valid;
 } imx8mm_fracpll_table[DDR_NUM_RATES] = {
 	[DDR_4000] = { .valid = true, .r1 = MDIV(250) | PDIV(3) | SDIV(1), .r2 = 0 },
+	[DDR_3720] = { .valid = true, .r1 = MDIV(310) | PDIV(2) | SDIV(2), .r2 = 0 },
 	[DDR_3200] = { .valid = true, .r1 = MDIV(300) | PDIV(9) | SDIV(0), .r2 = 0 },
 	[DDR_3000] = { .valid = true, .r1 = MDIV(250) | PDIV(8) | SDIV(0), .r2 = 0 },
 	[DDR_2600] = { .valid = true, .r1 = MDIV(325) | PDIV(3) | SDIV(2), .r2 = 0 },
@@ -335,6 +337,7 @@ void ddrphy_init_set_dfi_clk(unsigned int drate_mhz, enum ddrc_type type)
 
 	switch (drate_mhz) {
 	case 4000: drate = DDR_4000; break;
+	case 3720: drate = DDR_3720; break;
 	case 3200: drate = DDR_3200; break;
 	case 3000: drate = DDR_3000; break;
 	case 2400: drate = DDR_2400; break;
-- 
2.39.1




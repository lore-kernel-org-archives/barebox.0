Delivery-date: Mon, 05 Feb 2024 08:46:45 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rWtgh-003xME-2r
	for lore@lore.pengutronix.de;
	Mon, 05 Feb 2024 08:46:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rWtgh-0003M6-By
	for lore@pengutronix.de; Mon, 05 Feb 2024 08:46:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UPJVtpSAP2C+ARk0i3IykuUGmXxrcvsezLT6CJQM2kw=; b=jMb8VgHhQlpM5RKzCPM169HDBO
	gb0eWUNZK1VgCDuQU9G8gfuFWp9MeE09HaM4vnFtghRBDfe7L5n9Hgkkv5HHclkKa16dooCYYz8N0
	P4mGIOeIj7eDspoR1YL//fmCH0nezIS/Vy2sohMS89bTqVYk3mosNqFH3a72BfH1vw63J6u2iI6cY
	Wb1KglMTUtR2BV8bzGFAN3YpQO7RGs/Z5lG7Ho4/qRQgIThO4VQW4uMWNzLUNzm0oOUE4BImQp3gL
	q5vBrIxxrRxOEvxukMwqLmANUtSgQXkco/n93AzjaWMhd+nHil4GxcITCFDxxfdIx0NQsAMaP9MTN
	KndIva/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rWtg6-00000002KlW-3Oou;
	Mon, 05 Feb 2024 07:46:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rWtfz-00000002KhM-1G7p
	for barebox@lists.infradead.org;
	Mon, 05 Feb 2024 07:46:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rWtfu-00031M-Fm; Mon, 05 Feb 2024 08:45:54 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rWtfu-004aUJ-3R; Mon, 05 Feb 2024 08:45:54 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rWtfu-008PtL-01;
	Mon, 05 Feb 2024 08:45:54 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon,  5 Feb 2024 08:45:46 +0100
Message-Id: <20240205074553.2005284-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240205074553.2005284-1-s.hauer@pengutronix.de>
References: <20240205074553.2005284-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240204_234559_399775_178F5045 
X-CRM114-Status: GOOD (  14.07  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 1/8] i2c: lpi2c: determine clk rate during probe
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The clock rate is not expected to change during runtime, so we can
determine it during probe instead of later when actually transferring
messages. This helps us to integrate PBL support into the driver where
we don't have clk_get_rate() available.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/i2c/busses/i2c-imx-lpi2c.c | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/i2c/busses/i2c-imx-lpi2c.c b/drivers/i2c/busses/i2c-imx-lpi2c.c
index f28a445601..91203d90be 100644
--- a/drivers/i2c/busses/i2c-imx-lpi2c.c
+++ b/drivers/i2c/busses/i2c-imx-lpi2c.c
@@ -104,6 +104,7 @@ struct lpi2c_imx_struct {
 	unsigned int		txfifosize;
 	unsigned int		rxfifosize;
 	enum lpi2c_imx_mode	mode;
+	unsigned long		clk_rate;
 };
 
 static void lpi2c_imx_intctrl(struct lpi2c_imx_struct *lpi2c_imx,
@@ -197,23 +198,19 @@ static void lpi2c_imx_stop(struct lpi2c_imx_struct *lpi2c_imx)
 static int lpi2c_imx_config(struct lpi2c_imx_struct *lpi2c_imx)
 {
 	u8 prescale, filt, sethold, datavd;
-	unsigned int clk_rate, clk_cycle, clkhi, clklo;
+	unsigned int clk_cycle, clkhi, clklo;
 	enum lpi2c_imx_pincfg pincfg;
 	unsigned int temp;
 
 	lpi2c_imx_set_mode(lpi2c_imx);
 
-	clk_rate = clk_get_rate(lpi2c_imx->clks[0].clk);
-	if (!clk_rate)
-		return -EINVAL;
-
 	if (lpi2c_imx->mode == HS || lpi2c_imx->mode == ULTRA_FAST)
 		filt = 0;
 	else
 		filt = 2;
 
 	for (prescale = 0; prescale <= 7; prescale++) {
-		clk_cycle = clk_rate / ((1 << prescale) * lpi2c_imx->bitrate)
+		clk_cycle = lpi2c_imx->clk_rate / ((1 << prescale) * lpi2c_imx->bitrate)
 			    - 3 - (filt >> 1);
 		clkhi = DIV_ROUND_UP(clk_cycle, I2C_CLK_RATIO + 1);
 		clklo = clk_cycle - clkhi;
@@ -493,6 +490,8 @@ static int lpi2c_imx_probe(struct device *dev)
 	if (ret)
 		return ret;
 
+	lpi2c_imx->clk_rate = clk_get_rate(lpi2c_imx->clks[0].clk);
+
 	temp = readl(lpi2c_imx->base + LPI2C_PARAM);
 	lpi2c_imx->txfifosize = 1 << (temp & 0x0f);
 	lpi2c_imx->rxfifosize = 1 << ((temp >> 8) & 0x0f);
-- 
2.39.2




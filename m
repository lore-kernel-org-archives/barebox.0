Delivery-date: Sun, 27 Apr 2025 15:48:13 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u92Mf-005v7D-0r
	for lore@lore.pengutronix.de;
	Sun, 27 Apr 2025 15:48:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u92Me-0004FY-HQ
	for lore@pengutronix.de; Sun, 27 Apr 2025 15:48:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MpVTJ7GHkv1M/YEA4cvcMx96addnh4TdDB91ZbvIclE=; b=FMbjiz/Wg2gVMO
	xlefcn4m4QF5hgchvEtgSjhFqFeEy7wHzh+eTMc0oLT/y7nn38qm0jVSC1kJyMZKeQR7KhpmDtagj
	cKY8KYvhm8f+1z1HnEXNGRSk8vpQlSv4pImvicfWIgtp4Q6tz0vFc6NkJRLZYJl+Dlgfx+g7T9zqq
	3taIzUKFIPywhmbzAE3cJGyW9CrnG/mW7/ha50cIGYDuKPX5NWG+Lh1GKv/nWv8d6PCvSXS+xxR3+
	RUCLvEmw+06I6d/qOmh0ZwW+i8NlIq25/GRz2fEQ2FxypmZTP9Ohm97lnbZchM3rGsHWlTIpNbkEe
	rRGqkcH1Jcj2dJ428W8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u92Lw-00000003cZf-1L0E;
	Sun, 27 Apr 2025 13:47:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u92JW-00000003cNZ-3d4S
	for barebox@lists.infradead.org;
	Sun, 27 Apr 2025 13:45:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u92JS-0003Ns-P8; Sun, 27 Apr 2025 15:44:54 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u92JS-002N6C-1s;
	Sun, 27 Apr 2025 15:44:54 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u92JS-002g2g-1W;
	Sun, 27 Apr 2025 15:44:54 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Sun, 27 Apr 2025 15:44:53 +0200
Message-Id: <20250427134453.637482-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250427_064458_902955_B9A20357 
X-CRM114-Status: GOOD (  11.55  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master] video: IPUv3-LDB: fix LVDS serial clock configuration
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The precision improvement in Commit af3d99396a8b ("clk: imx: improve
precision of AV PLL to 1 Hz") broke the LVDS boot splash on the
imx6q-skov-reve-mi1010ait-1cp1 board, because recalculating the clock
rates broke the 7-fold relation between 7MHz pixel clock and the serial
clock.

Before:

pll5_video (rate 980041992
    pll5_post_div (rate 490020996
        pll5_video_div (rate 490020996
            ldb_di0_sel (rate 490020996		   <-- 49MHz / 7 = 7 MHz
                ldb_di0_div_3_5 (rate 140005998                        |
                    ldb_di0_podf (rate 70002999                        ≈
                        ipu1_di0_sel (rate 70002999                    |
                            ipu1_di0 (rate 70002999                    v
                                2400000.ipu@2400000.of_di0_pixel (rate 70002992

After:

pll5_video (rate 980042001
    pll5_post_div (rate 980042001
        pll5_video_div (rate 980042001
            ldb_di0_sel (rate 980042001		  <-- 98MHz / 7 = 14 MHz
                ldb_di0_div_3_5 (rate 280012000                        |
                    ldb_di0_podf (rate 140006000                       ≉
                        ipu1_di0_sel (rate 140006000                   |
                            ipu1_di0 (rate 140006000                   v
                                2400000.ipu@2400000.of_di0_pixel (rate 70002992

By adding an explicit clk_set_rate to the 7-fold frequency before
setting the pixel clock, we restore the ratio again:

pll5_video (rate 980042000
        pll5_post_div (rate 980042000
            pll5_video_div (rate 490021000
                ldb_di0_sel (rate 490021000              <-- 49MHz / 7 = 7 MHz
                    ldb_di0_div_3_5 (rate 140006000                      |
                        ldb_di0_podf (rate 70003000                      ≈
                            ipu1_di0_sel (rate 70003000                  |
                                ipu1_di0 (rate 70003000                  v
                                    2400000.ipu@2400000.of_di0_pixel (rate 70002992

Fixes: af3d99396a8b ("clk: imx: improve precision of AV PLL to 1 Hz")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
Cc: Philipp Zabel <p.zabel@pengutronix.de>

Philipp, I wasn't completely sure about whether the dual frequency
calculation is correct, can you take a look?
---
 drivers/video/imx-ipu-v3/imx-ldb.c | 25 ++++++++++++++++++-------
 1 file changed, 18 insertions(+), 7 deletions(-)

diff --git a/drivers/video/imx-ipu-v3/imx-ldb.c b/drivers/video/imx-ipu-v3/imx-ldb.c
index ae7d3548267a..8b9f6d00f6cb 100644
--- a/drivers/video/imx-ipu-v3/imx-ldb.c
+++ b/drivers/video/imx-ipu-v3/imx-ldb.c
@@ -138,9 +138,10 @@ static int imx_ldb_prepare(struct imx_ldb_channel *imx_ldb_ch, struct fb_videomo
 	return 0;
 }
 
-static int imx6q_set_clock(struct imx_ldb *ldb, int ipuno, int dino, int chno, unsigned long pixclk)
+static int imx6q_set_clock(struct imx_ldb *ldb, int ipuno, int dino, int chno,
+			   unsigned long serial_clk, unsigned long di_clk)
 {
-	struct clk *diclk, *ldbclk;
+	struct clk *diclk, *ldbclk, *ldbdiclk;
 	char *clkname;
 	int ret;
 
@@ -160,14 +161,24 @@ static int imx6q_set_clock(struct imx_ldb *ldb, int ipuno, int dino, int chno, u
 		return PTR_ERR(ldbclk);
 	}
 
+	clkname = basprintf("ldb_di%d_sel", chno);
+	ldbdiclk = clk_lookup(clkname);
+	free(clkname);
+	if (IS_ERR(ldbdiclk)) {
+		dev_err(ldb->dev, "failed to get ldb di clk: %pe\n", ldbdiclk);
+		return PTR_ERR(ldbdiclk);
+	}
+
 	ret = clk_set_parent(diclk, ldbclk);
 	if (ret) {
 		dev_err(ldb->dev, "failed to set display clock parent: %pe\n", ERR_PTR(ret));
 		return ret;
 	}
 
-	clk_set_rate(clk_get_parent(ldbclk), pixclk);
-	clk_set_rate(ldbclk, pixclk);
+	clk_set_rate(ldbdiclk, serial_clk);
+
+	clk_set_rate(clk_get_parent(ldbclk), di_clk);
+	clk_set_rate(ldbclk, di_clk);
 
 	return 0;
 }
@@ -189,10 +200,10 @@ static int imx6q_ldb_prepare(struct imx_ldb_channel *imx_ldb_ch, int di,
 		pixclk *= 2;
 
 	if (dual) {
-		imx6q_set_clock(ldb, ipuno, dino, 0, pixclk);
-		imx6q_set_clock(ldb, ipuno, dino, 1, pixclk);
+		imx6q_set_clock(ldb, ipuno, dino, 0, pixclk * 7, pixclk);
+		imx6q_set_clock(ldb, ipuno, dino, 1, pixclk * 7, pixclk);
 	} else {
-		imx6q_set_clock(ldb, ipuno, dino, imx_ldb_ch->chno, pixclk);
+		imx6q_set_clock(ldb, ipuno, dino, imx_ldb_ch->chno, pixclk * 7, pixclk);
 	}
 
 	val = readl(gpr3);
-- 
2.39.5




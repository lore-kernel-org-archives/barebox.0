Delivery-date: Tue, 08 Mar 2022 13:22:06 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nRYqs-004dND-It
	for lore@lore.pengutronix.de; Tue, 08 Mar 2022 13:22:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nRYqq-0002XK-Sm
	for lore@pengutronix.de; Tue, 08 Mar 2022 13:22:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bqJKWidGXec8XvuGsHGWCK0u1+zI3nH5qJq3vZPFuzc=; b=4OQhM3FNLL17OZ
	CAAWIX2f9+qkVxP8b41x0HHfcUupLQOYD78Z7tzb+MPhF38Kvtg6fC8Djl6YMAEhmyDrcqKc8E/SZ
	MjFzsxvdCLFEQ5AcD5fnvl5bcRJu7iDo2HpBDZ3yrfzgJ39LrIimEiBDXZH38qpp6m95kf9Xlx9gi
	Tfs+uKbvcY129VD0NOqQrTSACJt5DgylEDghaUvei9/dradvfoB/82pCX2CYmbifTg3a5BJPtjkfW
	N7fb1Bl70zBlk7avXOd/FuCU0veE5tI1ZxQLKjBIw6hDCgTilKpEyj3jW91RWI8BkuU9xXHaivVlM
	j2GsTvRwxJ77gGdLyGDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nRYph-004KRm-0t; Tue, 08 Mar 2022 12:20:53 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nRYpS-004KL5-JW
 for barebox@lists.infradead.org; Tue, 08 Mar 2022 12:20:41 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nRYpR-00027b-7Y; Tue, 08 Mar 2022 13:20:37 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1nRYpQ-001YFq-Ed; Tue, 08 Mar 2022 13:20:36 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  8 Mar 2022 13:20:27 +0100
Message-Id: <20220308122028.3857376-7-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220308122028.3857376-1-s.hauer@pengutronix.de>
References: <20220308122028.3857376-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220308_042038_791173_DD4BB379 
X-CRM114-Status: GOOD (  13.55  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 6/7] clk: imx6: do pfd workaround unconditionally
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The i.MX6D and i.MX6Q SoC variants need a workaround for the PFDs which
may not work properly when they are not gated/ungated once during
startup. We currently have this workaround twice, once in the clock
driver and once in imx6_init_lowlevel(). The latter will be removed, but
before doing that the workaround in the clock driver is done
unconditionally and not only when the IPU driver is enabled.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/imx/clk-imx6.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/clk/imx/clk-imx6.c b/drivers/clk/imx/clk-imx6.c
index 4f843b8ba7..06cc992b72 100644
--- a/drivers/clk/imx/clk-imx6.c
+++ b/drivers/clk/imx/clk-imx6.c
@@ -588,10 +588,6 @@ static void imx6_add_video_clks(void __iomem *anab, void __iomem *cb, struct dev
 	clks[IMX6QDL_CLK_IPU1_SEL]         = imx_clk_mux("ipu1_sel",         cb + 0x3c, 9,  2, ipu_sels,          ARRAY_SIZE(ipu_sels));
 	clks[IMX6QDL_CLK_IPU2_SEL]         = imx_clk_mux("ipu2_sel",         cb + 0x3c, 14, 2, ipu_sels,          ARRAY_SIZE(ipu_sels));
 
-	disable_anatop_clocks(anab);
-
-	imx6q_mmdc_ch1_mask_handshake(cb);
-
 	if (cpu_mx6_has_err009219()) {
 		/*
 		 * The LDB_DI0/1_SEL muxes should be read-only due to a hardware
@@ -807,6 +803,10 @@ static int imx6_ccm_probe(struct device_d *dev)
 
 	clkdev_add_physbase(clks[IMX6QDL_CLK_IPG], MX6_OCOTP_BASE_ADDR, NULL);
 
+	disable_anatop_clocks(anatop_base);
+
+	imx6q_mmdc_ch1_mask_handshake(ccm_base);
+
 	if (IS_ENABLED(CONFIG_DRIVER_VIDEO_IMX_IPUV3))
 		imx6_add_video_clks(anatop_base, ccm_base, dev->device_node);
 
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


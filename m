Delivery-date: Tue, 08 Mar 2022 13:22:18 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nRYr4-004dOl-1I
	for lore@lore.pengutronix.de; Tue, 08 Mar 2022 13:22:18 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nRYr1-0002b3-O1
	for lore@pengutronix.de; Tue, 08 Mar 2022 13:22:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yggNvDe7nu3+Jk7whlgfpV/0tjUfn3hs6ZY7kJGebbU=; b=RzZCQBZ107So11
	45ekhoBTWNwee2S1YP9evgmQ0oifaKrkXHFCMNWDRT/AXhENSGnsX3AtYVCGx8Hwxt2XHYiGHZfZ8
	fuD7FmzzEt43mvzIIq+6P2vdHUf6vP0Tmzm+CYJz6CvJUDZNsHNKyjKh6ekpqcl5SlvFb3I8ggPyl
	kTIGKHbNkXpiG/OMipTtNyLfbodMqUS37fj2MwUzPhdc3lCxU66ONWHY2OoObllmcNWUohN/BINpr
	klhuYg2fHPGI9ZHimbH7wPiMQXTMPxU6skdGTAX4HCSNeNr9Ua06yFWeGRwc39sWj1heJHSIAG0zh
	ln7C1j8isOFE/jVGjBpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nRYpr-004KZk-S3; Tue, 08 Mar 2022 12:21:03 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nRYpa-004KPg-Dn
 for barebox@lists.infradead.org; Tue, 08 Mar 2022 12:20:47 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nRYpR-00027X-7S; Tue, 08 Mar 2022 13:20:37 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1nRYpQ-001YF6-CI; Tue, 08 Mar 2022 13:20:36 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  8 Mar 2022 13:20:22 +0100
Message-Id: <20220308122028.3857376-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220308122028.3857376-1-s.hauer@pengutronix.de>
References: <20220308122028.3857376-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220308_042046_504697_9FC627E6 
X-CRM114-Status: GOOD (  12.64  )
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
Subject: [PATCH 1/7] clk: imx6: Add hdmi_isfr clk
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The hdmi_isfr clk is requested and enabled by the hdmi driver, but it is
never registered, so effectively a dummy clk is used in the hdmi driver.
Add the clk and its parents so that the real clk is used.
One of the parents is pll3_pfd1_540m which happens to be enabled in
our pfd clock workaround in imx6_init_lowlevel(). This patch is
necessary when that workaround is removed later.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/imx/clk-imx6.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/imx/clk-imx6.c b/drivers/clk/imx/clk-imx6.c
index e3afcf7858..aa5876d21b 100644
--- a/drivers/clk/imx/clk-imx6.c
+++ b/drivers/clk/imx/clk-imx6.c
@@ -152,7 +152,7 @@ static const char *cko1_sels[] = {
 	"pll2_bus",
 	"pll1_sys",
 	"pll5_video",
-	"dummy",
+	"video_27m",
 	"axi",
 	"enfc",
 	"ipu1_di0",
@@ -612,6 +612,8 @@ static void imx6_add_video_clks(void __iomem *anab, void __iomem *cb, struct dev
 	clks[IMX6QDL_CLK_IPU2_DI0_PRE]     = imx_clk_divider("ipu2_di0_pre",     "ipu2_di0_pre_sel",  cb + 0x38, 3,  3);
 	clks[IMX6QDL_CLK_IPU2_DI1_PRE]     = imx_clk_divider("ipu2_di1_pre",     "ipu2_di1_pre_sel",  cb + 0x38, 12, 3);
 
+	clks[IMX6QDL_CLK_HDMI_IAHB]    = imx_clk_gate2("hdmi_iahb",     "ahb",               cb + 0x70, 0);
+	clks[IMX6QDL_CLK_HDMI_ISFR]    = imx_clk_gate2("hdmi_isfr",     "mipi_core_cfg",     cb + 0x70, 4);
 	clks[IMX6QDL_CLK_IPU1]         = imx_clk_gate2("ipu1",          "ipu1_podf",         cb + 0x74, 0);
 	clks[IMX6QDL_CLK_IPU1_DI0]     = imx_clk_gate2("ipu1_di0",      "ipu1_di0_sel",      cb + 0x74, 2);
 	clks[IMX6QDL_CLK_IPU1_DI1]     = imx_clk_gate2("ipu1_di1",      "ipu1_di1_sel",      cb + 0x74, 4);
@@ -620,6 +622,8 @@ static void imx6_add_video_clks(void __iomem *anab, void __iomem *cb, struct dev
 	clks[IMX6QDL_CLK_LDB_DI0]      = imx_clk_gate2("ldb_di0",       "ldb_di0_podf",      cb + 0x74, 12);
 	clks[IMX6QDL_CLK_LDB_DI1]      = imx_clk_gate2("ldb_di1",       "ldb_di1_podf",      cb + 0x74, 14);
 	clks[IMX6QDL_CLK_IPU2_DI1]     = imx_clk_gate2("ipu2_di1",      "ipu2_di1_sel",      cb + 0x74, 10);
+	clks[IMX6QDL_CLK_MIPI_CORE_CFG] = imx_clk_gate2("mipi_core_cfg", "video_27m", cb + 0x74, 16);
+	clks[IMX6QDL_CLK_VIDEO_27M]    = imx_clk_fixed_factor("video_27m", "pll3_pfd1_540m", 1, 20);
 
 	clk_set_parent(clks[IMX6QDL_CLK_IPU1_DI0_SEL], clks[IMX6QDL_CLK_IPU1_DI0_PRE]);
 	clk_set_parent(clks[IMX6QDL_CLK_IPU1_DI1_SEL], clks[IMX6QDL_CLK_IPU1_DI1_PRE]);
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


Delivery-date: Tue, 19 Dec 2023 14:22:41 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rFa3V-004a8E-2M
	for lore@lore.pengutronix.de;
	Tue, 19 Dec 2023 14:22:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rFa3V-00017N-5p
	for lore@pengutronix.de; Tue, 19 Dec 2023 14:22:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0zqEydXkDrKXwDZnCkLo3TiUfwpMz42V6Q8AhuJj8Gw=; b=K4NbkNkN6dtVW0OumQ7w+YPq2B
	g3cDPBlfD0152aOgxBtiA5U3lJ7O2aPIk1mBedP7qIZw+jHg8RnYCA5P7Cp75VrnCiN4PKUi3ANgC
	5NKl7vpHNQuz3b05mjp+9FJgxgRyKQiifuS6mkj6RCYJT7R9Ex3ktiD5y6JX/XO2tGpxPvYgRUSJb
	GfrthqRbBH6+Pn7KI83yAtCjiDkJDAQk+P87v9k4kYpf1AvY+5A+wS43tn14JZcOjtL+Hbp8QBAEE
	PFB3YDB4Rt4EJLjplplCiVbb3hV3WZybqitDI2rrZQeFrpGyzZP0plXIhjDH/6L+RFHykwXsmvyi7
	T2XH2ETw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFa2K-00EB99-1X;
	Tue, 19 Dec 2023 13:21:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFa2G-00EB75-2j
	for barebox@lists.infradead.org;
	Tue, 19 Dec 2023 13:21:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rFa2F-0000WZ-9G; Tue, 19 Dec 2023 14:21:23 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rFa2D-0001o7-Px; Tue, 19 Dec 2023 14:21:22 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1rFa2E-000255-2i;
	Tue, 19 Dec 2023 14:21:22 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 19 Dec 2023 14:21:21 +0100
Message-Id: <20231219132122.7964-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231219132122.7964-1-s.hauer@pengutronix.de>
References: <20231219132122.7964-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231219_052124_890487_A8220000 
X-CRM114-Status: GOOD (  11.07  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/2] clk: layerscape: move chipinfo_ls1012a further up
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Cosmetic change to keep the chipinfo entries ordered.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/clk-qoric.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/clk/clk-qoric.c b/drivers/clk/clk-qoric.c
index 895810ccd1..49859077f6 100644
--- a/drivers/clk/clk-qoric.c
+++ b/drivers/clk/clk-qoric.c
@@ -203,6 +203,13 @@ static void __init t2080_init_periph(struct clockgen *cg)
 	cg->fman[0] = cg->hwaccel[0];
 }
 
+static const struct clockgen_chipinfo chipinfo_ls1012a = {
+	.compat = "fsl,ls1012a-clockgen",
+	.cmux_groups = { &ls1012a_cmux },
+	.cmux_to_group = { 0, -1 },
+	.pll_mask = 0x03,
+};
+
 static const struct clockgen_chipinfo chipinfo_ls1021a = {
 	.compat = "fsl,ls1021a-clockgen",
 	.cmux_groups = { &t1023_cmux },
@@ -238,13 +245,6 @@ static const struct clockgen_chipinfo chipinfo_ls1088a = {
 	.flags = CG_VER3 | CG_LITTLE_ENDIAN,
 };
 
-static const struct clockgen_chipinfo chipinfo_ls1012a = {
-	.compat = "fsl,ls1012a-clockgen",
-	.cmux_groups = { &ls1012a_cmux },
-	.cmux_to_group = { 0, -1 },
-	.pll_mask = 0x03,
-};
-
 static const struct clockgen_chipinfo chipinfo_ls2080a = {
 	.compat = "fsl,ls2080a-clockgen",
 	.cmux_groups = { &clockgen2_cmux_cga12, &clockgen2_cmux_cgb },
-- 
2.39.2




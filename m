Delivery-date: Sun, 16 Jan 2022 22:34:52 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n9DAq-0040hx-P7
	for lore@lore.pengutronix.de; Sun, 16 Jan 2022 22:34:52 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n9DAp-0000bc-3U
	for lore@pengutronix.de; Sun, 16 Jan 2022 22:34:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qAdjU9e843GtSebtIKTs8wJyKnujhgqKoLFZG7PyyIs=; b=I++2EbfBPIC0i3
	m8j6fMTRighUA4E3RijOneUC/rW/Cg22X0w76/tdXDv9nha9XX0S2tByUqETURHO8+mpO9F37NCqz
	fXqyF+g69BABtA5dGoyEmdCsIQ6jA5B/mTw5ED31c7Hh+Ty1RxIuhXGBD9Nw8rtFjmooWm/A6Lnad
	hknoEdtn4s46KkKyDZryXa7dlAsbnvnbit5CqLag9bvPrrujU7mxI3W34gbJJa45sflJkJL/YBvKg
	UKxRGsQxylwiF58ctnjGcsV0RU/StdLQJJJ7HKq2NjF11AZCS+X9HFA5d4F5CSqhPurFTK2+wtHZ5
	jxXUrjK+JUQKxrRe2ylw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n9D9N-00D1wh-SS; Sun, 16 Jan 2022 21:33:21 +0000
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n9D9D-00D1tZ-AV
 for barebox@lists.infradead.org; Sun, 16 Jan 2022 21:33:14 +0000
Received: by lynxeye.de (Postfix, from userid 501)
 id B8C4EE7422A; Sun, 16 Jan 2022 22:32:35 +0100 (CET)
Received: from astat.fritz.box (a89-183-97-132.net-htp.de [89.183.97.132])
 by lynxeye.de (Postfix) with ESMTPA id 6516CE74214
 for <barebox@lists.infradead.org>; Sun, 16 Jan 2022 22:32:34 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
To: barebox@lists.infradead.org
Date: Sun, 16 Jan 2022 22:32:20 +0100
Message-Id: <20220116213221.3466936-2-dev@lynxeye.de>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20220116213221.3466936-1-dev@lynxeye.de>
References: <20220116213221.3466936-1-dev@lynxeye.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220116_133311_571220_B2BE960C 
X-CRM114-Status: GOOD (  18.55  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/3] soc: imx: gpcv2: split PGC domain probe in two passes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Currently it is possible that the platform device for a nested PGC
domain is added before the parent PGC device is there, which leads to
-EPROBE_DEFER when probing the driver. With normal probe this isn't
an issue, as the probe will be retried. With deep-probe this is fatal,
as the PGC domain devices aren't probed from DT, but via registration
of platform devices from the GPC driver, so the usual deep-probe
approach to ensure the devices are probed before the lookup isn't
working in this case.

Make sure to register the PGC domain platform devices in the correct
order to avoid the EPROBE_DEFER altogether.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 drivers/soc/imx/gpcv2.c | 22 ++++++++++++++++++++--
 1 file changed, 20 insertions(+), 2 deletions(-)

diff --git a/drivers/soc/imx/gpcv2.c b/drivers/soc/imx/gpcv2.c
index bc373ecf40cc..8abeb15d0378 100644
--- a/drivers/soc/imx/gpcv2.c
+++ b/drivers/soc/imx/gpcv2.c
@@ -429,7 +429,7 @@ static int imx_gpcv2_probe(struct device_d *dev)
 	struct device_node *pgc_np, *np;
 	struct resource *res;
 	void __iomem *base;
-	int ret;	
+	int ret, pass = 0;
 
 	pgc_np = of_get_child_by_name(dev->device_node, "pgc");
 	if (!pgc_np) {
@@ -445,10 +445,23 @@ static int imx_gpcv2_probe(struct device_d *dev)
 
 	domain_data = of_device_get_match_data(dev);
 
+	/*
+	 * Run two passes for the registration of the PGC domain platform
+	 * devices: first all devices that are not part of a power-domain
+	 * themselves, then all the others. This avoids -EPROBE_DEFER being
+	 * returned for nested domains, that need their parent PGC domains
+	 * to be present on probe.
+	 */
+again:
 	for_each_child_of_node(pgc_np, np) {
-		struct device_d *pd_dev;
+		bool child_domain = of_property_read_bool(np, "power-domains");
 		struct imx_pgc_domain *domain;
+		struct device_d *pd_dev;
 		u32 domain_index;
+
+		if ((pass == 0 && child_domain) || (pass == 1 && !child_domain))
+			continue;
+
 		ret = of_property_read_u32(np, "reg", &domain_index);
 		if (ret) {
 			dev_err(dev, "Failed to read 'reg' property\n");
@@ -481,6 +494,11 @@ static int imx_gpcv2_probe(struct device_d *dev)
 			return ret;
 	}
 
+	if (pass == 0) {
+		pass++;
+		goto again;
+	}
+
 	return 0;
 }
 
-- 
2.31.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


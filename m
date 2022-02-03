Delivery-date: Thu, 03 Feb 2022 11:49:30 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nFZgA-004bcy-VA
	for lore@lore.pengutronix.de; Thu, 03 Feb 2022 11:49:30 +0100
Received: from bombadil.infradead.org ([198.137.202.133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nFZg8-0006Uq-ID
	for lore@pengutronix.de; Thu, 03 Feb 2022 11:49:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I28+c+LOLygiHCCMslM9MezdMiYsK+dsWnbuvX7ygpw=; b=HJzSvcE1rIU4Jq
	qphfKOcNIHns8sCP634FkN/ve0h/zAOkFCa5PhPv4jNcc2vvzBBr9IjthleiNhvrcxCYNf9MmKpun
	eXjrRuiJ0YbNC9vxX/6mIgUkXzIHbEJrvLQ7pMRzYzVxOSSvJ5lBNH5XNFEIQlsF/Csw9e/rHCl+R
	GYByParyL2Ddpfk79MjP3eretIMk2wejhew4wTU3NU0Wu5lT8wSofeGigiQRGuvhIRj+FEOnrb948
	mFkkJ2WIEgDIowJnthV2PXlne2U0N8gRiLr9+KtOpR//TytIwO408wRU/E4hw0vRwjrGLj4zrH7JB
	gooawsNnxAbeZFOw2XbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nFZen-000qpX-8d; Thu, 03 Feb 2022 10:48:05 +0000
Received: from metis.ext.pengutronix.de ([85.220.165.71])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nFZef-000qQz-SP
 for barebox@lists.infradead.org; Thu, 03 Feb 2022 10:47:59 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1nFZcg-0005yG-9h; Thu, 03 Feb 2022 11:45:54 +0100
Received: from ore by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1nFZcf-00DFex-My; Thu, 03 Feb 2022 11:45:53 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Thu,  3 Feb 2022 11:45:48 +0100
Message-Id: <20220203104552.3158202-3-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220203104552.3158202-1-o.rempel@pengutronix.de>
References: <20220203104552.3158202-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220203_024757_943002_76F7433A 
X-CRM114-Status: GOOD (  15.48  )
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
X-SA-Exim-Connect-IP: 198.137.202.133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v3 2/6] ARM: bcm2835 mbox: drop driver mode and probe on first
 request
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Currently we have multiple driver depending on the bcm2835 mbox. Since
the probe dependency currently can't be solved properly we have
different issue depending with or without deep-probe.

To make it work with and without deep-probe, we need to init MBOX on
first request.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/arm/mach-bcm283x/mbox.c | 52 +++++++++++++++---------------------
 1 file changed, 22 insertions(+), 30 deletions(-)

diff --git a/arch/arm/mach-bcm283x/mbox.c b/arch/arm/mach-bcm283x/mbox.c
index 9839683d03..4b14afcfe4 100644
--- a/arch/arm/mach-bcm283x/mbox.c
+++ b/arch/arm/mach-bcm283x/mbox.c
@@ -13,6 +13,7 @@
 #include <dma.h>
 #include <init.h>
 #include <io.h>
+#include <of_address.h>
 
 #include <mach/mbox.h>
 
@@ -108,6 +109,21 @@ static void dump_buf(struct bcm2835_mbox_hdr *buffer)
 }
 #endif
 
+static int bcm2835_mbox_probe(void)
+{
+	struct device_node *mbox_node;
+
+	mbox_node = of_find_compatible_node(NULL, NULL, "brcm,bcm2835-mbox");
+	if (!mbox_node) {
+		pr_err("Missing mbox node\n");
+		return -ENOENT;
+	}
+
+	mbox_base = of_iomap(mbox_node, 0);
+
+	return 0;
+}
+
 int bcm2835_mbox_call_prop(u32 chan, struct bcm2835_mbox_hdr *buffer)
 {
 	int ret;
@@ -115,6 +131,12 @@ int bcm2835_mbox_call_prop(u32 chan, struct bcm2835_mbox_hdr *buffer)
 	struct bcm2835_mbox_tag_hdr *tag;
 	int tag_index;
 
+	if (!mbox_base) {
+		ret = bcm2835_mbox_probe();
+		if (ret)
+			return ret;
+	}
+
 	pr_debug("mbox: TX buffer\n");
 	dump_buf(buffer);
 
@@ -150,33 +172,3 @@ int bcm2835_mbox_call_prop(u32 chan, struct bcm2835_mbox_hdr *buffer)
 
 	return 0;
 }
-
-static int bcm2835_mbox_probe(struct device_d *dev)
-{
-	struct resource *iores;
-
-	iores = dev_request_mem_resource(dev, 0);
-	if (IS_ERR(iores)) {
-		dev_err(dev, "could not get memory region\n");
-		return PTR_ERR(iores);
-	}
-	mbox_base = IOMEM(iores->start);
-
-	return 0;
-}
-
-static __maybe_unused struct of_device_id bcm2835_mbox_dt_ids[] = {
-	{
-		.compatible = "brcm,bcm2835-mbox",
-	}, {
-		/* sentinel */
-	},
-};
-
-static struct driver_d bcm2835_mbox_driver = {
-	.name		= "bcm2835_mbox",
-	.of_compatible	= DRV_OF_COMPAT(bcm2835_mbox_dt_ids),
-	.probe		= bcm2835_mbox_probe,
-};
-
-core_platform_driver(bcm2835_mbox_driver);
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


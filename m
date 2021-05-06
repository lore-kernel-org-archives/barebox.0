Delivery-date: Thu, 06 May 2021 11:30:43 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1leaLD-0001V3-Er
	for lore@lore.pengutronix.de; Thu, 06 May 2021 11:30:43 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1leaLA-0008R0-Qb
	for lore@pengutronix.de; Thu, 06 May 2021 11:30:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=B2DdtGP4vcJfUlhrTrUXkP3kgOEg8TqhJ83WcWbv86Q=; b=Myh8MZuOFl7n9/GlozV7iAdbi
	Ths5gsHpArXj7Ip1KM+3pFoq0BCSt03k4/2N4qz/eAnHoNwe5fZj5JqDMTKlO0+5B9GZShpMPQHT5
	d+GgagNxhWI+QF71oilH8ihJSOpj7QAJ6DQITq30Paa/zJ+RHHEmxwYT66mTRSxL3sOtzWp6OsVhv
	l9NBC6L8kESzL2Ozjb+qf1e2gu6qpNYtxWjo6V4Rlkukf7h8Ffi+m/oOp6SpM0m5cb9jrMj1ZDnm2
	9zmp2g1u8yLqH8xd1wspKT8AwdVrBUhcQV8E5bbRfoAl6BmYhvdYIdjfDDeuf1bGhjkqK6FwbyuIz
	+olxoN2AA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1leaK2-003nv0-Tn; Thu, 06 May 2021 09:29:31 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leaJi-003nph-Tv
 for barebox@desiato.infradead.org; Thu, 06 May 2021 09:29:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=RoEvyYH1GRzkrfhCxwJV3VLpUKlH6usSp+UWOHtT7Uc=; b=gFLTLUAq6W6N5MLeAhT8qzDb0e
 GOHlClBdf3jUhuUa6OcRqFm3jLihfOMCq1fm08J3iFAeSw7Pq+mEHuVSKkJrEd63PZI+jqB6IyPji
 /uJAY067DIatdsV8cnJc0G1lbEYrSgLDVzKw8csTQeaN9bWeJ4wrqMmrBkWZbK3krxgz7+qENcS01
 WuVfy1ALwTy+SEir4yWJGRIarSuFo2eLNsdWlYRZMFnoEYJHXlSlnr/Het317Ru778yXNGnrjAtqj
 4y7JAqgSkA26ZIL6A2bKnzwlx45+XQEGMwWydGHH6pmhieJDLl1iRJ2PtGpBcjF2yHXKBhG8yvbG+
 DAnDGLkg==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leaJe-005uFZ-R0
 for barebox@lists.infradead.org; Thu, 06 May 2021 09:29:09 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1leaJb-0007pJ-DI; Thu, 06 May 2021 11:29:03 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1leaJa-0001lp-Ix; Thu, 06 May 2021 11:29:02 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  6 May 2021 11:28:59 +0200
Message-Id: <20210506092901.25461-16-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210506092901.25461-1-s.hauer@pengutronix.de>
References: <20210506092901.25461-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210506_022906_934597_9D423124 
X-CRM114-Status: GOOD (  14.76  )
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
Cc: Marco Felsch <m.felsch@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 15/17] ARM: boards: mx6-sabrelite: add deep-probe support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Marco Felsch <m.felsch@pengutronix.de>

Convert to board driver and explicitly request the required gpio
resources instead of relying on their existence based on the initcall
level.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
Link: https://lore.pengutronix.de/20201021115813.31645-11-m.felsch@pengutronix.de
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 .../boards/freescale-mx6-sabrelite/board.c    | 58 ++++++++++---------
 1 file changed, 32 insertions(+), 26 deletions(-)

diff --git a/arch/arm/boards/freescale-mx6-sabrelite/board.c b/arch/arm/boards/freescale-mx6-sabrelite/board.c
index 1b39ef82c6..f6eac4c0f3 100644
--- a/arch/arm/boards/freescale-mx6-sabrelite/board.c
+++ b/arch/arm/boards/freescale-mx6-sabrelite/board.c
@@ -13,7 +13,9 @@
 #include <mach/bbu.h>
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
+#include <of.h>
 #include <partition.h>
+#include <deep-probe.h>
 #include <linux/phy.h>
 #include <asm/io.h>
 #include <asm/mmu.h>
@@ -98,10 +100,6 @@ static int sabrelite_ksz9021rn_setup(void)
 {
 	int ret;
 
-	if (!of_machine_is_compatible("fsl,imx6q-sabrelite") &&
-	    !of_machine_is_compatible("fsl,imx6dl-sabrelite"))
-		return 0;
-
 	mxc_iomux_v3_setup_multiple_pads(sabrelite_enet_gpio_pads,
 			ARRAY_SIZE(sabrelite_enet_gpio_pads));
 
@@ -118,11 +116,6 @@ static int sabrelite_ksz9021rn_setup(void)
 
 	return 0;
 }
-/*
- * Do this before the fec initializes but after our
- * gpios are available.
- */
-fs_initcall(sabrelite_ksz9021rn_setup);
 
 static void sabrelite_ehci_init(void)
 {
@@ -132,11 +125,22 @@ static void sabrelite_ehci_init(void)
 	gpio_set_value(IMX_GPIO_NR(7, 12), 1);
 }
 
-static int sabrelite_devices_init(void)
+static int sabrelite_probe(struct device_d *dev)
 {
-	if (!of_machine_is_compatible("fsl,imx6q-sabrelite") &&
-	    !of_machine_is_compatible("fsl,imx6dl-sabrelite"))
-		return 0;
+	int ret;
+
+	phy_register_fixup_for_uid(PHY_ID_KSZ9021, MICREL_PHY_ID_MASK,
+					   ksz9021rn_phy_fixup);
+
+	barebox_set_hostname("sabrelite");
+
+	ret = of_devices_ensure_probed_by_property("gpio-controller");
+	if (ret)
+		return ret;
+
+	ret = sabrelite_ksz9021rn_setup();
+	if (ret)
+		return ret;
 
 	sabrelite_ehci_init();
 
@@ -147,19 +151,21 @@ static int sabrelite_devices_init(void)
 
 	return 0;
 }
-device_initcall(sabrelite_devices_init);
-
-static int sabrelite_coredevices_init(void)
-{
-	if (!of_machine_is_compatible("fsl,imx6q-sabrelite") &&
-	    !of_machine_is_compatible("fsl,imx6dl-sabrelite"))
-		return 0;
+static const struct of_device_id sabrelite_match[] = {
+	{
+		.compatible = "fsl,imx6q-sabrelite",
+	}, {
+		.compatible = "fsl,imx6dl-sabrelite",
+	},
+	{ /* Sentinel */ },
+};
 
-	phy_register_fixup_for_uid(PHY_ID_KSZ9021, MICREL_PHY_ID_MASK,
-					   ksz9021rn_phy_fixup);
+static struct driver_d sabrelite_driver = {
+	.name = "physom-imx6",
+	.probe = sabrelite_probe,
+	.of_compatible = sabrelite_match,
+};
 
-	barebox_set_hostname("sabrelite");
+postcore_platform_driver(sabrelite_driver);
 
-	return 0;
-}
-coredevice_initcall(sabrelite_coredevices_init);
+BAREBOX_DEEP_PROBE_ENABLE(sabrelite_match);
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


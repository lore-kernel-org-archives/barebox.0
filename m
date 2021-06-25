Delivery-date: Fri, 25 Jun 2021 09:50:23 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lwgbX-0007za-S6
	for lore@lore.pengutronix.de; Fri, 25 Jun 2021 09:50:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lwgbT-0006T1-Pi
	for lore@pengutronix.de; Fri, 25 Jun 2021 09:50:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B2DdtGP4vcJfUlhrTrUXkP3kgOEg8TqhJ83WcWbv86Q=; b=xOnHKDWci7poZm
	a1GbGaURdKL323AXPmG9QVgRKInax0/Dgy/rJvAwlTYePGLqdPRrer9Vf0eP9zG7HZJmYQx3Nz6Xp
	5L2hJr3oavSHmkC6aYLeAKUZOoSWF+epRJ9gI3GkxfA4XMIFZND1A3pq1H3Td88w5M3cz1APfdSj1
	GWn6OoRx6ZMTIy/434DxgbxIObaSj7jKCxxtcYNOx4oYaH9jMokNQ2ImS4Wy4JQLnznytvLQZXHbj
	u+iPVeer//hgE+ueQ3uTzhtqj34Abp2UW7+v770/GCGL2/7RNYw7Sb9oW5dM2CgmX2WhmuOVdPQNf
	DTVYy7EuHwXUhsvLnkmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lwgZu-0007Xp-1W; Fri, 25 Jun 2021 07:48:42 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lwgDo-00HZ6z-3z
 for barebox@lists.infradead.org; Fri, 25 Jun 2021 07:25:54 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lwgDe-0002Ql-Hf; Fri, 25 Jun 2021 09:25:42 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lwgDd-0000df-Gg; Fri, 25 Jun 2021 09:25:41 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 25 Jun 2021 09:25:37 +0200
Message-Id: <20210625072540.32717-17-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210625072540.32717-1-s.hauer@pengutronix.de>
References: <20210625072540.32717-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210625_002552_363140_5B21DE77 
X-CRM114-Status: GOOD (  14.38  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 16/19] ARM: boards: mx6-sabrelite: add deep-probe support
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


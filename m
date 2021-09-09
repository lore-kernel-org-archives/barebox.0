Delivery-date: Thu, 09 Sep 2021 15:32:08 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mOK9w-0001Xf-6C
	for lore@lore.pengutronix.de; Thu, 09 Sep 2021 15:32:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mOK9u-0004vn-JN
	for lore@pengutronix.de; Thu, 09 Sep 2021 15:32:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QDdnMPOrlZJMUkeIv9Qjl3VwErM4gZKQGLPHtCGroAg=; b=WkLBvR/vE3r6uk
	JkeFVj0dfig5Gn8o/fM1fpAKidZ/aARXuKFaUNzHHuuVawVNNBwAMGgomJ17pxsgacjihJh9e7HjH
	vfNvgJv6RBN4UqAvaL6L7hI+RxSPTW2Hnb0Ry5KfFhb4BZkuLmo+/h4/HwnnjsPPpzqdftkHkwzEk
	CuZxIZ6imrviRynAHkWmiswgK1kSvzmGpX9c1RYc7fkGplbpAvMhSOPvRuwmiKzupw3CwyynmC8Fr
	nkzCnpKzBol5/Bo8UM3y9T66CwRRyzz+D2SSsqsTFoRKPHjVSGuboeHum9A+sFBBm5JQ2P8l6s3/g
	zdGxoXIi/LUMYBQCnzPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mOK8I-009sfP-KK; Thu, 09 Sep 2021 13:30:26 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mOIrm-009I90-Vw
 for barebox@lists.infradead.org; Thu, 09 Sep 2021 12:09:20 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1mOIrl-0004e3-0F; Thu, 09 Sep 2021 14:09:17 +0200
Received: from ore by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1mOIrk-00021q-Ik; Thu, 09 Sep 2021 14:09:16 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Thu,  9 Sep 2021 14:09:05 +0200
Message-Id: <20210909120909.7744-3-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210909120909.7744-1-o.rempel@pengutronix.de>
References: <20210909120909.7744-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210909_050919_114375_D5A3BA21 
X-CRM114-Status: GOOD (  22.69  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 3/7] ARM: boards: skov-imx6: add switch detection
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

There are board variants with same board ID but not switch. Detect this
variants.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/arm/boards/skov-imx6/board.c | 159 +++++++++++++++++++++++++-----
 1 file changed, 135 insertions(+), 24 deletions(-)

diff --git a/arch/arm/boards/skov-imx6/board.c b/arch/arm/boards/skov-imx6/board.c
index 030ac62c52..2bd21adaeb 100644
--- a/arch/arm/boards/skov-imx6/board.c
+++ b/arch/arm/boards/skov-imx6/board.c
@@ -11,6 +11,7 @@
 #include <net.h>
 #include <of_gpio.h>
 #include <gpio.h>
+#include <linux/micrel_phy.h>
 
 #include "version.h"
 
@@ -130,6 +131,9 @@ copy_mac_from_eth0:
 	return eth_of_fixup_node_from_eth_device(root, node_path, ethname);
 }
 
+#define SKOV_GPIO_MDIO_BUS	0
+#define SKOV_LAN1_PHY_ADDR	1
+
 #define MAX_V_GPIO 8
 
 struct board_description {
@@ -303,20 +307,121 @@ static const struct board_description imx6_variants[] = {
 };
 
 static int skov_board_no = -1;
+static bool skov_no_switch = false;
+static const char *no_switch_suffix = "-noswitch";
 
-static int skov_imx6_fixup(struct device_node *root, void *unused)
+static void fixup_machine_compatible(const char *compat,
+				     struct device_node *root)
 {
+	int cclen = 0, clen = strlen(compat) + 1;
+	const char *curcompat;
+	void *buf;
+
+	if (!root) {
+		root = of_get_root_node();
+		if (!root)
+			return;
+	}
+
+	curcompat = of_get_property(root, "compatible", &cclen);
+
+	buf = xzalloc(cclen + clen);
+
+	memcpy(buf, compat, clen);
+	memcpy(buf + clen, curcompat, cclen);
+
+	/*
+	 * Prepend the compatible from board entry to the machine compatible.
+	 * Used to match bootspec entries against it.
+	 */
+	of_set_property(root, "compatible", buf, cclen + clen, true);
+
+	free(buf);
+}
+
+static void fixup_noswitch_machine_compatible(struct device_node *root)
+{
+	const char *compat = imx6_variants[skov_board_no].dts_compatible;
+	const char *generic = "skov,imx6";
+	size_t size, size_generic;
+	char *buf;
 	int ret;
-	const char *val;
-	uint32_t brightness;
+
+	size = strlen(compat) + strlen(no_switch_suffix) + 1;
+	size_generic = strlen(generic) + strlen(no_switch_suffix) + 1;
+	size = max(size, size_generic);
+	buf = xzalloc(size);
+	if (!buf) {
+		pr_warn("Can't allocate buffer\n");
+		return;
+	}
+
+	/* add generic compatible, so systemd&co can make right decisions */
+	ret = snprintf(buf, size, "%s%s", generic, no_switch_suffix);
+	if (ret >= 0)
+		fixup_machine_compatible(buf, root);
+	else
+		pr_warn("Can't prepare generic compatible string\n");
+
+	/* add specific compatible as fallback, in case this board has new
+	 * challenges.
+	 */
+	ret = snprintf(buf, size, "%s%s", compat, no_switch_suffix);
+	if (ret >= 0)
+		fixup_machine_compatible(buf, root);
+	else
+		pr_warn("Can't prepare specific compatible string\n");
+
+	free(buf);
+}
+
+static void skov_imx6_no_switch(struct device_node *root)
+{
 	struct device_node *node;
-	struct device_node *chosen = of_create_node(root, "/chosen");
+	int ret;
+
+	fixup_noswitch_machine_compatible(root);
 
+	node = of_find_node_by_path_from(root, "/soc/bus@2100000/ethernet@2188000");
+	if (!node) {
+		pr_warn("Did not find node to disable it\n");
+	} else {
+		ret = of_device_disable(node);
+		if (ret)
+			pr_warn("Can't disable ethernet node\n");
+	}
+
+	node = of_find_node_by_alias(root, "mdio-gpio0");
+	if (node) {
+		ret = of_device_disable(node);
+		if (ret)
+			pr_warn("Can't disable mdio-gpio0 node\n");
+	} else {
+		pr_warn("Can't find mdio-gpio0 node\n");
+	}
+}
+
+static void skov_imx6_switch(struct device_node *root)
+{
 	eth_of_fixup_node_from_eth_device(root,
 			"/mdio-gpio/ksz8873@3/ports/ports@0", "eth0");
 	eth2_of_fixup_node_individually(root,
 		"/mdio-gpio/ksz8873@3/ports/ports@1", "eth0",
 		"state.ethaddr.eth2", "/state/ethaddr/eth2");
+}
+
+static int skov_imx6_fixup(struct device_node *root, void *unused)
+{
+	struct device_node *chosen = of_create_node(root, "/chosen");
+	struct device_node *node;
+	uint32_t brightness;
+	const char *val;
+	int ret;
+
+	if (skov_no_switch)
+		skov_imx6_no_switch(root);
+	else
+		skov_imx6_switch(root);
 
 	switch (bootsource_get()) {
 	case BOOTSOURCE_MMC:
@@ -432,34 +537,40 @@ static void skov_init_board(const struct board_description *variant)
 	}
 }
 
-static void fixup_machine_compatible(const char *compat,
-				     struct device_node *root)
+static int skov_switch_test(void)
 {
-	const char *curcompat;
-	int cclen = 0, clen = strlen(compat) + 1;
-	void *buf;
+	struct phy_device *phydev;
+	struct mii_bus *mii;
+	int ret;
 
-	if (!root) {
-		root = of_get_root_node();
-		if (!root)
-			return;
-	}
+	if (skov_board_no < 0)
+		return 0;
 
-	curcompat = of_get_property(root, "compatible", &cclen);
+	/* On this boards, we have only one MDIO bus. So, it is enough to take
+	 * the first one.
+	 */
+	mii = mdiobus_get_bus(SKOV_GPIO_MDIO_BUS);
+	/* We can't read the switch ID, but we get get ID of the first PHY,
+	 * which is enough to test if the switch is attached.
+	 */
+	phydev = get_phy_device(mii, SKOV_LAN1_PHY_ADDR);
+	if (IS_ERR(phydev))
+		goto no_switch;
 
-	buf = xzalloc(cclen + clen);
+	if (phydev->phy_id != PHY_ID_KSZ886X)
+		goto no_switch;
 
-	memcpy(buf, compat, clen);
-	memcpy(buf + clen, curcompat, cclen);
+	return 0;
 
-	/*
-	 * Prepend the compatible from board entry to the machine compatible.
-	 * Used to match bootspec entries against it.
-	 */
-	of_set_property(root, "compatible", buf, cclen + clen, true);
+no_switch:
+	skov_no_switch = true;
+	fixup_noswitch_machine_compatible(NULL);
 
-	free(buf);
+	pr_notice("No-switch variant is detected\n");
+
+	return 0;
 }
+late_initcall(skov_switch_test);
 
 static int skov_imx6_probe(struct device_d *dev)
 {
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


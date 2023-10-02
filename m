Delivery-date: Mon, 02 Oct 2023 12:18:27 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qnG0S-001uFQ-Nj
	for lore@lore.pengutronix.de; Mon, 02 Oct 2023 12:18:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qnG0Q-0003yv-1u
	for lore@pengutronix.de; Mon, 02 Oct 2023 12:18:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/k9tlXNreVNVS+Vf/zDrxUYIm2tieXnPLi583AqoJvE=; b=fEkSd5sJwNIh2OQX+USRl/QiOC
	tagM3yjXjIrY/mlkZ2GIPR/TGRBeP/Am+FfkXKoeEUh8TkXFiXOW/n2Ub61cFq5EMPCmDJhaLDAzR
	FE8Z/0RaTiQnYD9i8z04gnynCYXH+yt5QS9ucgNlPoWpSYcVKAaf8wA2GyCwFCshHBaP4qVNs/ntD
	aja/lGgpWsUhYpdsjey75jOzoZAA/cu5ALC41FuiBiJmKUo/aF95He6qmxRFqarWJOLr24UnX9547
	oHVRbIjHE0ieR7ZYb8xaFaT/tUm+q5HrZ5ZX/GHqI/06m/gULzVmMUfpzoNxWtPsn4EdOcpLvPpxb
	IsWAMmNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qnFzJ-00CIm7-04;
	Mon, 02 Oct 2023 10:17:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qnFz8-00CIh2-2z
	for barebox@lists.infradead.org;
	Mon, 02 Oct 2023 10:17:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1qnFz6-0003TY-CK; Mon, 02 Oct 2023 12:17:04 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1qnFz5-00AV2S-PQ; Mon, 02 Oct 2023 12:17:03 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1qnFz5-009xLR-26;
	Mon, 02 Oct 2023 12:17:03 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Mon,  2 Oct 2023 12:16:52 +0200
Message-Id: <20231002101654.2373000-9-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231002101654.2373000-1-o.rempel@pengutronix.de>
References: <20231002101654.2373000-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231002_031706_987754_5439EFF2 
X-CRM114-Status: GOOD (  15.99  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 08/10] ARM: i.MX8MP: skov: fixup skov,imx8mp-board-version DT property for the kernel
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Fixup Skov specific skov,imx8mp-board-version property for the kernel DT,
to keep it compatible with the imx6 version.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/arm/boards/skov-imx8mp/board.c | 41 +++++++++++++++++++++++++++--
 1 file changed, 39 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/skov-imx8mp/board.c b/arch/arm/boards/skov-imx8mp/board.c
index 3a1cd83bbd..3b6eb7b080 100644
--- a/arch/arm/boards/skov-imx8mp/board.c
+++ b/arch/arm/boards/skov-imx8mp/board.c
@@ -14,6 +14,13 @@
 #include <mach/imx/generic.h>
 #include <mach/imx/iomux-mx8mp.h>
 
+struct skov_imx8mp_priv {
+	struct device *dev;
+	int variant_id;
+};
+
+static struct skov_imx8mp_priv *skov_imx8mp_priv;
+
 #define GPIO_HW_VARIANT  {\
 	{IMX_GPIO_NR(1, 8), GPIOF_DIR_IN | GPIOF_ACTIVE_HIGH, "var0"}, \
 	{IMX_GPIO_NR(1, 9), GPIOF_DIR_IN | GPIOF_ACTIVE_HIGH, "var1"}, \
@@ -78,6 +85,22 @@ static const struct board_description imx8mp_variants[] = {
 	},
 };
 
+static int skov_imx8mp_fixup(struct device_node *root, void *data)
+{
+	struct device_node *chosen = of_create_node(root, "/chosen");
+	const char *of_board = "skov,imx8mp-board-version";
+	struct skov_imx8mp_priv *priv = data;
+	struct device *dev = priv->dev;
+	int ret;
+
+	ret = of_property_write_u32(chosen, of_board, priv->variant_id);
+	if (ret)
+		dev_err(dev,  "Failed to fixup %s: %pe\n", of_board,
+			ERR_PTR(ret));
+
+	return 0;
+}
+
 static int skov_imx8mp_get_variant_id(uint *id)
 {
 	struct gpio gpios_rev[] = GPIO_HW_VARIANT;
@@ -133,9 +156,10 @@ static int skov_imx8mp_get_hdmi(struct device *dev)
 	return val;
 }
 
-static int skov_imx8mp_init_variant(struct device *dev)
+static int skov_imx8mp_init_variant(struct skov_imx8mp_priv *priv)
 {
 	const struct board_description *variant;
+	struct device *dev = priv->dev;
 	const char *compatible;
 	unsigned int v = 0;
 	int ret;
@@ -144,6 +168,8 @@ static int skov_imx8mp_init_variant(struct device *dev)
 	if (ret)
 		return ret;
 
+	priv->variant_id = v;
+
 	if (v >= ARRAY_SIZE(imx8mp_variants)) {
 		dev_err(dev, "Invalid variant %u\n", v);
 		return -EINVAL;
@@ -234,9 +260,20 @@ static void skov_imx8mp_init_storage(struct device *dev)
 
 static int skov_imx8mp_probe(struct device *dev)
 {
+	struct skov_imx8mp_priv *priv;
+	int ret;
+
+	priv = xzalloc(sizeof(*priv));
+	priv->dev = dev;
+	skov_imx8mp_priv = priv;
+
 	skov_imx8mp_init_storage(dev);
 
-	skov_imx8mp_init_variant(dev);
+	skov_imx8mp_init_variant(priv);
+
+	ret = of_register_fixup(skov_imx8mp_fixup, priv);
+	if (ret)
+		dev_err(dev, "Failed to register fixup: %pe\n", ERR_PTR(ret));
 
 	return 0;
 }
-- 
2.39.2




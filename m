Delivery-date: Thu, 18 Aug 2022 07:21:50 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oOXyZ-002dQT-1o
	for lore@lore.pengutronix.de; Thu, 18 Aug 2022 07:21:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oOXyV-0000is-NK
	for lore@pengutronix.de; Thu, 18 Aug 2022 07:21:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vpY5WpHdkhRyJ1raR1YbKAYaoLD3AHFLI/JPNgWrke4=; b=WVQjJ6oArw1TJTAFhf1C7sxomU
	48mGePOUkxymZsn5uV5Ep0HVo3OgJARNK4/lVWK9pLBEL44d3om27g6qmBP8ciS21cbKE9Ao6ujf9
	zozZmdeiKBBC6aEwaprjyS3cainlc69PwVWUJm4qJ2hmPWbe6y81wTs+SfFbcA12hb9qRLoVuV5TN
	BlqWozRcZOIxEzgYmc6B4zHN0dYez8tBirVDOLllCOmgNpDBOVWIprM24UzJp1s3dzIOO8y16oRQu
	qCxGLMODiphZIixhjIf5xn4fL38U/4urk1nFDxv4sqo0rsPxMRsMXxukNt+jq/zr7v7K2y9DeVp0O
	opivAMJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOXxA-00Fnv0-NE; Thu, 18 Aug 2022 05:20:24 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOXwm-00Fn3P-S1
	for barebox@lists.infradead.org; Thu, 18 Aug 2022 05:20:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oOXwl-0008HK-2I; Thu, 18 Aug 2022 07:19:59 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oOXwk-000S3T-8G; Thu, 18 Aug 2022 07:19:58 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oOXwi-008lHk-Mz; Thu, 18 Aug 2022 07:19:56 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: lst@pengutronix.de,
	ukl@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 18 Aug 2022 07:19:52 +0200
Message-Id: <20220818051955.2088238-8-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220818051955.2088238-1-a.fatoum@pengutronix.de>
References: <20220818051955.2088238-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220817_222001_154108_9A4E39C4 
X-CRM114-Status: GOOD (  16.42  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 07/10] nvmem: ocotp: add i.MX8M[MN] feature controller support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Devices with a feature-controller property can be specified as provider
in a barebox,feature-gates property to announce that the bus should
consult them before instantiating or probing devices.

Check for this property in the OCOTP driver and register a feature
controller for the i.MX8MM and i.MX8MN.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/nvmem/ocotp.c | 62 +++++++++++++++++++++++++++++++++++++------
 1 file changed, 54 insertions(+), 8 deletions(-)

diff --git a/drivers/nvmem/ocotp.c b/drivers/nvmem/ocotp.c
index 1f99a8012f7a..9fcbd1a6a414 100644
--- a/drivers/nvmem/ocotp.c
+++ b/drivers/nvmem/ocotp.c
@@ -28,6 +28,7 @@
 #include <mach/ocotp.h>
 #include <machine_id.h>
 #include <mach/ocotp-fusemap.h>
+#include <soc/imx8m/featctrl.h>
 #include <linux/nvmem-provider.h>
 
 /*
@@ -108,6 +109,7 @@ struct imx_ocotp_data {
 	int (*fuse_blow)(struct ocotp_priv *priv, u32 addr, u32 value);
 	u8  mac_offsets[MAX_MAC_OFFSETS];
 	u8  mac_offsets_num;
+	struct imx8m_featctrl_data *feat;
 };
 
 struct ocotp_priv_ethaddr {
@@ -638,19 +640,20 @@ static struct regmap_bus imx_ocotp_regmap_bus = {
 	.reg_read = imx_ocotp_reg_read,
 };
 
-static void imx_ocotp_init_dt(struct ocotp_priv *priv)
+static int imx_ocotp_init_dt(struct ocotp_priv *priv)
 {
 	char mac[MAC_BYTES];
 	const __be32 *prop;
 	struct device_node *node = priv->dev.parent->device_node;
-	int len;
+	u32 tester4;
+	int ret, len;
 
 	if (!node)
-		return;
+		return 0;
 
 	prop = of_get_property(node, "barebox,provide-mac-address", &len);
 	if (!prop)
-		return;
+		return 0;
 
 	for (; len >= MAC_ADDRESS_PROPLEN; len -= MAC_ADDRESS_PROPLEN) {
 		struct device_node *rnode;
@@ -668,6 +671,15 @@ static void imx_ocotp_init_dt(struct ocotp_priv *priv)
 
 		of_eth_register_ethaddr(rnode, mac);
 	}
+
+	if (!of_property_read_bool(node, "barebox,feature-controller"))
+		return 0;
+
+	ret = regmap_read(priv->map, OCOTP_OFFSET_TO_ADDR(0x450), &tester4);
+	if (ret != 0)
+		return ret;
+
+	return imx8m_feat_ctrl_init(priv->dev.parent, tester4, priv->data->feat);
 }
 
 static int imx_ocotp_write(void *ctx, unsigned offset, const void *val, size_t bytes)
@@ -785,10 +797,12 @@ static int imx_ocotp_probe(struct device_d *dev)
 	if (IS_ENABLED(CONFIG_MACHINE_ID))
 		imx_ocotp_set_unique_machine_id();
 
-	imx_ocotp_init_dt(priv);
+	ret = imx_ocotp_init_dt(priv);
+	if (ret)
+		dev_warn(dev, "feature controller registration failed: %pe\n",
+			 ERR_PTR(ret));
 
 	dev_add_param_bool(&(priv->dev), "sense_enable", NULL, NULL, &priv->sense_enable, priv);
-
 	return 0;
 }
 
@@ -895,6 +909,38 @@ static struct imx_ocotp_data imx8mq_ocotp_data = {
 	.fuse_read = imx6_fuse_read_addr,
 };
 
+static struct imx8m_featctrl_data imx8mm_featctrl_data = {
+	.vpu_bitmask = 0x1c0000,
+};
+
+static struct imx_ocotp_data imx8mm_ocotp_data = {
+	.num_regs = 2048,
+	.addr_to_offset = imx6sl_addr_to_offset,
+	.mac_offsets_num = 1,
+	.mac_offsets = { 0x90 },
+	.format_mac = imx_ocotp_format_mac,
+	.set_timing = imx6_ocotp_set_timing,
+	.fuse_blow = imx6_fuse_blow_addr,
+	.fuse_read = imx6_fuse_read_addr,
+	.feat = &imx8mm_featctrl_data,
+};
+
+static struct imx8m_featctrl_data imx8mn_featctrl_data = {
+	.gpu_bitmask = 0x1000000,
+};
+
+static struct imx_ocotp_data imx8mn_ocotp_data = {
+	.num_regs = 2048,
+	.addr_to_offset = imx6sl_addr_to_offset,
+	.mac_offsets_num = 1,
+	.mac_offsets = { 0x90 },
+	.format_mac = imx_ocotp_format_mac,
+	.set_timing = imx6_ocotp_set_timing,
+	.fuse_blow = imx6_fuse_blow_addr,
+	.fuse_read = imx6_fuse_read_addr,
+	.feat = &imx8mn_featctrl_data,
+};
+
 static struct imx_ocotp_data imx7d_ocotp_data = {
 	.num_regs = 2048,
 	.addr_to_offset = imx6sl_addr_to_offset,
@@ -933,10 +979,10 @@ static __maybe_unused struct of_device_id imx_ocotp_dt_ids[] = {
 		.data = &imx8mq_ocotp_data,
 	}, {
 		.compatible = "fsl,imx8mm-ocotp",
-		.data = &imx8mq_ocotp_data,
+		.data = &imx8mm_ocotp_data,
 	}, {
 		.compatible = "fsl,imx8mn-ocotp",
-		.data = &imx8mq_ocotp_data,
+		.data = &imx8mn_ocotp_data,
 	}, {
 		.compatible = "fsl,vf610-ocotp",
 		.data = &vf610_ocotp_data,
-- 
2.30.2




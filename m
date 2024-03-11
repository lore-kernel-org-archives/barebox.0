Delivery-date: Mon, 11 Mar 2024 11:22:38 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rjcnm-000tWl-0U
	for lore@lore.pengutronix.de;
	Mon, 11 Mar 2024 11:22:38 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rjcng-0008BL-H6
	for lore@pengutronix.de; Mon, 11 Mar 2024 11:22:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sSq0EETwlYFvaYpJGwe/0YOMrP6k/QQYP2dPNnveSwI=; b=mrTY/7yaBq4mFTsTg+L52ZcMOv
	2vSmyWyB8YjnJwnySfv1Z+s36n+ucMLh74n+fkAPXeYb0/88L4cXdfIOq/j5A1rxPUpUoGKdNYIAt
	dlpIQfmQ4ueKdVlerTwnt3kpoMNjRXpVBZLxQveaKzG9qTsQOlzOBrqOknUstBw4lkPTumgDXv/Lo
	0Lo1rOIM7fRHY3HVjETo+C8/8NHuqs2DOgfnIvK0qdclibUfNdwHHKhk0ae0UZxXykyk4+D5wch4c
	mJwBdX1FdbK3LoI/mREI3bRUEnm7B28bhVAaanUV8DTFayXICPfNBqUDIs31mKWUHeZ2jk9/wqFE9
	zMM6mqCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rjcnC-000000014oj-315W;
	Mon, 11 Mar 2024 10:22:02 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rjcn6-000000014l8-3Jag
	for barebox@lists.infradead.org;
	Mon, 11 Mar 2024 10:21:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rjcn4-0007fQ-Vv; Mon, 11 Mar 2024 11:21:55 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rjcn4-005gyw-JF; Mon, 11 Mar 2024 11:21:54 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rjcn4-001WE1-1c;
	Mon, 11 Mar 2024 11:21:54 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 11 Mar 2024 11:21:52 +0100
Message-Id: <20240311102152.360762-5-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240311102152.360762-1-s.hauer@pengutronix.de>
References: <20240311102152.360762-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240311_032156_906040_E25F513F 
X-CRM114-Status: GOOD (  16.98  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 5/5] nvmem: imx-ocotp-ele: implement permanent write support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This implements write support to imx-ocotp-ele. By default only the
shadow values are written which is harmless and nearly useless (as the
ROM doesn't seem use these values). Real write support is enabled by
setting imx_ocotp0.permanent_write_enable to true. A big warning is
printed and the next write access to /dev/imx_ocotp will then really
burn fuses.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/nvmem/imx-ocotp-ele.c | 36 ++++++++++++++++++++++++++++++++++-
 1 file changed, 35 insertions(+), 1 deletion(-)

diff --git a/drivers/nvmem/imx-ocotp-ele.c b/drivers/nvmem/imx-ocotp-ele.c
index 9708d3f4bb..b25ab32fea 100644
--- a/drivers/nvmem/imx-ocotp-ele.c
+++ b/drivers/nvmem/imx-ocotp-ele.c
@@ -41,6 +41,7 @@ struct imx_ocotp_priv {
 	void __iomem *base;
 	const struct ocotp_devtype_data *data;
 	struct regmap_config map_config;
+	int permanent_write_enable;
 };
 
 static enum fuse_type imx_ocotp_fuse_type(struct imx_ocotp_priv *priv, u32 index)
@@ -92,6 +93,22 @@ static int imx_ocotp_reg_read(void *context, unsigned int offset, unsigned int *
 	return 0;
 };
 
+static int imx_ocotp_reg_write(void *context, unsigned int offset, unsigned int val)
+{
+	struct imx_ocotp_priv *priv = context;
+	u32 index;
+	int ret;
+
+	index = offset >> 2;
+
+	if (priv->permanent_write_enable)
+		ret = ele_write_fuse(index, val, false, NULL);
+	else
+		ret = ele_write_shadow_fuse(index, val, NULL);
+
+	return ret;
+}
+
 static int imx_ocotp_cell_pp(void *context, const char *id, unsigned int offset,
 			     void *data, size_t bytes)
 {
@@ -116,6 +133,7 @@ static int imx_ocotp_cell_pp(void *context, const char *id, unsigned int offset,
 }
 
 static struct regmap_bus imx_ocotp_regmap_bus = {
+	.reg_write = imx_ocotp_reg_write,
 	.reg_read = imx_ocotp_reg_read,
 };
 
@@ -132,6 +150,18 @@ static void imx_ocotp_set_unique_machine_id(struct imx_ocotp_priv *priv)
 	machine_id_set_hashable(unique_id_parts, sizeof(unique_id_parts));
 }
 
+static int permanent_write_enable_set(struct param_d *param, void *ctx)
+{
+	struct imx_ocotp_priv *priv = ctx;
+
+	if (priv->permanent_write_enable) {
+		dev_warn(priv->dev, "Enabling permanent write on fuses.\n");
+		dev_warn(priv->dev, "Writing fuses may damage your device. Be careful!\n");
+	}
+
+	return 0;
+}
+
 static int imx_ele_ocotp_probe(struct device *dev)
 {
 	struct imx_ocotp_priv *priv;
@@ -141,6 +171,7 @@ static int imx_ele_ocotp_probe(struct device *dev)
 	int ret;
 
 	priv = xzalloc(sizeof(*priv));
+	priv->dev = dev;
 
 	ret = dev_get_drvdata(dev, (const void **)&data);
 	if (ret)
@@ -165,11 +196,14 @@ static int imx_ele_ocotp_probe(struct device *dev)
 	if (IS_ENABLED(CONFIG_MACHINE_ID))
 		imx_ocotp_set_unique_machine_id(priv);
 
-	nvmem = nvmem_regmap_register_with_pp(priv->map, "imx-ocotp",
+	nvmem = nvmem_regmap_register_with_pp(priv->map, "imx_ocotp",
 					      imx_ocotp_cell_pp);
 	if (IS_ERR(nvmem))
 		return PTR_ERR(nvmem);
 
+	dev_add_param_bool(nvmem_device_get_device(nvmem), "permanent_write_enable",
+			permanent_write_enable_set, NULL, &priv->permanent_write_enable, priv);
+
 	return 0;
 }
 
-- 
2.39.2




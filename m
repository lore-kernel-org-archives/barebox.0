Delivery-date: Thu, 02 Feb 2023 18:35:30 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pNdUi-00Bdh4-6K
	for lore@lore.pengutronix.de; Thu, 02 Feb 2023 18:35:30 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pNdUf-0004uE-D2
	for lore@pengutronix.de; Thu, 02 Feb 2023 18:35:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+T08hFZlOZ0FckiQVQ7iDV+R/H/LGy2izJUtq3kaw1A=; b=NPdAbRTaZCFMlCMJ5wW4+/TTQJ
	TAnjSiEVCYF78kMiwNTdVMk7XCvUkNc+2RuUszYaY+ANgpsUxHbpRQc6CxvLl7x9Y8R7w8rK4LTtJ
	QbgMLLFCEQwPk7phX8zW7M+5XVMaYaIu9ZY9SLtkQJcSABm9iWX0nKTyZfZ+8V6TmxCdh2dHhvrML
	JPoGSbFTPtJ3kqXGDIJdf7BV/gTVEbcRCg5DC/RjYAVRCr76N+xTUBeQzl4lus0T2VLbYOXRlfD5L
	gn4JmG9YX2zCK8lQRn7/dMTU+0nfa022rAzZTyVBfCGvafY60W/j3DS4jCxgExYZLIHX8zbermfoc
	rECl8oJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNdTG-00Gof3-Hl; Thu, 02 Feb 2023 17:34:02 +0000
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNdT9-00GobF-4c
	for barebox@lists.infradead.org; Thu, 02 Feb 2023 17:33:57 +0000
Received: by lynxeye.de (Postfix, from userid 501)
	id A04F7E74017; Thu,  2 Feb 2023 18:33:21 +0100 (CET)
Received: from astat.fritz.box (a89-183-231-214.net-htp.de [89.183.231.214])
	by lynxeye.de (Postfix) with ESMTPA id 0D9ABE74011
	for <barebox@lists.infradead.org>; Thu,  2 Feb 2023 18:33:17 +0100 (CET)
From: Lucas Stach <l.stach@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu,  2 Feb 2023 18:33:09 +0100
Message-Id: <20230202173312.504493-2-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230202173312.504493-1-l.stach@pengutronix.de>
References: <20230202173312.504493-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230202_093355_381672_21B75A00 
X-CRM114-Status: GOOD (  12.20  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/5] nvmem: ocotp: switch to nvmem_regmap_register
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/nvmem/ocotp.c | 30 +-----------------------------
 1 file changed, 1 insertion(+), 29 deletions(-)

diff --git a/drivers/nvmem/ocotp.c b/drivers/nvmem/ocotp.c
index e75fac75eab8..78c9f9726db0 100644
--- a/drivers/nvmem/ocotp.c
+++ b/drivers/nvmem/ocotp.c
@@ -131,7 +131,6 @@ struct ocotp_priv {
 	struct regmap_config map_config;
 	const struct imx_ocotp_data *data;
 	int  mac_offset_idx;
-	struct nvmem_config config;
 };
 
 static struct ocotp_priv *imx_ocotp;
@@ -682,20 +681,6 @@ static int imx_ocotp_init_dt(struct ocotp_priv *priv)
 	return imx8m_feat_ctrl_init(priv->dev.parent, tester4, priv->data->feat);
 }
 
-static int imx_ocotp_write(void *ctx, unsigned offset, const void *val, size_t bytes)
-{
-	struct ocotp_priv *priv = ctx;
-
-	return regmap_bulk_write(priv->map, offset, val, bytes);
-}
-
-static int imx_ocotp_read(void *ctx, unsigned offset, void *val, size_t bytes)
-{
-	struct ocotp_priv *priv = ctx;
-
-	return regmap_bulk_read(priv->map, offset, val, bytes);
-}
-
 static void imx_ocotp_set_unique_machine_id(void)
 {
 	uint32_t unique_id_parts[UNIQUE_ID_NUM];
@@ -709,11 +694,6 @@ static void imx_ocotp_set_unique_machine_id(void)
 	machine_id_set_hashable(unique_id_parts, sizeof(unique_id_parts));
 }
 
-static const struct nvmem_bus imx_ocotp_nvmem_bus = {
-	.write = imx_ocotp_write,
-	.read  = imx_ocotp_read,
-};
-
 static int imx_ocotp_probe(struct device *dev)
 {
 	struct resource *iores;
@@ -751,15 +731,7 @@ static int imx_ocotp_probe(struct device *dev)
 	if (IS_ERR(priv->map))
 		return PTR_ERR(priv->map);
 
-	priv->config.name = "imx-ocotp";
-	priv->config.dev = dev;
-	priv->config.priv = priv;
-	priv->config.stride = 4;
-	priv->config.word_size = 4;
-	priv->config.size = data->num_regs;
-	priv->config.bus = &imx_ocotp_nvmem_bus;
-
-	nvmem = nvmem_register(&priv->config);
+	nvmem = nvmem_regmap_register(priv->map, "imx-ocotp");
 	if (IS_ERR(nvmem))
 		return PTR_ERR(nvmem);
 
-- 
2.39.1




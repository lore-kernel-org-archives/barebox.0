Delivery-date: Mon, 31 May 2021 09:25:36 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lncIq-00033M-So
	for lore@lore.pengutronix.de; Mon, 31 May 2021 09:25:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lncIp-00062a-ID
	for lore@pengutronix.de; Mon, 31 May 2021 09:25:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z53vynvho24AY9FBV81r+4U3z87aQzfB74Yuchd8IWE=; b=phlq9u4xNn5WnW
	FRvuACaIpldtSw8z1+AQG5HDYoNHO3SahRR7mDXYWfuGSw2SLBgxl5Tdt0aGtKWIG0HY9zic6/U/H
	cQuN6NLntWLTjxFyHsuMTOqLWNbhbSQwOBOk2pYo3MpLPb8kllnYCx+P3TG6O3ovfE28meJrJ8xhm
	XVnIXiJxWtVTKzEAeiC9Xq979XJspuSXs9dyiRTZAOJvDPgul9rVXKqZXNNx9x+p4kFbShFbyfYGH
	dKfAp9qTzx4CSwUaAMRCGnyRu3q4Tke5+1/CMxJWt+GiKZqbTBfeASVSBTR+CHlPq0YXfgBT3sPlD
	IYBHKuB+LK8mQBjEsCOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lncHg-00BAv2-56; Mon, 31 May 2021 07:24:24 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lncHS-00BAp4-0Y
 for barebox@lists.infradead.org; Mon, 31 May 2021 07:24:12 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lncHQ-0005Mh-Pg; Mon, 31 May 2021 09:24:08 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lncHQ-0001WW-CM; Mon, 31 May 2021 09:24:08 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 31 May 2021 09:24:06 +0200
Message-Id: <20210531072406.5630-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210531072406.5630-1-a.fatoum@pengutronix.de>
References: <20210531072406.5630-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210531_002410_090784_E027E56F 
X-CRM114-Status: GOOD (  18.51  )
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
Subject: [PATCH 5/5] nvmem: stm32-bsec: simplify using new
 nvmem_regmap_register
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The nvmem_regmap_register code is mostly copy-pasted from the stm32-bsec
driver, so have it use the new helper.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/nvmem/bsec.c | 92 ++++++--------------------------------------
 1 file changed, 11 insertions(+), 81 deletions(-)

diff --git a/drivers/nvmem/bsec.c b/drivers/nvmem/bsec.c
index f154864d266e..509a5fa872f7 100644
--- a/drivers/nvmem/bsec.c
+++ b/drivers/nvmem/bsec.c
@@ -21,9 +21,7 @@
 #define BSEC_OTP_SERIAL	13
 
 struct bsec_priv {
-	struct regmap *map;
 	u32 svc_id;
-	struct device_d dev;
 	struct regmap_config map_config;
 	struct nvmem_config config;
 };
@@ -72,59 +70,6 @@ static struct regmap_bus stm32_bsec_regmap_bus = {
 	.reg_read = stm32_bsec_read_shadow,
 };
 
-static int stm32_bsec_write(void *ctx, unsigned offset, const void *val, size_t bytes)
-{
-	struct bsec_priv *priv = ctx;
-
-	/* Allow only writing complete 32-bits aligned words */
-	if ((bytes % 4) || (offset % 4))
-		return -EINVAL;
-
-	return regmap_bulk_write(priv->map, offset, val, bytes);
-}
-
-static int stm32_bsec_read(void *ctx, unsigned offset, void *buf, size_t bytes)
-{
-	struct bsec_priv *priv = ctx;
-	u32 roffset, rbytes, val;
-	u8 *buf8 = buf, *val8 = (u8 *)&val;
-	int i, j = 0, ret, skip_bytes, size;
-
-	/* Round unaligned access to 32-bits */
-	roffset = rounddown(offset, 4);
-	skip_bytes = offset & 0x3;
-	rbytes = roundup(bytes + skip_bytes, 4);
-
-	if (roffset + rbytes > priv->config.size)
-		return -EINVAL;
-
-	for (i = roffset; i < roffset + rbytes; i += 4) {
-		ret = regmap_bulk_read(priv->map, i, &val, 4);
-		if (ret) {
-			dev_err(dev, "Can't read data%d (%d)\n", i, ret);
-			return ret;
-		}
-
-		/* skip first bytes in case of unaligned read */
-		if (skip_bytes)
-			size = min(bytes, 4 - skip_bytes);
-		else
-			size = min(bytes, 4);
-
-		memcpy(&buf8[j], &val8[skip_bytes], size);
-		bytes -= size;
-		j += size;
-		skip_bytes = 0;
-	}
-
-	return 0;
-}
-
-static const struct nvmem_bus stm32_bsec_nvmem_bus = {
-	.write = stm32_bsec_write,
-	.read  = stm32_bsec_read,
-};
-
 static void stm32_bsec_set_unique_machine_id(struct regmap *map)
 {
 	u32 unique_id[3];
@@ -151,9 +96,9 @@ static int stm32_bsec_read_mac(struct regmap *map, int offset, u8 *mac)
 	return 0;
 }
 
-static void stm32_bsec_init_dt(struct bsec_priv *priv)
+static void stm32_bsec_init_dt(struct device_d *dev, struct regmap *map)
 {
-	struct device_node *node = priv->dev.parent->device_node;
+	struct device_node *node = dev->device_node;
 	struct device_node *rnode;
 	u32 phandle, offset;
 	char mac[ETH_ALEN];
@@ -162,9 +107,6 @@ static void stm32_bsec_init_dt(struct bsec_priv *priv)
 	int len;
 	int ret;
 
-	if (!node)
-		return;
-
 	prop = of_get_property(node, "barebox,provide-mac-address", &len);
 	if (!prop)
 		return;
@@ -177,10 +119,9 @@ static void stm32_bsec_init_dt(struct bsec_priv *priv)
 	rnode = of_find_node_by_phandle(phandle);
 	offset = be32_to_cpup(prop++);
 
-	ret = stm32_bsec_read_mac(priv->map, offset, mac);
+	ret = stm32_bsec_read_mac(map, offset, mac);
 	if (ret) {
-		dev_warn(&priv->dev, "error setting MAC address: %s\n",
-			 strerror(-ret));
+		dev_warn(dev, "error setting MAC address: %s\n", strerror(-ret));
 		return;
 	}
 
@@ -189,6 +130,7 @@ static void stm32_bsec_init_dt(struct bsec_priv *priv)
 
 static int stm32_bsec_probe(struct device_d *dev)
 {
+	struct regmap *map;
 	struct bsec_priv *priv;
 	int ret = 0;
 	const struct stm32_bsec_data *data;
@@ -202,35 +144,23 @@ static int stm32_bsec_probe(struct device_d *dev)
 
 	priv->svc_id = data->svc_id;
 
-	dev_set_name(&priv->dev, "bsec");
-	priv->dev.parent = dev;
-	register_device(&priv->dev);
-
 	priv->map_config.reg_bits = 32;
 	priv->map_config.val_bits = 32;
 	priv->map_config.reg_stride = 4;
 	priv->map_config.max_register = data->num_regs;
 
-	priv->map = regmap_init(dev, &stm32_bsec_regmap_bus, priv, &priv->map_config);
-	if (IS_ERR(priv->map))
-		return PTR_ERR(priv->map);
-
-	priv->config.name = "stm32-bsec";
-	priv->config.priv = priv;
-	priv->config.dev = dev;
-	priv->config.stride = 1;
-	priv->config.word_size = 1;
-	priv->config.size = data->num_regs;
-	priv->config.bus = &stm32_bsec_nvmem_bus;
+	map = regmap_init(dev, &stm32_bsec_regmap_bus, priv, &priv->map_config);
+	if (IS_ERR(map))
+		return PTR_ERR(map);
 
-	nvmem = nvmem_register(&priv->config);
+	nvmem = nvmem_regmap_register(map, "stm32-bsec");
 	if (IS_ERR(nvmem))
 		return PTR_ERR(nvmem);
 
 	if (IS_ENABLED(CONFIG_MACHINE_ID))
-		stm32_bsec_set_unique_machine_id(priv->map);
+		stm32_bsec_set_unique_machine_id(map);
 
-	stm32_bsec_init_dt(priv);
+	stm32_bsec_init_dt(dev, map);
 
 	return 0;
 }
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


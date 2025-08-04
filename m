Delivery-date: Mon, 04 Aug 2025 17:32:15 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uixAd-006z9G-0m
	for lore@lore.pengutronix.de;
	Mon, 04 Aug 2025 17:32:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uixAZ-0006JX-Tk
	for lore@pengutronix.de; Mon, 04 Aug 2025 17:32:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yomN/HjLdf2xMqlQNKyStWUt6v3ou0ot+6DyZNZzYxc=; b=H2nvtpAQTtrmafGVq+BWfcIWgK
	0wK0611kDhP+Yoz00qjEQ89x7hojBRsCv37u7t6p2aPE0pTtkumUde6CUuVIYO8ye3lBsTsdBbXVx
	HMjZQiWDL/WGkrREKM5cmejhnKyEcx61Y/viqQISRM/JoETxBB0obonrSqcEegYOIrLp23uwtUv5P
	NtjKattNLb0FNix2r6QjbkfqAsujuhFMZxJtg5YqqkI+lWX3krnMbulEXpQSo6hVarM2yftVEDYqo
	GTwKIuNK+GImN8xgvVqs1AARaMp2eIOzpHv6QsQ/gtZrxGo79qH3gvGOXXDPpwj9k6m6lB0LKxVA7
	i+jQD+/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uix9u-0000000Ao4T-0nmI;
	Mon, 04 Aug 2025 15:31:30 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uiwJ8-0000000Ags2-1sTe
	for barebox@bombadil.infradead.org;
	Mon, 04 Aug 2025 14:36:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=yomN/HjLdf2xMqlQNKyStWUt6v3ou0ot+6DyZNZzYxc=; b=OknQNIiDEYToOwPurTXyGpbCRZ
	JwyzE5JlkG6tHfIzEZkRdVWXgdYWAUZgLsCB/B18hdfndjAAYOAH04dK93SR+3eRXebWMufg7fIUw
	OZDhIcp1MQ1gXAtxdfCtNb4xnO01b3IzTCL3uKkAoeUh0uMcV0l4l0YN+zdWgQcf9CwCs8eA4j2eC
	C5D+aiof15GUoNlL9+ICZWwozTAkGQWjmEngqXCF7tGnsFgXMTi8oQgvGJC1zxXEhPmiOSB1P4Kkd
	9TNQsMIqLT17X1sopGvtZ+QrLRZcUYfBRQUE1F74pGUYoqslpAZIuv9UwK4BMS2UBF8rtcMSYQZeX
	+vgRUosw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uiwJ4-0000000DrsO-31Pe
	for barebox@lists.infradead.org;
	Mon, 04 Aug 2025 14:36:57 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1uiwIz-0000aW-MN; Mon, 04 Aug 2025 16:36:49 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Mon, 04 Aug 2025 16:37:01 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250804-v2025-06-0-topic-nvmem-v1-15-7603eaa4d2b0@pengutronix.de>
References: <20250804-v2025-06-0-topic-nvmem-v1-0-7603eaa4d2b0@pengutronix.de>
In-Reply-To: <20250804-v2025-06-0-topic-nvmem-v1-0-7603eaa4d2b0@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Marco Felsch <m.felsch@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250804_153655_220243_05460EA7 
X-CRM114-Status: GOOD (  16.60  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 15/15] nvmem: core: drop global cell_post_process
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Switch to the cell local read_post_process() hook and drop the global
nvmem cell_post_process() hook to align our code base with Linux, to
make it easier to port nvmem(-layout) drivers.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/nvmem/core.c           | 10 +---------
 drivers/nvmem/imx-ocotp-ele.c  |  8 +++++++-
 drivers/nvmem/internals.h      |  1 -
 drivers/nvmem/ocotp.c          |  8 +++++++-
 drivers/nvmem/regmap.c         |  5 +++--
 include/linux/nvmem-provider.h | 12 ++++++------
 6 files changed, 24 insertions(+), 20 deletions(-)

diff --git a/drivers/nvmem/core.c b/drivers/nvmem/core.c
index 7f4fd329c196efa3baac2c97016d6651d4c140a3..fb5860bf03956170cb1d32ca21c36568387f1cf9 100644
--- a/drivers/nvmem/core.c
+++ b/drivers/nvmem/core.c
@@ -444,7 +444,6 @@ struct nvmem_device *nvmem_register(const struct nvmem_config *config)
 	nvmem->priv = config->priv;
 	INIT_LIST_HEAD(&nvmem->cells);
 	nvmem->fixup_dt_cell_info = config->fixup_dt_cell_info;
-	nvmem->cell_post_process = config->cell_post_process;
 
 	rval = nvmem_add_cells_from_legacy_of(nvmem);
 	if (rval)
@@ -844,13 +843,6 @@ static int __nvmem_cell_read(struct nvmem_device *nvmem,
 			return rc;
 	}
 
-	if (nvmem->cell_post_process) {
-		rc = nvmem->cell_post_process(nvmem->priv, id, index,
-					      cell->offset, buf, cell->bytes);
-		if (rc)
-			return rc;
-	}
-
 	if (len)
 		*len = cell->bytes;
 
@@ -953,7 +945,7 @@ static int __nvmem_cell_entry_write(struct nvmem_cell_entry *cell, const void *b
 		return -EINVAL;
 
 	/*
-	 * Any cells which have a cell_post_process hook are read-only because
+	 * Any cells which have a read_post_process hook are read-only because
 	 * we cannot reverse the operation and it might affect other cells,
 	 * too.
 	 */
diff --git a/drivers/nvmem/imx-ocotp-ele.c b/drivers/nvmem/imx-ocotp-ele.c
index 8ac4e2a9a6c87f128ff9aaf16d1238ef129d91ca..797c6f8d7a2a069fbf342c517031eb5dc3f09d7a 100644
--- a/drivers/nvmem/imx-ocotp-ele.c
+++ b/drivers/nvmem/imx-ocotp-ele.c
@@ -128,6 +128,12 @@ static int imx_ocotp_cell_pp(void *context, const char *id, int index,
 	return 0;
 }
 
+static void imx_ocotp_fixup_dt_cell_info(struct nvmem_device *nvmem,
+					 struct nvmem_cell_info *cell)
+{
+	cell->read_post_process = imx_ocotp_cell_pp;
+}
+
 static struct regmap_bus imx_ocotp_regmap_bus = {
 	.reg_write = imx_ocotp_reg_write,
 	.reg_read = imx_ocotp_reg_read,
@@ -192,7 +198,7 @@ static int imx_ele_ocotp_probe(struct device *dev)
 		imx_ocotp_set_unique_machine_id(priv);
 
 	nvmem = nvmem_regmap_register_with_pp(priv->map, "imx_ocotp",
-					      imx_ocotp_cell_pp);
+					      imx_ocotp_fixup_dt_cell_info);
 	if (IS_ERR(nvmem))
 		return PTR_ERR(nvmem);
 
diff --git a/drivers/nvmem/internals.h b/drivers/nvmem/internals.h
index 10e11ad79bc32364d542c5320e70fb0377e83478..1e050df78621f8cce751577365107bfa16766374 100644
--- a/drivers/nvmem/internals.h
+++ b/drivers/nvmem/internals.h
@@ -21,7 +21,6 @@ struct nvmem_device {
 	void			*priv;
 	struct nvmem_layout	*layout;
 	struct list_head	cells;
-	nvmem_cell_post_process_t cell_post_process;
 	void (*fixup_dt_cell_info)(struct nvmem_device *nvmem,
 				   struct nvmem_cell_info *cell);
 	int			(*reg_write)(void *ctx, unsigned int reg,
diff --git a/drivers/nvmem/ocotp.c b/drivers/nvmem/ocotp.c
index d4510d4b89ba404c0b0537afc01075cac501042c..7bca27540417ad9ba0ce5c5f8ec43ad1c63638b9 100644
--- a/drivers/nvmem/ocotp.c
+++ b/drivers/nvmem/ocotp.c
@@ -803,6 +803,12 @@ static int imx_ocotp_cell_pp(void *context, const char *id, int index,
 	return 0;
 }
 
+static void imx_ocotp_fixup_dt_cell_info(struct nvmem_device *nvmem,
+					 struct nvmem_cell_info *cell)
+{
+	cell->read_post_process = imx_ocotp_cell_pp;
+}
+
 static int imx_ocotp_init_dt(struct ocotp_priv *priv)
 {
 	char mac[MAC_BYTES];
@@ -898,7 +904,7 @@ static int imx_ocotp_probe(struct device *dev)
 		return PTR_ERR(priv->map);
 
 	nvmem = nvmem_regmap_register_with_pp(priv->map, "imx-ocotp",
-					      imx_ocotp_cell_pp);
+					      imx_ocotp_fixup_dt_cell_info);
 	if (IS_ERR(nvmem))
 		return PTR_ERR(nvmem);
 
diff --git a/drivers/nvmem/regmap.c b/drivers/nvmem/regmap.c
index 24712fbb0f332e98474955aa433c0a5e02502054..d35814c9a2a955926781768fb3e1126b6f041c26 100644
--- a/drivers/nvmem/regmap.c
+++ b/drivers/nvmem/regmap.c
@@ -65,7 +65,8 @@ static int nvmem_regmap_read(void *ctx, unsigned offset, void *buf, size_t bytes
 
 struct nvmem_device *
 nvmem_regmap_register_with_pp(struct regmap *map, const char *name,
-			      nvmem_cell_post_process_t cell_post_process)
+			      void (*fixup_dt_cell_info)(struct nvmem_device *nvmem,
+							 struct nvmem_cell_info *cell))
 {
 	struct nvmem_config config = {};
 
@@ -79,7 +80,7 @@ nvmem_regmap_register_with_pp(struct regmap *map, const char *name,
 	config.stride = 1;
 	config.word_size = 1;
 	config.size = regmap_size_bytes(map);
-	config.cell_post_process = cell_post_process;
+	config.fixup_dt_cell_info = fixup_dt_cell_info;
 	config.reg_write = nvmem_regmap_write;
 	config.reg_read = nvmem_regmap_read;
 
diff --git a/include/linux/nvmem-provider.h b/include/linux/nvmem-provider.h
index e1e7d8871d67465157191e7e6a46b400a285e834..2ea2a20d9efbcd704c347da9d0bd77bfaf14be61 100644
--- a/include/linux/nvmem-provider.h
+++ b/include/linux/nvmem-provider.h
@@ -84,7 +84,6 @@ struct nvmem_config {
 	int			word_size;
 	int			stride;
 	void			*priv;
-	nvmem_cell_post_process_t cell_post_process;
 };
 
 /**
@@ -120,8 +119,9 @@ struct cdev;
 
 struct nvmem_device *nvmem_register(const struct nvmem_config *cfg);
 struct nvmem_device *nvmem_regmap_register(struct regmap *regmap, const char *name);
-struct nvmem_device *nvmem_regmap_register_with_pp(struct regmap *regmap,
-		const char *name, nvmem_cell_post_process_t cell_post_process);
+struct nvmem_device *nvmem_regmap_register_with_pp(struct regmap *map, const char *name,
+			      void (*fixup_dt_cell_info)(struct nvmem_device *nvmem,
+							 struct nvmem_cell_info *cell));
 struct device *nvmem_device_get_device(struct nvmem_device *nvmem);
 int nvmem_add_one_cell(struct nvmem_device *nvmem,
 		       const struct nvmem_cell_info *info);
@@ -145,9 +145,9 @@ static inline struct nvmem_device *nvmem_regmap_register(struct regmap *regmap,
 	return ERR_PTR(-ENOSYS);
 }
 
-static inline struct nvmem_device *
-nvmem_regmap_register_with_pp(struct regmap *regmap, const char *name,
-			      nvmem_cell_post_process_t cell_post_process)
+struct nvmem_device *nvmem_regmap_register_with_pp(struct regmap *map, const char *name,
+			      void (*fixup_dt_cell_info)(struct nvmem_device *nvmem,
+							 struct nvmem_cell_info *cell))
 {
 	return ERR_PTR(-ENOSYS);
 }

-- 
2.39.5




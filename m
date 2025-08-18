Delivery-date: Mon, 18 Aug 2025 20:31:20 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uo4dc-001yWI-2U
	for lore@lore.pengutronix.de;
	Mon, 18 Aug 2025 20:31:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uo4dX-00042u-5I
	for lore@pengutronix.de; Mon, 18 Aug 2025 20:31:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=U3ideC2MruhAS6Ky9LnCaskA87oFASI9Ksd6h0Yl8g0=; b=u6BdLdDG0cKuVodpfaXc7PAk1s
	LcyUISRqhdspfODGBqWq/71rbv5l4xVXtHxSx/kq6O3tpfbZ+cNAwFQeEhU0J8wHEqXNA5SzJnDPr
	lF1DveF7+o7P8UKhYgMfUc5p1FN4HW0xd1jX9HI5W9rfU633Fend4cdmyle6P3d25o0aS5lVlfFlD
	LkPDsJpwkrm4asm1nntUoiw6RVKy0EVAiO1BiwtUYOPu/QjBjiprWRn7V1oYKKXXHG36jdVjwjnEz
	W97r/TlJra2s85JymHgkHza64qKtaklc/Z5uhv52zWmy75k2/tXbpGlgqeXwGGcHkUCeXuAPuQb5k
	Jb495wKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uo4cq-00000008LTj-2Skf;
	Mon, 18 Aug 2025 18:30:32 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uo3uY-00000008F68-3SYF
	for barebox@bombadil.infradead.org;
	Mon, 18 Aug 2025 17:44:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=U3ideC2MruhAS6Ky9LnCaskA87oFASI9Ksd6h0Yl8g0=; b=qOaz53InoUYQG+TbVIf51Mqsj3
	rV9PsDVoE/UOr8nDsmyPNo7IbTQrqg40vQhZUAYQSZZtKIgwLfIrzQjfWcU/jsTV+nX2js1kBANnG
	i9H3lEtD2GavxlLlUSETZEttjrV5rVaHzu2reosIPUOjDZfnQVsOwsE9jgDXKOdORQckllKZbgyBe
	O8yPwpDq0kgvTSyiZE36i1WERIyRSzAUkNZrK21dFU5OU+HlvVBREc+ywjZHrTJn5vmycwAx5yyB8
	55YwusdgaYsPvTjrz2QxPD2U/dTXl5GJ0NwFjBYOtYmoYdjGBT9Ck6LihhrOkrc5ebNo2r+38jsw8
	AJ0abFaQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uo3uT-0000000HStJ-1QAb
	for barebox@lists.infradead.org;
	Mon, 18 Aug 2025 17:44:45 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1uo3uR-0003aK-28; Mon, 18 Aug 2025 19:44:39 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Mon, 18 Aug 2025 19:44:49 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250818-v2025-06-0-topic-nvmem-v2-15-b6d677f6c519@pengutronix.de>
References: <20250818-v2025-06-0-topic-nvmem-v2-0-b6d677f6c519@pengutronix.de>
In-Reply-To: <20250818-v2025-06-0-topic-nvmem-v2-0-b6d677f6c519@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Marco Felsch <m.felsch@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250818_184441_719449_636FBB99 
X-CRM114-Status: GOOD (  16.39  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 15/15] nvmem: core: drop global cell_post_process
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
index f3fda9288b494f38dc192f9a51fac9c7936a7ee3..8d6cd0d37db8bff7eddb2ac6f94d888dbfb86b46 100644
--- a/drivers/nvmem/core.c
+++ b/drivers/nvmem/core.c
@@ -474,7 +474,6 @@ struct nvmem_device *nvmem_register(const struct nvmem_config *config)
 	nvmem->priv = config->priv;
 	INIT_LIST_HEAD(&nvmem->cells);
 	nvmem->fixup_dt_cell_info = config->fixup_dt_cell_info;
-	nvmem->cell_post_process = config->cell_post_process;
 
 	rval = nvmem_add_cells_from_legacy_of(nvmem);
 	if (rval)
@@ -874,13 +873,6 @@ static int __nvmem_cell_read(struct nvmem_device *nvmem,
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
 
@@ -983,7 +975,7 @@ static int __nvmem_cell_entry_write(struct nvmem_cell_entry *cell, const void *b
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
index 43f2e8c1d4ab04fbf713f9441f36d91174238a15..ecc65949ba10c654119ce87e2b2afc5474941d56 100644
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
index a7b18856f0bbf673b818575c1d4b1b7a9c881472..98e57909eb508840edc6a9c2390b92978c414689 100644
--- a/drivers/nvmem/regmap.c
+++ b/drivers/nvmem/regmap.c
@@ -129,7 +129,8 @@ static int nvmem_regmap_protect(void *ctx, unsigned int offset, size_t bytes,
 
 struct nvmem_device *
 nvmem_regmap_register_with_pp(struct regmap *map, const char *name,
-			      nvmem_cell_post_process_t cell_post_process)
+			      void (*fixup_dt_cell_info)(struct nvmem_device *nvmem,
+							 struct nvmem_cell_info *cell))
 {
 	struct nvmem_config config = {};
 
@@ -143,7 +144,7 @@ nvmem_regmap_register_with_pp(struct regmap *map, const char *name,
 	config.stride = 1;
 	config.word_size = 1;
 	config.size = regmap_size_bytes(map);
-	config.cell_post_process = cell_post_process;
+	config.fixup_dt_cell_info = fixup_dt_cell_info;
 	config.reg_write = nvmem_regmap_write;
 	config.reg_read = nvmem_regmap_read;
 	config.reg_protect = nvmem_regmap_protect;
diff --git a/include/linux/nvmem-provider.h b/include/linux/nvmem-provider.h
index 430e541ac0ef43acf64eafed5ab7e97dbe491c04..040f1026a7052e8d7afc68e42348ba5a5a4c9098 100644
--- a/include/linux/nvmem-provider.h
+++ b/include/linux/nvmem-provider.h
@@ -86,7 +86,6 @@ struct nvmem_config {
 	int			word_size;
 	int			stride;
 	void			*priv;
-	nvmem_cell_post_process_t cell_post_process;
 };
 
 /**
@@ -122,8 +121,9 @@ struct cdev;
 
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
@@ -147,9 +147,9 @@ static inline struct nvmem_device *nvmem_regmap_register(struct regmap *regmap,
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




Delivery-date: Thu, 02 Feb 2023 18:35:33 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pNdUl-00BdiB-7o
	for lore@lore.pengutronix.de; Thu, 02 Feb 2023 18:35:33 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pNdUi-0004wQ-KH
	for lore@pengutronix.de; Thu, 02 Feb 2023 18:35:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=PhgsQUssL8zNpe/y2jxal8t7mNWkIJcrPlWh+EAPR5Y=; b=ryu+JwjjJU+ifDB3MfLjWffaxv
	BnhOn1WX9lFRCDc/bAFjfklF0XNjiz+j3eQFB/g/56N8OHpgb4ACgKQg6+D8F1f64IttzJWQp4fKQ
	OA1K9/ZZz6LUeyPBp8l1abR6qk0spxjKoRChK6oWFoMtZYn/h2CSWfNEv5UKeoTRZfvtKnWKjka9R
	cBw4eNPEjtusKyHnP0bdV5L0/O3g5R3Y0gS2oYqnpbLLM1blnbZLPKCL3qSxARShabbCZbkIVJdrJ
	hd18EnME4YUc4s9OU/YPdpt/7JvBLT5tM2TJ3QA+0BaHQsnP6pjzx58wMoetxoembbafn0KVHYQ30
	uiQjlhsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNdTI-00Gog7-PP; Thu, 02 Feb 2023 17:34:04 +0000
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNdT9-00Gob1-4b
	for barebox@lists.infradead.org; Thu, 02 Feb 2023 17:33:59 +0000
Received: by lynxeye.de (Postfix, from userid 501)
	id B8800E74018; Thu,  2 Feb 2023 18:33:19 +0100 (CET)
Received: from astat.fritz.box (a89-183-231-214.net-htp.de [89.183.231.214])
	by lynxeye.de (Postfix) with ESMTPA id CDC5FE74008
	for <barebox@lists.infradead.org>; Thu,  2 Feb 2023 18:33:17 +0100 (CET)
From: Lucas Stach <l.stach@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu,  2 Feb 2023 18:33:08 +0100
Message-Id: <20230202173312.504493-1-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230202_093355_499978_BF10DF21 
X-CRM114-Status: GOOD (  16.43  )
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
Subject: [PATCH 1/5] nvmem: add support for post processing
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This is a port of the Linux commit 5008062f1c3f ("nvmem: core: add nvmem
cell post processing callback"). It looks a little different, as Linux
switched to create nvmem cells at registration time, effectively
deduplicating the cells, but then needed to introduce nvmem_cells_entry
to be able to store the lookup name, which is used by the post-processing.

As Barebox simply created a nvmem cell per lookup, as Linux did before
e888d445ac33 ("nvmem: resolve cells from DT at registration time"), we
can simply store the lookup name in the cell.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/nvmem/core.c           | 12 ++++++++++++
 include/linux/nvmem-provider.h |  6 ++++++
 2 files changed, 18 insertions(+)

diff --git a/drivers/nvmem/core.c b/drivers/nvmem/core.c
index cd3328a650d6..e0110296f87b 100644
--- a/drivers/nvmem/core.c
+++ b/drivers/nvmem/core.c
@@ -26,10 +26,12 @@ struct nvmem_device {
 	bool			read_only;
 	struct cdev		cdev;
 	void			*priv;
+	nvmem_cell_post_process_t cell_post_process;
 };
 
 struct nvmem_cell {
 	const char		*name;
+	const char		*id;
 	int			offset;
 	int			bytes;
 	int			bit_offset;
@@ -145,6 +147,7 @@ static struct nvmem_cell *nvmem_find_cell(const char *cell_id)
 static void nvmem_cell_drop(struct nvmem_cell *cell)
 {
 	list_del(&cell->node);
+	kfree(cell->id);
 	kfree(cell);
 }
 
@@ -209,6 +212,7 @@ struct nvmem_device *nvmem_register(const struct nvmem_config *config)
 	np = config->cdev ? config->cdev->device_node : config->dev->of_node;
 	nvmem->dev.of_node = np;
 	nvmem->priv = config->priv;
+	nvmem->cell_post_process = config->cell_post_process;
 
 	if (config->read_only || !config->bus->write || of_property_read_bool(np, "read-only"))
 		nvmem->read_only = true;
@@ -417,6 +421,7 @@ struct nvmem_cell *of_nvmem_cell_get(struct device_node *np,
 	cell->offset = be32_to_cpup(addr++);
 	cell->bytes = be32_to_cpup(addr);
 	cell->name = cell_np->name;
+	cell->id = kstrdup_const(name, GFP_KERNEL);
 
 	addr = of_get_property(cell_np, "bits", &len);
 	if (addr && len == (2 * sizeof(u32))) {
@@ -534,6 +539,13 @@ static int __nvmem_cell_read(struct nvmem_device *nvmem,
 	if (cell->bit_offset || cell->nbits)
 		nvmem_shift_read_buffer_in_place(cell, buf);
 
+	if (nvmem->cell_post_process) {
+		rc = nvmem->cell_post_process(nvmem->priv, cell->id,
+					      cell->offset, buf, cell->bytes);
+		if (rc)
+			return rc;
+	}
+
 	*len = cell->bytes;
 
 	return 0;
diff --git a/include/linux/nvmem-provider.h b/include/linux/nvmem-provider.h
index 1d4e1b75b204..2f130e51791c 100644
--- a/include/linux/nvmem-provider.h
+++ b/include/linux/nvmem-provider.h
@@ -22,6 +22,11 @@ struct nvmem_bus {
 	int (*read)(void *ctx, unsigned int reg, void *val, size_t val_size);
 };
 
+/* used for vendor specific post processing of cell data */
+typedef int (*nvmem_cell_post_process_t)(void *priv, const char *id,
+					 unsigned int offset, void *buf,
+					 size_t bytes);
+
 struct nvmem_config {
 	struct device		*dev;
 	const char		*name;
@@ -32,6 +37,7 @@ struct nvmem_config {
 	int			size;
 	const struct nvmem_bus	*bus;
 	void			*priv;
+	nvmem_cell_post_process_t cell_post_process;
 };
 
 struct regmap;
-- 
2.39.1




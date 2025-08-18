Delivery-date: Mon, 18 Aug 2025 20:31:18 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uo4db-001yVb-0D
	for lore@lore.pengutronix.de;
	Mon, 18 Aug 2025 20:31:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uo4dW-00042T-MI
	for lore@pengutronix.de; Mon, 18 Aug 2025 20:31:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=C7X+zhCRWtxeywjB/094GObifrOzqMEOWpifLw/2a08=; b=KNIvIW19U10mFMD4cqKfhWvkd5
	6j3TkUb9MCTqjIQZXMKJOwqZpS96qlRrXWKMYp0x46l94IHnyo/JpYcntK4aRZLqrKqqy+gPYD4cJ
	s9Si3zCW7ogxbE7/5w2w8gMEt6wkg0ExBaNkMCtoDL7wrKUyKVOyI/Wi07pe+SGUPp/ijNKgZ4MK4
	tvsbiCGfKG/NvEe0dNR6tAP165wf1FTL4IfRcj1wjdWw0hDkAyWCuTJY4ltFW9E47a9xPI/y9LFDW
	OoquYrQ0+a22EkVKy0NTayAkbrlKiJOObmTlDL+R+9whvTpu2cdTZFTsoYlb7oDdDhz0t7+k/pNdM
	qp0YIt4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uo4co-00000008LQM-1gSl;
	Mon, 18 Aug 2025 18:30:30 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uo3uX-00000008F5P-1fHc
	for barebox@bombadil.infradead.org;
	Mon, 18 Aug 2025 17:44:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=C7X+zhCRWtxeywjB/094GObifrOzqMEOWpifLw/2a08=; b=AXQ4ATM82pWUsIlxnVspKOYXg5
	/UMJ3HvgSroSvUX5xBnjgLUMiEVqucuH0wi4DQhbfsg1hM86QzlbNg+vg4Lm0idWLOs1dzyi+CN6S
	5YupdyeXucQBdhFqgEfvAK1YOmRvaj45+ZGTaAiBIQVu2MfwKAvpAYkBS0Zh6BcFwH7tIx36T0hU2
	aEKp7PHzEGL1kdGjwu+K8CzcpZrZrOuHno/5JHykTXK4RFx9mOGQ3hbOI7sniaGrB8VRj7uCsbMEk
	7zmXnSZJsZYmTLdMsar+W7tPbEQ9FyFtY0blEMcCRPkZC1riIllFKG01MiT/QMr3Lx+o5bV1btftY
	F6ONKgUQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uo3uS-0000000HSt9-3PZp
	for barebox@lists.infradead.org;
	Mon, 18 Aug 2025 17:44:44 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1uo3uQ-0003aK-O5; Mon, 18 Aug 2025 19:44:38 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Mon, 18 Aug 2025 19:44:39 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250818-v2025-06-0-topic-nvmem-v2-5-b6d677f6c519@pengutronix.de>
References: <20250818-v2025-06-0-topic-nvmem-v2-0-b6d677f6c519@pengutronix.de>
In-Reply-To: <20250818-v2025-06-0-topic-nvmem-v2-0-b6d677f6c519@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Marco Felsch <m.felsch@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250818_184441_217534_6EC5750F 
X-CRM114-Status: GOOD (  24.72  )
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
Subject: [PATCH v2 05/15] nvmem: core: sync with Linux
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Partly (re-)sync the nvmem core with Linux. The main changes are:
  - The nvmem_cell struct was split into nvmem_cell and nvmem_cell_entry
  - The cells are now parsed and registered during nvmem_register(), no
    longer during of_nvmem_cell_get()
  - The registered cells are now tracked per nvmem device, no longer in
    a global nvmem_cells list

The sync is in preparation of adding nvmem-layout driver support and
features like accessing nvmem-cells via cdevs.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/nvmem/core.c           | 428 ++++++++++++++++++++++++++---------------
 include/linux/nvmem-consumer.h |  17 +-
 include/linux/nvmem-provider.h |  58 +++++-
 3 files changed, 326 insertions(+), 177 deletions(-)

diff --git a/drivers/nvmem/core.c b/drivers/nvmem/core.c
index dd332921e4c3d9192ff8e311ebfc4fba1134719c..c252f17ef0b24e8199e199db086aeec8d09fdf94 100644
--- a/drivers/nvmem/core.c
+++ b/drivers/nvmem/core.c
@@ -25,6 +25,7 @@ struct nvmem_device {
 	bool			read_only;
 	struct cdev		cdev;
 	void			*priv;
+	struct list_head	cells;
 	nvmem_cell_post_process_t cell_post_process;
 	int			(*reg_write)(void *ctx, unsigned int reg,
 					     const void *val, size_t val_size);
@@ -34,18 +35,23 @@ struct nvmem_device {
 					       size_t bytes, int prot);
 };
 
-struct nvmem_cell {
+struct nvmem_cell_entry {
 	const char		*name;
-	const char		*id;
 	int			offset;
+	size_t			raw_len;
 	int			bytes;
 	int			bit_offset;
 	int			nbits;
+	struct device_node	*np;
 	struct nvmem_device	*nvmem;
 	struct list_head	node;
 };
 
-static LIST_HEAD(nvmem_cells);
+struct nvmem_cell {
+	struct nvmem_cell_entry *entry;
+	const char		*id;
+};
+
 static LIST_HEAD(nvmem_devs);
 
 void nvmem_devices_print(void)
@@ -161,40 +167,40 @@ static struct nvmem_device *of_nvmem_find(struct device_node *nvmem_np)
 	return NULL;
 }
 
-static struct nvmem_cell *nvmem_find_cell(const char *cell_id)
+static void nvmem_cell_entry_drop(struct nvmem_cell_entry *cell)
 {
-	struct nvmem_cell *p;
-
-	list_for_each_entry(p, &nvmem_cells, node)
-		if (!strcmp(p->name, cell_id))
-			return p;
-
-	return NULL;
+	list_del(&cell->node);
+	of_node_put(cell->np);
+	kfree_const(cell->name);
+	kfree(cell);
 }
 
-static void nvmem_cell_drop(struct nvmem_cell *cell)
+static void nvmem_device_remove_all_cells(const struct nvmem_device *nvmem)
 {
-	list_del(&cell->node);
-	kfree_const(cell->id);
-	kfree(cell);
+	struct nvmem_cell_entry *cell, *p;
+
+	list_for_each_entry_safe(cell, p, &nvmem->cells, node)
+		nvmem_cell_entry_drop(cell);
 }
 
-static void nvmem_cell_add(struct nvmem_cell *cell)
+static void nvmem_cell_entry_add(struct nvmem_cell_entry *cell)
 {
-	list_add_tail(&cell->node, &nvmem_cells);
+	list_add_tail(&cell->node, &cell->nvmem->cells);
 }
 
-static int nvmem_cell_info_to_nvmem_cell(struct nvmem_device *nvmem,
-				   const struct nvmem_cell_info *info,
-				   struct nvmem_cell *cell)
+static int nvmem_cell_info_to_nvmem_cell_entry_nodup(struct nvmem_device *nvmem,
+						     const struct nvmem_cell_info *info,
+						     struct nvmem_cell_entry *cell)
 {
 	cell->nvmem = nvmem;
 	cell->offset = info->offset;
+	cell->raw_len = info->raw_len ?: info->bytes;
 	cell->bytes = info->bytes;
 	cell->name = info->name;
 
 	cell->bit_offset = info->bit_offset;
 	cell->nbits = info->nbits;
+	cell->np = info->np;
 
 	if (cell->nbits)
 		cell->bytes = DIV_ROUND_UP(cell->nbits + cell->bit_offset,
@@ -203,13 +209,110 @@ static int nvmem_cell_info_to_nvmem_cell(struct nvmem_device *nvmem,
 	if (!IS_ALIGNED(cell->offset, nvmem->stride)) {
 		dev_err(&nvmem->dev,
 			"cell %s unaligned to nvmem stride %d\n",
-			cell->name, nvmem->stride);
+			cell->name ?: "<unknown>", nvmem->stride);
 		return -EINVAL;
 	}
 
 	return 0;
 }
 
+static int nvmem_cell_info_to_nvmem_cell_entry(struct nvmem_device *nvmem,
+					       const struct nvmem_cell_info *info,
+					       struct nvmem_cell_entry *cell)
+{
+	int err;
+
+	err = nvmem_cell_info_to_nvmem_cell_entry_nodup(nvmem, info, cell);
+	if (err)
+		return err;
+
+	cell->name = kstrdup_const(info->name, GFP_KERNEL);
+	if (!cell->name)
+		return -ENOMEM;
+
+	return 0;
+}
+
+/**
+ * nvmem_add_one_cell() - Add one cell information to an nvmem device
+ *
+ * @nvmem: nvmem device to add cells to.
+ * @info: nvmem cell info to add to the device
+ *
+ * Return: 0 or negative error code on failure.
+ */
+int nvmem_add_one_cell(struct nvmem_device *nvmem,
+		       const struct nvmem_cell_info *info)
+{
+	struct nvmem_cell_entry *cell;
+	int rval;
+
+	cell = kzalloc(sizeof(*cell), GFP_KERNEL);
+	if (!cell)
+		return -ENOMEM;
+
+	rval = nvmem_cell_info_to_nvmem_cell_entry(nvmem, info, cell);
+	if (rval) {
+		kfree(cell);
+		return rval;
+	}
+
+	nvmem_cell_entry_add(cell);
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(nvmem_add_one_cell);
+
+static int nvmem_add_cells_from_dt(struct nvmem_device *nvmem, struct device_node *np)
+{
+	struct device *dev = &nvmem->dev;
+	struct device_node *child;
+	const __be32 *addr;
+	int len, ret;
+
+	if (!IS_ENABLED(CONFIG_OFTREE))
+		return 0;
+
+	for_each_child_of_node(np, child) {
+		struct nvmem_cell_info info = {0};
+
+		addr = of_get_property(child, "reg", &len);
+		if (!addr)
+			continue;
+		if (len < 2 * sizeof(u32)) {
+			dev_err(dev, "nvmem: invalid reg on %pOF\n", child);
+			of_node_put(child);
+			return -EINVAL;
+		}
+
+		info.offset = be32_to_cpup(addr++);
+		info.bytes = be32_to_cpup(addr);
+		info.name = basprintf("%pOFn", child);
+
+		addr = of_get_property(child, "bits", &len);
+		if (addr && len == (2 * sizeof(u32))) {
+			info.bit_offset = be32_to_cpup(addr++);
+			info.nbits = be32_to_cpup(addr);
+		}
+
+		info.np = of_node_get(child);
+
+		ret = nvmem_add_one_cell(nvmem, &info);
+		kfree(info.name);
+		if (ret) {
+			of_node_put(child);
+			return ret;
+		}
+	}
+
+	return 0;
+}
+
+static int nvmem_add_cells_from_legacy_of(struct nvmem_device *nvmem)
+{
+	return nvmem_add_cells_from_dt(nvmem, nvmem->dev.of_node);
+}
+
 /**
  * nvmem_register() - Register a nvmem device for given nvmem_config.
  *
@@ -242,8 +345,13 @@ struct nvmem_device *nvmem_register(const struct nvmem_config *config)
 	np = config->cdev ? cdev_of_node(config->cdev) : config->dev->of_node;
 	nvmem->dev.of_node = np;
 	nvmem->priv = config->priv;
+	INIT_LIST_HEAD(&nvmem->cells);
 	nvmem->cell_post_process = config->cell_post_process;
 
+	rval = nvmem_add_cells_from_legacy_of(nvmem);
+	if (rval)
+		goto err_remove_cells;
+
 	if (config->read_only || !config->reg_write || of_property_read_bool(np, "read-only"))
 		nvmem->read_only = true;
 
@@ -253,10 +361,8 @@ struct nvmem_device *nvmem_register(const struct nvmem_config *config)
 	dev_dbg(nvmem->dev.parent, "Registering nvmem device %s\n", config->name);
 
 	rval = register_device(&nvmem->dev);
-	if (rval) {
-		kfree(nvmem);
-		return ERR_PTR(rval);
-	}
+	if (rval)
+		goto err_remove_cells;
 
 	if (!config->cdev) {
 		rval = nvmem_register_cdev(nvmem, config->name);
@@ -270,6 +376,8 @@ struct nvmem_device *nvmem_register(const struct nvmem_config *config)
 
 err_unregister:
 	unregister_device(&nvmem->dev);
+err_remove_cells:
+	nvmem_device_remove_all_cells(nvmem);
 	kfree(nvmem);
 
 	return ERR_PTR(rval);
@@ -284,32 +392,21 @@ static int of_nvmem_device_ensure_probed(struct device_node *np)
 	return of_device_ensure_probed(np);
 }
 
-static struct nvmem_device *__nvmem_device_get(struct device_node *np,
-					       struct nvmem_cell **cellp,
-					       const char *cell_id)
+static struct nvmem_device *__nvmem_device_get(struct device_node *np)
 {
 	struct nvmem_device *nvmem = NULL;
 	int ret;
 
-	if (np) {
-		ret = of_nvmem_device_ensure_probed(np);
-		if (ret)
-			return ERR_PTR(ret);
-
-		nvmem = of_nvmem_find(np);
-		if (!nvmem)
-			return ERR_PTR(-EPROBE_DEFER);
-	} else {
-		struct nvmem_cell *cell = nvmem_find_cell(cell_id);
+	if (!np)
+		return ERR_PTR(-EINVAL);
 
-		if (cell) {
-			nvmem = cell->nvmem;
-			*cellp = cell;
-		}
+	ret = of_nvmem_device_ensure_probed(np);
+	if (ret)
+		return ERR_PTR(ret);
 
-		if (!nvmem)
-			return ERR_PTR(-ENOENT);
-	}
+	nvmem = of_nvmem_find(np);
+	if (!nvmem)
+		return ERR_PTR(-EPROBE_DEFER);
 
 	nvmem->users++;
 
@@ -340,6 +437,7 @@ struct nvmem_device *of_nvmem_device_get(struct device_node *np, const char *id)
 {
 
 	struct device_node *nvmem_np;
+	struct nvmem_device *nvmem;
 	int index = 0;
 
 	if (id)
@@ -349,7 +447,9 @@ struct nvmem_device *of_nvmem_device_get(struct device_node *np, const char *id)
 	if (!nvmem_np)
 		return ERR_PTR(-ENOENT);
 
-	return __nvmem_device_get(nvmem_np, NULL, NULL);
+	nvmem = __nvmem_device_get(nvmem_np);
+	of_node_put(nvmem_np);
+	return nvmem;
 }
 EXPORT_SYMBOL_GPL(of_nvmem_device_get);
 #endif
@@ -391,105 +491,100 @@ void nvmem_device_put(struct nvmem_device *nvmem)
 }
 EXPORT_SYMBOL_GPL(nvmem_device_put);
 
-static struct nvmem_cell *nvmem_cell_get_from_list(const char *cell_id)
+static struct nvmem_cell *nvmem_create_cell(struct nvmem_cell_entry *entry, const char *id)
 {
-	struct nvmem_cell *cell = NULL;
-	struct nvmem_device *nvmem;
+	struct nvmem_cell *cell;
+	const char *name = NULL;
 
-	nvmem = __nvmem_device_get(NULL, &cell, cell_id);
-	if (IS_ERR(nvmem))
-		return ERR_CAST(nvmem);
+	cell = kzalloc(sizeof(*cell), GFP_KERNEL);
+	if (!cell)
+		return ERR_PTR(-ENOMEM);
+
+	if (id) {
+		name = kstrdup_const(id, GFP_KERNEL);
+		if (!name) {
+			kfree(cell);
+			return ERR_PTR(-ENOMEM);
+		}
+	}
+
+	cell->id = name;
+	cell->entry = entry;
 
 	return cell;
 }
 
 #if IS_ENABLED(CONFIG_NVMEM) && IS_ENABLED(CONFIG_OFTREE)
+static struct nvmem_cell_entry *
+nvmem_find_cell_entry_by_node(struct nvmem_device *nvmem, struct device_node *np)
+{
+	struct nvmem_cell_entry *iter, *cell = NULL;
+
+	list_for_each_entry(iter, &nvmem->cells, node) {
+		if (np == iter->np) {
+			cell = iter;
+			break;
+		}
+	}
+
+	return cell;
+}
+
 /**
  * of_nvmem_cell_get() - Get a nvmem cell from given device node and cell id
  *
- * @dev node: Device tree node that uses the nvmem cell
- * @id: nvmem cell name from nvmem-cell-names property.
+ * @np: Device tree node that uses the nvmem cell.
+ * @id: nvmem cell name from nvmem-cell-names property, or NULL
+ *      for the cell at index 0 (the lone cell with no accompanying
+ *      nvmem-cell-names property).
  *
  * Return: Will be an ERR_PTR() on error or a valid pointer
  * to a struct nvmem_cell.  The nvmem_cell will be freed by the
  * nvmem_cell_put().
  */
-struct nvmem_cell *of_nvmem_cell_get(struct device_node *np,
-					    const char *name)
+struct nvmem_cell *of_nvmem_cell_get(struct device_node *np, const char *id)
 {
 	struct device_node *cell_np, *nvmem_np;
-	struct nvmem_cell *cell;
 	struct nvmem_device *nvmem;
-	const __be32 *addr;
-	int rval, len, index;
+	struct nvmem_cell_entry *cell_entry;
+	struct nvmem_cell *cell;
+	int index = 0;
 
-	index = of_property_match_string(np, "nvmem-cell-names", name);
+	/* if cell name exists, find index to the name */
+	if (id)
+		index = of_property_match_string(np, "nvmem-cell-names", id);
 
 	cell_np = of_parse_phandle(np, "nvmem-cells", index);
 	if (!cell_np)
-		return ERR_PTR(-EINVAL);
+		return ERR_PTR(-ENOENT);
 
 	nvmem_np = of_get_parent(cell_np);
 	if (nvmem_np && of_device_is_compatible(nvmem_np, "fixed-layout"))
 		nvmem_np = of_get_parent(nvmem_np);
-	if (!nvmem_np)
+	if (!nvmem_np) {
+		of_node_put(cell_np);
 		return ERR_PTR(-EINVAL);
-
-	nvmem = __nvmem_device_get(nvmem_np, NULL, NULL);
-	if (IS_ERR(nvmem))
-		return ERR_CAST(nvmem);
-
-	addr = of_get_property(cell_np, "reg", &len);
-	if (!addr || (len < 2 * sizeof(u32))) {
-		dev_err(&nvmem->dev, "nvmem: invalid reg on %pOF\n", cell_np);
-		rval  = -EINVAL;
-		goto err_mem;
-	}
-
-	cell = kzalloc(sizeof(*cell), GFP_KERNEL);
-	if (!cell) {
-		rval = -ENOMEM;
-		goto err_mem;
 	}
 
-	cell->nvmem = nvmem;
-	cell->offset = be32_to_cpup(addr++);
-	cell->bytes = be32_to_cpup(addr);
-	cell->name = cell_np->name;
-	cell->id = kstrdup_const(name, GFP_KERNEL);
-
-	addr = of_get_property(cell_np, "bits", &len);
-	if (addr && len == (2 * sizeof(u32))) {
-		cell->bit_offset = be32_to_cpup(addr++);
-		cell->nbits = be32_to_cpup(addr);
+	nvmem = __nvmem_device_get(nvmem_np);
+	of_node_put(nvmem_np);
+	if (IS_ERR(nvmem)) {
+		of_node_put(cell_np);
+		return ERR_CAST(nvmem);
 	}
 
-	if (cell->nbits)
-		cell->bytes = DIV_ROUND_UP(cell->nbits + cell->bit_offset,
-					   BITS_PER_BYTE);
-
-	if (cell->bytes < nvmem->word_size)
-		cell->bytes = nvmem->word_size;
-
-	if (!IS_ALIGNED(cell->offset, nvmem->stride)) {
-			dev_err(&nvmem->dev,
-				"cell %s unaligned to nvmem stride %d\n",
-				cell->name, nvmem->stride);
-		rval  = -EINVAL;
-		goto err_sanity;
+	cell_entry = nvmem_find_cell_entry_by_node(nvmem, cell_np);
+	of_node_put(cell_np);
+	if (!cell_entry) {
+		__nvmem_device_put(nvmem);
+		return ERR_PTR(-ENOENT);
 	}
 
-	nvmem_cell_add(cell);
+	cell = nvmem_create_cell(cell_entry, id);
+	if (IS_ERR(cell))
+		__nvmem_device_put(nvmem);
 
 	return cell;
-
-err_sanity:
-	kfree(cell);
-
-err_mem:
-	__nvmem_device_put(nvmem);
-
-	return ERR_PTR(rval);
 }
 EXPORT_SYMBOL_GPL(of_nvmem_cell_get);
 #endif
@@ -497,8 +592,9 @@ EXPORT_SYMBOL_GPL(of_nvmem_cell_get);
 /**
  * nvmem_cell_get() - Get nvmem cell of device form a given cell name
  *
- * @dev node: Device tree node that uses the nvmem cell
- * @id: nvmem cell name to get.
+ * @dev: Device that requests the nvmem cell.
+ * @id: nvmem cell name to get (this corresponds with the name from the
+ *      nvmem-cell-names property for DT systems)
  *
  * Return: Will be an ERR_PTR() on error or a valid pointer
  * to a struct nvmem_cell.  The nvmem_cell will be freed by the
@@ -514,29 +610,31 @@ struct nvmem_cell *nvmem_cell_get(struct device *dev, const char *cell_id)
 			return cell;
 	}
 
-	return nvmem_cell_get_from_list(cell_id);
+	return NULL;
 }
 EXPORT_SYMBOL_GPL(nvmem_cell_get);
 
 /**
  * nvmem_cell_put() - Release previously allocated nvmem cell.
  *
- * @cell: Previously allocated nvmem cell by nvmem_cell_get()
+ * @cell: Previously allocated nvmem cell by nvmem_cell_get().
  */
 void nvmem_cell_put(struct nvmem_cell *cell)
 {
-	struct nvmem_device *nvmem = cell->nvmem;
+	struct nvmem_device *nvmem = cell->entry->nvmem;
+
+	if (cell->id)
+		kfree_const(cell->id);
 
+	kfree(cell);
 	__nvmem_device_put(nvmem);
-	nvmem_cell_drop(cell);
 }
 EXPORT_SYMBOL_GPL(nvmem_cell_put);
 
-static inline void nvmem_shift_read_buffer_in_place(struct nvmem_cell *cell,
-						    void *buf)
+static void nvmem_shift_read_buffer_in_place(struct nvmem_cell_entry *cell, void *buf)
 {
 	u8 *p, *b;
-	int i, bit_offset = cell->bit_offset;
+	int i, extra, bit_offset = cell->bit_offset;
 
 	p = b = buf;
 	if (bit_offset) {
@@ -551,22 +649,28 @@ static inline void nvmem_shift_read_buffer_in_place(struct nvmem_cell *cell,
 			p = b;
 			*b++ >>= bit_offset;
 		}
-
-		/* result fits in less bytes */
-		if (cell->bytes != DIV_ROUND_UP(cell->nbits, BITS_PER_BYTE))
-			*p-- = 0;
+	} else {
+		/* point to the msb */
+		p += cell->bytes - 1;
 	}
+
+	/* result fits in less bytes */
+	extra = cell->bytes - DIV_ROUND_UP(cell->nbits, BITS_PER_BYTE);
+	while (--extra >= 0)
+		*p-- = 0;
+
 	/* clear msb bits if any leftover in the last byte */
-	*p &= GENMASK((cell->nbits%BITS_PER_BYTE) - 1, 0);
+	if (cell->nbits % BITS_PER_BYTE)
+		*p &= GENMASK((cell->nbits % BITS_PER_BYTE) - 1, 0);
 }
 
 static int __nvmem_cell_read(struct nvmem_device *nvmem,
-		      struct nvmem_cell *cell,
-		      void *buf, size_t *len)
+			     struct nvmem_cell_entry *cell,
+			     void *buf, size_t *len, const char *id)
 {
 	int rc;
 
-	rc = nvmem->reg_read(nvmem->priv, cell->offset, buf, cell->bytes);
+	rc = nvmem->reg_read(nvmem->priv, cell->offset, buf, cell->raw_len);
 	if (rc < 0)
 		return rc;
 
@@ -575,13 +679,14 @@ static int __nvmem_cell_read(struct nvmem_device *nvmem,
 		nvmem_shift_read_buffer_in_place(cell, buf);
 
 	if (nvmem->cell_post_process) {
-		rc = nvmem->cell_post_process(nvmem->priv, cell->id,
+		rc = nvmem->cell_post_process(nvmem->priv, id,
 					      cell->offset, buf, cell->bytes);
 		if (rc)
 			return rc;
 	}
 
-	*len = cell->bytes;
+	if (len)
+		*len = cell->bytes;
 
 	return 0;
 }
@@ -590,26 +695,28 @@ static int __nvmem_cell_read(struct nvmem_device *nvmem,
  * nvmem_cell_read() - Read a given nvmem cell
  *
  * @cell: nvmem cell to be read.
- * @len: pointer to length of cell which will be populated on successful read.
+ * @len: pointer to length of cell which will be populated on successful read;
+ *	 can be NULL.
  *
- * Return: ERR_PTR() on error or a valid pointer to a char * buffer on success.
- * The buffer should be freed by the consumer with a kfree().
+ * Return: ERR_PTR() on error or a valid pointer to a buffer on success. The
+ * buffer should be freed by the consumer with a kfree().
  */
 void *nvmem_cell_read(struct nvmem_cell *cell, size_t *len)
 {
-	struct nvmem_device *nvmem = cell->nvmem;
+	struct nvmem_cell_entry *entry = cell->entry;
+	struct nvmem_device *nvmem = entry->nvmem;
 	u8 *buf;
 	int rc;
 
 	if (!nvmem)
 		return ERR_PTR(-EINVAL);
 
-	buf = kzalloc(cell->bytes, GFP_KERNEL);
+	buf = kzalloc(max_t(size_t, entry->raw_len, entry->bytes), GFP_KERNEL);
 	if (!buf)
 		return ERR_PTR(-ENOMEM);
 
-	rc = __nvmem_cell_read(nvmem, cell, buf, len);
-	if (rc < 0) {
+	rc = __nvmem_cell_read(nvmem, cell->entry, buf, len, cell->id);
+	if (rc) {
 		kfree(buf);
 		return ERR_PTR(rc);
 	}
@@ -618,8 +725,8 @@ void *nvmem_cell_read(struct nvmem_cell *cell, size_t *len)
 }
 EXPORT_SYMBOL_GPL(nvmem_cell_read);
 
-static inline void *nvmem_cell_prepare_write_buffer(struct nvmem_cell *cell,
-						    u8 *_buf, int len)
+static inline const void *nvmem_cell_prepare_write_buffer(struct nvmem_cell_entry *cell,
+							  const u8 *_buf, int len)
 {
 	struct nvmem_device *nvmem = cell->nvmem;
 	int i, rc, nbits, bit_offset = cell->bit_offset;
@@ -670,16 +777,7 @@ static inline void *nvmem_cell_prepare_write_buffer(struct nvmem_cell *cell,
 	return buf;
 }
 
-/**
- * nvmem_cell_write() - Write to a given nvmem cell
- *
- * @cell: nvmem cell to be written.
- * @buf: Buffer to be written.
- * @len: length of buffer to be written to nvmem cell.
- *
- * Return: length of bytes written or negative on failure.
- */
-int nvmem_cell_write(struct nvmem_cell *cell, void *buf, size_t len)
+static int __nvmem_cell_entry_write(struct nvmem_cell_entry *cell, const void *buf, size_t len)
 {
 	struct nvmem_device *nvmem = cell->nvmem;
 	int rc;
@@ -700,11 +798,25 @@ int nvmem_cell_write(struct nvmem_cell *cell, void *buf, size_t len)
 	if (cell->bit_offset || cell->nbits)
 		kfree(buf);
 
-	if (rc < 0)
+	if (rc)
 		return rc;
 
 	return len;
 }
+
+/**
+ * nvmem_cell_write() - Write to a given nvmem cell
+ *
+ * @cell: nvmem cell to be written.
+ * @buf: Buffer to be written.
+ * @len: length of buffer to be written to nvmem cell.
+ *
+ * Return: length of bytes written or negative on failure.
+ */
+int nvmem_cell_write(struct nvmem_cell *cell, const void *buf, size_t len)
+{
+	return __nvmem_cell_entry_write(cell->entry, buf, len);
+}
 EXPORT_SYMBOL_GPL(nvmem_cell_write);
 
 /**
@@ -720,19 +832,19 @@ EXPORT_SYMBOL_GPL(nvmem_cell_write);
 ssize_t nvmem_device_cell_read(struct nvmem_device *nvmem,
 			   struct nvmem_cell_info *info, void *buf)
 {
-	struct nvmem_cell cell;
+	struct nvmem_cell_entry cell;
 	int rc;
 	ssize_t len = 0;
 
 	if (!nvmem)
 		return -EINVAL;
 
-	rc = nvmem_cell_info_to_nvmem_cell(nvmem, info, &cell);
-	if (rc < 0)
+	rc = nvmem_cell_info_to_nvmem_cell_entry_nodup(nvmem, info, &cell);
+	if (rc)
 		return rc;
 
-	rc = __nvmem_cell_read(nvmem, &cell, buf, &len);
-	if (rc < 0)
+	rc = __nvmem_cell_read(nvmem, &cell, buf, &len, NULL);
+	if (rc)
 		return rc;
 
 	return len;
@@ -749,19 +861,19 @@ EXPORT_SYMBOL_GPL(nvmem_device_cell_read);
  * Return: length of bytes written or negative error code on failure.
  * */
 int nvmem_device_cell_write(struct nvmem_device *nvmem,
-			    struct nvmem_cell_info *info, void *buf)
+			    struct nvmem_cell_info *info, const void *buf)
 {
-	struct nvmem_cell cell;
+	struct nvmem_cell_entry cell;
 	int rc;
 
 	if (!nvmem)
 		return -EINVAL;
 
-	rc = nvmem_cell_info_to_nvmem_cell(nvmem, info, &cell);
+	rc = nvmem_cell_info_to_nvmem_cell_entry_nodup(nvmem, info, &cell);
 	if (rc < 0)
 		return rc;
 
-	return nvmem_cell_write(&cell, buf, cell.bytes);
+	return __nvmem_cell_entry_write(&cell, buf, cell.bytes);
 }
 EXPORT_SYMBOL_GPL(nvmem_device_cell_write);
 
diff --git a/include/linux/nvmem-consumer.h b/include/linux/nvmem-consumer.h
index 397c4c29dafde67b0c0f22416852d58a24b61e0a..478f469c35606769358b05257e67e775bd80aa8c 100644
--- a/include/linux/nvmem-consumer.h
+++ b/include/linux/nvmem-consumer.h
@@ -17,14 +17,7 @@ struct device_node;
 /* consumer cookie */
 struct nvmem_cell;
 struct nvmem_device;
-
-struct nvmem_cell_info {
-	const char		*name;
-	unsigned int		offset;
-	unsigned int		bytes;
-	unsigned int		bit_offset;
-	unsigned int		nbits;
-};
+struct nvmem_cell_info;
 
 #if IS_ENABLED(CONFIG_NVMEM)
 
@@ -37,7 +30,7 @@ void *nvmem_cell_get_and_read(struct device_node *np, const char *cell_name,
 int nvmem_cell_read_variable_le_u32(struct device *dev, const char *cell_id,
 				    u32 *val);
 
-int nvmem_cell_write(struct nvmem_cell *cell, void *buf, size_t len);
+int nvmem_cell_write(struct nvmem_cell *cell, const void *buf, size_t len);
 
 /* direct nvmem device read/write interface */
 struct nvmem_device *nvmem_device_get(struct device *dev, const char *name);
@@ -49,7 +42,7 @@ int nvmem_device_write(struct nvmem_device *nvmem, unsigned int offset,
 ssize_t nvmem_device_cell_read(struct nvmem_device *nvmem,
 			       struct nvmem_cell_info *info, void *buf);
 int nvmem_device_cell_write(struct nvmem_device *nvmem,
-			    struct nvmem_cell_info *info, void *buf);
+			    struct nvmem_cell_info *info, const void *buf);
 
 void nvmem_devices_print(void);
 
@@ -85,7 +78,7 @@ static inline int nvmem_cell_read_variable_le_u32(struct device *dev,
 }
 
 static inline int nvmem_cell_write(struct nvmem_cell *cell,
-				    void *buf, size_t len)
+				   const void *buf, size_t len)
 {
 	return -EOPNOTSUPP;
 }
@@ -109,7 +102,7 @@ static inline ssize_t nvmem_device_cell_read(struct nvmem_device *nvmem,
 
 static inline int nvmem_device_cell_write(struct nvmem_device *nvmem,
 					  struct nvmem_cell_info *info,
-					  void *buf)
+					  const void *buf)
 {
 	return -EOPNOTSUPP;
 }
diff --git a/include/linux/nvmem-provider.h b/include/linux/nvmem-provider.h
index 4d44468456f00b47fe849faaf35de6193e34dbb4..d0c434217cd218ec7585c209d17475c8cfc1fbd6 100644
--- a/include/linux/nvmem-provider.h
+++ b/include/linux/nvmem-provider.h
@@ -16,26 +16,61 @@
 #include <linux/types.h>
 
 struct nvmem_device;
-
+typedef int (*nvmem_reg_read_t)(void *priv, unsigned int offset,
+				void *val, size_t bytes);
+typedef int (*nvmem_reg_write_t)(void *priv, unsigned int offset,
+				 const void *val, size_t bytes);
 /* used for vendor specific post processing of cell data */
 typedef int (*nvmem_cell_post_process_t)(void *priv, const char *id,
 					 unsigned int offset, void *buf,
 					 size_t bytes);
 
+/**
+ * struct nvmem_cell_info - NVMEM cell description
+ * @name:	Name.
+ * @offset:	Offset within the NVMEM device.
+ * @raw_len:	Length of raw data (without post processing).
+ * @bytes:	Length of the cell.
+ * @bit_offset:	Bit offset if cell is smaller than a byte.
+ * @nbits:	Number of bits.
+ * @np:		Optional device_node pointer.
+ */
+struct nvmem_cell_info {
+	const char		*name;
+	unsigned int		offset;
+	size_t			raw_len;
+	unsigned int		bytes;
+	unsigned int		bit_offset;
+	unsigned int		nbits;
+	struct device_node	*np;
+};
+
+/**
+ * struct nvmem_config - NVMEM device configuration
+ *
+ * @dev:	Parent device.
+ * @name:	Optional name.
+ * @id:		Optional device ID used in full name. Ignored if name is NULL.
+ * @read_only:	Device is read-only.
+ * @reg_read:	Callback to read data; return zero if successful.
+ * @reg_write:	Callback to write data; return zero if successful.
+ * @size:	Device size.
+ * @word_size:	Minimum read/write access granularity.
+ * @stride:	Minimum read/write access stride.
+ * @priv:	User context passed to read/write callbacks.
+ */
 struct nvmem_config {
 	struct device		*dev;
 	const char		*name;
 	bool			read_only;
 	struct cdev		*cdev;
-	int			stride;
-	int			word_size;
+	nvmem_reg_read_t	reg_read;
+	nvmem_reg_write_t	reg_write;
 	int			size;
-	int			(*reg_write)(void *ctx, unsigned int reg,
-					     const void *val, size_t val_size);
-	int			(*reg_read)(void *ctx, unsigned int reg,
-					    void *val, size_t val_size);
 	int			(*reg_protect)(void *ctx, unsigned int offset,
 					       size_t bytes, int prot);
+	int			word_size;
+	int			stride;
 	void			*priv;
 	nvmem_cell_post_process_t cell_post_process;
 };
@@ -50,6 +85,8 @@ struct nvmem_device *nvmem_regmap_register(struct regmap *regmap, const char *na
 struct nvmem_device *nvmem_regmap_register_with_pp(struct regmap *regmap,
 		const char *name, nvmem_cell_post_process_t cell_post_process);
 struct device *nvmem_device_get_device(struct nvmem_device *nvmem);
+int nvmem_add_one_cell(struct nvmem_device *nvmem,
+		       const struct nvmem_cell_info *info);
 
 #else
 
@@ -74,5 +111,12 @@ static inline struct device *nvmem_device_get_device(struct nvmem_device *nvmem)
 {
 	return ERR_PTR(-ENOSYS);
 }
+
+static inline int nvmem_add_one_cell(struct nvmem_device *nvmem,
+				     const struct nvmem_cell_info *info)
+{
+	return -EOPNOTSUPP;
+}
+
 #endif /* CONFIG_NVMEM */
 #endif  /* ifndef _LINUX_NVMEM_PROVIDER_H */

-- 
2.39.5




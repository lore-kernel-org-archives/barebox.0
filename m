Delivery-date: Mon, 18 Aug 2025 20:31:19 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uo4dc-001yVw-0s
	for lore@lore.pengutronix.de;
	Mon, 18 Aug 2025 20:31:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uo4dX-000434-7s
	for lore@pengutronix.de; Mon, 18 Aug 2025 20:31:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ONLYMEAoc5//X+kajgCWMo7KT2WJCp1vgkVdLnT7gyo=; b=EiaNF1AaAqBzFkNj4Vr5SIZYS6
	93bGxo1kuPL8V1jKGJx3kylmbSU+dTa3YZambzjk7LNVD4c8ALUyw4dwWaP4UR8uzZVKg3/4E4Qko
	qrOwSIAJMkyWT3JlJFU1Hj2jim/G9mWjYjIaH4jM8WanE0bfrNyB0SgEdo2rkOfovZ/fxSQNpD+if
	26Da+JclwN3G/V+F8QtMuEKsc+Q45MKPEQ6QeaesTA7sQkMH5ec7gnV3w0X5F3cdY3wXDTY2VWBg8
	1093GrApDowYsKsKhG6mekGOdwvofiMUua2pvWKn6+42M480ITKFY4RkRXcIK+YzTpNWF3b0j+y+e
	lsL4H5lQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uo4cs-00000008LWK-0kXI;
	Mon, 18 Aug 2025 18:30:34 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uo3uZ-00000008F6D-19QW
	for barebox@bombadil.infradead.org;
	Mon, 18 Aug 2025 17:44:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=ONLYMEAoc5//X+kajgCWMo7KT2WJCp1vgkVdLnT7gyo=; b=ZpXSjaIs/a4jw+fptUF7eOAMX+
	9tKg95G+OhbCHRzY6iV4s9RrRuiXLqxlHfAGhx+P2mRcO4CSa3gLVuwouA8o/fI20YRMdqzYdVcoL
	ZdGW2viaKt8ndh+XZMM6G68SibZmXb/jglZIwJOk9EJq1/vg2MNvMNQICfE8xnqJsQ9/klrbQboiL
	7USPFtQm+Uf3PD7+REJ+A+Y5/nURvgtWtyFZh67h1M7aaHz17UPXpI5lAZtP9JRoHKa2VGvIdAsLA
	3h0Bwx05SImjFTaZP3oihN0FSOObr7pDBk4UXqNLH5KvPS6mmWR6a2+EvK9sB/dkAI+rN4L2ZUYS2
	ZKLRO/8w==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uo3uT-0000000HStF-2jzr
	for barebox@lists.infradead.org;
	Mon, 18 Aug 2025 17:44:46 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1uo3uQ-0003aK-U9; Mon, 18 Aug 2025 19:44:38 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Mon, 18 Aug 2025 19:44:45 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250818-v2025-06-0-topic-nvmem-v2-11-b6d677f6c519@pengutronix.de>
References: <20250818-v2025-06-0-topic-nvmem-v2-0-b6d677f6c519@pengutronix.de>
In-Reply-To: <20250818-v2025-06-0-topic-nvmem-v2-0-b6d677f6c519@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Marco Felsch <m.felsch@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250818_184441_919315_38A84450 
X-CRM114-Status: GOOD (  20.30  )
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
Subject: [PATCH v2 11/15] nvmem: core: add an index parameter to the cell
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

To further  sync the nvmem code base port Linux commit:

| commit 5d8e6e6c10a3d37486d263b16ddc15991a7e4a88
| Author: Michael Walle <michael@walle.cc>
| Date:   Mon Feb 6 13:43:46 2023 +0000
|
|     nvmem: core: add an index parameter to the cell
|
|     Sometimes a cell can represend multiple values. For example, a base
|     ethernet address stored in the NVMEM can be expanded into multiple
|     discreet ones by adding an offset.
|
|     For this use case, introduce an index parameter which is then used to
|     distiguish between values. This parameter will then be passed to the
|     post process hook which can then use it to create different values
|     during reading.
|
|     At the moment, there is only support for the device tree path. You can
|     add the index to the phandle, e.g.
|
|       &net {
|               nvmem-cells = <&base_mac_address 2>;
|               nvmem-cell-names = "mac-address";
|       };
|
|       &nvmem_provider {
|               base_mac_address: base-mac-address@0 {
|                       #nvmem-cell-cells = <1>;
|                       reg = <0 6>;
|               };
|       };
|
|     Signed-off-by: Michael Walle <michael@walle.cc>
|     Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
|     Link: https://lore.kernel.org/r/20230206134356.839737-13-srinivas.kandagatla@linaro.org
|     Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/nvmem/core.c           | 33 ++++++++++++++++++++++++---------
 drivers/nvmem/imx-ocotp-ele.c  |  4 ++--
 drivers/nvmem/ocotp.c          |  4 ++--
 include/linux/nvmem-provider.h |  2 +-
 4 files changed, 29 insertions(+), 14 deletions(-)

diff --git a/drivers/nvmem/core.c b/drivers/nvmem/core.c
index b87dd9375c6f0a2b446e4f1c2e51c6bf042e550d..8973af5fba2d7c3ebb69eecd9f92c90b7543c3ff 100644
--- a/drivers/nvmem/core.c
+++ b/drivers/nvmem/core.c
@@ -32,6 +32,7 @@ struct nvmem_cell_entry {
 struct nvmem_cell {
 	struct nvmem_cell_entry *entry;
 	const char		*id;
+	int			index;
 };
 
 static LIST_HEAD(nvmem_devs);
@@ -632,7 +633,8 @@ void nvmem_device_put(struct nvmem_device *nvmem)
 }
 EXPORT_SYMBOL_GPL(nvmem_device_put);
 
-static struct nvmem_cell *nvmem_create_cell(struct nvmem_cell_entry *entry, const char *id)
+static struct nvmem_cell *nvmem_create_cell(struct nvmem_cell_entry *entry,
+					    const char *id, int index)
 {
 	struct nvmem_cell *cell;
 	const char *name = NULL;
@@ -651,6 +653,7 @@ static struct nvmem_cell *nvmem_create_cell(struct nvmem_cell_entry *entry, cons
 
 	cell->id = name;
 	cell->entry = entry;
+	cell->index = index;
 
 	return cell;
 }
@@ -700,15 +703,27 @@ struct nvmem_cell *of_nvmem_cell_get(struct device_node *np, const char *id)
 	struct nvmem_device *nvmem;
 	struct nvmem_cell_entry *cell_entry;
 	struct nvmem_cell *cell;
+	struct of_phandle_args cell_spec;
 	int index = 0;
+	int cell_index = 0;
+	int ret;
 
 	/* if cell name exists, find index to the name */
 	if (id)
 		index = of_property_match_string(np, "nvmem-cell-names", id);
 
-	cell_np = of_parse_phandle(np, "nvmem-cells", index);
-	if (!cell_np)
-		return ERR_PTR(-ENOENT);
+	ret = of_parse_phandle_with_optional_args(np, "nvmem-cells",
+						  "#nvmem-cell-cells",
+						  index, &cell_spec);
+	if (ret)
+		return ERR_PTR(ret);
+
+	if (cell_spec.args_count > 1)
+		return ERR_PTR(-EINVAL);
+
+	cell_np = cell_spec.np;
+	if (cell_spec.args_count)
+		cell_index = cell_spec.args[0];
 
 	nvmem_np = of_get_parent(cell_np);
 	if (!nvmem_np) {
@@ -746,7 +761,7 @@ struct nvmem_cell *of_nvmem_cell_get(struct device_node *np, const char *id)
 		return ERR_PTR(-ENOENT);
 	}
 
-	cell = nvmem_create_cell(cell_entry, id);
+	cell = nvmem_create_cell(cell_entry, id, cell_index);
 	if (IS_ERR(cell))
 		__nvmem_device_put(nvmem);
 
@@ -832,7 +847,7 @@ static void nvmem_shift_read_buffer_in_place(struct nvmem_cell_entry *cell, void
 
 static int __nvmem_cell_read(struct nvmem_device *nvmem,
 			     struct nvmem_cell_entry *cell,
-			     void *buf, size_t *len, const char *id)
+			     void *buf, size_t *len, const char *id, int index)
 {
 	int rc;
 
@@ -845,7 +860,7 @@ static int __nvmem_cell_read(struct nvmem_device *nvmem,
 		nvmem_shift_read_buffer_in_place(cell, buf);
 
 	if (nvmem->cell_post_process) {
-		rc = nvmem->cell_post_process(nvmem->priv, id,
+		rc = nvmem->cell_post_process(nvmem->priv, id, index,
 					      cell->offset, buf, cell->bytes);
 		if (rc)
 			return rc;
@@ -881,7 +896,7 @@ void *nvmem_cell_read(struct nvmem_cell *cell, size_t *len)
 	if (!buf)
 		return ERR_PTR(-ENOMEM);
 
-	rc = __nvmem_cell_read(nvmem, cell->entry, buf, len, cell->id);
+	rc = __nvmem_cell_read(nvmem, cell->entry, buf, len, cell->id, cell->index);
 	if (rc) {
 		kfree(buf);
 		return ERR_PTR(rc);
@@ -1009,7 +1024,7 @@ ssize_t nvmem_device_cell_read(struct nvmem_device *nvmem,
 	if (rc)
 		return rc;
 
-	rc = __nvmem_cell_read(nvmem, &cell, buf, &len, NULL);
+	rc = __nvmem_cell_read(nvmem, &cell, buf, &len, NULL, 0);
 	if (rc)
 		return rc;
 
diff --git a/drivers/nvmem/imx-ocotp-ele.c b/drivers/nvmem/imx-ocotp-ele.c
index 5fb5dfc87e221bc244f52a1fa3bf2d1342b606d5..8ac4e2a9a6c87f128ff9aaf16d1238ef129d91ca 100644
--- a/drivers/nvmem/imx-ocotp-ele.c
+++ b/drivers/nvmem/imx-ocotp-ele.c
@@ -109,8 +109,8 @@ static int imx_ocotp_reg_write(void *context, unsigned int offset, unsigned int
 	return ret;
 }
 
-static int imx_ocotp_cell_pp(void *context, const char *id, unsigned int offset,
-			     void *data, size_t bytes)
+static int imx_ocotp_cell_pp(void *context, const char *id, int index,
+			     unsigned int offset, void *data, size_t bytes)
 {
 	/* Deal with some post processing of nvmem cell data */
 	if (id && !strcmp(id, "mac-address")) {
diff --git a/drivers/nvmem/ocotp.c b/drivers/nvmem/ocotp.c
index 5d47377678665b7d5d48b58cb297fe784d27438c..d4510d4b89ba404c0b0537afc01075cac501042c 100644
--- a/drivers/nvmem/ocotp.c
+++ b/drivers/nvmem/ocotp.c
@@ -788,8 +788,8 @@ static struct regmap_bus imx_ocotp_regmap_bus = {
 	.reg_read = imx_ocotp_reg_read,
 };
 
-static int imx_ocotp_cell_pp(void *context, const char *id, unsigned int offset,
-			     void *data, size_t bytes)
+static int imx_ocotp_cell_pp(void *context, const char *id, int index,
+			     unsigned int offset, void *data, size_t bytes)
 {
 	/* Deal with some post processing of nvmem cell data */
 	if (id && !strcmp(id, "mac-address")) {
diff --git a/include/linux/nvmem-provider.h b/include/linux/nvmem-provider.h
index 346355ad988470ce27e78a3a52e4dfcb437e2f18..e08c6a62590312376934aa58229beb39840efdf7 100644
--- a/include/linux/nvmem-provider.h
+++ b/include/linux/nvmem-provider.h
@@ -22,7 +22,7 @@ typedef int (*nvmem_reg_read_t)(void *priv, unsigned int offset,
 typedef int (*nvmem_reg_write_t)(void *priv, unsigned int offset,
 				 const void *val, size_t bytes);
 /* used for vendor specific post processing of cell data */
-typedef int (*nvmem_cell_post_process_t)(void *priv, const char *id,
+typedef int (*nvmem_cell_post_process_t)(void *priv, const char *id, int index,
 					 unsigned int offset, void *buf,
 					 size_t bytes);
 

-- 
2.39.5




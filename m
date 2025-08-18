Delivery-date: Mon, 18 Aug 2025 20:31:11 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uo4dU-001yTX-1W
	for lore@lore.pengutronix.de;
	Mon, 18 Aug 2025 20:31:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uo4dQ-0003wX-J7
	for lore@pengutronix.de; Mon, 18 Aug 2025 20:31:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vz97/z/HMJCsKcsq/4VQKy1A3Ns0HsiGpCwCUnS9Fks=; b=Ph+O9goP2ztxNDOUSxfjYAg9yx
	1ydL2BedlymQfrp4Rc3F1tJBgpoN1wc5edDtrjIBkPuc+e5EbRLm3MY4rNHQfQEXkDIrbyBjmYjo+
	M8YWYQaYnOPkQ91P13/PyQPUqmuY0f1nwg3hU+zMypEkvjkx2jp6ummXNwGJCT0xKltmr+gQ2Ii0W
	zpW+soyqQgJCcxfyW18V0L6oaIzNcNoAHj72xtXcNyxXxbNr+NTjSgCATxCKY9+T0ErqWaHuMHqXe
	iIu2dfMr+8PdcdhIUilBqxxQVCgtbN8jdUxeVmvRNNqHZ+GnsIjljVvPgVyS5c/wUYa7PtSBKQQoo
	V2li8ABw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uo4cn-00000008LP7-39au;
	Mon, 18 Aug 2025 18:30:29 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uo3uX-00000008F5S-2XDW
	for barebox@bombadil.infradead.org;
	Mon, 18 Aug 2025 17:44:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=vz97/z/HMJCsKcsq/4VQKy1A3Ns0HsiGpCwCUnS9Fks=; b=G++rpT3IVW+TmhsHP+u4qA/9zf
	JK2Ro1QPP97Kvc1IHj61mBeP1xB/cXFTRNdrBo7TCPDOIw8C9br2zw77/BkEZWJsL8PVt8ZrmI6WN
	4R+NF+0pUAXZgjW2yc/pHOUuC0pGnj5piB/fvTGpnpDn5ZOL7fFctFZj5XzGfCc+W7q6BvUR/YLJD
	fUzDxzqqXedcctDCZ9m0H+1V4PMCMgYxdZnK1pvWoK7rzFYaz5mgzO9yKTX3bxXkoDJ6fUL+HR9Pb
	6olLHgFciOuCqP/QA7p/gs3quxEk1AS4cWTGEuKctxyThfsh8BrD+h6Oyr1z//IRinXKHR80SeP7f
	880TA+ng==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uo3uT-0000000HStG-0I3c
	for barebox@lists.infradead.org;
	Mon, 18 Aug 2025 17:44:44 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1uo3uQ-0003aK-VD; Mon, 18 Aug 2025 19:44:38 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Mon, 18 Aug 2025 19:44:46 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250818-v2025-06-0-topic-nvmem-v2-12-b6d677f6c519@pengutronix.de>
References: <20250818-v2025-06-0-topic-nvmem-v2-0-b6d677f6c519@pengutronix.de>
In-Reply-To: <20250818-v2025-06-0-topic-nvmem-v2-0-b6d677f6c519@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Marco Felsch <m.felsch@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250818_184441_394959_45C82835 
X-CRM114-Status: GOOD (  14.93  )
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
Subject: [PATCH v2 12/15] nvmem: core: add per-cell post processing
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

To further sync the nvmem code base port Linux commit:

| commit 345ec382cd4b736c36e01f155d08c913b225b736
| Author: Michael Walle <michael@walle.cc>
| Date:   Tue Apr 4 18:21:24 2023 +0100
|
|     nvmem: core: add per-cell post processing
|
|     Instead of relying on the name the consumer is using for the cell, like
|     it is done for the nvmem .cell_post_process configuration parameter,
|     provide a per-cell post processing hook. This can then be populated by
|     the NVMEM provider (or the NVMEM layout) when adding the cell.
|
|     Signed-off-by: Michael Walle <michael@walle.cc>
|     Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
|     Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
|     Link: https://lore.kernel.org/r/20230404172148.82422-17-srinivas.kandagatla@linaro.org
|     Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/nvmem/core.c           | 17 +++++++++++++++++
 include/linux/nvmem-provider.h |  3 +++
 2 files changed, 20 insertions(+)

diff --git a/drivers/nvmem/core.c b/drivers/nvmem/core.c
index 8973af5fba2d7c3ebb69eecd9f92c90b7543c3ff..3eb390975a52a9bbfc088d0abcd301a2cff9bf46 100644
--- a/drivers/nvmem/core.c
+++ b/drivers/nvmem/core.c
@@ -22,6 +22,7 @@ struct nvmem_cell_entry {
 	int			bytes;
 	int			bit_offset;
 	int			nbits;
+	nvmem_cell_post_process_t read_post_process;
 	struct device_node	*np;
 	struct nvmem_device	*nvmem;
 	struct list_head	node;
@@ -271,6 +272,7 @@ static int nvmem_cell_info_to_nvmem_cell_entry_nodup(struct nvmem_device *nvmem,
 	cell->raw_len = info->raw_len ?: info->bytes;
 	cell->bytes = info->bytes;
 	cell->name = info->name;
+	cell->read_post_process = info->read_post_process;
 
 	cell->bit_offset = info->bit_offset;
 	cell->nbits = info->nbits;
@@ -859,6 +861,13 @@ static int __nvmem_cell_read(struct nvmem_device *nvmem,
 	if (cell->bit_offset || cell->nbits)
 		nvmem_shift_read_buffer_in_place(cell, buf);
 
+	if (cell->read_post_process) {
+		rc = cell->read_post_process(nvmem->priv, id, index,
+				cell->offset, buf, cell->bytes);
+		if (rc)
+			return rc;
+	}
+
 	if (nvmem->cell_post_process) {
 		rc = nvmem->cell_post_process(nvmem->priv, id, index,
 					      cell->offset, buf, cell->bytes);
@@ -967,6 +976,14 @@ static int __nvmem_cell_entry_write(struct nvmem_cell_entry *cell, const void *b
 	    (cell->bit_offset == 0 && len != cell->bytes))
 		return -EINVAL;
 
+	/*
+	 * Any cells which have a cell_post_process hook are read-only because
+	 * we cannot reverse the operation and it might affect other cells,
+	 * too.
+	 */
+	if (cell->read_post_process)
+		return -EINVAL;
+
 	if (cell->bit_offset || cell->nbits) {
 		buf = nvmem_cell_prepare_write_buffer(cell, buf, len);
 		if (IS_ERR(buf))
diff --git a/include/linux/nvmem-provider.h b/include/linux/nvmem-provider.h
index e08c6a62590312376934aa58229beb39840efdf7..5b33d33d77e51683b3895095210562196e3b671d 100644
--- a/include/linux/nvmem-provider.h
+++ b/include/linux/nvmem-provider.h
@@ -38,6 +38,8 @@ typedef int (*nvmem_cell_post_process_t)(void *priv, const char *id, int index,
  * @bit_offset:	Bit offset if cell is smaller than a byte.
  * @nbits:	Number of bits.
  * @np:		Optional device_node pointer.
+ * @read_post_process:	Callback for optional post processing of cell data
+ *			on reads.
  */
 struct nvmem_cell_info {
 	const char		*name;
@@ -47,6 +49,7 @@ struct nvmem_cell_info {
 	unsigned int		bit_offset;
 	unsigned int		nbits;
 	struct device_node	*np;
+	nvmem_cell_post_process_t read_post_process;
 };
 
 /**

-- 
2.39.5




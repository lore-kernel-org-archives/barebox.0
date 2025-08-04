Delivery-date: Mon, 04 Aug 2025 17:32:15 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uixAd-006z8p-0C
	for lore@lore.pengutronix.de;
	Mon, 04 Aug 2025 17:32:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uixAa-0006K4-Jc
	for lore@pengutronix.de; Mon, 04 Aug 2025 17:32:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=30nuIafG1QmzxeYoFg6pMm2PHgYlOxHZT9zfRJ83Ebs=; b=FcRLVxCTVvl8bqjfmEuPuhyeMk
	jqKIgxbFV9tYbTfDG5T6M642QXWJ0SXZ6TDsVLWCStUxIKkSfXNmh+bM8motAccfrCJBA1gGlINVm
	2h6jKEAYBNV0la40ISuKpG+gB3bFYfcqGgk+z4IIyyTc3LLgxrEr7COHN+LhF3/3G4E0No0BR2m+x
	dvL0z9NR0xyW7poX+Y5kOm78sA0oqA6sY114VcJyObF8KLLLHgC+PTQzO62D891Qp6tyXcEt240bW
	5VAaPlqoH9HklvWPqf5GcyFQ/QGsvN/4yS99hHQUID9A+0WzYTs+MA1No4QpehSO19EOSO7MMqeSh
	eLTKTAfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uix9j-0000000AnsX-3w3o;
	Mon, 04 Aug 2025 15:31:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uiwJ2-0000000AgmO-1a4m
	for barebox@lists.infradead.org;
	Mon, 04 Aug 2025 14:36:54 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1uiwIz-0000aW-L5; Mon, 04 Aug 2025 16:36:49 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Mon, 04 Aug 2025 16:37:00 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250804-v2025-06-0-topic-nvmem-v1-14-7603eaa4d2b0@pengutronix.de>
References: <20250804-v2025-06-0-topic-nvmem-v1-0-7603eaa4d2b0@pengutronix.de>
In-Reply-To: <20250804-v2025-06-0-topic-nvmem-v1-0-7603eaa4d2b0@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Marco Felsch <m.felsch@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250804_073652_437323_866D3C0F 
X-CRM114-Status: GOOD (  14.19  )
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
Subject: [PATCH 14/15] nvmem: core: provide own priv pointer in post
 process callback
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

To remove the global nvmem->cell_post_process() and further sync our
code base with Linux, port the following commit:

| commit 8a134fd9f9323f4c39ec27055b3d3723cfb5c1e9
| Author: Michael Walle <michael@walle.cc>
| Date:   Tue Apr 4 18:21:28 2023 +0100
|
|     nvmem: core: provide own priv pointer in post process callback
|
|     It doesn't make any more sense to have a opaque pointer set up by the
|     nvmem device. Usually, the layout isn't associated with a particular
|     nvmem device. Instead, let the caller who set the post process callback
|     provide the priv pointer.
|
|     Signed-off-by: Michael Walle <michael@walle.cc>
|     Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
|     Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
|     Link: https://lore.kernel.org/r/20230404172148.82422-21-srinivas.kandagatla@linaro.org
|     Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/nvmem/core.c           | 4 +++-
 include/linux/nvmem-provider.h | 2 ++
 2 files changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/nvmem/core.c b/drivers/nvmem/core.c
index d9b3e3bc8c1b9016975480d45da53f8c77a52881..7f4fd329c196efa3baac2c97016d6651d4c140a3 100644
--- a/drivers/nvmem/core.c
+++ b/drivers/nvmem/core.c
@@ -23,6 +23,7 @@ struct nvmem_cell_entry {
 	int			bit_offset;
 	int			nbits;
 	nvmem_cell_post_process_t read_post_process;
+	void			*priv;
 	struct device_node	*np;
 	struct nvmem_device	*nvmem;
 	struct list_head	node;
@@ -244,6 +245,7 @@ static int nvmem_cell_info_to_nvmem_cell_entry_nodup(struct nvmem_device *nvmem,
 	cell->bytes = info->bytes;
 	cell->name = info->name;
 	cell->read_post_process = info->read_post_process;
+	cell->priv = info->priv;
 
 	cell->bit_offset = info->bit_offset;
 	cell->nbits = info->nbits;
@@ -836,7 +838,7 @@ static int __nvmem_cell_read(struct nvmem_device *nvmem,
 		nvmem_shift_read_buffer_in_place(cell, buf);
 
 	if (cell->read_post_process) {
-		rc = cell->read_post_process(nvmem->priv, id, index,
+		rc = cell->read_post_process(cell->priv, id, index,
 				cell->offset, buf, cell->bytes);
 		if (rc)
 			return rc;
diff --git a/include/linux/nvmem-provider.h b/include/linux/nvmem-provider.h
index a8aa6b741395f810315d7f018d62e4ef64e618a5..e1e7d8871d67465157191e7e6a46b400a285e834 100644
--- a/include/linux/nvmem-provider.h
+++ b/include/linux/nvmem-provider.h
@@ -40,6 +40,7 @@ typedef int (*nvmem_cell_post_process_t)(void *priv, const char *id, int index,
  * @np:		Optional device_node pointer.
  * @read_post_process:	Callback for optional post processing of cell data
  *			on reads.
+ * @priv:	Opaque data passed to the read_post_process hook.
  */
 struct nvmem_cell_info {
 	const char		*name;
@@ -50,6 +51,7 @@ struct nvmem_cell_info {
 	unsigned int		nbits;
 	struct device_node	*np;
 	nvmem_cell_post_process_t read_post_process;
+	void			*priv;
 };
 
 /**

-- 
2.39.5




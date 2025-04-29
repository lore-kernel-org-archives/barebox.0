Delivery-date: Tue, 29 Apr 2025 16:32:29 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u9m0b-000WMq-1z
	for lore@lore.pengutronix.de;
	Tue, 29 Apr 2025 16:32:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u9m0a-00038y-Is
	for lore@pengutronix.de; Tue, 29 Apr 2025 16:32:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ndsh6AMGmTf6Y+G+ivdWK7opX/Dg0a0N159SpkUNtq0=; b=0NEd8rYJfIcVva6JNMYIWJ3O9D
	1JQx0NAcZfc/5bSsqa06z/RotNPb0NCrB6gSvMOZ9p/TpSrNHP2m2iFy3Rk5jt0PcbCM5fueL2vLM
	lp0SXzYcEcJXa03Qdx9hNUJWILla94vpBQsJ30Q2SH9PG1XsAhOlfU1ZyHdvutPBDMdf80srnP4O9
	Um2JXpy8dske1aLkf6KkBvJL9r21ZtcbnGm2simhWj962q8JF/zTy66MZQ/5umxie7k/ZJAOzO7IP
	AwFr871zZPJe8leHFq10KxfXiLx3Yd06MFdcPeQTIZbh0lVTGmgATMrC/Rl8+i0FjcAlWSIpPgig3
	OUvImEhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9m02-00000009xm9-1eG3;
	Tue, 29 Apr 2025 14:31:54 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9ljC-00000009uGG-1KuL
	for barebox@bombadil.infradead.org;
	Tue, 29 Apr 2025 14:14:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=ndsh6AMGmTf6Y+G+ivdWK7opX/Dg0a0N159SpkUNtq0=; b=bzVhN7ALln1KvALYWUonl0jo9Y
	pi+d0T4fXYdguZIDTIuP4W8VeBmHPwY6C0eVL5HChSxRo1McFEnva3I0m+kLz7yS/Vw+S+OT3NIsC
	734BRekACsg/e+zogBJ6aoKBGwO7R/vrzwGUVJAGqASqibAU7YJBQM3ispFJMHEBOkl8AxJ4O2i8F
	ELGPKuFtW9LMrqKVmnmpyKCm+aYzrfX/CoXUdxQReiOxJQFpKN+CGQ6IDQSwPa60CU3eY/sJ8l8v2
	QAq62CTvayjdn4yUWiwZrxXAKDXjNDcjDJZDJFqOyRG1e96YaOl/R6UoobaqUYlFkJljQ/qBI4/5P
	59jXu1bw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u9lj7-0000000DNLg-2xvX
	for barebox@lists.infradead.org;
	Tue, 29 Apr 2025 14:14:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u9lj4-00084Z-Nn; Tue, 29 Apr 2025 16:14:22 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u9lj4-000HEm-1P;
	Tue, 29 Apr 2025 16:14:22 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u9lj4-00Cqw2-1A;
	Tue, 29 Apr 2025 16:14:22 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 29 Apr 2025 16:14:21 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250429-k3-asel-v1-2-6f39afaa2dfe@pengutronix.de>
References: <20250429-k3-asel-v1-0-6f39afaa2dfe@pengutronix.de>
In-Reply-To: <20250429-k3-asel-v1-0-6f39afaa2dfe@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1745936062; l=7677;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=rUNqQ4QvPDdVt2pdaqEGwlWgme5U9Y09G9TJQh++kVY=;
 b=+RtxZDdI4+8pZF2hMlUMMiYCGQRAVaXwNo2EBSm8IbFjqLws/dw8U8DgbE3DWl/NsLMh9wLVV
 5TsXz03MWZuCqxeie67lo4IhdukusUUB/bQUbcHlAd0YRIwIsIeixaz
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250429_151426_095071_83245CD0 
X-CRM114-Status: GOOD (  15.13  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/4] firmware: ti_sci: pass struct to
 ti_sci_rm_ringacc_ops::config
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

struct ti_sci_rm_ringacc_ops::config() already takes 10 parameters and
we have to add additional two in followup patches. Pass the data in a
struct like the Kernel does. Also rename the op to set_cfg as that's
how the Kernel names it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/firmware/ti_sci.c         | 27 ++++++-------
 drivers/soc/ti/k3-navss-ringacc.c | 84 +++++++++++++++------------------------
 include/soc/ti/ti_sci_protocol.h  | 25 +++++++++---
 3 files changed, 66 insertions(+), 70 deletions(-)

diff --git a/drivers/firmware/ti_sci.c b/drivers/firmware/ti_sci.c
index 638893a1ed..ddbaf0bc1f 100644
--- a/drivers/firmware/ti_sci.c
+++ b/drivers/firmware/ti_sci.c
@@ -2140,9 +2140,7 @@ static int ti_sci_cmd_proc_shutdown_no_wait(const struct ti_sci_handle *handle,
  * See @ti_sci_msg_rm_ring_cfg_req for more info.
  */
 static int ti_sci_cmd_ring_config(const struct ti_sci_handle *handle,
-				  u32 valid_params, u16 nav_id, u16 index,
-				  u32 addr_lo, u32 addr_hi, u32 count,
-				  u8 mode, u8 size, u8 order_id)
+				  const struct ti_sci_msg_rm_ring_cfg *params)
 {
 	struct ti_sci_msg_rm_ring_cfg_resp *resp;
 	struct ti_sci_msg_rm_ring_cfg_req req;
@@ -2164,22 +2162,23 @@ static int ti_sci_cmd_ring_config(const struct ti_sci_handle *handle,
 		ret = PTR_ERR(xfer);
 		return ret;
 	}
-	req.valid_params = valid_params;
-	req.nav_id = nav_id;
-	req.index = index;
-	req.addr_lo = addr_lo;
-	req.addr_hi = addr_hi;
-	req.count = count;
-	req.mode = mode;
-	req.size = size;
-	req.order_id = order_id;
+
+	req.valid_params = params->valid_params;
+	req.nav_id = params->nav_id;
+	req.index = params->index;
+	req.addr_lo = params->addr_lo;
+	req.addr_hi = params->addr_hi;
+	req.count = params->count;
+	req.mode = params->mode;
+	req.size = params->size;
+	req.order_id = params->order_id;
 
 	ret = ti_sci_do_xfer(info, xfer);
 	if (ret)
 		goto fail;
 
 fail:
-	dev_dbg(info->dev, "RM_RA:config ring %u ret:%d\n", index, ret);
+	dev_dbg(info->dev, "RM_RA:config ring %u ret:%d\n", params->index, ret);
 	return ret;
 }
 
@@ -2640,7 +2639,7 @@ static void ti_sci_setup_ops(struct ti_sci_info *info)
 	pops->get_proc_boot_status = ti_sci_cmd_get_proc_boot_status;
 	pops->proc_shutdown_no_wait = ti_sci_cmd_proc_shutdown_no_wait;
 
-	rops->config = ti_sci_cmd_ring_config;
+	rops->set_cfg = ti_sci_cmd_ring_config;
 
 	psilops->pair = ti_sci_cmd_rm_psil_pair;
 	psilops->unpair = ti_sci_cmd_rm_psil_unpair;
diff --git a/drivers/soc/ti/k3-navss-ringacc.c b/drivers/soc/ti/k3-navss-ringacc.c
index 50d5c79f91..e07cbec898 100644
--- a/drivers/soc/ti/k3-navss-ringacc.c
+++ b/drivers/soc/ti/k3-navss-ringacc.c
@@ -435,20 +435,16 @@ EXPORT_SYMBOL_GPL(k3_ringacc_request_rings_pair);
 
 static void k3_ringacc_ring_reset_sci(struct k3_ring *ring)
 {
+	struct ti_sci_msg_rm_ring_cfg ring_cfg = { 0 };
 	struct k3_ringacc *ringacc = ring->parent;
 	int ret;
 
-	ret = ringacc->tisci_ring_ops->config(
-			ringacc->tisci,
-			TI_SCI_MSG_VALUE_RM_RING_COUNT_VALID,
-			ringacc->tisci_dev_id,
-			ring->ring_id,
-			0,
-			0,
-			ring->size,
-			0,
-			0,
-			0);
+	ring_cfg.nav_id = ringacc->tisci_dev_id;
+	ring_cfg.index = ring->ring_id;
+	ring_cfg.valid_params = TI_SCI_MSG_VALUE_RM_RING_COUNT_VALID;
+	ring_cfg.count = ring->size;
+
+	ret = ringacc->tisci_ring_ops->set_cfg(ringacc->tisci, &ring_cfg);
 	if (ret)
 		dev_err(ringacc->dev, "TISCI reset ring fail (%d) ring_idx %d\n",
 			ret, ring->ring_id);
@@ -468,20 +464,16 @@ EXPORT_SYMBOL_GPL(k3_ringacc_ring_reset);
 static void k3_ringacc_ring_reconfig_qmode_sci(struct k3_ring *ring,
 					       enum k3_ring_mode mode)
 {
+	struct ti_sci_msg_rm_ring_cfg ring_cfg = { 0 };
 	struct k3_ringacc *ringacc = ring->parent;
 	int ret;
 
-	ret = ringacc->tisci_ring_ops->config(
-			ringacc->tisci,
-			TI_SCI_MSG_VALUE_RM_RING_MODE_VALID,
-			ringacc->tisci_dev_id,
-			ring->ring_id,
-			0,
-			0,
-			0,
-			mode,
-			0,
-			0);
+	ring_cfg.nav_id = ringacc->tisci_dev_id;
+	ring_cfg.index = ring->ring_id;
+	ring_cfg.valid_params = TI_SCI_MSG_VALUE_RM_RING_MODE_VALID;
+	ring_cfg.mode = mode;
+
+	ret = ringacc->tisci_ring_ops->set_cfg(ringacc->tisci, &ring_cfg);
 	if (ret)
 		dev_err(ringacc->dev, "TISCI reconf qmode fail (%d) ring_idx %d\n",
 			ret, ring->ring_id);
@@ -548,20 +540,15 @@ EXPORT_SYMBOL_GPL(k3_ringacc_ring_reset_dma);
 
 static void k3_ringacc_ring_free_sci(struct k3_ring *ring)
 {
+	struct ti_sci_msg_rm_ring_cfg ring_cfg = { 0 };
 	struct k3_ringacc *ringacc = ring->parent;
 	int ret;
 
-	ret = ringacc->tisci_ring_ops->config(
-			ringacc->tisci,
-			TI_SCI_MSG_VALUE_RM_ALL_NO_ORDER,
-			ringacc->tisci_dev_id,
-			ring->ring_id,
-			0,
-			0,
-			0,
-			0,
-			0,
-			0);
+	ring_cfg.nav_id = ringacc->tisci_dev_id;
+	ring_cfg.index = ring->ring_id;
+	ring_cfg.valid_params = TI_SCI_MSG_VALUE_RM_ALL_NO_ORDER;
+
+	ret = ringacc->tisci_ring_ops->set_cfg(ringacc->tisci, &ring_cfg);
 	if (ret)
 		dev_err(ringacc->dev, "TISCI ring free fail (%d) ring_idx %d\n",
 			ret, ring->ring_id);
@@ -641,32 +628,27 @@ EXPORT_SYMBOL_GPL(k3_ringacc_get_tisci_dev_id);
 
 static int k3_ringacc_ring_cfg_sci(struct k3_ring *ring)
 {
+	struct ti_sci_msg_rm_ring_cfg ring_cfg = { 0 };
 	struct k3_ringacc *ringacc = ring->parent;
-	u32 ring_idx;
 	int ret;
 
 	if (!ringacc->tisci)
 		return -EINVAL;
 
-	ring_idx = ring->ring_id;
-	ret = ringacc->tisci_ring_ops->config(
-			ringacc->tisci,
-			TI_SCI_MSG_VALUE_RM_ALL_NO_ORDER,
-			ringacc->tisci_dev_id,
-			ring_idx,
-			lower_32_bits(ring->ring_mem_dma),
-			upper_32_bits(ring->ring_mem_dma),
-			ring->size,
-			ring->mode,
-			ring->elm_size,
-			0);
-	if (ret) {
+	ring_cfg.nav_id = ringacc->tisci_dev_id;
+	ring_cfg.index = ring->ring_id;
+	ring_cfg.valid_params = TI_SCI_MSG_VALUE_RM_ALL_NO_ORDER;
+	ring_cfg.addr_lo = lower_32_bits(ring->ring_mem_dma);
+	ring_cfg.addr_hi = upper_32_bits(ring->ring_mem_dma);
+	ring_cfg.count = ring->size;
+	ring_cfg.mode = ring->mode;
+
+	ret = ringacc->tisci_ring_ops->set_cfg(ringacc->tisci, &ring_cfg);
+	if (ret)
 		dev_err(ringacc->dev, "TISCI config ring fail (%d) ring_idx %d\n",
-			ret, ring_idx);
-		return ret;
-	}
+			ret, ring->ring_id);
 
-	return 0;
+	return ret;
 }
 
 static int k3_dmaring_cfg(struct k3_ring *ring, struct k3_ring_cfg *cfg)
diff --git a/include/soc/ti/ti_sci_protocol.h b/include/soc/ti/ti_sci_protocol.h
index e1c9956eb1..ecc23089d5 100644
--- a/include/soc/ti/ti_sci_protocol.h
+++ b/include/soc/ti/ti_sci_protocol.h
@@ -327,16 +327,31 @@ struct ti_sci_proc_ops {
 	TI_SCI_MSG_VALUE_RM_RING_MODE_VALID | \
 	TI_SCI_MSG_VALUE_RM_RING_SIZE_VALID)
 
+/**
+ * struct ti_sci_msg_rm_ring_cfg - Ring configuration
+ *
+ * Parameters for Navigator Subsystem ring configuration
+ * See @ti_sci_msg_rm_ring_cfg_req
+ */
+struct ti_sci_msg_rm_ring_cfg {
+	u32 valid_params;
+	u16 nav_id;
+	u16 index;
+	u32 addr_lo;
+	u32 addr_hi;
+	u32 count;
+	u8 mode;
+	u8 size;
+	u8 order_id;
+};
+
 /**
  * struct ti_sci_rm_ringacc_ops - Ring Accelerator Management operations
  * @config: configure the SoC Navigator Subsystem Ring Accelerator ring
  */
 struct ti_sci_rm_ringacc_ops {
-	int (*config)(const struct ti_sci_handle *handle,
-		      u32 valid_params, u16 nav_id, u16 index,
-		      u32 addr_lo, u32 addr_hi, u32 count, u8 mode,
-		      u8 size, u8 order_id
-	);
+	int (*set_cfg)(const struct ti_sci_handle *handle,
+		       const struct ti_sci_msg_rm_ring_cfg *params);
 };
 
 /**

-- 
2.39.5




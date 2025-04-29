Delivery-date: Tue, 29 Apr 2025 16:32:28 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u9m0a-000WMS-1E
	for lore@lore.pengutronix.de;
	Tue, 29 Apr 2025 16:32:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u9m0Z-000386-5A
	for lore@pengutronix.de; Tue, 29 Apr 2025 16:32:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9pEjg1kW5IkrxgDG+lrlrWoSMbpp9CUlnfcRVgsQGWI=; b=xHXUb+HrCzkXdqRexlVHDXOnN7
	PliXpp5JcTNKstv6og4NmrooAG5J6XN7M8UrnEDFYMgLE7Alg3AP8V6bT2nXtaKkGcPKcQ8ZiNOu/
	lbeB0XvzyJtJ4JaB2RU6wkqL4UF9RIzsnm2/7KbZOBDfjmG/mxcNtkRN/104Y3XlKASrMjLaBSASs
	06oa78erMwZ1BFv+OAYzAWsFe/9bv2mPax9xP49jIGnYAWg9TsZVhQAHdtxE1TGzrnEr/8cC6OHwq
	pJMVO8mk9QfdfkoxZdAsTv+ZFwVqKeOmh+N1gd+5cWiWtUFCUnejsdbVXIy1nLPWaMGMkkCmIgTGN
	V8kOC13w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9m03-00000009xmP-1mBf;
	Tue, 29 Apr 2025 14:31:55 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9ljC-00000009uGH-1LPz
	for barebox@bombadil.infradead.org;
	Tue, 29 Apr 2025 14:14:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=9pEjg1kW5IkrxgDG+lrlrWoSMbpp9CUlnfcRVgsQGWI=; b=NZhNgyxMAcFub4YGrfn2/OWaJ0
	kuDat9/PgQmnIceyXoLEfcyzd7iLTeOUUVUFyJlbYnk9MMhH8BVZfjBBbPKvSm9FGdWG+9ddg1LR4
	leAsAp5BfUQPJs87S2eRZPegbfVCwv6jDBn6/wxQs4e6pE6bp6GAQ8WPrw7pkRD7RQrIcpDiG3/vm
	A3Y2U+wFoStFASZ9hdYv3HkIl3aQsIADxof+1TcwFzzGQOKZlbFCLDkJ8202xBGCsCfkrzYJ/LXJD
	DPYJwSdRaNSPqX0eSJ67738N1NjKtwFZkMfvPhL+/NEP+UgJr5hk3DEZTLrwiyEpGtgwOLI5QmHd6
	h/L6AbUg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u9lj7-0000000DNLh-2f7d
	for barebox@lists.infradead.org;
	Tue, 29 Apr 2025 14:14:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u9lj4-00084b-PG; Tue, 29 Apr 2025 16:14:22 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u9lj4-000HEn-1R;
	Tue, 29 Apr 2025 16:14:22 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u9lj4-00Cqw2-1B;
	Tue, 29 Apr 2025 16:14:22 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 29 Apr 2025 16:14:22 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250429-k3-asel-v1-3-6f39afaa2dfe@pengutronix.de>
References: <20250429-k3-asel-v1-0-6f39afaa2dfe@pengutronix.de>
In-Reply-To: <20250429-k3-asel-v1-0-6f39afaa2dfe@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1745936062; l=3644;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=BQ+l+aqw4WeR7vdQZH/LIjN2ZCghmfHWRCe5d/K8jWM=;
 b=HYhJBhMLeYhZaRxZXvtDfRXCxCKcTKMG3uGD7W9b4qMXQtKqLwpRawyYrsdSheEVugdjo/BFJ
 oxgMla6qUj4B7N4p3/H8j8T79/wls93g+CiWxsGyw3X19djOTEfV6Ku
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250429_151425_819431_902A4747 
X-CRM114-Status: GOOD (  13.75  )
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
Subject: [PATCH 3/4] firmware: ti_sci: handle Asel
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This adds support for the Asel aka "Address selection" bits to ti_sci.

These bits become important when the DDR firewalls are enabled. With DDR
firewalls the buffer addresses used by the PKTDMA engine need to be
tagged with the correct Asel value, otherwise they will be blocked by
the firewall.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/firmware/ti_sci.c         | 2 ++
 drivers/firmware/ti_sci.h         | 5 +++++
 drivers/soc/ti/k3-navss-ringacc.c | 2 ++
 include/soc/ti/ti_sci_protocol.h  | 9 ++++++++-
 4 files changed, 17 insertions(+), 1 deletion(-)

diff --git a/drivers/firmware/ti_sci.c b/drivers/firmware/ti_sci.c
index ddbaf0bc1f..a874599fe6 100644
--- a/drivers/firmware/ti_sci.c
+++ b/drivers/firmware/ti_sci.c
@@ -2172,6 +2172,8 @@ static int ti_sci_cmd_ring_config(const struct ti_sci_handle *handle,
 	req.mode = params->mode;
 	req.size = params->size;
 	req.order_id = params->order_id;
+	req.virtid = params->virtid;
+	req.asel = params->asel;
 
 	ret = ti_sci_do_xfer(info, xfer);
 	if (ret)
diff --git a/drivers/firmware/ti_sci.h b/drivers/firmware/ti_sci.h
index bb8bc7beea..15c7d55d43 100644
--- a/drivers/firmware/ti_sci.h
+++ b/drivers/firmware/ti_sci.h
@@ -848,6 +848,9 @@ struct ti_sci_msg_req_wait_proc_boot_status {
  *	the formula (log2(size_bytes) - 2), where size_bytes cannot be
  *	greater than 256.
  * @order_id: Specifies the ring's bus order ID.
+ * @virtid: Ring virt ID value
+ * @asel: Ring ASEL (address select) value to be set into the ASEL field of the
+ *	ring's RING_BA_HI register.
  */
 struct ti_sci_msg_rm_ring_cfg_req {
 	struct ti_sci_msg_hdr hdr;
@@ -860,6 +863,8 @@ struct ti_sci_msg_rm_ring_cfg_req {
 	u8 mode;
 	u8 size;
 	u8 order_id;
+	u16 virtid;
+	u8 asel;
 } __packed;
 
 /**
diff --git a/drivers/soc/ti/k3-navss-ringacc.c b/drivers/soc/ti/k3-navss-ringacc.c
index e07cbec898..2d61f63761 100644
--- a/drivers/soc/ti/k3-navss-ringacc.c
+++ b/drivers/soc/ti/k3-navss-ringacc.c
@@ -642,6 +642,8 @@ static int k3_ringacc_ring_cfg_sci(struct k3_ring *ring)
 	ring_cfg.addr_hi = upper_32_bits(ring->ring_mem_dma);
 	ring_cfg.count = ring->size;
 	ring_cfg.mode = ring->mode;
+	ring_cfg.size = ring->elm_size;
+	ring_cfg.asel = ring->asel;
 
 	ret = ringacc->tisci_ring_ops->set_cfg(ringacc->tisci, &ring_cfg);
 	if (ret)
diff --git a/include/soc/ti/ti_sci_protocol.h b/include/soc/ti/ti_sci_protocol.h
index ecc23089d5..a080051dc5 100644
--- a/include/soc/ti/ti_sci_protocol.h
+++ b/include/soc/ti/ti_sci_protocol.h
@@ -319,13 +319,18 @@ struct ti_sci_proc_ops {
 #define TI_SCI_MSG_VALUE_RM_RING_SIZE_VALID	BIT(4)
 /* RA config.order_id parameter is valid for RM ring configure TISCI message */
 #define TI_SCI_MSG_VALUE_RM_RING_ORDER_ID_VALID	BIT(5)
+/* RA config.virtid parameter is valid for RM ring configure TISCI message */
+#define TI_SCI_MSG_VALUE_RM_RING_VIRTID_VALID   BIT(6)
+/* RA config.asel parameter is valid for RM ring configure TISCI message */
+#define TI_SCI_MSG_VALUE_RM_RING_ASEL_VALID     BIT(7)
 
 #define TI_SCI_MSG_VALUE_RM_ALL_NO_ORDER \
 	(TI_SCI_MSG_VALUE_RM_RING_ADDR_LO_VALID | \
 	TI_SCI_MSG_VALUE_RM_RING_ADDR_HI_VALID | \
 	TI_SCI_MSG_VALUE_RM_RING_COUNT_VALID | \
 	TI_SCI_MSG_VALUE_RM_RING_MODE_VALID | \
-	TI_SCI_MSG_VALUE_RM_RING_SIZE_VALID)
+	TI_SCI_MSG_VALUE_RM_RING_SIZE_VALID | \
+	TI_SCI_MSG_VALUE_RM_RING_ASEL_VALID)
 
 /**
  * struct ti_sci_msg_rm_ring_cfg - Ring configuration
@@ -343,6 +348,8 @@ struct ti_sci_msg_rm_ring_cfg {
 	u8 mode;
 	u8 size;
 	u8 order_id;
+	u16 virtid;
+	u8 asel;
 };
 
 /**

-- 
2.39.5




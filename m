Delivery-date: Wed, 28 May 2025 14:04:31 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKFWJ-001B2J-0U
	for lore@lore.pengutronix.de;
	Wed, 28 May 2025 14:04:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKFWA-0006l9-2Q
	for lore@pengutronix.de; Wed, 28 May 2025 14:04:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=scA8ReYzPjxIUtK2KMgOtfpe/iQkDuwGrxWwNs+ScYE=; b=FvF6OAr1N/Vp0igDqZzNNmd+4p
	VIP75yP58qjsNeMFdLaHulA7fNubTxqiDFI+u6fO4Q0FMezy97FYFYPP5PlFMbnePFwPQxm1gLcql
	Jb/+5NVYg2kPAvc4sb6+VE4szQ6xSADD/wy9buprw+rBOmt/5mt6EEpLAPxhxlwYSic5CbPeLOewh
	BMrbRlXXMcKAY+ipY5Y8tZpKK+69UWf9pNYq1hvVxAhgvzABbK+KjD0bAo8uZnQIvzVMiDO+fDW+B
	XZEyOfzGlyk8we6xmkDLsziFZnqV9lX1v+nVLNahXMFj5S3/h71rEGjwDXo17Rvj5vQtjTbKT4622
	ARddj05Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKFVQ-0000000D2h9-2YIq;
	Wed, 28 May 2025 12:03:36 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKFU1-0000000D2ah-0RcI
	for barebox@bombadil.infradead.org;
	Wed, 28 May 2025 12:02:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Cc:To:In-Reply-To:References:Message-Id
	:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=scA8ReYzPjxIUtK2KMgOtfpe/iQkDuwGrxWwNs+ScYE=; b=rbm0WOPkQvLcCci3IOmQORsL7r
	0eZgWzipZ9oj4AU2uymmlGkFRSi054lV91IgE3pQN2B7JRB/ri9cnE3O4lNM2a62RIv8eHc8Egmbp
	U1fOiSJpe/Fs7616QLRFW1zlieEKyy0ZVhDc9g9t3HTGPbDhKC8MsZTVGkhqqL1RAxqCC5GIojMAf
	LDswBoUDdvdFVnVco48IsHvC7dpaWy8znrbAQ/zFF8N7uCcLS4SS1VHd27T6+GgGSTMNZSkXyO0QT
	C8MGVunjtbeJvrRzao7NxXn7xO10Hifp5yliaoo3CmZOeup1InjK9CDjAWPjf5OHm87UWd51JPMbS
	2r8udrYQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKFTw-0000000Dapd-3CwN
	for barebox@lists.infradead.org;
	Wed, 28 May 2025 12:02:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uKFTp-0004SJ-OR; Wed, 28 May 2025 14:01:57 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uKFTp-000a9V-1m;
	Wed, 28 May 2025 14:01:57 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uKFE2-00CB0R-1j;
	Wed, 28 May 2025 13:45:38 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 28 May 2025 13:45:28 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250528-arm-k3-am62l-v1-16-3f88e6d10d99@pengutronix.de>
References: <20250528-arm-k3-am62l-v1-0-3f88e6d10d99@pengutronix.de>
In-Reply-To: <20250528-arm-k3-am62l-v1-0-3f88e6d10d99@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1748432738; l=7773;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=OWs9z3TFJMpMJHpH5vTGM3wcyRgtj8HqKp9y4GKllZ0=;
 b=ZOkaNDPlIxXOJ16IqSPdDbkNZzk2EaubXutjydNrcXf6gaJqP1FSYpxFmibxtzi4RY+Yg6HvA
 7oPtz/XKpdnDowLRkN1zJlX4Q6H5CWiF/cs9jpd33qUoEFF9mxvTI3L
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250528_130204_844907_6ACA69CC 
X-CRM114-Status: GOOD (  14.12  )
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
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 16/31] dma: ti: k3-udma-common: Update common code for
 AM62L DMAs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Based on U-Boot downstream commit:

| commit 8679e1f2f3cb8de0b71e72e7538f5404f7abbd2b
| Author: Vignesh Raghavendra <vigneshr@ti.com>
| Date:   Wed Feb 26 19:55:45 2025 +0530
|
|    PENDING: dma: ti: k3-udma-common: Update common code for AM62L DMAs
|
|     AM62L has a autopair mechanism to pair DMA and remote endpoints, and
|     setup all the peer registers. So avoid accessing or setting up PEER
|     registers for AM62L DMAs.
|
|     Signed-off-by: Vignesh Raghavendra <vigneshr@ti.com>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/dma/ti/k3-udma-common.c | 80 +++++++++++++++++++++++++++++------------
 drivers/dma/ti/k3-udma-hwdef.h  |  7 ++++
 2 files changed, 64 insertions(+), 23 deletions(-)

diff --git a/drivers/dma/ti/k3-udma-common.c b/drivers/dma/ti/k3-udma-common.c
index d2ef9cc7b83d7fe4c2845b78b05c3a0e640cc589..8661d148aa1324828a168edb5caa496bb7e6da45 100644
--- a/drivers/dma/ti/k3-udma-common.c
+++ b/drivers/dma/ti/k3-udma-common.c
@@ -211,20 +211,24 @@ int udma_start(struct udma_chan *uc)
 	dev_dbg(uc->ud->dev, "%s: chan:%d dir:%s\n",
 		 __func__, uc->id, udma_get_dir_text(uc->config.dir));
 
-	/* Make sure that we clear the teardown bit, if it is set */
-	udma_stop_hard(uc);
 
-	/* Reset all counters */
-	udma_reset_counters(uc);
+	if (uc->ud->match_data->type < DMA_TYPE_BCDMA_V2) {
+		/* Make sure that we clear the teardown bit, if it is set */
+		udma_stop_hard(uc);
+		/* Reset all counters */
+		udma_reset_counters(uc);
+	}
 
 	switch (uc->config.dir) {
 	case DMA_DEV_TO_MEM:
-		udma_rchanrt_write(uc->rchan, UDMA_RCHAN_RT_CTL_REG,
-				   UDMA_CHAN_RT_CTL_EN);
+		udma_rchanrt_update_bits(uc->rchan, UDMA_RCHAN_RT_CTL_REG,
+					 UDMA_CHAN_RT_CTL_EN | UDMA_CHAN_RT_CTL_TDOWN,
+					 UDMA_CHAN_RT_CTL_EN);
 
 		/* Enable remote */
-		udma_rchanrt_write(uc->rchan, UDMA_RCHAN_RT_PEER_RT_EN_REG,
-				   UDMA_PEER_RT_EN_ENABLE);
+		if (uc->ud->match_data->type < DMA_TYPE_BCDMA_V2)
+			udma_rchanrt_write(uc->rchan, UDMA_RCHAN_RT_PEER_RT_EN_REG,
+					   UDMA_PEER_RT_EN_ENABLE);
 
 		dev_dbg(uc->ud->dev, "%s(rx): RT_CTL:0x%08x PEER RT_ENABLE:0x%08x\n",
 			 __func__,
@@ -235,11 +239,13 @@ int udma_start(struct udma_chan *uc)
 		break;
 	case DMA_MEM_TO_DEV:
 		/* Enable remote */
-		udma_tchanrt_write(uc->tchan, UDMA_TCHAN_RT_PEER_RT_EN_REG,
-				   UDMA_PEER_RT_EN_ENABLE);
+		if (uc->ud->match_data->type < DMA_TYPE_BCDMA_V2)
+			udma_tchanrt_write(uc->tchan, UDMA_TCHAN_RT_PEER_RT_EN_REG,
+					   UDMA_PEER_RT_EN_ENABLE);
 
-		udma_tchanrt_write(uc->tchan, UDMA_TCHAN_RT_CTL_REG,
-				   UDMA_CHAN_RT_CTL_EN);
+		udma_tchanrt_update_bits(uc->tchan, UDMA_TCHAN_RT_CTL_REG,
+					 UDMA_CHAN_RT_CTL_EN | UDMA_CHAN_RT_CTL_TDOWN,
+					 UDMA_CHAN_RT_CTL_EN);
 
 		dev_dbg(uc->ud->dev, "%s(tx): RT_CTL:0x%08x PEER RT_ENABLE:0x%08x\n",
 			 __func__,
@@ -269,9 +275,17 @@ void udma_stop_mem2dev(struct udma_chan *uc, bool sync)
 	int i = 0;
 	u32 val;
 
-	udma_tchanrt_write(uc->tchan, UDMA_TCHAN_RT_CTL_REG,
-			   UDMA_CHAN_RT_CTL_EN |
-			   UDMA_CHAN_RT_CTL_TDOWN);
+	if (uc->ud->match_data->type == DMA_TYPE_BCDMA_V2 ||
+	    uc->ud->match_data->type == DMA_TYPE_PKTDMA_V2) {
+		udma_tchanrt_update_bits(uc->tchan, UDMA_TCHAN_RT_CTL_REG,
+					 UDMA_CHAN_RT_CTL_EN |
+					 UDMA_CHAN_RT_CTL_TDOWN,
+					 UDMA_CHAN_RT_CTL_TDOWN);
+	} else {
+		udma_tchanrt_write(uc->tchan, UDMA_TCHAN_RT_CTL_REG,
+				   UDMA_CHAN_RT_CTL_EN |
+				   UDMA_CHAN_RT_CTL_TDOWN);
+	}
 
 	val = udma_tchanrt_read(uc->tchan, UDMA_TCHAN_RT_CTL_REG);
 
@@ -285,6 +299,12 @@ void udma_stop_mem2dev(struct udma_chan *uc, bool sync)
 		i++;
 	}
 
+	if (uc->ud->match_data->type == DMA_TYPE_BCDMA_V2 ||
+	    uc->ud->match_data->type == DMA_TYPE_PKTDMA_V2) {
+		udma_tchanrt_write(uc->tchan, UDMA_TCHAN_RT_CTL_REG, UDMA_CHAN_RT_CTL_PAIR_COMPLETE);
+		return;
+	}
+
 	val = udma_tchanrt_read(uc->tchan, UDMA_TCHAN_RT_PEER_RT_EN_REG);
 	if (val & UDMA_PEER_RT_EN_ENABLE)
 		dev_dbg(uc->ud->dev, "%s: peer not stopped TIMEOUT !\n", __func__);
@@ -295,9 +315,15 @@ void udma_stop_dev2mem(struct udma_chan *uc, bool sync)
 	int i = 0;
 	u32 val;
 
-	udma_rchanrt_write(uc->rchan, UDMA_RCHAN_RT_PEER_RT_EN_REG,
-			   UDMA_PEER_RT_EN_ENABLE |
-			   UDMA_PEER_RT_EN_TEARDOWN);
+	if (uc->ud->match_data->type == DMA_TYPE_BCDMA_V2 ||
+	    uc->ud->match_data->type == DMA_TYPE_PKTDMA_V2)
+		udma_rchanrt_update_bits(uc->rchan, UDMA_RCHAN_RT_CTL_REG,
+					 UDMA_CHAN_RT_CTL_EN | UDMA_CHAN_RT_CTL_TDOWN,
+					 UDMA_CHAN_RT_CTL_EN | UDMA_CHAN_RT_CTL_TDOWN);
+	else
+		udma_rchanrt_write(uc->rchan, UDMA_RCHAN_RT_PEER_RT_EN_REG,
+				   UDMA_PEER_RT_EN_ENABLE |
+				   UDMA_PEER_RT_EN_TEARDOWN);
 
 	val = udma_rchanrt_read(uc->rchan, UDMA_RCHAN_RT_CTL_REG);
 
@@ -311,6 +337,10 @@ void udma_stop_dev2mem(struct udma_chan *uc, bool sync)
 		i++;
 	}
 
+	if (uc->ud->match_data->type == DMA_TYPE_BCDMA_V2 ||
+	    uc->ud->match_data->type == DMA_TYPE_PKTDMA_V2)
+		return;
+
 	val = udma_rchanrt_read(uc->rchan, UDMA_RCHAN_RT_PEER_RT_EN_REG);
 	if (val & UDMA_PEER_RT_EN_ENABLE)
 		dev_dbg(uc->ud->dev, "%s: peer not stopped TIMEOUT !\n", __func__);
@@ -625,7 +655,10 @@ int udma_alloc_rx_resources(struct udma_chan *uc)
 	}
 
 	rflow = uc->rflow;
-	if (ud->tflow_cnt) {
+
+	if (ud->match_data->type >= DMA_TYPE_BCDMA_V2) {
+		fd_ring_id = rflow->id;
+	} else if (ud->tflow_cnt) {
 		fd_ring_id = ud->tflow_cnt + rflow->id;
 	} else {
 		fd_ring_id = ud->bchan_cnt + ud->tchan_cnt + ud->echan_cnt +
@@ -838,9 +871,10 @@ int bcdma_alloc_bchan_resources(struct udma_chan *uc)
 	if (ret)
 		return ret;
 
-	ret = k3_ringacc_request_rings_pair(ud->ringacc, uc->bchan->id, -1,
-						&uc->bchan->t_ring,
-						&uc->bchan->tc_ring);
+	ret = k3_ringacc_request_rings_pair(ud->ringacc,
+					    ud->match_data->chan_cnt + uc->bchan->id,
+					    -1, &uc->bchan->t_ring,
+					    &uc->bchan->tc_ring);
 	if (ret) {
 		ret = -EBUSY;
 		goto err_ring;
@@ -1064,7 +1098,7 @@ int udma_of_xlate(struct dma *dma, struct of_phandle_args *args)
 	ucc->notdpkt = ep_config->notdpkt;
 	ucc->ep_type = ep_config->ep_type;
 
-	if (ud->match_data->type == DMA_TYPE_PKTDMA &&
+	if (ud->match_data->type >= DMA_TYPE_PKTDMA &&
 	    ep_config->mapped_channel_id >= 0) {
 		ucc->mapped_channel_id = ep_config->mapped_channel_id;
 		ucc->default_flow_id = ep_config->default_flow_id;
diff --git a/drivers/dma/ti/k3-udma-hwdef.h b/drivers/dma/ti/k3-udma-hwdef.h
index 3d6b4d10fff1156f5d0a0a8ae8d0c940b8060236..6fbbd88e75fc8ee737a36c9f573d99a4e0c77392 100644
--- a/drivers/dma/ti/k3-udma-hwdef.h
+++ b/drivers/dma/ti/k3-udma-hwdef.h
@@ -37,6 +37,8 @@
 
 #define UDMA_RFLOW_REG(x) (UDMA_RFLOW_RF##x##_REG)
 
+#define UDMA_RX_FLOWRT_RFA              0x8
+
 /* TX chan regs */
 #define UDMA_TCHAN_TCFG_REG		0x0
 #define UDMA_TCHAN_TCREDIT_REG		0x4
@@ -60,6 +62,7 @@
 
 /* TX chan RT regs */
 #define UDMA_TCHAN_RT_CTL_REG		0x0
+#define UDMA_TCHAN_RT_CFG_REG		0x4
 #define UDMA_TCHAN_RT_SWTRIG_REG	0x8
 #define UDMA_TCHAN_RT_STDATA_REG	0x80
 
@@ -79,6 +82,7 @@
 
 /* RX chan RT regs */
 #define UDMA_RCHAN_RT_CTL_REG		0x0
+#define UDMA_RCHAN_RT_CFG_REG		0x4
 #define UDMA_RCHAN_RT_SWTRIG_REG	0x8
 #define UDMA_RCHAN_RT_STDATA_REG	0x80
 
@@ -132,6 +136,9 @@
 #define UDMA_CHAN_RT_CTL_TDOWN	BIT(30)
 #define UDMA_CHAN_RT_CTL_PAUSE	BIT(29)
 #define UDMA_CHAN_RT_CTL_FTDOWN	BIT(28)
+#define UDMA_CHAN_RT_CTL_AUTOPAIR   BIT(23)
+#define UDMA_CHAN_RT_CTL_PAIR_TIMEOUT   BIT(17)
+#define UDMA_CHAN_RT_CTL_PAIR_COMPLETE  BIT(16)
 #define UDMA_CHAN_RT_CTL_ERROR	BIT(0)
 
 /* UDMA_TCHAN_RT_PEER_RT_EN_REG/UDMA_RCHAN_RT_PEER_RT_EN_REG (PSI-L: 0x408) */

-- 
2.39.5




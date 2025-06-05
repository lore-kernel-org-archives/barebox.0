Delivery-date: Thu, 05 Jun 2025 15:14:13 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uNAQ9-0041dr-0G
	for lore@lore.pengutronix.de;
	Thu, 05 Jun 2025 15:14:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uNAPw-0001Tn-2e
	for lore@pengutronix.de; Thu, 05 Jun 2025 15:14:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eGk1vrKsZaW+JvOfFiT+Vphg/17bd4JmMzGIfNkAFVM=; b=cTqOj1NkQk/KEtbuhpNASCJbmz
	X03vsFGfZAgWNo84sQMZXCuopFUcb2d8/wVeAMXCgvqix4p+DBYGfDAPaDIlJrar/nNu2iu3Lk8Gt
	G3LE9KvNXi5o7swyrqozTwUp6wq1Fb/cm+Tz96gsvDDxfQ6KbYMX8s6ShjgGIq36GqXB3ijfX+qZh
	7pXaoqYd0X/2hO1ZbtOVTygguUFznoPnCBe8u22GGTIQbUTKBtnP3kRPxzhueI0e59rq4ES4u0EC/
	n4EnCgIIMMYd8PgPKbeHKlWQ6MVv4pK2gxfTngwxJUenJtBEAykqyXQSDRMf97XnkWutiOhfJ9A7U
	ZRM7MPkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNAOx-0000000FZGa-1kDP;
	Thu, 05 Jun 2025 13:12:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNAFD-0000000FXq3-3jre
	for barebox@lists.infradead.org;
	Thu, 05 Jun 2025 13:03:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uNAFC-00010B-Lj; Thu, 05 Jun 2025 15:02:54 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uNAFC-001xiw-1Z;
	Thu, 05 Jun 2025 15:02:54 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uN9vS-0024bQ-1f;
	Thu, 05 Jun 2025 14:42:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 05 Jun 2025 14:42:41 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250605-arm-k3-am62l-v2-16-53257d4b2dd2@pengutronix.de>
References: <20250605-arm-k3-am62l-v2-0-53257d4b2dd2@pengutronix.de>
In-Reply-To: <20250605-arm-k3-am62l-v2-0-53257d4b2dd2@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1749127350; l=78052;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=FZK06iQFdGGiMMFb1idb6ku+PZkUoaPW1ws4kKypBTc=;
 b=YUWmpvyflkfSpSIpnsQgaDvWCPw94VqlPjRJs0ujadbOKwaj1/NItQPCapR2n9C981uxMkr5T
 /uFQBarQtMMDzpXACB8/Y2bgnHtpjUxesHwOvUmdMav5+Q1I0Ipd/QE
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250605_060256_443691_02FC8C1E 
X-CRM114-Status: GOOD (  22.47  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 16/33] dma: ti: k3-udma: Refactor common bits for AM62L
 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Based on U-Boot downstream commit:

| commit c0b542d473986fbc9daef66d8a232b74bba89a30
| Author: Vignesh Raghavendra <vigneshr@ti.com>
| Date:   Wed Feb 26 19:55:44 2025 +0530
|
|     PENDING: dma: ti: k3-udma: Refactor common bits for AM62L support
|
|     In anticipation of adding BCDMA_V2 and PKTDMA_V2 for upcoming AM62L
|     SoCs, move the common bits in to k3-udma-common.c.
|
|     No functional change intended.
|
|     Signed-off-by: Vignesh Raghavendra <vigneshr@ti.com>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/dma/ti/Makefile         |    2 +-
 drivers/dma/ti/k3-udma-common.c | 1154 +++++++++++++++++++++++++++++++
 drivers/dma/ti/k3-udma.c        | 1434 +--------------------------------------
 drivers/dma/ti/k3-udma.h        |  355 ++++++++++
 4 files changed, 1537 insertions(+), 1408 deletions(-)

diff --git a/drivers/dma/ti/Makefile b/drivers/dma/ti/Makefile
index b7dfff07210537660965d235c10ea7345c22b0a6..f841ad0cffaf086ffbf3b5775bfad776fa5c3d73 100644
--- a/drivers/dma/ti/Makefile
+++ b/drivers/dma/ti/Makefile
@@ -1 +1 @@
-obj-$(CONFIG_TI_K3_UDMA) += k3-udma.o k3-psil.o k3-psil-am62l.o
+obj-$(CONFIG_TI_K3_UDMA) += k3-udma.o k3-udma-common.o k3-psil.o k3-psil-am62l.o
diff --git a/drivers/dma/ti/k3-udma-common.c b/drivers/dma/ti/k3-udma-common.c
new file mode 100644
index 0000000000000000000000000000000000000000..d2ef9cc7b83d7fe4c2845b78b05c3a0e640cc589
--- /dev/null
+++ b/drivers/dma/ti/k3-udma-common.c
@@ -0,0 +1,1154 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ *  Copyright (C) 2018 Texas Instruments Incorporated - https://www.ti.com
+ *  Author: Peter Ujfalusi <peter.ujfalusi@ti.com>
+ */
+#define pr_fmt(fmt) "udma: " fmt
+
+#include <io.h>
+#include <malloc.h>
+#include <stdio.h>
+#include <linux/bitops.h>
+#include <linux/sizes.h>
+#include <linux/printk.h>
+#include <dma.h>
+#include <soc/ti/ti-udma.h>
+#include <soc/ti/ti_sci_protocol.h>
+#include <dma-devices.h>
+#include <soc/ti/cppi5.h>
+#include <soc/ti/k3-navss-ringacc.h>
+#include <clock.h>
+#include <linux/bitmap.h>
+#include <driver.h>
+#include <linux/device.h>
+
+#include "k3-udma-hwdef.h"
+#include "k3-udma.h"
+#include "k3-psil-priv.h"
+
+#define K3_ADDRESS_ASEL_SHIFT     48
+
+char *udma_get_dir_text(enum dma_transfer_direction dir)
+{
+	switch (dir) {
+	case DMA_DEV_TO_MEM:
+		return "DEV_TO_MEM";
+	case DMA_MEM_TO_DEV:
+		return "MEM_TO_DEV";
+	case DMA_MEM_TO_MEM:
+		return "MEM_TO_MEM";
+	case DMA_DEV_TO_DEV:
+		return "DEV_TO_DEV";
+	default:
+		break;
+	}
+
+	return "invalid";
+}
+
+void udma_reset_uchan(struct udma_chan *uc)
+{
+	memset(&uc->config, 0, sizeof(uc->config));
+	uc->config.remote_thread_id = -1;
+	uc->config.mapped_channel_id = -1;
+	uc->config.default_flow_id = -1;
+}
+
+bool udma_is_chan_running(struct udma_chan *uc)
+{
+	u32 trt_ctl = 0;
+	u32 rrt_ctl = 0;
+
+	switch (uc->config.dir) {
+	case DMA_DEV_TO_MEM:
+		rrt_ctl = udma_rchanrt_read(uc->rchan, UDMA_RCHAN_RT_CTL_REG);
+		dev_dbg(uc->ud->dev, "rrt_ctl: 0x%08x (peer: 0x%08x)\n",
+			 rrt_ctl,
+			 udma_rchanrt_read(uc->rchan,
+					   UDMA_RCHAN_RT_PEER_RT_EN_REG));
+		break;
+	case DMA_MEM_TO_DEV:
+		trt_ctl = udma_tchanrt_read(uc->tchan, UDMA_TCHAN_RT_CTL_REG);
+		dev_dbg(uc->ud->dev, "trt_ctl: 0x%08x (peer: 0x%08x)\n",
+			 trt_ctl,
+			 udma_tchanrt_read(uc->tchan,
+					   UDMA_TCHAN_RT_PEER_RT_EN_REG));
+		break;
+	case DMA_MEM_TO_MEM:
+		trt_ctl = udma_tchanrt_read(uc->tchan, UDMA_TCHAN_RT_CTL_REG);
+		rrt_ctl = udma_rchanrt_read(uc->rchan, UDMA_RCHAN_RT_CTL_REG);
+		break;
+	default:
+		break;
+	}
+
+	if (trt_ctl & UDMA_CHAN_RT_CTL_EN || rrt_ctl & UDMA_CHAN_RT_CTL_EN)
+		return true;
+
+	return false;
+}
+
+static int udma_pop_from_ring(struct udma_chan *uc, dma_addr_t *addr)
+{
+	struct k3_ring *ring = NULL;
+	int ret = -ENOENT;
+
+	switch (uc->config.dir) {
+	case DMA_DEV_TO_MEM:
+		ring = uc->rflow->r_ring;
+		break;
+	case DMA_MEM_TO_DEV:
+		ring = uc->tchan->tc_ring;
+		break;
+	case DMA_MEM_TO_MEM:
+		ring = uc->tchan->tc_ring;
+		break;
+	default:
+		break;
+	}
+
+	if (ring && k3_ringacc_ring_get_occ(ring))
+		ret = k3_ringacc_ring_pop(ring, addr);
+
+	return ret;
+}
+
+void udma_reset_rings(struct udma_chan *uc)
+{
+	struct k3_ring *ring1 = NULL;
+	struct k3_ring *ring2 = NULL;
+
+	switch (uc->config.dir) {
+	case DMA_DEV_TO_MEM:
+		ring1 = uc->rflow->fd_ring;
+		ring2 = uc->rflow->r_ring;
+		break;
+	case DMA_MEM_TO_DEV:
+		ring1 = uc->tchan->t_ring;
+		ring2 = uc->tchan->tc_ring;
+		break;
+	case DMA_MEM_TO_MEM:
+		ring1 = uc->tchan->t_ring;
+		ring2 = uc->tchan->tc_ring;
+		break;
+	default:
+		break;
+	}
+
+	if (ring1)
+		k3_ringacc_ring_reset_dma(ring1, k3_ringacc_ring_get_occ(ring1));
+	if (ring2)
+		k3_ringacc_ring_reset(ring2);
+}
+
+void udma_reset_counters(struct udma_chan *uc)
+{
+	u32 val;
+
+	if (uc->tchan) {
+		val = udma_tchanrt_read(uc->tchan, UDMA_TCHAN_RT_BCNT_REG);
+		udma_tchanrt_write(uc->tchan, UDMA_TCHAN_RT_BCNT_REG, val);
+
+		val = udma_tchanrt_read(uc->tchan, UDMA_TCHAN_RT_SBCNT_REG);
+		udma_tchanrt_write(uc->tchan, UDMA_TCHAN_RT_SBCNT_REG, val);
+
+		val = udma_tchanrt_read(uc->tchan, UDMA_TCHAN_RT_PCNT_REG);
+		udma_tchanrt_write(uc->tchan, UDMA_TCHAN_RT_PCNT_REG, val);
+
+		if (!uc->bchan) {
+			val = udma_tchanrt_read(uc->tchan, UDMA_TCHAN_RT_PEER_BCNT_REG);
+			udma_tchanrt_write(uc->tchan, UDMA_TCHAN_RT_PEER_BCNT_REG, val);
+		}
+	}
+
+	if (uc->rchan) {
+		val = udma_rchanrt_read(uc->rchan, UDMA_RCHAN_RT_BCNT_REG);
+		udma_rchanrt_write(uc->rchan, UDMA_RCHAN_RT_BCNT_REG, val);
+
+		val = udma_rchanrt_read(uc->rchan, UDMA_RCHAN_RT_SBCNT_REG);
+		udma_rchanrt_write(uc->rchan, UDMA_RCHAN_RT_SBCNT_REG, val);
+
+		val = udma_rchanrt_read(uc->rchan, UDMA_RCHAN_RT_PCNT_REG);
+		udma_rchanrt_write(uc->rchan, UDMA_RCHAN_RT_PCNT_REG, val);
+
+		val = udma_rchanrt_read(uc->rchan, UDMA_RCHAN_RT_PEER_BCNT_REG);
+		udma_rchanrt_write(uc->rchan, UDMA_RCHAN_RT_PEER_BCNT_REG, val);
+	}
+
+	uc->bcnt = 0;
+}
+
+int udma_stop_hard(struct udma_chan *uc)
+{
+	dev_dbg(uc->ud->dev, "%s: ENTER (chan%d)\n", __func__, uc->id);
+
+	switch (uc->config.dir) {
+	case DMA_DEV_TO_MEM:
+		udma_rchanrt_write(uc->rchan, UDMA_RCHAN_RT_PEER_RT_EN_REG, 0);
+		udma_rchanrt_write(uc->rchan, UDMA_RCHAN_RT_CTL_REG, 0);
+		break;
+	case DMA_MEM_TO_DEV:
+		udma_tchanrt_write(uc->tchan, UDMA_TCHAN_RT_CTL_REG, 0);
+		udma_tchanrt_write(uc->tchan, UDMA_TCHAN_RT_PEER_RT_EN_REG, 0);
+		break;
+	case DMA_MEM_TO_MEM:
+		udma_rchanrt_write(uc->rchan, UDMA_RCHAN_RT_CTL_REG, 0);
+		udma_tchanrt_write(uc->tchan, UDMA_TCHAN_RT_CTL_REG, 0);
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+int udma_start(struct udma_chan *uc)
+{
+	/* Channel is already running, no need to proceed further */
+	if (udma_is_chan_running(uc))
+		goto out;
+
+	dev_dbg(uc->ud->dev, "%s: chan:%d dir:%s\n",
+		 __func__, uc->id, udma_get_dir_text(uc->config.dir));
+
+	/* Make sure that we clear the teardown bit, if it is set */
+	udma_stop_hard(uc);
+
+	/* Reset all counters */
+	udma_reset_counters(uc);
+
+	switch (uc->config.dir) {
+	case DMA_DEV_TO_MEM:
+		udma_rchanrt_write(uc->rchan, UDMA_RCHAN_RT_CTL_REG,
+				   UDMA_CHAN_RT_CTL_EN);
+
+		/* Enable remote */
+		udma_rchanrt_write(uc->rchan, UDMA_RCHAN_RT_PEER_RT_EN_REG,
+				   UDMA_PEER_RT_EN_ENABLE);
+
+		dev_dbg(uc->ud->dev, "%s(rx): RT_CTL:0x%08x PEER RT_ENABLE:0x%08x\n",
+			 __func__,
+			 udma_rchanrt_read(uc->rchan,
+					   UDMA_RCHAN_RT_CTL_REG),
+			 udma_rchanrt_read(uc->rchan,
+					   UDMA_RCHAN_RT_PEER_RT_EN_REG));
+		break;
+	case DMA_MEM_TO_DEV:
+		/* Enable remote */
+		udma_tchanrt_write(uc->tchan, UDMA_TCHAN_RT_PEER_RT_EN_REG,
+				   UDMA_PEER_RT_EN_ENABLE);
+
+		udma_tchanrt_write(uc->tchan, UDMA_TCHAN_RT_CTL_REG,
+				   UDMA_CHAN_RT_CTL_EN);
+
+		dev_dbg(uc->ud->dev, "%s(tx): RT_CTL:0x%08x PEER RT_ENABLE:0x%08x\n",
+			 __func__,
+			 udma_tchanrt_read(uc->tchan,
+					   UDMA_TCHAN_RT_CTL_REG),
+			 udma_tchanrt_read(uc->tchan,
+					   UDMA_TCHAN_RT_PEER_RT_EN_REG));
+		break;
+	case DMA_MEM_TO_MEM:
+		udma_rchanrt_write(uc->rchan, UDMA_RCHAN_RT_CTL_REG,
+				   UDMA_CHAN_RT_CTL_EN);
+		udma_tchanrt_write(uc->tchan, UDMA_TCHAN_RT_CTL_REG,
+				   UDMA_CHAN_RT_CTL_EN);
+
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	dev_dbg(uc->ud->dev, "%s: DONE chan:%d\n", __func__, uc->id);
+out:
+	return 0;
+}
+
+void udma_stop_mem2dev(struct udma_chan *uc, bool sync)
+{
+	int i = 0;
+	u32 val;
+
+	udma_tchanrt_write(uc->tchan, UDMA_TCHAN_RT_CTL_REG,
+			   UDMA_CHAN_RT_CTL_EN |
+			   UDMA_CHAN_RT_CTL_TDOWN);
+
+	val = udma_tchanrt_read(uc->tchan, UDMA_TCHAN_RT_CTL_REG);
+
+	while (sync && (val & UDMA_CHAN_RT_CTL_EN)) {
+		val = udma_tchanrt_read(uc->tchan, UDMA_TCHAN_RT_CTL_REG);
+		udelay(1);
+		if (i > 1000) {
+			dev_dbg(uc->ud->dev, "%s TIMEOUT !\n", __func__);
+			break;
+		}
+		i++;
+	}
+
+	val = udma_tchanrt_read(uc->tchan, UDMA_TCHAN_RT_PEER_RT_EN_REG);
+	if (val & UDMA_PEER_RT_EN_ENABLE)
+		dev_dbg(uc->ud->dev, "%s: peer not stopped TIMEOUT !\n", __func__);
+}
+
+void udma_stop_dev2mem(struct udma_chan *uc, bool sync)
+{
+	int i = 0;
+	u32 val;
+
+	udma_rchanrt_write(uc->rchan, UDMA_RCHAN_RT_PEER_RT_EN_REG,
+			   UDMA_PEER_RT_EN_ENABLE |
+			   UDMA_PEER_RT_EN_TEARDOWN);
+
+	val = udma_rchanrt_read(uc->rchan, UDMA_RCHAN_RT_CTL_REG);
+
+	while (sync && (val & UDMA_CHAN_RT_CTL_EN)) {
+		val = udma_rchanrt_read(uc->rchan, UDMA_RCHAN_RT_CTL_REG);
+		udelay(1);
+		if (i > 1000) {
+			dev_dbg(uc->ud->dev, "%s TIMEOUT !\n", __func__);
+			break;
+		}
+		i++;
+	}
+
+	val = udma_rchanrt_read(uc->rchan, UDMA_RCHAN_RT_PEER_RT_EN_REG);
+	if (val & UDMA_PEER_RT_EN_ENABLE)
+		dev_dbg(uc->ud->dev, "%s: peer not stopped TIMEOUT !\n", __func__);
+}
+
+int udma_stop(struct udma_chan *uc)
+{
+	dev_dbg(uc->ud->dev, "%s: chan:%d dir:%s\n",
+		 __func__, uc->id, udma_get_dir_text(uc->config.dir));
+
+	udma_reset_counters(uc);
+	switch (uc->config.dir) {
+	case DMA_DEV_TO_MEM:
+		udma_stop_dev2mem(uc, true);
+		break;
+	case DMA_MEM_TO_DEV:
+		udma_stop_mem2dev(uc, true);
+		break;
+	case DMA_MEM_TO_MEM:
+		udma_rchanrt_write(uc->rchan, UDMA_RCHAN_RT_CTL_REG, 0);
+		udma_tchanrt_write(uc->tchan, UDMA_TCHAN_RT_CTL_REG, 0);
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+static int udma_poll_completion(struct udma_chan *uc, dma_addr_t *paddr)
+{
+	u64 start = get_time_ns();
+	int ret;
+
+	while (!is_timeout(start, SECOND)) {
+		ret = udma_pop_from_ring(uc, paddr);
+		if (!ret)
+			return 0;
+	}
+
+	return -ETIMEDOUT;
+}
+
+static struct udma_rflow *__udma_reserve_rflow(struct udma_dev *ud, int id)
+{
+	DECLARE_BITMAP(tmp, K3_UDMA_MAX_RFLOWS);
+
+	if (id >= 0) {
+		if (test_bit(id, ud->rflow_map)) {
+			dev_err(ud->dev, "rflow%d is in use\n", id);
+			return ERR_PTR(-ENOENT);
+		}
+	} else {
+		bitmap_or(tmp, ud->rflow_map, ud->rflow_map_reserved,
+			  ud->rflow_cnt);
+
+		id = find_next_zero_bit(tmp, ud->rflow_cnt, ud->rchan_cnt);
+		if (id >= ud->rflow_cnt)
+			return ERR_PTR(-ENOENT);
+	}
+
+	__set_bit(id, ud->rflow_map);
+	return &ud->rflows[id];
+}
+
+#define UDMA_RESERVE_RESOURCE(res)					\
+static struct udma_##res *__udma_reserve_##res(struct udma_dev *ud,	\
+					       int id)			\
+{									\
+	if (id >= 0) {							\
+		if (test_bit(id, ud->res##_map)) {			\
+			dev_err(ud->dev, "res##%d is in use\n", id);	\
+			return ERR_PTR(-ENOENT);			\
+		}							\
+	} else {							\
+		id = find_first_zero_bit(ud->res##_map, ud->res##_cnt); \
+		if (id == ud->res##_cnt) {				\
+			return ERR_PTR(-ENOENT);			\
+		}							\
+	}								\
+									\
+	__set_bit(id, ud->res##_map);					\
+	return &ud->res##s[id];						\
+}
+
+UDMA_RESERVE_RESOURCE(tchan);
+UDMA_RESERVE_RESOURCE(rchan);
+
+static int udma_get_tchan(struct udma_chan *uc)
+{
+	struct udma_dev *ud = uc->ud;
+
+	if (uc->tchan) {
+		dev_dbg(ud->dev, "chan%d: already have tchan%d allocated\n",
+			uc->id, uc->tchan->id);
+		return 0;
+	}
+
+	uc->tchan = __udma_reserve_tchan(ud, uc->config.mapped_channel_id);
+	if (IS_ERR(uc->tchan))
+		return PTR_ERR(uc->tchan);
+
+	if (ud->tflow_cnt) {
+		int tflow_id;
+
+		/* Only PKTDMA have support for tx flows */
+		if (uc->config.default_flow_id >= 0)
+			tflow_id = uc->config.default_flow_id;
+		else
+			tflow_id = uc->tchan->id;
+
+		if (test_bit(tflow_id, ud->tflow_map)) {
+			dev_err(ud->dev, "tflow%d is in use\n", tflow_id);
+			__clear_bit(uc->tchan->id, ud->tchan_map);
+			uc->tchan = NULL;
+			return -ENOENT;
+		}
+
+		uc->tchan->tflow_id = tflow_id;
+		__set_bit(tflow_id, ud->tflow_map);
+	} else {
+		uc->tchan->tflow_id = -1;
+	}
+
+	dev_dbg(ud->dev, "chan%d: got tchan%d\n", uc->id, uc->tchan->id);
+
+	return 0;
+}
+
+static int udma_get_rchan(struct udma_chan *uc)
+{
+	struct udma_dev *ud = uc->ud;
+
+	if (uc->rchan) {
+		dev_dbg(ud->dev, "chan%d: already have rchan%d allocated\n",
+			uc->id, uc->rchan->id);
+		return 0;
+	}
+
+	uc->rchan = __udma_reserve_rchan(ud, uc->config.mapped_channel_id);
+	if (IS_ERR(uc->rchan))
+		return PTR_ERR(uc->rchan);
+
+	dev_dbg(uc->ud->dev, "chan%d: got rchan%d\n", uc->id, uc->rchan->id);
+
+	return 0;
+}
+
+static int udma_get_rflow(struct udma_chan *uc, int flow_id)
+{
+	struct udma_dev *ud = uc->ud;
+
+	if (uc->rflow) {
+		dev_dbg(ud->dev, "chan%d: already have rflow%d allocated\n",
+			uc->id, uc->rflow->id);
+		return 0;
+	}
+
+	if (!uc->rchan)
+		dev_warn(ud->dev, "chan%d: does not have rchan??\n", uc->id);
+
+	uc->rflow = __udma_reserve_rflow(ud, flow_id);
+	if (IS_ERR(uc->rflow))
+		return PTR_ERR(uc->rflow);
+
+	pr_debug("chan%d: got rflow%d\n", uc->id, uc->rflow->id);
+	return 0;
+}
+
+static void udma_put_rchan(struct udma_chan *uc)
+{
+	struct udma_dev *ud = uc->ud;
+
+	if (uc->rchan) {
+		dev_dbg(ud->dev, "chan%d: put rchan%d\n", uc->id,
+			uc->rchan->id);
+		__clear_bit(uc->rchan->id, ud->rchan_map);
+		uc->rchan = NULL;
+	}
+}
+
+static void udma_put_tchan(struct udma_chan *uc)
+{
+	struct udma_dev *ud = uc->ud;
+
+	if (uc->tchan) {
+		dev_dbg(ud->dev, "chan%d: put tchan%d\n", uc->id,
+			uc->tchan->id);
+		__clear_bit(uc->tchan->id, ud->tchan_map);
+		if (uc->tchan->tflow_id >= 0)
+			__clear_bit(uc->tchan->tflow_id, ud->tflow_map);
+		uc->tchan = NULL;
+	}
+}
+
+static void udma_put_rflow(struct udma_chan *uc)
+{
+	struct udma_dev *ud = uc->ud;
+
+	if (uc->rflow) {
+		dev_dbg(ud->dev, "chan%d: put rflow%d\n", uc->id,
+			uc->rflow->id);
+		__clear_bit(uc->rflow->id, ud->rflow_map);
+		uc->rflow = NULL;
+	}
+}
+
+void udma_free_tx_resources(struct udma_chan *uc)
+{
+	if (!uc->tchan)
+		return;
+
+	k3_ringacc_ring_free(uc->tchan->t_ring);
+	k3_ringacc_ring_free(uc->tchan->tc_ring);
+	uc->tchan->t_ring = NULL;
+	uc->tchan->tc_ring = NULL;
+
+	udma_put_tchan(uc);
+}
+
+int udma_alloc_tx_resources(struct udma_chan *uc)
+{
+	struct k3_ring_cfg ring_cfg;
+	struct udma_dev *ud = uc->ud;
+	struct udma_tchan *tchan;
+	int ring_idx, ret;
+
+	ret = udma_get_tchan(uc);
+	if (ret)
+		return ret;
+
+	tchan = uc->tchan;
+	if (tchan->tflow_id > 0)
+		ring_idx = tchan->tflow_id;
+	else
+		ring_idx = tchan->id;
+
+	ret = k3_ringacc_request_rings_pair(ud->ringacc, ring_idx, -1,
+						&uc->tchan->t_ring,
+						&uc->tchan->tc_ring);
+	if (ret) {
+		ret = -EBUSY;
+		goto err_tx_ring;
+	}
+
+	memset(&ring_cfg, 0, sizeof(ring_cfg));
+	ring_cfg.size = 16;
+	ring_cfg.asel = uc->config.asel;
+	ring_cfg.elm_size = K3_RINGACC_RING_ELSIZE_8;
+	ring_cfg.mode = K3_RINGACC_RING_MODE_RING;
+
+	ret = k3_ringacc_ring_cfg(uc->tchan->t_ring, &ring_cfg);
+	ret |= k3_ringacc_ring_cfg(uc->tchan->tc_ring, &ring_cfg);
+
+	if (ret)
+		goto err_ringcfg;
+
+	return 0;
+
+err_ringcfg:
+	k3_ringacc_ring_free(uc->tchan->tc_ring);
+	uc->tchan->tc_ring = NULL;
+	k3_ringacc_ring_free(uc->tchan->t_ring);
+	uc->tchan->t_ring = NULL;
+err_tx_ring:
+	udma_put_tchan(uc);
+
+	return ret;
+}
+
+void udma_free_rx_resources(struct udma_chan *uc)
+{
+	if (!uc->rchan)
+		return;
+
+        if (uc->rflow) {
+		k3_ringacc_ring_free(uc->rflow->fd_ring);
+		k3_ringacc_ring_free(uc->rflow->r_ring);
+		uc->rflow->fd_ring = NULL;
+		uc->rflow->r_ring = NULL;
+
+		udma_put_rflow(uc);
+	}
+
+	udma_put_rchan(uc);
+}
+
+int udma_alloc_rx_resources(struct udma_chan *uc)
+{
+	struct k3_ring_cfg ring_cfg;
+	struct udma_dev *ud = uc->ud;
+	struct udma_rflow *rflow;
+	int fd_ring_id;
+	int ret;
+
+	ret = udma_get_rchan(uc);
+	if (ret)
+		return ret;
+
+	/* For MEM_TO_MEM we don't need rflow or rings */
+	if (uc->config.dir == DMA_MEM_TO_MEM)
+		return 0;
+
+	if (uc->config.default_flow_id >= 0)
+		ret = udma_get_rflow(uc, uc->config.default_flow_id);
+	else
+		ret = udma_get_rflow(uc, uc->rchan->id);
+
+	if (ret) {
+		ret = -EBUSY;
+		goto err_rflow;
+	}
+
+	rflow = uc->rflow;
+	if (ud->tflow_cnt) {
+		fd_ring_id = ud->tflow_cnt + rflow->id;
+	} else {
+		fd_ring_id = ud->bchan_cnt + ud->tchan_cnt + ud->echan_cnt +
+			uc->rchan->id;
+	}
+
+	ret = k3_ringacc_request_rings_pair(ud->ringacc, fd_ring_id, -1,
+						&rflow->fd_ring, &rflow->r_ring);
+	if (ret) {
+		ret = -EBUSY;
+		goto err_rx_ring;
+	}
+
+	memset(&ring_cfg, 0, sizeof(ring_cfg));
+	ring_cfg.size = 16;
+	ring_cfg.elm_size = K3_RINGACC_RING_ELSIZE_8;
+	ring_cfg.mode = K3_RINGACC_RING_MODE_RING;
+	ring_cfg.asel = uc->config.asel;
+
+	ret = k3_ringacc_ring_cfg(rflow->fd_ring, &ring_cfg);
+	ret |= k3_ringacc_ring_cfg(rflow->r_ring, &ring_cfg);
+	if (ret)
+		goto err_ringcfg;
+
+	return 0;
+
+err_ringcfg:
+	k3_ringacc_ring_free(rflow->r_ring);
+	rflow->r_ring = NULL;
+	k3_ringacc_ring_free(rflow->fd_ring);
+	rflow->fd_ring = NULL;
+err_rx_ring:
+	udma_put_rflow(uc);
+err_rflow:
+	udma_put_rchan(uc);
+
+	return ret;
+}
+
+static int udma_push_to_ring(struct k3_ring *ring, void *elem)
+{
+	u64 addr = 0;
+
+	memcpy(&addr, &elem, sizeof(elem));
+	return k3_ringacc_ring_push(ring, &addr);
+}
+
+static int *udma_prep_dma_memcpy(struct udma_chan *uc, dma_addr_t dest,
+				 dma_addr_t src, size_t len)
+{
+	u32 tc_ring_id = k3_ringacc_get_ring_id(uc->tchan->tc_ring);
+	struct cppi5_tr_type15_t *tr_req;
+	int num_tr;
+	size_t tr_size = sizeof(struct cppi5_tr_type15_t);
+	u16 tr0_cnt0, tr0_cnt1, tr1_cnt0;
+	void *tr_desc;
+	size_t desc_size;
+	u64 asel = (u64)uc->config.asel << K3_ADDRESS_ASEL_SHIFT;
+
+	if (len < SZ_64K) {
+		num_tr = 1;
+		tr0_cnt0 = len;
+		tr0_cnt1 = 1;
+	} else {
+		unsigned long align_to = __ffs(src | dest);
+
+		if (align_to > 3)
+			align_to = 3;
+		/*
+		 * Keep simple: tr0: SZ_64K-alignment blocks,
+		 *		tr1: the remaining
+		 */
+		num_tr = 2;
+		tr0_cnt0 = (SZ_64K - BIT(align_to));
+		if (len / tr0_cnt0 >= SZ_64K) {
+			dev_err(uc->ud->dev, "size %zu is not supported\n",
+				len);
+			return NULL;
+		}
+
+		tr0_cnt1 = len / tr0_cnt0;
+		tr1_cnt0 = len % tr0_cnt0;
+	}
+
+	desc_size = cppi5_trdesc_calc_size(num_tr, tr_size);
+	tr_desc = dma_alloc_coherent(DMA_DEVICE_BROKEN, desc_size, DMA_ADDRESS_BROKEN);
+	if (!tr_desc)
+		return NULL;
+
+	cppi5_trdesc_init(tr_desc, num_tr, tr_size, 0, 0);
+	cppi5_desc_set_pktids(tr_desc, uc->id, 0x3fff);
+	cppi5_desc_set_retpolicy(tr_desc, 0, tc_ring_id);
+
+	tr_req = tr_desc + tr_size;
+
+	cppi5_tr_init(&tr_req[0].flags, CPPI5_TR_TYPE15, false, true,
+		      CPPI5_TR_EVENT_SIZE_COMPLETION, 1);
+	cppi5_tr_csf_set(&tr_req[0].flags, CPPI5_TR_CSF_SUPR_EVT);
+
+	src |= asel;
+	dest |= asel;
+
+	tr_req[0].addr = src;
+	tr_req[0].icnt0 = tr0_cnt0;
+	tr_req[0].icnt1 = tr0_cnt1;
+	tr_req[0].icnt2 = 1;
+	tr_req[0].icnt3 = 1;
+	tr_req[0].dim1 = tr0_cnt0;
+
+	tr_req[0].daddr = dest;
+	tr_req[0].dicnt0 = tr0_cnt0;
+	tr_req[0].dicnt1 = tr0_cnt1;
+	tr_req[0].dicnt2 = 1;
+	tr_req[0].dicnt3 = 1;
+	tr_req[0].ddim1 = tr0_cnt0;
+
+	if (num_tr == 2) {
+		cppi5_tr_init(&tr_req[1].flags, CPPI5_TR_TYPE15, false, true,
+			      CPPI5_TR_EVENT_SIZE_COMPLETION, 0);
+		cppi5_tr_csf_set(&tr_req[1].flags, CPPI5_TR_CSF_SUPR_EVT);
+
+		tr_req[1].addr = src + tr0_cnt1 * tr0_cnt0;
+		tr_req[1].icnt0 = tr1_cnt0;
+		tr_req[1].icnt1 = 1;
+		tr_req[1].icnt2 = 1;
+		tr_req[1].icnt3 = 1;
+
+		tr_req[1].daddr = dest + tr0_cnt1 * tr0_cnt0;
+		tr_req[1].dicnt0 = tr1_cnt0;
+		tr_req[1].dicnt1 = 1;
+		tr_req[1].dicnt2 = 1;
+		tr_req[1].dicnt3 = 1;
+	}
+
+	cppi5_tr_csf_set(&tr_req[num_tr - 1].flags, CPPI5_TR_CSF_EOP);
+
+	udma_push_to_ring(uc->tchan->t_ring, tr_desc);
+
+	return 0;
+}
+
+static struct udma_bchan *__bcdma_reserve_bchan(struct udma_dev *ud, int id)
+{
+	if (id >= 0) {
+		if (test_bit(id, ud->bchan_map)) {
+			dev_err(ud->dev, "bchan%d is in use\n", id);
+			return ERR_PTR(-ENOENT);
+		}
+	} else {
+		id = find_next_zero_bit(ud->bchan_map, ud->bchan_cnt, 0);
+		if (id == ud->bchan_cnt)
+			return ERR_PTR(-ENOENT);
+	}
+	__set_bit(id, ud->bchan_map);
+	return &ud->bchans[id];
+}
+
+static int bcdma_get_bchan(struct udma_chan *uc)
+{
+	struct udma_dev *ud = uc->ud;
+
+	if (uc->bchan) {
+		dev_err(ud->dev, "chan%d: already have bchan%d allocated\n",
+			uc->id, uc->bchan->id);
+		return 0;
+	}
+
+	uc->bchan = __bcdma_reserve_bchan(ud, -1);
+	if (IS_ERR(uc->bchan))
+		return PTR_ERR(uc->bchan);
+
+	uc->tchan = uc->bchan;
+
+	return 0;
+}
+
+static void bcdma_put_bchan(struct udma_chan *uc)
+{
+	struct udma_dev *ud = uc->ud;
+
+	if (uc->bchan) {
+		dev_dbg(ud->dev, "chan%d: put bchan%d\n", uc->id,
+			uc->bchan->id);
+		__clear_bit(uc->bchan->id, ud->bchan_map);
+		uc->bchan = NULL;
+		uc->tchan = NULL;
+	}
+}
+
+void bcdma_free_bchan_resources(struct udma_chan *uc)
+{
+	if (!uc->bchan)
+		return;
+
+	k3_ringacc_ring_free(uc->bchan->tc_ring);
+	k3_ringacc_ring_free(uc->bchan->t_ring);
+	uc->bchan->tc_ring = NULL;
+	uc->bchan->t_ring = NULL;
+
+	bcdma_put_bchan(uc);
+}
+
+int bcdma_alloc_bchan_resources(struct udma_chan *uc)
+{
+	struct k3_ring_cfg ring_cfg;
+	struct udma_dev *ud = uc->ud;
+	int ret;
+
+	ret = bcdma_get_bchan(uc);
+	if (ret)
+		return ret;
+
+	ret = k3_ringacc_request_rings_pair(ud->ringacc, uc->bchan->id, -1,
+						&uc->bchan->t_ring,
+						&uc->bchan->tc_ring);
+	if (ret) {
+		ret = -EBUSY;
+		goto err_ring;
+	}
+
+	memset(&ring_cfg, 0, sizeof(ring_cfg));
+	ring_cfg.size = 16;
+	ring_cfg.elm_size = K3_RINGACC_RING_ELSIZE_8;
+	ring_cfg.mode = K3_RINGACC_RING_MODE_RING;
+
+	ret = k3_ringacc_ring_cfg(uc->bchan->t_ring, &ring_cfg);
+	if (ret)
+		goto err_ringcfg;
+
+	return 0;
+
+err_ringcfg:
+	k3_ringacc_ring_free(uc->bchan->tc_ring);
+	uc->bchan->tc_ring = NULL;
+	k3_ringacc_ring_free(uc->bchan->t_ring);
+	uc->bchan->t_ring = NULL;
+err_ring:
+	bcdma_put_bchan(uc);
+
+	return ret;
+}
+
+int udma_transfer(struct device *dev, int direction,
+		  dma_addr_t dst, dma_addr_t src, size_t len)
+{
+	struct udma_dev *ud = dev_get_priv(dev);
+	/* Channel0 is reserved for memcpy */
+	struct udma_chan *uc = &ud->channels[0];
+	dma_addr_t paddr = 0;
+	int ret;
+
+	udma_prep_dma_memcpy(uc, dst, src, len);
+	udma_start(uc);
+	ret = udma_poll_completion(uc, &paddr);
+	udma_stop(uc);
+
+	return ret;
+}
+
+int udma_enable(struct dma *dma)
+{
+	struct udma_dev *ud = dev_get_priv(dma->dev);
+	struct udma_chan *uc;
+	int ret;
+
+	if (dma->id >= (ud->rchan_cnt + ud->tchan_cnt)) {
+		dev_err(dma->dev, "invalid dma ch_id %lu\n", dma->id);
+		return -EINVAL;
+	}
+	uc = &ud->channels[dma->id];
+
+	ret = udma_start(uc);
+
+	return ret;
+}
+
+int udma_disable(struct dma *dma)
+{
+	struct udma_dev *ud = dev_get_priv(dma->dev);
+	struct udma_chan *uc;
+	int ret = 0;
+
+	if (dma->id >= (ud->rchan_cnt + ud->tchan_cnt)) {
+		dev_err(dma->dev, "invalid dma ch_id %lu\n", dma->id);
+		return -EINVAL;
+	}
+	uc = &ud->channels[dma->id];
+
+	if (udma_is_chan_running(uc))
+		ret = udma_stop(uc);
+	else
+		dev_err(dma->dev, "%s not running\n", __func__);
+
+	return ret;
+}
+
+int udma_send(struct dma *dma, dma_addr_t src, size_t len, void *metadata)
+{
+	struct udma_dev *ud = dev_get_priv(dma->dev);
+	struct cppi5_host_desc_t *desc_tx;
+	struct ti_udma_drv_packet_data packet_data = { 0 };
+	dma_addr_t paddr;
+	struct udma_chan *uc;
+	u32 tc_ring_id;
+	int ret;
+	u64 asel;
+
+	if (metadata)
+		packet_data = *((struct ti_udma_drv_packet_data *)metadata);
+
+	if (dma->id >= (ud->rchan_cnt + ud->tchan_cnt)) {
+		dev_err(dma->dev, "invalid dma ch_id %lu\n", dma->id);
+		return -EINVAL;
+	}
+	uc = &ud->channels[dma->id];
+
+	asel = (u64)uc->config.asel << K3_ADDRESS_ASEL_SHIFT;
+
+	if (uc->config.dir != DMA_MEM_TO_DEV)
+		return -EINVAL;
+
+	tc_ring_id = k3_ringacc_get_ring_id(uc->tchan->tc_ring);
+
+	desc_tx = uc->desc_tx;
+
+	cppi5_hdesc_reset_hbdesc(desc_tx);
+
+	src |= asel;
+
+	cppi5_hdesc_init(desc_tx,
+			 uc->config.needs_epib ? CPPI5_INFO0_HDESC_EPIB_PRESENT : 0,
+			 uc->config.psd_size);
+	cppi5_hdesc_set_pktlen(desc_tx, len);
+	cppi5_hdesc_attach_buf(desc_tx, src, len, src, len);
+	cppi5_desc_set_pktids(&desc_tx->hdr, uc->id, 0x3fff);
+	cppi5_desc_set_retpolicy(&desc_tx->hdr, 0, tc_ring_id);
+	/* pass below information from caller */
+	cppi5_hdesc_set_pkttype(desc_tx, packet_data.pkt_type);
+	cppi5_desc_set_tags_ids(&desc_tx->hdr, 0, packet_data.dest_tag);
+
+	ret = udma_push_to_ring(uc->tchan->t_ring, uc->desc_tx);
+	if (ret) {
+		dev_err(dma->dev, "TX dma push fail ch_id %lu %d\n",
+			dma->id, ret);
+		return ret;
+	}
+
+	return udma_poll_completion(uc, &paddr);
+}
+
+int udma_receive(struct dma *dma, dma_addr_t *dst, void *metadata)
+{
+	struct udma_dev *ud = dev_get_priv(dma->dev);
+	struct udma_chan_config *ucc;
+	struct cppi5_host_desc_t *desc_rx;
+	dma_addr_t buf_dma;
+	struct udma_chan *uc;
+	u32 buf_dma_len, pkt_len;
+	u32 port_id = 0;
+	int ret;
+
+	if (dma->id >= (ud->rchan_cnt + ud->tchan_cnt)) {
+		dev_err(dma->dev, "invalid dma ch_id %lu\n", dma->id);
+		return -EINVAL;
+	}
+	uc = &ud->channels[dma->id];
+	ucc = &uc->config;
+
+	if (uc->config.dir != DMA_DEV_TO_MEM)
+		return -EINVAL;
+	if (!uc->num_rx_bufs)
+		return -EINVAL;
+
+	ret = k3_ringacc_ring_pop(uc->rflow->r_ring, &desc_rx);
+	if (ret && ret != -ENODATA) {
+		dev_err(dma->dev, "rx dma fail ch_id:%lu %d\n", dma->id, ret);
+		return ret;
+	} else if (ret == -ENODATA) {
+		return 0;
+	}
+
+	cppi5_hdesc_get_obuf(desc_rx, &buf_dma, &buf_dma_len);
+	pkt_len = cppi5_hdesc_get_pktlen(desc_rx);
+
+	cppi5_desc_get_tags_ids(&desc_rx->hdr, &port_id, NULL);
+
+	if (metadata) {
+		struct ti_udma_drv_packet_data *packet_data = metadata;
+
+		packet_data->src_tag = port_id;
+	}
+
+	*dst = buf_dma & GENMASK_ULL(K3_ADDRESS_ASEL_SHIFT - 1, 0);
+
+	uc->num_rx_bufs--;
+
+	return pkt_len;
+}
+
+int udma_of_xlate(struct dma *dma, struct of_phandle_args *args)
+{
+	struct udma_chan_config *ucc;
+	struct udma_dev *ud = dev_get_priv(dma->dev);
+	struct udma_chan *uc = &ud->channels[0];
+	struct psil_endpoint_config *ep_config;
+	u32 val;
+
+	for (val = 0; val < ud->ch_count; val++) {
+		uc = &ud->channels[val];
+		if (!uc->in_use)
+			break;
+	}
+
+	if (val == ud->ch_count)
+		return -EBUSY;
+
+	ucc = &uc->config;
+	ucc->remote_thread_id = args->args[0];
+	if (ucc->remote_thread_id & K3_PSIL_DST_THREAD_ID_OFFSET)
+		ucc->dir = DMA_MEM_TO_DEV;
+	else
+		ucc->dir = DMA_DEV_TO_MEM;
+
+	ep_config = psil_get_ep_config(ucc->remote_thread_id);
+
+	if (IS_ERR(ep_config)) {
+		dev_err(ud->dev, "No configuration for psi-l thread 0x%04x\n",
+			uc->config.remote_thread_id);
+		ucc->dir = DMA_MEM_TO_MEM;
+		ucc->remote_thread_id = -1;
+		return false;
+	}
+
+	ucc->pkt_mode = ep_config->pkt_mode;
+	ucc->channel_tpl = ep_config->channel_tpl;
+	ucc->notdpkt = ep_config->notdpkt;
+	ucc->ep_type = ep_config->ep_type;
+
+	if (ud->match_data->type == DMA_TYPE_PKTDMA &&
+	    ep_config->mapped_channel_id >= 0) {
+		ucc->mapped_channel_id = ep_config->mapped_channel_id;
+		ucc->default_flow_id = ep_config->default_flow_id;
+		if (args->args_count == 2)
+			ucc->asel = args->args[1];
+	} else {
+		ucc->mapped_channel_id = -1;
+		ucc->default_flow_id = -1;
+	}
+
+	ucc->needs_epib = ep_config->needs_epib;
+	ucc->psd_size = ep_config->psd_size;
+	ucc->metadata_size = (ucc->needs_epib ? CPPI5_INFO0_HDESC_EPIB_SIZE : 0) + ucc->psd_size;
+
+	ucc->hdesc_size = cppi5_hdesc_calc_size(ucc->needs_epib,
+						ucc->psd_size, 0);
+	ucc->hdesc_size = ALIGN(ucc->hdesc_size, DMA_ALIGNMENT);
+
+	dma->id = uc->id;
+	dev_dbg(ud->dev, "Allocated dma chn:%lu epib:%d psdata:%u meta:%u thread_id:%x\n",
+		 dma->id, ucc->needs_epib,
+		 ucc->psd_size, ucc->metadata_size,
+		 ucc->remote_thread_id);
+
+	return 0;
+}
+
+int udma_prepare_rcv_buf(struct dma *dma, dma_addr_t dst, size_t size)
+{
+	struct udma_dev *ud = dev_get_priv(dma->dev);
+	struct cppi5_host_desc_t *desc_rx;
+	struct udma_chan *uc;
+	u32 desc_num;
+	u64 asel;
+
+	if (dma->id >= (ud->rchan_cnt + ud->tchan_cnt)) {
+		dev_err(dma->dev, "invalid dma ch_id %lu\n", dma->id);
+		return -EINVAL;
+	}
+	uc = &ud->channels[dma->id];
+
+	if (uc->config.dir != DMA_DEV_TO_MEM)
+		return -EINVAL;
+
+	if (uc->num_rx_bufs >= UDMA_RX_DESC_NUM)
+		return -EINVAL;
+
+	asel = (u64)uc->config.asel << K3_ADDRESS_ASEL_SHIFT;
+	desc_num = uc->desc_rx_cur % UDMA_RX_DESC_NUM;
+	desc_rx = uc->desc_rx + (desc_num * uc->config.hdesc_size);
+
+	cppi5_hdesc_reset_hbdesc(desc_rx);
+
+	cppi5_hdesc_init(desc_rx,
+			 uc->config.needs_epib ? CPPI5_INFO0_HDESC_EPIB_PRESENT : 0,
+			 uc->config.psd_size);
+	cppi5_hdesc_set_pktlen(desc_rx, size);
+	dst |= asel;
+	cppi5_hdesc_attach_buf(desc_rx, dst, size, dst, size);
+
+	udma_push_to_ring(uc->rflow->fd_ring, desc_rx);
+
+	uc->num_rx_bufs++;
+	uc->desc_rx_cur++;
+
+	return 0;
+}
+
+int udma_get_cfg(struct dma *dma, u32 id, void **data)
+{
+	struct udma_dev *ud = dev_get_priv(dma->dev);
+	struct udma_chan *uc;
+
+	if (dma->id >= (ud->rchan_cnt + ud->tchan_cnt)) {
+		dev_err(dma->dev, "invalid dma ch_id %lu\n", dma->id);
+		return -EINVAL;
+	}
+
+	switch (id) {
+	case TI_UDMA_CHAN_PRIV_INFO:
+		uc = &ud->channels[dma->id];
+		*data = &uc->cfg_data;
+		return 0;
+	}
+
+	return -EINVAL;
+}
diff --git a/drivers/dma/ti/k3-udma.c b/drivers/dma/ti/k3-udma.c
index b9af13dcc0d2da47231b3f8751c66ac10e25973d..fb0fe62c53a9f298966ce64e0d34cac71230e5da 100644
--- a/drivers/dma/ti/k3-udma.c
+++ b/drivers/dma/ti/k3-udma.c
@@ -24,29 +24,10 @@
 
 #include "k3-udma-hwdef.h"
 #include "k3-psil-priv.h"
-
-#define K3_UDMA_MAX_RFLOWS 1024
-#define K3_ADDRESS_ASEL_SHIFT     48
+#include "k3-udma.h"
 
 struct udma_chan;
 
-enum k3_dma_type {
-	DMA_TYPE_UDMA = 0,
-	DMA_TYPE_BCDMA,
-	DMA_TYPE_PKTDMA,
-};
-
-enum udma_mmr {
-	MMR_GCFG = 0,
-	MMR_BCHANRT,
-	MMR_RCHANRT,
-	MMR_TCHANRT,
-	MMR_RCHAN,
-	MMR_TCHAN,
-	MMR_RFLOW,
-	MMR_LAST,
-};
-
 static const char * const mmr_names[] = {
 	[MMR_GCFG] = "gcfg",
 	[MMR_BCHANRT] = "bchanrt",
@@ -57,240 +38,6 @@ static const char * const mmr_names[] = {
 	[MMR_RFLOW] = "rflow",
 };
 
-struct udma_tchan {
-	void __iomem *reg_chan;
-	void __iomem *reg_rt;
-
-	int id;
-	struct k3_ring *t_ring; /* Transmit ring */
-	struct k3_ring *tc_ring; /* Transmit Completion ring */
-	int tflow_id; /* applicable only for PKTDMA */
-};
-
-#define udma_bchan udma_tchan
-
-struct udma_rflow {
-	void __iomem *reg_rflow;
-	int id;
-	struct k3_ring *fd_ring; /* Free Descriptor ring */
-	struct k3_ring *r_ring; /* Receive ring */
-};
-
-struct udma_rchan {
-	void __iomem *reg_chan;
-	void __iomem *reg_rt;
-
-	int id;
-};
-
-struct udma_oes_offsets {
-	/* K3 UDMA Output Event Offset */
-	u32 udma_rchan;
-
-	/* BCDMA Output Event Offsets */
-	u32 bcdma_bchan_data;
-	u32 bcdma_bchan_ring;
-	u32 bcdma_tchan_data;
-	u32 bcdma_tchan_ring;
-	u32 bcdma_rchan_data;
-	u32 bcdma_rchan_ring;
-
-	/* PKTDMA Output Event Offsets */
-	u32 pktdma_tchan_flow;
-	u32 pktdma_rchan_flow;
-};
-
-#define UDMA_FLAG_PDMA_ACC32		BIT(0)
-#define UDMA_FLAG_PDMA_BURST		BIT(1)
-#define UDMA_FLAG_TDTYPE		BIT(2)
-
-struct udma_match_data {
-	enum k3_dma_type type;
-	u32 psil_base;
-	bool enable_memcpy_support;
-	u32 flags;
-	u32 statictr_z_mask;
-	struct udma_oes_offsets oes;
-
-	u8 tpl_levels;
-	u32 level_start_idx[];
-};
-
-enum udma_rm_range {
-	RM_RANGE_BCHAN = 0,
-	RM_RANGE_TCHAN,
-	RM_RANGE_RCHAN,
-	RM_RANGE_RFLOW,
-	RM_RANGE_TFLOW,
-	RM_RANGE_LAST,
-};
-
-struct udma_tisci_rm {
-	const struct ti_sci_handle *tisci;
-	const struct ti_sci_rm_udmap_ops *tisci_udmap_ops;
-	u32  tisci_dev_id;
-
-	/* tisci information for PSI-L thread pairing/unpairing */
-	const struct ti_sci_rm_psil_ops *tisci_psil_ops;
-	u32  tisci_navss_dev_id;
-
-	struct ti_sci_resource *rm_ranges[RM_RANGE_LAST];
-};
-
-struct udma_dev {
-	struct dma_device dmad;
-	struct device *dev;
-	void __iomem *mmrs[MMR_LAST];
-
-	struct udma_tisci_rm tisci_rm;
-	struct k3_ringacc *ringacc;
-
-	u32 features;
-
-	int bchan_cnt;
-	int tchan_cnt;
-	int echan_cnt;
-	int rchan_cnt;
-	int rflow_cnt;
-	int tflow_cnt;
-	unsigned long *bchan_map;
-	unsigned long *tchan_map;
-	unsigned long *rchan_map;
-	unsigned long *rflow_map;
-	unsigned long *rflow_map_reserved;
-	unsigned long *tflow_map;
-
-	struct udma_bchan *bchans;
-	struct udma_tchan *tchans;
-	struct udma_rchan *rchans;
-	struct udma_rflow *rflows;
-
-	const struct udma_match_data *match_data;
-
-	struct udma_chan *channels;
-	u32 psil_base;
-
-	u32 ch_count;
-};
-
-struct udma_chan_config {
-	u32 psd_size; /* size of Protocol Specific Data */
-	u32 metadata_size; /* (needs_epib ? 16:0) + psd_size */
-	u32 hdesc_size; /* Size of a packet descriptor in packet mode */
-	int remote_thread_id;
-	u32 atype;
-	u32 src_thread;
-	u32 dst_thread;
-	enum psil_endpoint_type ep_type;
-	enum udma_tp_level channel_tpl; /* Channel Throughput Level */
-
-	/* PKTDMA mapped channel */
-	int mapped_channel_id;
-	/* PKTDMA default tflow or rflow for mapped channel */
-	int default_flow_id;
-
-	enum dma_transfer_direction dir;
-
-	unsigned int pkt_mode:1; /* TR or packet */
-	unsigned int needs_epib:1; /* EPIB is needed for the communication or not */
-	unsigned int enable_acc32:1;
-	unsigned int enable_burst:1;
-	unsigned int notdpkt:1; /* Suppress sending TDC packet */
-
-	u8 asel;
-};
-
-struct udma_chan {
-	struct udma_dev *ud;
-	char name[20];
-
-	struct udma_bchan *bchan;
-	struct udma_tchan *tchan;
-	struct udma_rchan *rchan;
-	struct udma_rflow *rflow;
-
-	struct ti_udma_drv_chan_cfg_data cfg_data;
-
-	u32 bcnt; /* number of bytes completed since the start of the channel */
-
-	struct udma_chan_config config;
-
-	u32 id;
-
-	struct cppi5_host_desc_t *desc_tx;
-	bool in_use;
-	void	*desc_rx;
-	u32	num_rx_bufs;
-	u32	desc_rx_cur;
-
-};
-
-#define UDMA_CH_1000(ch)		(ch * 0x1000)
-#define UDMA_CH_100(ch)			(ch * 0x100)
-#define UDMA_CH_40(ch)			(ch * 0x40)
-
-#define UDMA_RX_DESC_NUM 128
-
-/* Generic register access functions */
-static inline u32 udma_read(void __iomem *base, int reg)
-{
-	u32 v;
-
-	v = readl(base + reg);
-
-	return v;
-}
-
-static inline void udma_write(void __iomem *base, int reg, u32 val)
-{
-	writel(val, base + reg);
-}
-
-static inline void udma_update_bits(void __iomem *base, int reg,
-				    u32 mask, u32 val)
-{
-	u32 tmp, orig;
-
-	orig = udma_read(base, reg);
-	tmp = orig & ~mask;
-	tmp |= (val & mask);
-
-	if (tmp != orig)
-		udma_write(base, reg, tmp);
-}
-
-/* TCHANRT */
-static inline u32 udma_tchanrt_read(struct udma_tchan *tchan, int reg)
-{
-	if (!tchan)
-		return 0;
-	return udma_read(tchan->reg_rt, reg);
-}
-
-static inline void udma_tchanrt_write(struct udma_tchan *tchan,
-				      int reg, u32 val)
-{
-	if (!tchan)
-		return;
-	udma_write(tchan->reg_rt, reg, val);
-}
-
-/* RCHANRT */
-static inline u32 udma_rchanrt_read(struct udma_rchan *rchan, int reg)
-{
-	if (!rchan)
-		return 0;
-	return udma_read(rchan->reg_rt, reg);
-}
-
-static inline void udma_rchanrt_write(struct udma_rchan *rchan,
-				      int reg, u32 val)
-{
-	if (!rchan)
-		return;
-	udma_write(rchan->reg_rt, reg, val);
-}
-
 static inline int udma_navss_psil_pair(struct udma_dev *ud, u32 src_thread,
 				       u32 dst_thread)
 {
@@ -315,24 +62,6 @@ static inline int udma_navss_psil_unpair(struct udma_dev *ud, u32 src_thread,
 						src_thread, dst_thread);
 }
 
-static inline char *udma_get_dir_text(enum dma_transfer_direction dir)
-{
-	switch (dir) {
-	case DMA_DEV_TO_MEM:
-		return "DEV_TO_MEM";
-	case DMA_MEM_TO_DEV:
-		return "MEM_TO_DEV";
-	case DMA_MEM_TO_MEM:
-		return "MEM_TO_MEM";
-	case DMA_DEV_TO_DEV:
-		return "DEV_TO_DEV";
-	default:
-		break;
-	}
-
-	return "invalid";
-}
-
 #define UDMA_RCHAN_RFLOW_RNG_FLOWID_CNT_SHIFT	(16)
 
 /* How SRC/DST tag should be updated by UDMA in the descriptor's Word 3 */
@@ -406,666 +135,45 @@ static inline void udma_rflow_update_bits(struct udma_rflow *rflow, int reg,
 	udma_update_bits(rflow->reg_rflow, reg, mask, val);
 }
 
-static void udma_reset_uchan(struct udma_chan *uc)
-{
-	memset(&uc->config, 0, sizeof(uc->config));
-	uc->config.remote_thread_id = -1;
-	uc->config.mapped_channel_id = -1;
-	uc->config.default_flow_id = -1;
-}
-
-static inline bool udma_is_chan_running(struct udma_chan *uc)
-{
-	u32 trt_ctl = 0;
-	u32 rrt_ctl = 0;
-
-	switch (uc->config.dir) {
-	case DMA_DEV_TO_MEM:
-		rrt_ctl = udma_rchanrt_read(uc->rchan, UDMA_RCHAN_RT_CTL_REG);
-		dev_dbg(uc->ud->dev, "rrt_ctl: 0x%08x (peer: 0x%08x)\n",
-			 rrt_ctl,
-			 udma_rchanrt_read(uc->rchan,
-					   UDMA_RCHAN_RT_PEER_RT_EN_REG));
-		break;
-	case DMA_MEM_TO_DEV:
-		trt_ctl = udma_tchanrt_read(uc->tchan, UDMA_TCHAN_RT_CTL_REG);
-		dev_dbg(uc->ud->dev, "trt_ctl: 0x%08x (peer: 0x%08x)\n",
-			 trt_ctl,
-			 udma_tchanrt_read(uc->tchan,
-					   UDMA_TCHAN_RT_PEER_RT_EN_REG));
-		break;
-	case DMA_MEM_TO_MEM:
-		trt_ctl = udma_tchanrt_read(uc->tchan, UDMA_TCHAN_RT_CTL_REG);
-		rrt_ctl = udma_rchanrt_read(uc->rchan, UDMA_RCHAN_RT_CTL_REG);
-		break;
-	default:
-		break;
-	}
-
-	if (trt_ctl & UDMA_CHAN_RT_CTL_EN || rrt_ctl & UDMA_CHAN_RT_CTL_EN)
-		return true;
-
-	return false;
-}
-
-static int udma_pop_from_ring(struct udma_chan *uc, dma_addr_t *addr)
-{
-	struct k3_ring *ring = NULL;
-	int ret = -ENOENT;
-
-	switch (uc->config.dir) {
-	case DMA_DEV_TO_MEM:
-		ring = uc->rflow->r_ring;
-		break;
-	case DMA_MEM_TO_DEV:
-		ring = uc->tchan->tc_ring;
-		break;
-	case DMA_MEM_TO_MEM:
-		ring = uc->tchan->tc_ring;
-		break;
-	default:
-		break;
-	}
-
-	if (ring && k3_ringacc_ring_get_occ(ring))
-		ret = k3_ringacc_ring_pop(ring, addr);
-
-	return ret;
-}
-
-static void udma_reset_rings(struct udma_chan *uc)
-{
-	struct k3_ring *ring1 = NULL;
-	struct k3_ring *ring2 = NULL;
-
-	switch (uc->config.dir) {
-	case DMA_DEV_TO_MEM:
-		ring1 = uc->rflow->fd_ring;
-		ring2 = uc->rflow->r_ring;
-		break;
-	case DMA_MEM_TO_DEV:
-		ring1 = uc->tchan->t_ring;
-		ring2 = uc->tchan->tc_ring;
-		break;
-	case DMA_MEM_TO_MEM:
-		ring1 = uc->tchan->t_ring;
-		ring2 = uc->tchan->tc_ring;
-		break;
-	default:
-		break;
-	}
-
-	if (ring1)
-		k3_ringacc_ring_reset_dma(ring1, k3_ringacc_ring_get_occ(ring1));
-	if (ring2)
-		k3_ringacc_ring_reset(ring2);
-}
-
-static void udma_reset_counters(struct udma_chan *uc)
-{
-	u32 val;
-
-	if (uc->tchan) {
-		val = udma_tchanrt_read(uc->tchan, UDMA_TCHAN_RT_BCNT_REG);
-		udma_tchanrt_write(uc->tchan, UDMA_TCHAN_RT_BCNT_REG, val);
-
-		val = udma_tchanrt_read(uc->tchan, UDMA_TCHAN_RT_SBCNT_REG);
-		udma_tchanrt_write(uc->tchan, UDMA_TCHAN_RT_SBCNT_REG, val);
-
-		val = udma_tchanrt_read(uc->tchan, UDMA_TCHAN_RT_PCNT_REG);
-		udma_tchanrt_write(uc->tchan, UDMA_TCHAN_RT_PCNT_REG, val);
-
-		if (!uc->bchan) {
-			val = udma_tchanrt_read(uc->tchan, UDMA_TCHAN_RT_PEER_BCNT_REG);
-			udma_tchanrt_write(uc->tchan, UDMA_TCHAN_RT_PEER_BCNT_REG, val);
-		}
-	}
-
-	if (uc->rchan) {
-		val = udma_rchanrt_read(uc->rchan, UDMA_RCHAN_RT_BCNT_REG);
-		udma_rchanrt_write(uc->rchan, UDMA_RCHAN_RT_BCNT_REG, val);
-
-		val = udma_rchanrt_read(uc->rchan, UDMA_RCHAN_RT_SBCNT_REG);
-		udma_rchanrt_write(uc->rchan, UDMA_RCHAN_RT_SBCNT_REG, val);
-
-		val = udma_rchanrt_read(uc->rchan, UDMA_RCHAN_RT_PCNT_REG);
-		udma_rchanrt_write(uc->rchan, UDMA_RCHAN_RT_PCNT_REG, val);
-
-		val = udma_rchanrt_read(uc->rchan, UDMA_RCHAN_RT_PEER_BCNT_REG);
-		udma_rchanrt_write(uc->rchan, UDMA_RCHAN_RT_PEER_BCNT_REG, val);
-	}
-
-	uc->bcnt = 0;
-}
-
-static inline int udma_stop_hard(struct udma_chan *uc)
-{
-	dev_dbg(uc->ud->dev, "%s: ENTER (chan%d)\n", __func__, uc->id);
-
-	switch (uc->config.dir) {
-	case DMA_DEV_TO_MEM:
-		udma_rchanrt_write(uc->rchan, UDMA_RCHAN_RT_PEER_RT_EN_REG, 0);
-		udma_rchanrt_write(uc->rchan, UDMA_RCHAN_RT_CTL_REG, 0);
-		break;
-	case DMA_MEM_TO_DEV:
-		udma_tchanrt_write(uc->tchan, UDMA_TCHAN_RT_CTL_REG, 0);
-		udma_tchanrt_write(uc->tchan, UDMA_TCHAN_RT_PEER_RT_EN_REG, 0);
-		break;
-	case DMA_MEM_TO_MEM:
-		udma_rchanrt_write(uc->rchan, UDMA_RCHAN_RT_CTL_REG, 0);
-		udma_tchanrt_write(uc->tchan, UDMA_TCHAN_RT_CTL_REG, 0);
-		break;
-	default:
-		return -EINVAL;
-	}
-
-	return 0;
-}
-
-static int udma_start(struct udma_chan *uc)
-{
-	/* Channel is already running, no need to proceed further */
-	if (udma_is_chan_running(uc))
-		goto out;
-
-	dev_dbg(uc->ud->dev, "%s: chan:%d dir:%s\n",
-		 __func__, uc->id, udma_get_dir_text(uc->config.dir));
-
-	/* Make sure that we clear the teardown bit, if it is set */
-	udma_stop_hard(uc);
-
-	/* Reset all counters */
-	udma_reset_counters(uc);
-
-	switch (uc->config.dir) {
-	case DMA_DEV_TO_MEM:
-		udma_rchanrt_write(uc->rchan, UDMA_RCHAN_RT_CTL_REG,
-				   UDMA_CHAN_RT_CTL_EN);
-
-		/* Enable remote */
-		udma_rchanrt_write(uc->rchan, UDMA_RCHAN_RT_PEER_RT_EN_REG,
-				   UDMA_PEER_RT_EN_ENABLE);
-
-		dev_dbg(uc->ud->dev, "%s(rx): RT_CTL:0x%08x PEER RT_ENABLE:0x%08x\n",
-			 __func__,
-			 udma_rchanrt_read(uc->rchan,
-					   UDMA_RCHAN_RT_CTL_REG),
-			 udma_rchanrt_read(uc->rchan,
-					   UDMA_RCHAN_RT_PEER_RT_EN_REG));
-		break;
-	case DMA_MEM_TO_DEV:
-		/* Enable remote */
-		udma_tchanrt_write(uc->tchan, UDMA_TCHAN_RT_PEER_RT_EN_REG,
-				   UDMA_PEER_RT_EN_ENABLE);
-
-		udma_tchanrt_write(uc->tchan, UDMA_TCHAN_RT_CTL_REG,
-				   UDMA_CHAN_RT_CTL_EN);
-
-		dev_dbg(uc->ud->dev, "%s(tx): RT_CTL:0x%08x PEER RT_ENABLE:0x%08x\n",
-			 __func__,
-			 udma_tchanrt_read(uc->tchan,
-					   UDMA_TCHAN_RT_CTL_REG),
-			 udma_tchanrt_read(uc->tchan,
-					   UDMA_TCHAN_RT_PEER_RT_EN_REG));
-		break;
-	case DMA_MEM_TO_MEM:
-		udma_rchanrt_write(uc->rchan, UDMA_RCHAN_RT_CTL_REG,
-				   UDMA_CHAN_RT_CTL_EN);
-		udma_tchanrt_write(uc->tchan, UDMA_TCHAN_RT_CTL_REG,
-				   UDMA_CHAN_RT_CTL_EN);
-
-		break;
-	default:
-		return -EINVAL;
-	}
-
-	dev_dbg(uc->ud->dev, "%s: DONE chan:%d\n", __func__, uc->id);
-out:
-	return 0;
-}
-
-static inline void udma_stop_mem2dev(struct udma_chan *uc, bool sync)
-{
-	int i = 0;
-	u32 val;
-
-	udma_tchanrt_write(uc->tchan, UDMA_TCHAN_RT_CTL_REG,
-			   UDMA_CHAN_RT_CTL_EN |
-			   UDMA_CHAN_RT_CTL_TDOWN);
-
-	val = udma_tchanrt_read(uc->tchan, UDMA_TCHAN_RT_CTL_REG);
-
-	while (sync && (val & UDMA_CHAN_RT_CTL_EN)) {
-		val = udma_tchanrt_read(uc->tchan, UDMA_TCHAN_RT_CTL_REG);
-		udelay(1);
-		if (i > 1000) {
-			dev_dbg(uc->ud->dev, "%s TIMEOUT !\n", __func__);
-			break;
-		}
-		i++;
-	}
-
-	val = udma_tchanrt_read(uc->tchan, UDMA_TCHAN_RT_PEER_RT_EN_REG);
-	if (val & UDMA_PEER_RT_EN_ENABLE)
-		dev_dbg(uc->ud->dev, "%s: peer not stopped TIMEOUT !\n", __func__);
-}
-
-static inline void udma_stop_dev2mem(struct udma_chan *uc, bool sync)
-{
-	int i = 0;
-	u32 val;
-
-	udma_rchanrt_write(uc->rchan, UDMA_RCHAN_RT_PEER_RT_EN_REG,
-			   UDMA_PEER_RT_EN_ENABLE |
-			   UDMA_PEER_RT_EN_TEARDOWN);
-
-	val = udma_rchanrt_read(uc->rchan, UDMA_RCHAN_RT_CTL_REG);
-
-	while (sync && (val & UDMA_CHAN_RT_CTL_EN)) {
-		val = udma_rchanrt_read(uc->rchan, UDMA_RCHAN_RT_CTL_REG);
-		udelay(1);
-		if (i > 1000) {
-			dev_dbg(uc->ud->dev, "%s TIMEOUT !\n", __func__);
-			break;
-		}
-		i++;
-	}
-
-	val = udma_rchanrt_read(uc->rchan, UDMA_RCHAN_RT_PEER_RT_EN_REG);
-	if (val & UDMA_PEER_RT_EN_ENABLE)
-		dev_dbg(uc->ud->dev, "%s: peer not stopped TIMEOUT !\n", __func__);
-}
-
-static inline int udma_stop(struct udma_chan *uc)
-{
-	dev_dbg(uc->ud->dev, "%s: chan:%d dir:%s\n",
-		 __func__, uc->id, udma_get_dir_text(uc->config.dir));
-
-	udma_reset_counters(uc);
-	switch (uc->config.dir) {
-	case DMA_DEV_TO_MEM:
-		udma_stop_dev2mem(uc, true);
-		break;
-	case DMA_MEM_TO_DEV:
-		udma_stop_mem2dev(uc, true);
-		break;
-	case DMA_MEM_TO_MEM:
-		udma_rchanrt_write(uc->rchan, UDMA_RCHAN_RT_CTL_REG, 0);
-		udma_tchanrt_write(uc->tchan, UDMA_TCHAN_RT_CTL_REG, 0);
-		break;
-	default:
-		return -EINVAL;
-	}
-
-	return 0;
-}
-
-static int udma_poll_completion(struct udma_chan *uc, dma_addr_t *paddr)
-{
-	u64 start = get_time_ns();
-	int ret;
-
-	while (!is_timeout(start, SECOND)) {
-		ret = udma_pop_from_ring(uc, paddr);
-		if (!ret)
-			return 0;
-	}
-
-	return -ETIMEDOUT;
-}
-
-static struct udma_rflow *__udma_reserve_rflow(struct udma_dev *ud, int id)
-{
-	DECLARE_BITMAP(tmp, K3_UDMA_MAX_RFLOWS);
-
-	if (id >= 0) {
-		if (test_bit(id, ud->rflow_map)) {
-			dev_err(ud->dev, "rflow%d is in use\n", id);
-			return ERR_PTR(-ENOENT);
-		}
-	} else {
-		bitmap_or(tmp, ud->rflow_map, ud->rflow_map_reserved,
-			  ud->rflow_cnt);
-
-		id = find_next_zero_bit(tmp, ud->rflow_cnt, ud->rchan_cnt);
-		if (id >= ud->rflow_cnt)
-			return ERR_PTR(-ENOENT);
-	}
-
-	__set_bit(id, ud->rflow_map);
-	return &ud->rflows[id];
-}
-
-#define UDMA_RESERVE_RESOURCE(res)					\
-static struct udma_##res *__udma_reserve_##res(struct udma_dev *ud,	\
-					       int id)			\
-{									\
-	if (id >= 0) {							\
-		if (test_bit(id, ud->res##_map)) {			\
-			dev_err(ud->dev, "res##%d is in use\n", id);	\
-			return ERR_PTR(-ENOENT);			\
-		}							\
-	} else {							\
-		id = find_first_zero_bit(ud->res##_map, ud->res##_cnt); \
-		if (id == ud->res##_cnt) {				\
-			return ERR_PTR(-ENOENT);			\
-		}							\
-	}								\
-									\
-	__set_bit(id, ud->res##_map);					\
-	return &ud->res##s[id];						\
-}
-
-UDMA_RESERVE_RESOURCE(tchan);
-UDMA_RESERVE_RESOURCE(rchan);
-
-static int udma_get_tchan(struct udma_chan *uc)
-{
-	struct udma_dev *ud = uc->ud;
-
-	if (uc->tchan) {
-		dev_dbg(ud->dev, "chan%d: already have tchan%d allocated\n",
-			uc->id, uc->tchan->id);
-		return 0;
-	}
-
-	uc->tchan = __udma_reserve_tchan(ud, uc->config.mapped_channel_id);
-	if (IS_ERR(uc->tchan))
-		return PTR_ERR(uc->tchan);
-
-	if (ud->tflow_cnt) {
-		int tflow_id;
-
-		/* Only PKTDMA have support for tx flows */
-		if (uc->config.default_flow_id >= 0)
-			tflow_id = uc->config.default_flow_id;
-		else
-			tflow_id = uc->tchan->id;
-
-		if (test_bit(tflow_id, ud->tflow_map)) {
-			dev_err(ud->dev, "tflow%d is in use\n", tflow_id);
-			__clear_bit(uc->tchan->id, ud->tchan_map);
-			uc->tchan = NULL;
-			return -ENOENT;
-		}
-
-		uc->tchan->tflow_id = tflow_id;
-		__set_bit(tflow_id, ud->tflow_map);
-	} else {
-		uc->tchan->tflow_id = -1;
-	}
-
-	dev_dbg(ud->dev, "chan%d: got tchan%d\n", uc->id, uc->tchan->id);
-
-	return 0;
-}
-
-static int udma_get_rchan(struct udma_chan *uc)
-{
-	struct udma_dev *ud = uc->ud;
-
-	if (uc->rchan) {
-		dev_dbg(ud->dev, "chan%d: already have rchan%d allocated\n",
-			uc->id, uc->rchan->id);
-		return 0;
-	}
-
-	uc->rchan = __udma_reserve_rchan(ud, uc->config.mapped_channel_id);
-	if (IS_ERR(uc->rchan))
-		return PTR_ERR(uc->rchan);
-
-	dev_dbg(uc->ud->dev, "chan%d: got rchan%d\n", uc->id, uc->rchan->id);
-
-	return 0;
-}
-
 static int udma_get_chan_pair(struct udma_chan *uc)
 {
 	struct udma_dev *ud = uc->ud;
 	int chan_id, end;
 
-	if ((uc->tchan && uc->rchan) && uc->tchan->id == uc->rchan->id) {
-		dev_info(ud->dev, "chan%d: already have %d pair allocated\n",
-			 uc->id, uc->tchan->id);
-		return 0;
-	}
-
-	if (uc->tchan) {
-		dev_err(ud->dev, "chan%d: already have tchan%d allocated\n",
-			uc->id, uc->tchan->id);
-		return -EBUSY;
-	} else if (uc->rchan) {
-		dev_err(ud->dev, "chan%d: already have rchan%d allocated\n",
-			uc->id, uc->rchan->id);
-		return -EBUSY;
-	}
-
-	/* Can be optimized, but let's have it like this for now */
-	end = min(ud->tchan_cnt, ud->rchan_cnt);
-	for (chan_id = 0; chan_id < end; chan_id++) {
-		if (!test_bit(chan_id, ud->tchan_map) &&
-		    !test_bit(chan_id, ud->rchan_map))
-			break;
-	}
-
-	if (chan_id == end)
-		return -ENOENT;
-
-	__set_bit(chan_id, ud->tchan_map);
-	__set_bit(chan_id, ud->rchan_map);
-	uc->tchan = &ud->tchans[chan_id];
-	uc->rchan = &ud->rchans[chan_id];
-
-	dev_dbg(ud->dev, "chan%d: got t/rchan%d pair\n", uc->id, chan_id);
-
-	return 0;
-}
-
-static int udma_get_rflow(struct udma_chan *uc, int flow_id)
-{
-	struct udma_dev *ud = uc->ud;
-
-	if (uc->rflow) {
-		dev_dbg(ud->dev, "chan%d: already have rflow%d allocated\n",
-			uc->id, uc->rflow->id);
-		return 0;
-	}
-
-	if (!uc->rchan)
-		dev_warn(ud->dev, "chan%d: does not have rchan??\n", uc->id);
-
-	uc->rflow = __udma_reserve_rflow(ud, flow_id);
-	if (IS_ERR(uc->rflow))
-		return PTR_ERR(uc->rflow);
-
-	dev_dbg(uc->ud->dev, "chan%d: got rflow%d\n", uc->id, uc->rflow->id);
-
-	return 0;
-}
-
-static void udma_put_rchan(struct udma_chan *uc)
-{
-	struct udma_dev *ud = uc->ud;
-
-	if (uc->rchan) {
-		dev_dbg(ud->dev, "chan%d: put rchan%d\n", uc->id,
-			uc->rchan->id);
-		__clear_bit(uc->rchan->id, ud->rchan_map);
-		uc->rchan = NULL;
-	}
-}
-
-static void udma_put_tchan(struct udma_chan *uc)
-{
-	struct udma_dev *ud = uc->ud;
-
-	if (uc->tchan) {
-		dev_dbg(ud->dev, "chan%d: put tchan%d\n", uc->id,
-			uc->tchan->id);
-		__clear_bit(uc->tchan->id, ud->tchan_map);
-		if (uc->tchan->tflow_id >= 0)
-			__clear_bit(uc->tchan->tflow_id, ud->tflow_map);
-		uc->tchan = NULL;
-	}
-}
-
-static void udma_put_rflow(struct udma_chan *uc)
-{
-	struct udma_dev *ud = uc->ud;
-
-	if (uc->rflow) {
-		dev_dbg(ud->dev, "chan%d: put rflow%d\n", uc->id,
-			uc->rflow->id);
-		__clear_bit(uc->rflow->id, ud->rflow_map);
-		uc->rflow = NULL;
-	}
-}
-
-static void udma_free_tx_resources(struct udma_chan *uc)
-{
-	if (!uc->tchan)
-		return;
-
-	k3_ringacc_ring_free(uc->tchan->t_ring);
-	k3_ringacc_ring_free(uc->tchan->tc_ring);
-	uc->tchan->t_ring = NULL;
-	uc->tchan->tc_ring = NULL;
-
-	udma_put_tchan(uc);
-}
-
-static int udma_alloc_tx_resources(struct udma_chan *uc)
-{
-	struct k3_ring_cfg ring_cfg;
-	struct udma_dev *ud = uc->ud;
-	struct udma_tchan *tchan;
-	int ring_idx, ret;
-
-	ret = udma_get_tchan(uc);
-	if (ret)
-		return ret;
-
-	tchan = uc->tchan;
-	if (tchan->tflow_id > 0)
-		ring_idx = tchan->tflow_id;
-	else
-		ring_idx = tchan->id;
-
-	ret = k3_ringacc_request_rings_pair(ud->ringacc, ring_idx, -1,
-						&uc->tchan->t_ring,
-						&uc->tchan->tc_ring);
-	if (ret) {
-		ret = -EBUSY;
-		goto err_tx_ring;
-	}
-
-	memset(&ring_cfg, 0, sizeof(ring_cfg));
-	ring_cfg.size = 16;
-	ring_cfg.asel = uc->config.asel;
-	ring_cfg.elm_size = K3_RINGACC_RING_ELSIZE_8;
-	ring_cfg.mode = K3_RINGACC_RING_MODE_RING;
-
-	ret = k3_ringacc_ring_cfg(uc->tchan->t_ring, &ring_cfg);
-	ret |= k3_ringacc_ring_cfg(uc->tchan->tc_ring, &ring_cfg);
-
-	if (ret)
-		goto err_ringcfg;
-
-	return 0;
-
-err_ringcfg:
-	k3_ringacc_ring_free(uc->tchan->tc_ring);
-	uc->tchan->tc_ring = NULL;
-	k3_ringacc_ring_free(uc->tchan->t_ring);
-	uc->tchan->t_ring = NULL;
-err_tx_ring:
-	udma_put_tchan(uc);
-
-	return ret;
-}
-
-static void udma_free_rx_resources(struct udma_chan *uc)
-{
-	if (!uc->rchan)
-		return;
-
-        if (uc->rflow) {
-		k3_ringacc_ring_free(uc->rflow->fd_ring);
-		k3_ringacc_ring_free(uc->rflow->r_ring);
-		uc->rflow->fd_ring = NULL;
-		uc->rflow->r_ring = NULL;
-
-		udma_put_rflow(uc);
-	}
-
-	udma_put_rchan(uc);
-}
-
-static int udma_alloc_rx_resources(struct udma_chan *uc)
-{
-	struct k3_ring_cfg ring_cfg;
-	struct udma_dev *ud = uc->ud;
-	struct udma_rflow *rflow;
-	int fd_ring_id;
-	int ret;
-
-	ret = udma_get_rchan(uc);
-	if (ret)
-		return ret;
-
-	/* For MEM_TO_MEM we don't need rflow or rings */
-	if (uc->config.dir == DMA_MEM_TO_MEM)
-		return 0;
-
-	if (uc->config.default_flow_id >= 0)
-		ret = udma_get_rflow(uc, uc->config.default_flow_id);
-	else
-		ret = udma_get_rflow(uc, uc->rchan->id);
-
-	if (ret) {
-		ret = -EBUSY;
-		goto err_rflow;
+	if ((uc->tchan && uc->rchan) && uc->tchan->id == uc->rchan->id) {
+		dev_info(ud->dev, "chan%d: already have %d pair allocated\n",
+			 uc->id, uc->tchan->id);
+		return 0;
 	}
 
-	rflow = uc->rflow;
-	if (ud->tflow_cnt) {
-		fd_ring_id = ud->tflow_cnt + rflow->id;
-	} else {
-		fd_ring_id = ud->bchan_cnt + ud->tchan_cnt + ud->echan_cnt +
-			uc->rchan->id;
+	if (uc->tchan) {
+		dev_err(ud->dev, "chan%d: already have tchan%d allocated\n",
+			uc->id, uc->tchan->id);
+		return -EBUSY;
+	} else if (uc->rchan) {
+		dev_err(ud->dev, "chan%d: already have rchan%d allocated\n",
+			uc->id, uc->rchan->id);
+		return -EBUSY;
 	}
 
-	ret = k3_ringacc_request_rings_pair(ud->ringacc, fd_ring_id, -1,
-						&rflow->fd_ring, &rflow->r_ring);
-	if (ret) {
-		ret = -EBUSY;
-		goto err_rx_ring;
+	/* Can be optimized, but let's have it like this for now */
+	end = min(ud->tchan_cnt, ud->rchan_cnt);
+	for (chan_id = 0; chan_id < end; chan_id++) {
+		if (!test_bit(chan_id, ud->tchan_map) &&
+		    !test_bit(chan_id, ud->rchan_map))
+			break;
 	}
 
-	memset(&ring_cfg, 0, sizeof(ring_cfg));
-	ring_cfg.size = 16;
-	ring_cfg.elm_size = K3_RINGACC_RING_ELSIZE_8;
-	ring_cfg.mode = K3_RINGACC_RING_MODE_RING;
-	ring_cfg.asel = uc->config.asel;
-
-	ret = k3_ringacc_ring_cfg(rflow->fd_ring, &ring_cfg);
-	ret |= k3_ringacc_ring_cfg(rflow->r_ring, &ring_cfg);
-	if (ret)
-		goto err_ringcfg;
+	if (chan_id == end)
+		return -ENOENT;
+	__set_bit(chan_id, ud->tchan_map);
+	__set_bit(chan_id, ud->rchan_map);
+	uc->tchan = &ud->tchans[chan_id];
+	uc->rchan = &ud->rchans[chan_id];
+	
+	pr_debug("chan%d: got t/rchan%d pair\n", uc->id, chan_id);
 
 	return 0;
-
-err_ringcfg:
-	k3_ringacc_ring_free(rflow->r_ring);
-	rflow->r_ring = NULL;
-	k3_ringacc_ring_free(rflow->fd_ring);
-	rflow->fd_ring = NULL;
-err_rx_ring:
-	udma_put_rflow(uc);
-err_rflow:
-	udma_put_rchan(uc);
-
-	return ret;
 }
 
 static int udma_alloc_tchan_sci_req(struct udma_chan *uc)
@@ -1738,108 +846,6 @@ static int setup_resources(struct udma_dev *ud)
 	return ch_count;
 }
 
-static int udma_push_to_ring(struct k3_ring *ring, void *elem)
-{
-	u64 addr = 0;
-
-	memcpy(&addr, &elem, sizeof(elem));
-	return k3_ringacc_ring_push(ring, &addr);
-}
-
-static int *udma_prep_dma_memcpy(struct udma_chan *uc, dma_addr_t dest,
-				 dma_addr_t src, size_t len)
-{
-	u32 tc_ring_id = k3_ringacc_get_ring_id(uc->tchan->tc_ring);
-	struct cppi5_tr_type15_t *tr_req;
-	int num_tr;
-	size_t tr_size = sizeof(struct cppi5_tr_type15_t);
-	u16 tr0_cnt0, tr0_cnt1, tr1_cnt0;
-	void *tr_desc;
-	size_t desc_size;
-	u64 asel = (u64)uc->config.asel << K3_ADDRESS_ASEL_SHIFT;
-
-	if (len < SZ_64K) {
-		num_tr = 1;
-		tr0_cnt0 = len;
-		tr0_cnt1 = 1;
-	} else {
-		unsigned long align_to = __ffs(src | dest);
-
-		if (align_to > 3)
-			align_to = 3;
-		/*
-		 * Keep simple: tr0: SZ_64K-alignment blocks,
-		 *		tr1: the remaining
-		 */
-		num_tr = 2;
-		tr0_cnt0 = (SZ_64K - BIT(align_to));
-		if (len / tr0_cnt0 >= SZ_64K) {
-			dev_err(uc->ud->dev, "size %zu is not supported\n",
-				len);
-			return NULL;
-		}
-
-		tr0_cnt1 = len / tr0_cnt0;
-		tr1_cnt0 = len % tr0_cnt0;
-	}
-
-	desc_size = cppi5_trdesc_calc_size(num_tr, tr_size);
-	tr_desc = dma_alloc_coherent(DMA_DEVICE_BROKEN, desc_size, DMA_ADDRESS_BROKEN);
-	if (!tr_desc)
-		return NULL;
-
-	cppi5_trdesc_init(tr_desc, num_tr, tr_size, 0, 0);
-	cppi5_desc_set_pktids(tr_desc, uc->id, 0x3fff);
-	cppi5_desc_set_retpolicy(tr_desc, 0, tc_ring_id);
-
-	tr_req = tr_desc + tr_size;
-
-	cppi5_tr_init(&tr_req[0].flags, CPPI5_TR_TYPE15, false, true,
-		      CPPI5_TR_EVENT_SIZE_COMPLETION, 1);
-	cppi5_tr_csf_set(&tr_req[0].flags, CPPI5_TR_CSF_SUPR_EVT);
-
-	src |= asel;
-	dest |= asel;
-
-	tr_req[0].addr = src;
-	tr_req[0].icnt0 = tr0_cnt0;
-	tr_req[0].icnt1 = tr0_cnt1;
-	tr_req[0].icnt2 = 1;
-	tr_req[0].icnt3 = 1;
-	tr_req[0].dim1 = tr0_cnt0;
-
-	tr_req[0].daddr = dest;
-	tr_req[0].dicnt0 = tr0_cnt0;
-	tr_req[0].dicnt1 = tr0_cnt1;
-	tr_req[0].dicnt2 = 1;
-	tr_req[0].dicnt3 = 1;
-	tr_req[0].ddim1 = tr0_cnt0;
-
-	if (num_tr == 2) {
-		cppi5_tr_init(&tr_req[1].flags, CPPI5_TR_TYPE15, false, true,
-			      CPPI5_TR_EVENT_SIZE_COMPLETION, 0);
-		cppi5_tr_csf_set(&tr_req[1].flags, CPPI5_TR_CSF_SUPR_EVT);
-
-		tr_req[1].addr = src + tr0_cnt1 * tr0_cnt0;
-		tr_req[1].icnt0 = tr1_cnt0;
-		tr_req[1].icnt1 = 1;
-		tr_req[1].icnt2 = 1;
-		tr_req[1].icnt3 = 1;
-
-		tr_req[1].daddr = dest + tr0_cnt1 * tr0_cnt0;
-		tr_req[1].dicnt0 = tr1_cnt0;
-		tr_req[1].dicnt1 = 1;
-		tr_req[1].dicnt2 = 1;
-		tr_req[1].dicnt3 = 1;
-	}
-
-	cppi5_tr_csf_set(&tr_req[num_tr - 1].flags, CPPI5_TR_CSF_EOP);
-
-	udma_push_to_ring(uc->tchan->t_ring, tr_desc);
-
-	return 0;
-}
-
 #define TISCI_BCDMA_BCHAN_VALID_PARAMS (			\
 	TI_SCI_MSG_VALUE_RM_UDMAP_CH_PAUSE_ON_ERR_VALID |	\
 	TI_SCI_MSG_VALUE_RM_UDMAP_CH_EXTENDED_CH_TYPE_VALID)
@@ -1893,107 +899,6 @@ static int bcdma_tisci_m2m_channel_config(struct udma_chan *uc)
 	return ret;
 }
 
-static struct udma_bchan *__bcdma_reserve_bchan(struct udma_dev *ud, int id)
-{
-	if (id >= 0) {
-		if (test_bit(id, ud->bchan_map)) {
-			dev_err(ud->dev, "bchan%d is in use\n", id);
-			return ERR_PTR(-ENOENT);
-		}
-	} else {
-		id = find_next_zero_bit(ud->bchan_map, ud->bchan_cnt, 0);
-		if (id == ud->bchan_cnt)
-			return ERR_PTR(-ENOENT);
-	}
-	__set_bit(id, ud->bchan_map);
-	return &ud->bchans[id];
-}
-
-static int bcdma_get_bchan(struct udma_chan *uc)
-{
-	struct udma_dev *ud = uc->ud;
-
-	if (uc->bchan) {
-		dev_err(ud->dev, "chan%d: already have bchan%d allocated\n",
-			uc->id, uc->bchan->id);
-		return 0;
-	}
-
-	uc->bchan = __bcdma_reserve_bchan(ud, -1);
-	if (IS_ERR(uc->bchan))
-		return PTR_ERR(uc->bchan);
-
-	uc->tchan = uc->bchan;
-
-	return 0;
-}
-
-static void bcdma_put_bchan(struct udma_chan *uc)
-{
-	struct udma_dev *ud = uc->ud;
-
-	if (uc->bchan) {
-		dev_dbg(ud->dev, "chan%d: put bchan%d\n", uc->id,
-			uc->bchan->id);
-		__clear_bit(uc->bchan->id, ud->bchan_map);
-		uc->bchan = NULL;
-		uc->tchan = NULL;
-	}
-}
-
-static void bcdma_free_bchan_resources(struct udma_chan *uc)
-{
-	if (!uc->bchan)
-		return;
-
-	k3_ringacc_ring_free(uc->bchan->tc_ring);
-	k3_ringacc_ring_free(uc->bchan->t_ring);
-	uc->bchan->tc_ring = NULL;
-	uc->bchan->t_ring = NULL;
-
-	bcdma_put_bchan(uc);
-}
-
-static int bcdma_alloc_bchan_resources(struct udma_chan *uc)
-{
-	struct k3_ring_cfg ring_cfg;
-	struct udma_dev *ud = uc->ud;
-	int ret;
-
-	ret = bcdma_get_bchan(uc);
-	if (ret)
-		return ret;
-
-	ret = k3_ringacc_request_rings_pair(ud->ringacc, uc->bchan->id, -1,
-						&uc->bchan->t_ring,
-						&uc->bchan->tc_ring);
-	if (ret) {
-		ret = -EBUSY;
-		goto err_ring;
-	}
-
-	memset(&ring_cfg, 0, sizeof(ring_cfg));
-	ring_cfg.size = 16;
-	ring_cfg.elm_size = K3_RINGACC_RING_ELSIZE_8;
-	ring_cfg.mode = K3_RINGACC_RING_MODE_RING;
-
-	ret = k3_ringacc_ring_cfg(uc->bchan->t_ring, &ring_cfg);
-	if (ret)
-		goto err_ringcfg;
-
-	return 0;
-
-err_ringcfg:
-	k3_ringacc_ring_free(uc->bchan->tc_ring);
-	uc->bchan->tc_ring = NULL;
-	k3_ringacc_ring_free(uc->bchan->t_ring);
-	uc->bchan->t_ring = NULL;
-err_ring:
-	bcdma_put_bchan(uc);
-
-	return ret;
-}
-
 static int bcdma_tisci_tx_channel_config(struct udma_chan *uc)
 {
 	struct udma_dev *ud = uc->ud;
@@ -2207,23 +1112,6 @@ static int pktdma_alloc_chan_resources(struct udma_chan *uc)
 	return ret;
 }
 
-static int udma_transfer(struct device *dev, int direction,
-			 dma_addr_t dst, dma_addr_t src, size_t len)
-{
-	struct udma_dev *ud = dev_get_priv(dev);
-	/* Channel0 is reserved for memcpy */
-	struct udma_chan *uc = &ud->channels[0];
-	dma_addr_t paddr = 0;
-	int ret;
-
-	udma_prep_dma_memcpy(uc, dst, src, len);
-	udma_start(uc);
-	ret = udma_poll_completion(uc, &paddr);
-	udma_stop(uc);
-
-	return ret;
-}
-
 static int udma_request(struct dma *dma)
 {
 	struct udma_dev *ud = dev_get_priv(dma->dev);
@@ -2302,274 +1190,6 @@ static int udma_rfree(struct dma *dma)
 	return 0;
 }
 
-static int udma_enable(struct dma *dma)
-{
-	struct udma_dev *ud = dev_get_priv(dma->dev);
-	struct udma_chan *uc;
-	int ret;
-
-	if (dma->id >= (ud->rchan_cnt + ud->tchan_cnt)) {
-		dev_err(dma->dev, "invalid dma ch_id %lu\n", dma->id);
-		return -EINVAL;
-	}
-	uc = &ud->channels[dma->id];
-
-	ret = udma_start(uc);
-
-	return ret;
-}
-
-static int udma_disable(struct dma *dma)
-{
-	struct udma_dev *ud = dev_get_priv(dma->dev);
-	struct udma_chan *uc;
-	int ret = 0;
-
-	if (dma->id >= (ud->rchan_cnt + ud->tchan_cnt)) {
-		dev_err(dma->dev, "invalid dma ch_id %lu\n", dma->id);
-		return -EINVAL;
-	}
-	uc = &ud->channels[dma->id];
-
-	if (udma_is_chan_running(uc))
-		ret = udma_stop(uc);
-	else
-		dev_err(dma->dev, "%s not running\n", __func__);
-
-	return ret;
-}
-
-static int udma_send(struct dma *dma, dma_addr_t src, size_t len, void *metadata)
-{
-	struct udma_dev *ud = dev_get_priv(dma->dev);
-	struct cppi5_host_desc_t *desc_tx;
-	struct ti_udma_drv_packet_data packet_data = { 0 };
-	dma_addr_t paddr;
-	struct udma_chan *uc;
-	u32 tc_ring_id;
-	int ret;
-	u64 asel;
-
-	if (metadata)
-		packet_data = *((struct ti_udma_drv_packet_data *)metadata);
-
-	if (dma->id >= (ud->rchan_cnt + ud->tchan_cnt)) {
-		dev_err(dma->dev, "invalid dma ch_id %lu\n", dma->id);
-		return -EINVAL;
-	}
-	uc = &ud->channels[dma->id];
-
-	asel = (u64)uc->config.asel << K3_ADDRESS_ASEL_SHIFT;
-
-	if (uc->config.dir != DMA_MEM_TO_DEV)
-		return -EINVAL;
-
-	tc_ring_id = k3_ringacc_get_ring_id(uc->tchan->tc_ring);
-
-	desc_tx = uc->desc_tx;
-
-	cppi5_hdesc_reset_hbdesc(desc_tx);
-
-	src |= asel;
-
-	cppi5_hdesc_init(desc_tx,
-			 uc->config.needs_epib ? CPPI5_INFO0_HDESC_EPIB_PRESENT : 0,
-			 uc->config.psd_size);
-	cppi5_hdesc_set_pktlen(desc_tx, len);
-	cppi5_hdesc_attach_buf(desc_tx, src, len, src, len);
-	cppi5_desc_set_pktids(&desc_tx->hdr, uc->id, 0x3fff);
-	cppi5_desc_set_retpolicy(&desc_tx->hdr, 0, tc_ring_id);
-	/* pass below information from caller */
-	cppi5_hdesc_set_pkttype(desc_tx, packet_data.pkt_type);
-	cppi5_desc_set_tags_ids(&desc_tx->hdr, 0, packet_data.dest_tag);
-
-	ret = udma_push_to_ring(uc->tchan->t_ring, uc->desc_tx);
-	if (ret) {
-		dev_err(dma->dev, "TX dma push fail ch_id %lu %d\n",
-			dma->id, ret);
-		return ret;
-	}
-
-	return udma_poll_completion(uc, &paddr);
-}
-
-static int udma_receive(struct dma *dma, dma_addr_t *dst, void *metadata)
-{
-	struct udma_dev *ud = dev_get_priv(dma->dev);
-	struct udma_chan_config *ucc;
-	struct cppi5_host_desc_t *desc_rx;
-	dma_addr_t buf_dma;
-	struct udma_chan *uc;
-	u32 buf_dma_len, pkt_len;
-	u32 port_id = 0;
-	int ret;
-
-	if (dma->id >= (ud->rchan_cnt + ud->tchan_cnt)) {
-		dev_err(dma->dev, "invalid dma ch_id %lu\n", dma->id);
-		return -EINVAL;
-	}
-	uc = &ud->channels[dma->id];
-	ucc = &uc->config;
-
-	if (uc->config.dir != DMA_DEV_TO_MEM)
-		return -EINVAL;
-	if (!uc->num_rx_bufs)
-		return -EINVAL;
-
-	ret = k3_ringacc_ring_pop(uc->rflow->r_ring, &desc_rx);
-	if (ret && ret != -ENODATA) {
-		dev_err(dma->dev, "rx dma fail ch_id:%lu %d\n", dma->id, ret);
-		return ret;
-	} else if (ret == -ENODATA) {
-		return 0;
-	}
-
-	cppi5_hdesc_get_obuf(desc_rx, &buf_dma, &buf_dma_len);
-	pkt_len = cppi5_hdesc_get_pktlen(desc_rx);
-
-	cppi5_desc_get_tags_ids(&desc_rx->hdr, &port_id, NULL);
-
-	if (metadata) {
-		struct ti_udma_drv_packet_data *packet_data = metadata;
-
-		packet_data->src_tag = port_id;
-	}
-
-	*dst = buf_dma & GENMASK_ULL(K3_ADDRESS_ASEL_SHIFT - 1, 0);
-
-	uc->num_rx_bufs--;
-
-	return pkt_len;
-}
-
-static int udma_of_xlate(struct dma *dma, struct of_phandle_args *args)
-{
-	struct udma_chan_config *ucc;
-	struct udma_dev *ud = dev_get_priv(dma->dev);
-	struct udma_chan *uc = &ud->channels[0];
-	struct psil_endpoint_config *ep_config;
-	u32 val;
-
-	for (val = 0; val < ud->ch_count; val++) {
-		uc = &ud->channels[val];
-		if (!uc->in_use)
-			break;
-	}
-
-	if (val == ud->ch_count)
-		return -EBUSY;
-
-	ucc = &uc->config;
-	ucc->remote_thread_id = args->args[0];
-	if (ucc->remote_thread_id & K3_PSIL_DST_THREAD_ID_OFFSET)
-		ucc->dir = DMA_MEM_TO_DEV;
-	else
-		ucc->dir = DMA_DEV_TO_MEM;
-
-	ep_config = psil_get_ep_config(ucc->remote_thread_id);
-
-	if (IS_ERR(ep_config)) {
-		dev_err(ud->dev, "No configuration for psi-l thread 0x%04x\n",
-			uc->config.remote_thread_id);
-		ucc->dir = DMA_MEM_TO_MEM;
-		ucc->remote_thread_id = -1;
-		return false;
-	}
-
-	ucc->pkt_mode = ep_config->pkt_mode;
-	ucc->channel_tpl = ep_config->channel_tpl;
-	ucc->notdpkt = ep_config->notdpkt;
-	ucc->ep_type = ep_config->ep_type;
-
-	if (ud->match_data->type == DMA_TYPE_PKTDMA &&
-	    ep_config->mapped_channel_id >= 0) {
-		ucc->mapped_channel_id = ep_config->mapped_channel_id;
-		ucc->default_flow_id = ep_config->default_flow_id;
-		if (args->args_count == 2)
-			ucc->asel = args->args[1];
-	} else {
-		ucc->mapped_channel_id = -1;
-		ucc->default_flow_id = -1;
-	}
-
-	ucc->needs_epib = ep_config->needs_epib;
-	ucc->psd_size = ep_config->psd_size;
-	ucc->metadata_size = (ucc->needs_epib ? CPPI5_INFO0_HDESC_EPIB_SIZE : 0) + ucc->psd_size;
-
-	ucc->hdesc_size = cppi5_hdesc_calc_size(ucc->needs_epib,
-						ucc->psd_size, 0);
-	ucc->hdesc_size = ALIGN(ucc->hdesc_size, DMA_ALIGNMENT);
-
-	dma->id = uc->id;
-	dev_dbg(ud->dev, "Allocated dma chn:%lu epib:%d psdata:%u meta:%u thread_id:%x\n",
-		 dma->id, ucc->needs_epib,
-		 ucc->psd_size, ucc->metadata_size,
-		 ucc->remote_thread_id);
-
-	return 0;
-}
-
-static int udma_prepare_rcv_buf(struct dma *dma, dma_addr_t dst, size_t size)
-{
-	struct udma_dev *ud = dev_get_priv(dma->dev);
-	struct cppi5_host_desc_t *desc_rx;
-	struct udma_chan *uc;
-	u32 desc_num;
-	u64 asel;
-
-	if (dma->id >= (ud->rchan_cnt + ud->tchan_cnt)) {
-		dev_err(dma->dev, "invalid dma ch_id %lu\n", dma->id);
-		return -EINVAL;
-	}
-	uc = &ud->channels[dma->id];
-
-	if (uc->config.dir != DMA_DEV_TO_MEM)
-		return -EINVAL;
-
-	if (uc->num_rx_bufs >= UDMA_RX_DESC_NUM)
-		return -EINVAL;
-
-	asel = (u64)uc->config.asel << K3_ADDRESS_ASEL_SHIFT;
-	desc_num = uc->desc_rx_cur % UDMA_RX_DESC_NUM;
-	desc_rx = uc->desc_rx + (desc_num * uc->config.hdesc_size);
-
-	cppi5_hdesc_reset_hbdesc(desc_rx);
-
-	cppi5_hdesc_init(desc_rx,
-			 uc->config.needs_epib ? CPPI5_INFO0_HDESC_EPIB_PRESENT : 0,
-			 uc->config.psd_size);
-	cppi5_hdesc_set_pktlen(desc_rx, size);
-	dst |= asel;
-	cppi5_hdesc_attach_buf(desc_rx, dst, size, dst, size);
-
-	udma_push_to_ring(uc->rflow->fd_ring, desc_rx);
-
-	uc->num_rx_bufs++;
-	uc->desc_rx_cur++;
-
-	return 0;
-}
-
-static int udma_get_cfg(struct dma *dma, u32 id, void **data)
-{
-	struct udma_dev *ud = dev_get_priv(dma->dev);
-	struct udma_chan *uc;
-
-	if (dma->id >= (ud->rchan_cnt + ud->tchan_cnt)) {
-		dev_err(dma->dev, "invalid dma ch_id %lu\n", dma->id);
-		return -EINVAL;
-	}
-
-	switch (id) {
-	case TI_UDMA_CHAN_PRIV_INFO:
-		uc = &ud->channels[dma->id];
-		*data = &uc->cfg_data;
-		return 0;
-	}
-
-	return -EINVAL;
-}
-
 static const struct dma_ops udma_ops = {
 	.transfer	= udma_transfer,
 	.of_xlate	= udma_of_xlate,
diff --git a/drivers/dma/ti/k3-udma.h b/drivers/dma/ti/k3-udma.h
new file mode 100644
index 0000000000000000000000000000000000000000..88325160841886af5514ae2385400e2b4156bb07
--- /dev/null
+++ b/drivers/dma/ti/k3-udma.h
@@ -0,0 +1,355 @@
+/* SPDX-License-Identifier: GPL-2.0+ */
+/*
+ *  Copyright (C) 2025 Texas Instruments Incorporated - https://www.ti.com
+ *
+ */
+
+#ifndef K3_UDMA_H
+#define K3_UDMA_H
+
+#include <linux/types.h>
+#include <soc/ti/k3-navss-ringacc.h>
+#include <soc/ti/cppi5.h>
+#include <soc/ti/ti-udma.h>
+#include <soc/ti/ti_sci_protocol.h>
+#include <soc/ti/cppi5.h>
+#include <dma-devices.h>
+
+#include "k3-udma-hwdef.h"
+#include "k3-udma.h"
+#include "k3-psil-priv.h"
+
+enum k3_dma_type {
+	DMA_TYPE_UDMA = 0,
+	DMA_TYPE_BCDMA,
+	DMA_TYPE_PKTDMA,
+	DMA_TYPE_BCDMA_V2,
+	DMA_TYPE_PKTDMA_V2,
+};
+
+enum udma_mmr {
+	MMR_GCFG = 0,
+	MMR_BCHANRT,
+	MMR_RCHANRT,
+	MMR_TCHANRT,
+	MMR_RCHAN,
+	MMR_TCHAN,
+	MMR_RFLOW,
+	MMR_LAST,
+};
+
+enum udma_rm_range {
+	RM_RANGE_BCHAN = 0,
+	RM_RANGE_TCHAN,
+	RM_RANGE_RCHAN,
+	RM_RANGE_RFLOW,
+	RM_RANGE_TFLOW,
+	RM_RANGE_LAST,
+};
+
+struct udma_tisci_rm {
+	const struct ti_sci_handle *tisci;
+	const struct ti_sci_rm_udmap_ops *tisci_udmap_ops;
+	u32  tisci_dev_id;
+
+	/* tisci information for PSI-L thread pairing/unpairing */
+	const struct ti_sci_rm_psil_ops *tisci_psil_ops;
+	u32  tisci_navss_dev_id;
+
+	struct ti_sci_resource *rm_ranges[RM_RANGE_LAST];
+};
+
+// Structure definitions
+struct udma_tchan {
+	void __iomem *reg_chan;
+	void __iomem *reg_rt;
+
+	int id;
+	struct k3_ring *t_ring; /* Transmit ring */
+	struct k3_ring *tc_ring; /* Transmit Completion ring */
+	int tflow_id; /* applicable only for PKTDMA */
+};
+
+#define udma_bchan udma_tchan
+
+struct udma_rflow {
+	void __iomem *reg_rflow;
+	void __iomem *reg_rt;
+	int id;
+	struct k3_ring *fd_ring; /* Free Descriptor ring */
+	struct k3_ring *r_ring; /* Receive ring */
+};
+
+struct udma_rchan {
+	void __iomem *reg_chan;
+	void __iomem *reg_rt;
+
+	int id;
+};
+
+struct udma_oes_offsets {
+	/* K3 UDMA Output Event Offset */
+	u32 udma_rchan;
+
+	/* BCDMA Output Event Offsets */
+	u32 bcdma_bchan_data;
+	u32 bcdma_bchan_ring;
+	u32 bcdma_tchan_data;
+	u32 bcdma_tchan_ring;
+	u32 bcdma_rchan_data;
+	u32 bcdma_rchan_ring;
+
+	/* PKTDMA Output Event Offsets */
+	u32 pktdma_tchan_flow;
+	u32 pktdma_rchan_flow;
+};
+
+#define UDMA_FLAG_PDMA_ACC32		BIT(0)
+#define UDMA_FLAG_PDMA_BURST		BIT(1)
+#define UDMA_FLAG_TDTYPE		BIT(2)
+
+struct udma_match_data {
+	u32 type;
+	u32 psil_base;
+	bool enable_memcpy_support;
+	u32 flags;
+	u32 statictr_z_mask;
+	struct udma_oes_offsets oes;
+
+	u8 tpl_levels;
+	u32 bchan_cnt;
+	u32 tchan_cnt;
+	u32 rchan_cnt;
+	u32 tflow_cnt;
+	u32 rflow_cnt;
+	u32 chan_cnt;
+
+	u32 level_start_idx[];
+};
+
+struct udma_dev {
+	struct dma_device dmad;
+	struct device *dev;
+	void __iomem *mmrs[MMR_LAST];
+
+	struct udma_tisci_rm tisci_rm;
+	struct k3_ringacc *ringacc;
+
+	u32 features;
+
+	int bchan_cnt;
+	int tchan_cnt;
+	int echan_cnt;
+	int rchan_cnt;
+	int rflow_cnt;
+	int tflow_cnt;
+	unsigned long *bchan_map;
+	unsigned long *tchan_map;
+	unsigned long *rchan_map;
+	unsigned long *rflow_map;
+	unsigned long *rflow_map_reserved;
+	unsigned long *tflow_map;
+
+	struct udma_bchan *bchans;
+	struct udma_tchan *tchans;
+	struct udma_rchan *rchans;
+	struct udma_rflow *rflows;
+
+	const struct udma_match_data *match_data;
+
+	struct udma_chan *channels;
+	u32 psil_base;
+
+	u32 ch_count;
+};
+
+struct udma_chan_config {
+	u32 psd_size; /* size of Protocol Specific Data */
+	u32 metadata_size; /* (needs_epib ? 16:0) + psd_size */
+	u32 hdesc_size; /* Size of a packet descriptor in packet mode */
+	int remote_thread_id;
+	u32 atype;
+	u32 src_thread;
+	u32 dst_thread;
+	enum psil_endpoint_type ep_type;
+	enum udma_tp_level channel_tpl; /* Channel Throughput Level */
+
+	/* PKTDMA mapped channel */
+	int mapped_channel_id;
+	/* PKTDMA default tflow or rflow for mapped channel */
+	int default_flow_id;
+
+	enum dma_transfer_direction dir;
+
+	unsigned int pkt_mode:1; /* TR or packet */
+	unsigned int needs_epib:1; /* EPIB is needed for the communication or not */
+	unsigned int enable_acc32:1;
+	unsigned int enable_burst:1;
+	unsigned int notdpkt:1; /* Suppress sending TDC packet */
+
+	u8 asel;
+};
+
+struct udma_chan {
+	struct udma_dev *ud;
+	char name[20];
+
+	struct udma_bchan *bchan;
+	struct udma_tchan *tchan;
+	struct udma_rchan *rchan;
+	struct udma_rflow *rflow;
+
+	struct ti_udma_drv_chan_cfg_data cfg_data;
+
+	u32 bcnt; /* number of bytes completed since the start of the channel */
+
+	struct udma_chan_config config;
+
+	u32 id;
+
+	struct cppi5_host_desc_t *desc_tx;
+	bool in_use;
+	void	*desc_rx;
+	u32	num_rx_bufs;
+	u32	desc_rx_cur;
+
+};
+
+#define UDMA_CH_1000(ch)		(ch * 0x1000)
+#define UDMA_CH_100(ch)			(ch * 0x100)
+#define UDMA_CH_40(ch)			(ch * 0x40)
+
+#define UDMA_RX_DESC_NUM 128
+
+#define K3_UDMA_MAX_RFLOWS 1024
+#define K3_UDMA_MAX_TR 2
+
+/* Generic register access functions */
+static inline u32 udma_read(void __iomem *base, int reg)
+{
+	u32 v;
+
+	v = readl(base + reg);
+
+	return v;
+}
+
+static inline void udma_write(void __iomem *base, int reg, u32 val)
+{
+	writel(val, base + reg);
+}
+
+static inline void udma_update_bits(void __iomem *base, int reg,
+				    u32 mask, u32 val)
+{
+	u32 tmp, orig;
+
+	orig = udma_read(base, reg);
+	tmp = orig & ~mask;
+	tmp |= (val & mask);
+
+	if (tmp != orig)
+		udma_write(base, reg, tmp);
+}
+
+/* TCHANRT */
+static inline u32 udma_tchanrt_read(struct udma_tchan *tchan, int reg)
+{
+	if (!tchan)
+		return 0;
+	return udma_read(tchan->reg_rt, reg);
+}
+
+static inline void udma_tchanrt_write(struct udma_tchan *tchan,
+				      int reg, u32 val)
+{
+	if (!tchan)
+		return;
+	udma_write(tchan->reg_rt, reg, val);
+}
+
+static inline void udma_tchanrt_update_bits(struct udma_tchan *tchan, int reg,
+					    u32 mask, u32 val)
+{
+	if (!tchan)
+		return;
+	udma_update_bits(tchan->reg_rt, reg, mask, val);
+}
+
+/* RCHANRT */
+static inline u32 udma_rchanrt_read(struct udma_rchan *rchan, int reg)
+{
+	if (!rchan)
+		return 0;
+	return udma_read(rchan->reg_rt, reg);
+}
+
+static inline void udma_rchanrt_write(struct udma_rchan *rchan,
+				      int reg, u32 val)
+{
+	if (!rchan)
+		return;
+	udma_write(rchan->reg_rt, reg, val);
+}
+
+static inline void udma_rflowrt_write(struct udma_rflow *rflow,
+				      int reg, u32 val)
+{
+	if (!rflow)
+		return;
+	udma_write(rflow->reg_rflow, reg, val);
+}
+
+static inline void udma_rchanrt_update_bits(struct udma_rchan *rchan, int reg,
+					    u32 mask, u32 val)
+{
+	if (!rchan)
+		return;
+	udma_update_bits(rchan->reg_rt, reg, mask, val);
+}
+
+static inline void udma_rflowrt_update_bits(struct udma_rflow *rflow, int reg,
+					    u32 mask, u32 val)
+{
+	if (!rflow)
+		return;
+	udma_update_bits(rflow->reg_rflow, reg, mask, val);
+}
+
+// Function headers
+int udma_alloc_rx_resources(struct udma_chan *uc);
+int udma_alloc_tx_resources(struct udma_chan *uc);
+void udma_free_rx_resources(struct udma_chan *uc);
+void udma_free_tx_resources(struct udma_chan *uc);
+int udma_transfer(struct device *dev, int direction, dma_addr_t dst,
+		  dma_addr_t src, size_t len);
+int udma_enable(struct dma *dma);
+int udma_disable(struct dma *dma);
+int udma_send(struct dma *dma, dma_addr_t src, size_t len, void *metadata);
+int udma_receive(struct dma *dma, dma_addr_t *dst, void *metadata);
+int udma_get_cfg(struct dma *dma, u32 id, void **data);
+int udma_prepare_rcv_buf(struct dma *dma, dma_addr_t dst, size_t size);
+int udma_of_xlate(struct dma *dma, struct of_phandle_args *args);
+
+int udma_alloc_tx_resources(struct udma_chan *uc);
+int udma_alloc_rx_resources(struct udma_chan *uc);
+void bcdma_free_bchan_resources(struct udma_chan *uc);
+int bcdma_alloc_bchan_resources(struct udma_chan *uc);
+
+void udma_stop_mem2dev(struct udma_chan *uc, bool sync);
+int udma_start(struct udma_chan *uc);
+void udma_reset_counters(struct udma_chan *uc);
+int udma_stop_hard(struct udma_chan *uc);
+int udma_stop(struct udma_chan *uc);
+bool udma_is_chan_running(struct udma_chan *uc);
+void udma_stop_dev2mem(struct udma_chan *uc, bool sync);
+void udma_reset_uchan(struct udma_chan *uc);
+void udma_reset_rings(struct udma_chan *uc);
+
+char *udma_get_dir_text(enum dma_transfer_direction dir);
+
+// Common macros
+#define K3_UDMA_MAX_RFLOWS 1024
+#define K3_UDMA_MAX_TR 2
+
+#endif // K3_UDMA_H

-- 
2.39.5




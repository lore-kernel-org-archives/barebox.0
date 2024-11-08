Delivery-date: Fri, 08 Nov 2024 14:16:29 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t9Oqh-006KqQ-2j
	for lore@lore.pengutronix.de;
	Fri, 08 Nov 2024 14:16:29 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t9OqY-00045C-UP
	for lore@pengutronix.de; Fri, 08 Nov 2024 14:16:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MwdnhQk9bsZDSclyZ1YAStzFqMhHjP2VvS6tmZrO9+0=; b=4nXUIwcR8s81b2OxgwzfPekQPK
	cWTSHXTUl7er+soDIYwsGebgoHsmADB2LnPr3RpQSTxk8jBU+VH3mtwhB4+xP8KnKK5tRewXMHrWG
	raz/KMrRO5mazjhCMQ62XLJdD6lBe3h8VwlpxSmdiML0/wrGBxzRjfco1Ac6CpHjd93M940Lbd8Dt
	3X5CC4+RDdRHSCk8wmIm2O5TGATXcH6YbGdVstcMyF9nFQIRmGx4m19e2wAjHSiTYRJ+IMluggRYK
	xOEOW7v5/zwisA8nQmUladqi5JK2jxmnGYT9F8PRUqAnA0wJU6QFh5Eph5RNwZwep5f+G2QObodXO
	EQYdym4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t9OpS-0000000AdjZ-44tv;
	Fri, 08 Nov 2024 13:15:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t9OpK-0000000AdfH-2Gmb
	for barebox@lists.infradead.org;
	Fri, 08 Nov 2024 13:15:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t9OpJ-0003X8-61; Fri, 08 Nov 2024 14:15:01 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t9OpI-002cw4-2v;
	Fri, 08 Nov 2024 14:15:00 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t9OpI-00AFXY-2d;
	Fri, 08 Nov 2024 14:15:00 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 08 Nov 2024 14:15:03 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241108-network-k3-v1-5-ee71bff15eb7@pengutronix.de>
References: <20241108-network-k3-v1-0-ee71bff15eb7@pengutronix.de>
In-Reply-To: <20241108-network-k3-v1-0-ee71bff15eb7@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1731071700; l=129899;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=C7EPni1Dhd+fCl8j5p8bTcTVhESXvzvRhmG+ST40aJQ=;
 b=xwcqfwZE4OuzxLZ/MnhH80bZ9jhHnSJMktOUl6Soh6/pm6vey5z6yQXQmaHC2xOUvmVoIqJwK
 OmPgFRIHiynAd+rvGFQYEM90Pi2ipKhs5aRBaAuFlQ44TFPNIAbbDB+
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
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
Subject: [PATCH 5/7] dma-devices: add k3-udma support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This adds support for the k3-udma found on TI K3 SoCs. The driver
uses the just added dma-device support. It's based on the corresponding
U-Boot code as of U-Boot-2025.01-rc1. The driver is needed for upcoming
ethernet support for TI AM625 SoCs.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/dma/Kconfig            |    3 +
 drivers/dma/Makefile           |    2 +
 drivers/dma/ti/Kconfig         |    6 +
 drivers/dma/ti/Makefile        |    1 +
 drivers/dma/ti/k3-psil-priv.h  |   49 +
 drivers/dma/ti/k3-psil.c       |   89 ++
 drivers/dma/ti/k3-psil.h       |   83 ++
 drivers/dma/ti/k3-udma-hwdef.h |  185 +++
 drivers/dma/ti/k3-udma.c       | 2984 ++++++++++++++++++++++++++++++++++++++++
 include/soc/ti/cppi5.h         |  996 ++++++++++++++
 include/soc/ti/ti-udma.h       |   45 +
 11 files changed, 4443 insertions(+)

diff --git a/drivers/dma/Kconfig b/drivers/dma/Kconfig
index 0f55b0a895..1a63df7d1f 100644
--- a/drivers/dma/Kconfig
+++ b/drivers/dma/Kconfig
@@ -9,6 +9,9 @@ config DMADEVICES
 
 if DMADEVICES
 comment "DMA Devices"
+
+source "drivers/dma/ti/Kconfig"
+
 endif
 
 config MXS_APBH_DMA
diff --git a/drivers/dma/Makefile b/drivers/dma/Makefile
index 28dcf98b4f..66f9dc2756 100644
--- a/drivers/dma/Makefile
+++ b/drivers/dma/Makefile
@@ -4,3 +4,5 @@ obj-$(CONFIG_HAS_DMA)		+= map.o
 obj-$(CONFIG_DMA_API_DEBUG)	+= debug.o
 obj-$(CONFIG_MXS_APBH_DMA)	+= apbh_dma.o
 obj-$(CONFIG_OF_DMA_COHERENCY)	+= of_fixups.o
+obj-y += ti/
+
diff --git a/drivers/dma/ti/Kconfig b/drivers/dma/ti/Kconfig
new file mode 100644
index 0000000000..78755bb33a
--- /dev/null
+++ b/drivers/dma/ti/Kconfig
@@ -0,0 +1,6 @@
+config TI_K3_UDMA
+        tristate "Texas Instruments UDMA support"
+        depends on ARCH_K3 || COMPILE_TEST
+        help
+          Enable support for the TI UDMA (Unified DMA) controller. This
+          DMA engine is used in AM65x and j721e.
diff --git a/drivers/dma/ti/Makefile b/drivers/dma/ti/Makefile
new file mode 100644
index 0000000000..f449429e2a
--- /dev/null
+++ b/drivers/dma/ti/Makefile
@@ -0,0 +1 @@
+obj-$(CONFIG_TI_K3_UDMA) += k3-udma.o k3-psil.o
diff --git a/drivers/dma/ti/k3-psil-priv.h b/drivers/dma/ti/k3-psil-priv.h
new file mode 100644
index 0000000000..b80916a7ff
--- /dev/null
+++ b/drivers/dma/ti/k3-psil-priv.h
@@ -0,0 +1,49 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ *  Copyright (C) 2019 Texas Instruments Incorporated - https://www.ti.com
+ */
+
+#ifndef K3_PSIL_PRIV_H_
+#define K3_PSIL_PRIV_H_
+
+#include "k3-psil.h"
+
+struct psil_ep {
+	u32 thread_id;
+	struct psil_endpoint_config ep_config;
+};
+
+/**
+ * struct psil_ep_map - PSI-L thread ID configuration maps
+ * @name:	Name of the map, set it to the name of the SoC
+ * @src:	Array of source PSI-L thread configurations
+ * @src_count:	Number of entries in the src array
+ * @dst:	Array of destination PSI-L thread configurations
+ * @dst_count:	Number of entries in the dst array
+ *
+ * In case of symmetric configuration for a matching src/dst thread (for example
+ * 0x4400 and 0xc400) only the src configuration can be present. If no dst
+ * configuration found the code will look for (dst_thread_id & ~0x8000) to find
+ * the symmetric match.
+ */
+struct psil_ep_map {
+	char *name;
+	struct psil_ep	*src;
+	int src_count;
+	struct psil_ep	*dst;
+	int dst_count;
+};
+
+struct psil_endpoint_config *psil_get_ep_config(u32 thread_id);
+
+/* SoC PSI-L endpoint maps */
+extern struct psil_ep_map am654_ep_map;
+extern struct psil_ep_map j721e_ep_map;
+extern struct psil_ep_map j721s2_ep_map;
+extern struct psil_ep_map am64_ep_map;
+extern struct psil_ep_map am62_ep_map;
+extern struct psil_ep_map am62a_ep_map;
+extern struct psil_ep_map j784s4_ep_map;
+extern struct psil_ep_map am62p_ep_map;
+
+#endif /* K3_PSIL_PRIV_H_ */
diff --git a/drivers/dma/ti/k3-psil.c b/drivers/dma/ti/k3-psil.c
new file mode 100644
index 0000000000..58f39c0453
--- /dev/null
+++ b/drivers/dma/ti/k3-psil.c
@@ -0,0 +1,89 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ *  Copyright (C) 2019 Texas Instruments Incorporated - https://www.ti.com
+ *  Author: Peter Ujfalusi <peter.ujfalusi@ti.com>
+ */
+
+#include <linux/kernel.h>
+#include <linux/printk.h>
+#include <linux/err.h>
+#include <of.h>
+
+#include "k3-psil-priv.h"
+
+#define PSIL_ETHERNET(x, ch, flow_base, flow_cnt)		\
+	{							\
+		.thread_id = x,					\
+		.ep_config = {					\
+			.ep_type = PSIL_EP_NATIVE,		\
+			.pkt_mode = 1,				\
+			.needs_epib = 1,			\
+			.psd_size = 16,				\
+			.mapped_channel_id = ch,		\
+			.flow_start = flow_base,		\
+			.flow_num = flow_cnt,			\
+			.default_flow_id = flow_base,		\
+		},						\
+	}
+
+/* PSI-L source thread IDs, used for RX (DMA_DEV_TO_MEM) */
+static struct psil_ep am62_src_ep_map[] = {
+	/* CPSW3G */
+	PSIL_ETHERNET(0x4600, 19, 19, 16),
+};
+
+/* PSI-L destination thread IDs, used for TX (DMA_MEM_TO_DEV) */
+static struct psil_ep am62_dst_ep_map[] = {
+	/* CPSW3G */
+	PSIL_ETHERNET(0xc600, 19, 19, 8),
+	PSIL_ETHERNET(0xc601, 20, 27, 8),
+	PSIL_ETHERNET(0xc602, 21, 35, 8),
+	PSIL_ETHERNET(0xc603, 22, 43, 8),
+	PSIL_ETHERNET(0xc604, 23, 51, 8),
+	PSIL_ETHERNET(0xc605, 24, 59, 8),
+	PSIL_ETHERNET(0xc606, 25, 67, 8),
+	PSIL_ETHERNET(0xc607, 26, 75, 8),
+};
+
+struct psil_ep_map am62_ep_map = {
+	.name = "am62",
+	.src = am62_src_ep_map,
+	.src_count = ARRAY_SIZE(am62_src_ep_map),
+	.dst = am62_dst_ep_map,
+	.dst_count = ARRAY_SIZE(am62_dst_ep_map),
+};
+
+static const struct psil_ep_map *soc_ep_map;
+
+struct psil_endpoint_config *psil_get_ep_config(u32 thread_id)
+{
+	int i;
+
+	if (!soc_ep_map) {
+		if (of_machine_is_compatible("ti,am625"))
+			soc_ep_map = &am62_ep_map;
+	}
+
+	if (!soc_ep_map) {
+		pr_err("Cannot find a soc_ep_map for the current machine\n");
+		return ERR_PTR(-ENODEV);
+	}
+
+	if (thread_id & K3_PSIL_DST_THREAD_ID_OFFSET && soc_ep_map->dst) {
+		/* check in destination thread map */
+		for (i = 0; i < soc_ep_map->dst_count; i++) {
+			if (soc_ep_map->dst[i].thread_id == thread_id)
+				return &soc_ep_map->dst[i].ep_config;
+		}
+	}
+
+	thread_id &= ~K3_PSIL_DST_THREAD_ID_OFFSET;
+	if (soc_ep_map->src) {
+		for (i = 0; i < soc_ep_map->src_count; i++) {
+			if (soc_ep_map->src[i].thread_id == thread_id)
+				return &soc_ep_map->src[i].ep_config;
+		}
+	}
+
+	return ERR_PTR(-ENOENT);
+}
diff --git a/drivers/dma/ti/k3-psil.h b/drivers/dma/ti/k3-psil.h
new file mode 100644
index 0000000000..af60a9924e
--- /dev/null
+++ b/drivers/dma/ti/k3-psil.h
@@ -0,0 +1,83 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ *  Copyright (C) 2019 Texas Instruments Incorporated - https://www.ti.com
+ */
+
+#ifndef K3_PSIL_H_
+#define K3_PSIL_H_
+
+#include <linux/types.h>
+
+#define K3_PSIL_DST_THREAD_ID_OFFSET 0x8000
+
+struct device;
+
+/**
+ * enum udma_tp_level - Channel Throughput Levels
+ * @UDMA_TP_NORMAL:	Normal channel
+ * @UDMA_TP_HIGH:	High Throughput channel
+ * @UDMA_TP_ULTRAHIGH:	Ultra High Throughput channel
+ */
+enum udma_tp_level {
+	UDMA_TP_NORMAL = 0,
+	UDMA_TP_HIGH,
+	UDMA_TP_ULTRAHIGH,
+	UDMA_TP_LAST,
+};
+
+/**
+ * enum psil_endpoint_type - PSI-L Endpoint type
+ * @PSIL_EP_NATIVE:	Normal channel
+ * @PSIL_EP_PDMA_XY:	XY mode PDMA
+ * @PSIL_EP_PDMA_MCAN:	MCAN mode PDMA
+ * @PSIL_EP_PDMA_AASRC: AASRC mode PDMA
+ */
+enum psil_endpoint_type {
+	PSIL_EP_NATIVE = 0,
+	PSIL_EP_PDMA_XY,
+	PSIL_EP_PDMA_MCAN,
+	PSIL_EP_PDMA_AASRC,
+};
+
+/**
+ * struct psil_endpoint_config - PSI-L Endpoint configuration
+ * @ep_type:		PSI-L endpoint type
+ * @pkt_mode:		If set, the channel must be in Packet mode, otherwise in
+ *			TR mode
+ * @notdpkt:		TDCM must be suppressed on the TX channel
+ * @needs_epib:		Endpoint needs EPIB
+ * @psd_size:		If set, PSdata is used by the endpoint
+ * @channel_tpl:	Desired throughput level for the channel
+ * @pdma_acc32:		ACC32 must be enabled on the PDMA side
+ * @pdma_burst:		BURST must be enabled on the PDMA side
+ * @mapped_channel_id:	PKTDMA thread to channel mapping for mapped
+ *			channels. The thread must be serviced by the specified
+ *			channel if mapped_channel_id is >= 0 in case of PKTDMA
+ * @flow_start:		PKTDMA flow range start of mapped channel. Unmapped
+ *			channels use flow_id == chan_id
+ * @flow_num:		PKTDMA flow count of mapped channel. Unmapped
+ *			channels use flow_id == chan_id
+ * @default_flow_id:	PKTDMA default (r)flow index of mapped channel.
+ *			Must be within the flow range of the mapped channel.
+ */
+struct psil_endpoint_config {
+	enum psil_endpoint_type ep_type;
+
+	unsigned pkt_mode:1;
+	unsigned notdpkt:1;
+	unsigned needs_epib:1;
+	u32 psd_size;
+	enum udma_tp_level channel_tpl;
+
+	/* PDMA properties, valid for PSIL_EP_PDMA_* */
+	unsigned pdma_acc32:1;
+	unsigned pdma_burst:1;
+
+	/* PKTDMA mapped channel */
+	int mapped_channel_id;
+	/* PKTDMA tflow and rflow ranges for mapped channel */
+	u16 flow_start;
+	u16 flow_num;
+	u16 default_flow_id;
+};
+#endif /* K3_PSIL_H_ */
diff --git a/drivers/dma/ti/k3-udma-hwdef.h b/drivers/dma/ti/k3-udma-hwdef.h
new file mode 100644
index 0000000000..3d6b4d10ff
--- /dev/null
+++ b/drivers/dma/ti/k3-udma-hwdef.h
@@ -0,0 +1,185 @@
+/* SPDX-License-Identifier: GPL-2.0+ */
+/*
+ *  Copyright (C) 2018 Texas Instruments Incorporated - https://www.ti.com
+ *
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2 as
+ * published by the Free Software Foundation.
+ *
+ */
+
+#ifndef K3_NAVSS_UDMA_HWDEF_H_
+#define K3_NAVSS_UDMA_HWDEF_H_
+
+#include <linux/bitops.h>
+#define UDMA_PSIL_DST_THREAD_ID_OFFSET 0x8000
+
+/* Global registers */
+#define UDMA_REV_REG			0x0
+#define UDMA_PERF_CTL_REG		0x4
+#define UDMA_EMU_CTL_REG		0x8
+#define UDMA_PSIL_TO_REG		0x10
+#define UDMA_UTC_CTL_REG		0x1c
+#define UDMA_CAP_REG(i)			(0x20 + (i * 4))
+#define UDMA_RX_FLOW_ID_FW_OES_REG	0x80
+#define UDMA_RX_FLOW_ID_FW_STATUS_REG	0x88
+
+/* RX Flow regs */
+#define UDMA_RFLOW_RFA_REG		0x0
+#define UDMA_RFLOW_RFB_REG		0x4
+#define UDMA_RFLOW_RFC_REG		0x8
+#define UDMA_RFLOW_RFD_REG		0xc
+#define UDMA_RFLOW_RFE_REG		0x10
+#define UDMA_RFLOW_RFF_REG		0x14
+#define UDMA_RFLOW_RFG_REG		0x18
+#define UDMA_RFLOW_RFH_REG		0x1c
+
+#define UDMA_RFLOW_REG(x) (UDMA_RFLOW_RF##x##_REG)
+
+/* TX chan regs */
+#define UDMA_TCHAN_TCFG_REG		0x0
+#define UDMA_TCHAN_TCREDIT_REG		0x4
+#define UDMA_TCHAN_TCQ_REG		0x14
+#define UDMA_TCHAN_TOES_REG(i)		(0x20 + (i) * 4)
+#define UDMA_TCHAN_TEOES_REG		0x60
+#define UDMA_TCHAN_TPRI_CTRL_REG	0x64
+#define UDMA_TCHAN_THREAD_ID_REG	0x68
+#define UDMA_TCHAN_TFIFO_DEPTH_REG	0x70
+#define UDMA_TCHAN_TST_SCHED_REG	0x80
+
+/* RX chan regs */
+#define UDMA_RCHAN_RCFG_REG		0x0
+#define UDMA_RCHAN_RCQ_REG		0x14
+#define UDMA_RCHAN_ROES_REG(i)		(0x20 + (i) * 4)
+#define UDMA_RCHAN_REOES_REG		0x60
+#define UDMA_RCHAN_RPRI_CTRL_REG	0x64
+#define UDMA_RCHAN_THREAD_ID_REG	0x68
+#define UDMA_RCHAN_RST_SCHED_REG	0x80
+#define UDMA_RCHAN_RFLOW_RNG_REG	0xf0
+
+/* TX chan RT regs */
+#define UDMA_TCHAN_RT_CTL_REG		0x0
+#define UDMA_TCHAN_RT_SWTRIG_REG	0x8
+#define UDMA_TCHAN_RT_STDATA_REG	0x80
+
+#define UDMA_TCHAN_RT_PEERn_REG(i)	(0x200 + (i * 0x4))
+#define UDMA_TCHAN_RT_PEER_STATIC_TR_XY_REG	\
+	UDMA_TCHAN_RT_PEERn_REG(0)	/* PSI-L: 0x400 */
+#define UDMA_TCHAN_RT_PEER_STATIC_TR_Z_REG	\
+	UDMA_TCHAN_RT_PEERn_REG(1)	/* PSI-L: 0x401 */
+#define UDMA_TCHAN_RT_PEER_BCNT_REG		\
+	UDMA_TCHAN_RT_PEERn_REG(4)	/* PSI-L: 0x404 */
+#define UDMA_TCHAN_RT_PEER_RT_EN_REG		\
+	UDMA_TCHAN_RT_PEERn_REG(8)	/* PSI-L: 0x408 */
+
+#define UDMA_TCHAN_RT_PCNT_REG		0x400
+#define UDMA_TCHAN_RT_BCNT_REG		0x408
+#define UDMA_TCHAN_RT_SBCNT_REG		0x410
+
+/* RX chan RT regs */
+#define UDMA_RCHAN_RT_CTL_REG		0x0
+#define UDMA_RCHAN_RT_SWTRIG_REG	0x8
+#define UDMA_RCHAN_RT_STDATA_REG	0x80
+
+#define UDMA_RCHAN_RT_PEERn_REG(i)	(0x200 + (i * 0x4))
+#define UDMA_RCHAN_RT_PEER_STATIC_TR_XY_REG	\
+	UDMA_RCHAN_RT_PEERn_REG(0)	/* PSI-L: 0x400 */
+#define UDMA_RCHAN_RT_PEER_STATIC_TR_Z_REG	\
+	UDMA_RCHAN_RT_PEERn_REG(1)	/* PSI-L: 0x401 */
+#define UDMA_RCHAN_RT_PEER_BCNT_REG		\
+	UDMA_RCHAN_RT_PEERn_REG(4)	/* PSI-L: 0x404 */
+#define UDMA_RCHAN_RT_PEER_RT_EN_REG		\
+	UDMA_RCHAN_RT_PEERn_REG(8)	/* PSI-L: 0x408 */
+
+#define UDMA_RCHAN_RT_PCNT_REG		0x400
+#define UDMA_RCHAN_RT_BCNT_REG		0x408
+#define UDMA_RCHAN_RT_SBCNT_REG		0x410
+
+/* UDMA_TCHAN_TCFG_REG/UDMA_RCHAN_RCFG_REG */
+#define UDMA_CHAN_CFG_PAUSE_ON_ERR		BIT(31)
+#define UDMA_TCHAN_CFG_FILT_EINFO		BIT(30)
+#define UDMA_TCHAN_CFG_FILT_PSWORDS		BIT(29)
+#define UDMA_CHAN_CFG_ATYPE_MASK		GENMASK(25, 24)
+#define UDMA_CHAN_CFG_ATYPE_SHIFT		24
+#define UDMA_CHAN_CFG_CHAN_TYPE_MASK		GENMASK(19, 16)
+#define UDMA_CHAN_CFG_CHAN_TYPE_SHIFT		16
+/*
+ * PBVR - using pass by value rings
+ * PBRR - using pass by reference rings
+ * 3RDP - Third Party DMA
+ * BC - Block Copy
+ * SB - single buffer packet mode enabled
+ */
+#define UDMA_CHAN_CFG_CHAN_TYPE_PACKET_PBRR \
+	(2 << UDMA_CHAN_CFG_CHAN_TYPE_SHIFT)
+#define UDMA_CHAN_CFG_CHAN_TYPE_PACKET_SB_PBRR \
+	(3 << UDMA_CHAN_CFG_CHAN_TYPE_SHIFT)
+#define UDMA_CHAN_CFG_CHAN_TYPE_3RDP_PBRR \
+	(10 << UDMA_CHAN_CFG_CHAN_TYPE_SHIFT)
+#define UDMA_CHAN_CFG_CHAN_TYPE_3RDP_PBVR \
+	(11 << UDMA_CHAN_CFG_CHAN_TYPE_SHIFT)
+#define UDMA_CHAN_CFG_CHAN_TYPE_3RDP_BC_PBRR \
+	(12 << UDMA_CHAN_CFG_CHAN_TYPE_SHIFT)
+#define UDMA_RCHAN_CFG_IGNORE_SHORT		BIT(15)
+#define UDMA_RCHAN_CFG_IGNORE_LONG		BIT(14)
+#define UDMA_TCHAN_CFG_SUPR_TDPKT		BIT(8)
+#define UDMA_CHAN_CFG_FETCH_SIZE_MASK		GENMASK(6, 0)
+#define UDMA_CHAN_CFG_FETCH_SIZE_SHIFT		0
+
+/* UDMA_TCHAN_RT_CTL_REG/UDMA_RCHAN_RT_CTL_REG */
+#define UDMA_CHAN_RT_CTL_EN	BIT(31)
+#define UDMA_CHAN_RT_CTL_TDOWN	BIT(30)
+#define UDMA_CHAN_RT_CTL_PAUSE	BIT(29)
+#define UDMA_CHAN_RT_CTL_FTDOWN	BIT(28)
+#define UDMA_CHAN_RT_CTL_ERROR	BIT(0)
+
+/* UDMA_TCHAN_RT_PEER_RT_EN_REG/UDMA_RCHAN_RT_PEER_RT_EN_REG (PSI-L: 0x408) */
+#define UDMA_PEER_RT_EN_ENABLE		BIT(31)
+#define UDMA_PEER_RT_EN_TEARDOWN	BIT(30)
+#define UDMA_PEER_RT_EN_PAUSE		BIT(29)
+#define UDMA_PEER_RT_EN_FLUSH		BIT(28)
+#define UDMA_PEER_RT_EN_IDLE		BIT(1)
+
+/* RX Flow reg RFA */
+#define UDMA_RFLOW_RFA_EINFO			BIT(30)
+#define UDMA_RFLOW_RFA_PSINFO			BIT(29)
+#define UDMA_RFLOW_RFA_ERR_HANDLING		BIT(28)
+#define UDMA_RFLOW_RFA_DESC_TYPE_MASK		GENMASK(27, 26)
+#define UDMA_RFLOW_RFA_DESC_TYPE_SHIFT		26
+#define UDMA_RFLOW_RFA_PS_LOC			BIT(25)
+#define UDMA_RFLOW_RFA_SOP_OFF_MASK		GENMASK(24, 16)
+#define UDMA_RFLOW_RFA_SOP_OFF_SHIFT		16
+#define UDMA_RFLOW_RFA_DEST_QNUM_MASK		GENMASK(15, 0)
+#define UDMA_RFLOW_RFA_DEST_QNUM_SHIFT		0
+
+/* RX Flow reg RFC */
+#define UDMA_RFLOW_RFC_SRC_TAG_HI_SEL_SHIFT	28
+#define UDMA_RFLOW_RFC_SRC_TAG_LO_SEL_SHIFT	24
+#define UDMA_RFLOW_RFC_DST_TAG_HI_SEL_SHIFT	20
+#define UDMA_RFLOW_RFC_DST_TAG_LO_SE_SHIFT	16
+
+/*
+ * UDMA_TCHAN_RT_PEER_STATIC_TR_XY_REG /
+ * UDMA_RCHAN_RT_PEER_STATIC_TR_XY_REG
+ */
+#define PDMA_STATIC_TR_X_MASK		GENMASK(26, 24)
+#define PDMA_STATIC_TR_X_SHIFT		(24)
+#define PDMA_STATIC_TR_Y_MASK		GENMASK(11, 0)
+#define PDMA_STATIC_TR_Y_SHIFT		(0)
+
+#define PDMA_STATIC_TR_Y(x)	\
+	(((x) << PDMA_STATIC_TR_Y_SHIFT) & PDMA_STATIC_TR_Y_MASK)
+#define PDMA_STATIC_TR_X(x)	\
+	(((x) << PDMA_STATIC_TR_X_SHIFT) & PDMA_STATIC_TR_X_MASK)
+
+/*
+ * UDMA_TCHAN_RT_PEER_STATIC_TR_Z_REG /
+ * UDMA_RCHAN_RT_PEER_STATIC_TR_Z_REG
+ */
+#define PDMA_STATIC_TR_Z_MASK		GENMASK(11, 0)
+#define PDMA_STATIC_TR_Z_SHIFT		(0)
+#define PDMA_STATIC_TR_Z(x)	\
+	(((x) << PDMA_STATIC_TR_Z_SHIFT) & PDMA_STATIC_TR_Z_MASK)
+
+#endif /* K3_NAVSS_UDMA_HWDEF_H_ */
diff --git a/drivers/dma/ti/k3-udma.c b/drivers/dma/ti/k3-udma.c
new file mode 100644
index 0000000000..96aeb668cb
--- /dev/null
+++ b/drivers/dma/ti/k3-udma.c
@@ -0,0 +1,2984 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ *  Copyright (C) 2018 Texas Instruments Incorporated - https://www.ti.com
+ *  Author: Peter Ujfalusi <peter.ujfalusi@ti.com>
+ */
+#define pr_fmt(fmt) "udma: " fmt
+
+#include <asm/cache.h>
+#include <io.h>
+#include <malloc.h>
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
+#include <soc/ti/ti_sci_protocol.h>
+
+#include "k3-udma-hwdef.h"
+#include "k3-psil-priv.h"
+
+#define K3_UDMA_MAX_RFLOWS 1024
+
+struct udma_chan;
+
+enum k3_dma_type {
+	DMA_TYPE_UDMA = 0,
+	DMA_TYPE_BCDMA,
+	DMA_TYPE_PKTDMA,
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
+static const char * const mmr_names[] = {
+	[MMR_GCFG] = "gcfg",
+	[MMR_BCHANRT] = "bchanrt",
+	[MMR_RCHANRT] = "rchanrt",
+	[MMR_TCHANRT] = "tchanrt",
+	[MMR_RCHAN] = "rchan",
+	[MMR_TCHAN] = "tchan",
+	[MMR_RFLOW] = "rflow",
+};
+
+struct udma_tchan {
+	void __iomem *reg_chan;
+	void __iomem *reg_rt;
+
+	int id;
+	struct k3_nav_ring *t_ring; /* Transmit ring */
+	struct k3_nav_ring *tc_ring; /* Transmit Completion ring */
+	int tflow_id; /* applicable only for PKTDMA */
+};
+
+#define udma_bchan udma_tchan
+
+struct udma_rflow {
+	void __iomem *reg_rflow;
+	int id;
+	struct k3_nav_ring *fd_ring; /* Free Descriptor ring */
+	struct k3_nav_ring *r_ring; /* Receive ring */
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
+	enum k3_dma_type type;
+	u32 psil_base;
+	bool enable_memcpy_support;
+	u32 flags;
+	u32 statictr_z_mask;
+	struct udma_oes_offsets oes;
+
+	u8 tpl_levels;
+	u32 level_start_idx[];
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
+struct udma_dev {
+	struct dma_device dmad;
+	struct device *dev;
+	void __iomem *mmrs[MMR_LAST];
+
+	struct udma_tisci_rm tisci_rm;
+	struct k3_nav_ringacc *ringacc;
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
+/* Generic register access functions */
+static inline u32 udma_read(void __iomem *base, int reg)
+{
+	u32 v;
+
+	v = __raw_readl(base + reg);
+
+	return v;
+}
+
+static inline void udma_write(void __iomem *base, int reg, u32 val)
+{
+	__raw_writel(val, base + reg);
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
+static inline int udma_navss_psil_pair(struct udma_dev *ud, u32 src_thread,
+				       u32 dst_thread)
+{
+	struct udma_tisci_rm *tisci_rm = &ud->tisci_rm;
+
+	dst_thread |= UDMA_PSIL_DST_THREAD_ID_OFFSET;
+
+	return tisci_rm->tisci_psil_ops->pair(tisci_rm->tisci,
+					      tisci_rm->tisci_navss_dev_id,
+					      src_thread, dst_thread);
+}
+
+static inline int udma_navss_psil_unpair(struct udma_dev *ud, u32 src_thread,
+					 u32 dst_thread)
+{
+	struct udma_tisci_rm *tisci_rm = &ud->tisci_rm;
+
+	dst_thread |= UDMA_PSIL_DST_THREAD_ID_OFFSET;
+
+	return tisci_rm->tisci_psil_ops->unpair(tisci_rm->tisci,
+						tisci_rm->tisci_navss_dev_id,
+						src_thread, dst_thread);
+}
+
+static inline char *udma_get_dir_text(enum dma_transfer_direction dir)
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
+#define UDMA_RCHAN_RFLOW_RNG_FLOWID_CNT_SHIFT	(16)
+
+/* How SRC/DST tag should be updated by UDMA in the descriptor's Word 3 */
+#define UDMA_RFLOW_SRCTAG_NONE		0
+#define UDMA_RFLOW_SRCTAG_CFG_TAG	1
+#define UDMA_RFLOW_SRCTAG_FLOW_ID	2
+#define UDMA_RFLOW_SRCTAG_SRC_TAG	4
+
+#define UDMA_RFLOW_DSTTAG_NONE		0
+#define UDMA_RFLOW_DSTTAG_CFG_TAG	1
+#define UDMA_RFLOW_DSTTAG_FLOW_ID	2
+#define UDMA_RFLOW_DSTTAG_DST_TAG_LO	4
+#define UDMA_RFLOW_DSTTAG_DST_TAG_HI	5
+
+#define UDMA_RFLOW_RFC_DEFAULT	\
+	((UDMA_RFLOW_SRCTAG_NONE <<  UDMA_RFLOW_RFC_SRC_TAG_HI_SEL_SHIFT) | \
+	 (UDMA_RFLOW_SRCTAG_SRC_TAG << UDMA_RFLOW_RFC_SRC_TAG_LO_SEL_SHIFT) | \
+	 (UDMA_RFLOW_DSTTAG_DST_TAG_HI << UDMA_RFLOW_RFC_DST_TAG_HI_SEL_SHIFT) | \
+	 (UDMA_RFLOW_DSTTAG_DST_TAG_LO << UDMA_RFLOW_RFC_DST_TAG_LO_SE_SHIFT))
+
+#define UDMA_RFLOW_RFx_REG_FDQ_SIZE_SHIFT	(16)
+
+/* TCHAN */
+static inline u32 udma_tchan_read(struct udma_tchan *tchan, int reg)
+{
+	if (!tchan)
+		return 0;
+	return udma_read(tchan->reg_chan, reg);
+}
+
+static inline void udma_tchan_write(struct udma_tchan *tchan, int reg, u32 val)
+{
+	if (!tchan)
+		return;
+	udma_write(tchan->reg_chan, reg, val);
+}
+
+static inline void udma_tchan_update_bits(struct udma_tchan *tchan, int reg,
+					  u32 mask, u32 val)
+{
+	if (!tchan)
+		return;
+	udma_update_bits(tchan->reg_chan, reg, mask, val);
+}
+
+/* RCHAN */
+static inline u32 udma_rchan_read(struct udma_rchan *rchan, int reg)
+{
+	if (!rchan)
+		return 0;
+	return udma_read(rchan->reg_chan, reg);
+}
+
+static inline void udma_rchan_write(struct udma_rchan *rchan, int reg, u32 val)
+{
+	if (!rchan)
+		return;
+	udma_write(rchan->reg_chan, reg, val);
+}
+
+static inline void udma_rchan_update_bits(struct udma_rchan *rchan, int reg,
+					  u32 mask, u32 val)
+{
+	if (!rchan)
+		return;
+	udma_update_bits(rchan->reg_chan, reg, mask, val);
+}
+
+/* RFLOW */
+static inline u32 udma_rflow_read(struct udma_rflow *rflow, int reg)
+{
+	if (!rflow)
+		return 0;
+	return udma_read(rflow->reg_rflow, reg);
+}
+
+static inline void udma_rflow_write(struct udma_rflow *rflow, int reg, u32 val)
+{
+	if (!rflow)
+		return;
+	udma_write(rflow->reg_rflow, reg, val);
+}
+
+static inline void udma_rflow_update_bits(struct udma_rflow *rflow, int reg,
+					  u32 mask, u32 val)
+{
+	if (!rflow)
+		return;
+	udma_update_bits(rflow->reg_rflow, reg, mask, val);
+}
+
+static void udma_alloc_tchan_raw(struct udma_chan *uc)
+{
+	u32 mode, fetch_size;
+
+	if (uc->config.pkt_mode)
+		mode = UDMA_CHAN_CFG_CHAN_TYPE_PACKET_PBRR;
+	else
+		mode = UDMA_CHAN_CFG_CHAN_TYPE_3RDP_BC_PBRR;
+
+	udma_tchan_update_bits(uc->tchan, UDMA_TCHAN_TCFG_REG,
+			       UDMA_CHAN_CFG_CHAN_TYPE_MASK, mode);
+
+	if (uc->config.dir == DMA_MEM_TO_MEM)
+		fetch_size = sizeof(struct cppi5_desc_hdr_t) >> 2;
+	else
+		fetch_size = cppi5_hdesc_calc_size(uc->config.needs_epib,
+						   uc->config.psd_size, 0) >> 2;
+
+	udma_tchan_update_bits(uc->tchan, UDMA_TCHAN_TCFG_REG,
+			       UDMA_CHAN_CFG_FETCH_SIZE_MASK, fetch_size);
+	udma_tchan_write(uc->tchan, UDMA_TCHAN_TCQ_REG,
+			 k3_nav_ringacc_get_ring_id(uc->tchan->tc_ring));
+}
+
+static void udma_alloc_rchan_raw(struct udma_chan *uc)
+{
+	struct udma_dev *ud = uc->ud;
+	int fd_ring = k3_nav_ringacc_get_ring_id(uc->rflow->fd_ring);
+	int rx_ring = k3_nav_ringacc_get_ring_id(uc->rflow->r_ring);
+	int tc_ring = k3_nav_ringacc_get_ring_id(uc->tchan->tc_ring);
+	u32 rx_einfo_present = 0, rx_psinfo_present = 0;
+	u32 mode, fetch_size, rxcq_num;
+
+	if (uc->config.pkt_mode)
+		mode = UDMA_CHAN_CFG_CHAN_TYPE_PACKET_PBRR;
+	else
+		mode = UDMA_CHAN_CFG_CHAN_TYPE_3RDP_BC_PBRR;
+
+	udma_rchan_update_bits(uc->rchan, UDMA_RCHAN_RCFG_REG,
+			       UDMA_CHAN_CFG_CHAN_TYPE_MASK, mode);
+
+	if (uc->config.dir == DMA_MEM_TO_MEM) {
+		fetch_size = sizeof(struct cppi5_desc_hdr_t) >> 2;
+		rxcq_num = tc_ring;
+	} else {
+		fetch_size = cppi5_hdesc_calc_size(uc->config.needs_epib,
+						   uc->config.psd_size, 0) >> 2;
+		rxcq_num = rx_ring;
+	}
+
+	udma_rchan_update_bits(uc->rchan, UDMA_RCHAN_RCFG_REG,
+			       UDMA_CHAN_CFG_FETCH_SIZE_MASK, fetch_size);
+	udma_rchan_write(uc->rchan, UDMA_RCHAN_RCQ_REG, rxcq_num);
+
+	if (uc->config.dir == DMA_MEM_TO_MEM)
+		return;
+
+	if (ud->match_data->type == DMA_TYPE_UDMA &&
+	    uc->rflow->id != uc->rchan->id &&
+	    uc->config.dir != DMA_MEM_TO_MEM)
+		udma_rchan_write(uc->rchan, UDMA_RCHAN_RFLOW_RNG_REG, uc->rflow->id |
+				 1 << UDMA_RCHAN_RFLOW_RNG_FLOWID_CNT_SHIFT);
+
+	if (uc->config.needs_epib)
+		rx_einfo_present = UDMA_RFLOW_RFA_EINFO;
+
+	if (uc->config.psd_size)
+		rx_psinfo_present = UDMA_RFLOW_RFA_PSINFO;
+
+	udma_rflow_write(uc->rflow, UDMA_RFLOW_REG(A),
+			 rx_einfo_present | rx_psinfo_present | rxcq_num);
+
+	udma_rflow_write(uc->rflow, UDMA_RFLOW_REG(C), UDMA_RFLOW_RFC_DEFAULT);
+	udma_rflow_write(uc->rflow, UDMA_RFLOW_REG(D),
+			 fd_ring | fd_ring << UDMA_RFLOW_RFx_REG_FDQ_SIZE_SHIFT);
+	udma_rflow_write(uc->rflow, UDMA_RFLOW_REG(E),
+			 fd_ring | fd_ring << UDMA_RFLOW_RFx_REG_FDQ_SIZE_SHIFT);
+	udma_rflow_write(uc->rflow, UDMA_RFLOW_REG(G), fd_ring);
+	udma_rflow_write(uc->rflow, UDMA_RFLOW_REG(H),
+			 fd_ring | fd_ring << UDMA_RFLOW_RFx_REG_FDQ_SIZE_SHIFT);
+}
+
+static void udma_reset_uchan(struct udma_chan *uc)
+{
+	memset(&uc->config, 0, sizeof(uc->config));
+	uc->config.remote_thread_id = -1;
+	uc->config.mapped_channel_id = -1;
+	uc->config.default_flow_id = -1;
+}
+
+static inline bool udma_is_chan_running(struct udma_chan *uc)
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
+	struct k3_nav_ring *ring = NULL;
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
+	if (ring && k3_nav_ringacc_ring_get_occ(ring))
+		ret = k3_nav_ringacc_ring_pop(ring, addr);
+
+	return ret;
+}
+
+static void udma_reset_rings(struct udma_chan *uc)
+{
+	struct k3_nav_ring *ring1 = NULL;
+	struct k3_nav_ring *ring2 = NULL;
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
+		k3_nav_ringacc_ring_reset_dma(ring1, k3_nav_ringacc_ring_get_occ(ring1));
+	if (ring2)
+		k3_nav_ringacc_ring_reset(ring2);
+}
+
+static void udma_reset_counters(struct udma_chan *uc)
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
+static inline int udma_stop_hard(struct udma_chan *uc)
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
+static int udma_start(struct udma_chan *uc)
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
+static inline void udma_stop_mem2dev(struct udma_chan *uc, bool sync)
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
+static inline void udma_stop_dev2mem(struct udma_chan *uc, bool sync)
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
+static inline int udma_stop(struct udma_chan *uc)
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
+static void udma_poll_completion(struct udma_chan *uc, dma_addr_t *paddr)
+{
+	int i = 1;
+
+	while (udma_pop_from_ring(uc, paddr)) {
+		udelay(1);
+		if (!(i % 1000000))
+			printf(".");
+		i++;
+	}
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
+static int udma_get_chan_pair(struct udma_chan *uc)
+{
+	struct udma_dev *ud = uc->ud;
+	int chan_id, end;
+
+	if ((uc->tchan && uc->rchan) && uc->tchan->id == uc->rchan->id) {
+		dev_info(ud->dev, "chan%d: already have %d pair allocated\n",
+			 uc->id, uc->tchan->id);
+		return 0;
+	}
+
+	if (uc->tchan) {
+		dev_err(ud->dev, "chan%d: already have tchan%d allocated\n",
+			uc->id, uc->tchan->id);
+		return -EBUSY;
+	} else if (uc->rchan) {
+		dev_err(ud->dev, "chan%d: already have rchan%d allocated\n",
+			uc->id, uc->rchan->id);
+		return -EBUSY;
+	}
+
+	/* Can be optimized, but let's have it like this for now */
+	end = min(ud->tchan_cnt, ud->rchan_cnt);
+	for (chan_id = 0; chan_id < end; chan_id++) {
+		if (!test_bit(chan_id, ud->tchan_map) &&
+		    !test_bit(chan_id, ud->rchan_map))
+			break;
+	}
+
+	if (chan_id == end)
+		return -ENOENT;
+
+	__set_bit(chan_id, ud->tchan_map);
+	__set_bit(chan_id, ud->rchan_map);
+	uc->tchan = &ud->tchans[chan_id];
+	uc->rchan = &ud->rchans[chan_id];
+
+	dev_dbg(ud->dev, "chan%d: got t/rchan%d pair\n", uc->id, chan_id);
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
+	dev_dbg(uc->ud->dev, "chan%d: got rflow%d\n", uc->id, uc->rflow->id);
+
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
+static void udma_free_tx_resources(struct udma_chan *uc)
+{
+	if (!uc->tchan)
+		return;
+
+	k3_nav_ringacc_ring_free(uc->tchan->t_ring);
+	k3_nav_ringacc_ring_free(uc->tchan->tc_ring);
+	uc->tchan->t_ring = NULL;
+	uc->tchan->tc_ring = NULL;
+
+	udma_put_tchan(uc);
+}
+
+static int udma_alloc_tx_resources(struct udma_chan *uc)
+{
+	struct k3_nav_ring_cfg ring_cfg;
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
+	ret = k3_nav_ringacc_request_rings_pair(ud->ringacc, ring_idx, -1,
+						&uc->tchan->t_ring,
+						&uc->tchan->tc_ring);
+	if (ret) {
+		ret = -EBUSY;
+		goto err_tx_ring;
+	}
+
+	memset(&ring_cfg, 0, sizeof(ring_cfg));
+	ring_cfg.size = 16;
+	ring_cfg.elm_size = K3_NAV_RINGACC_RING_ELSIZE_8;
+	ring_cfg.mode = K3_NAV_RINGACC_RING_MODE_RING;
+
+	ret = k3_nav_ringacc_ring_cfg(uc->tchan->t_ring, &ring_cfg);
+	ret |= k3_nav_ringacc_ring_cfg(uc->tchan->tc_ring, &ring_cfg);
+
+	if (ret)
+		goto err_ringcfg;
+
+	return 0;
+
+err_ringcfg:
+	k3_nav_ringacc_ring_free(uc->tchan->tc_ring);
+	uc->tchan->tc_ring = NULL;
+	k3_nav_ringacc_ring_free(uc->tchan->t_ring);
+	uc->tchan->t_ring = NULL;
+err_tx_ring:
+	udma_put_tchan(uc);
+
+	return ret;
+}
+
+static void udma_free_rx_resources(struct udma_chan *uc)
+{
+	if (!uc->rchan)
+		return;
+
+        if (uc->rflow) {
+		k3_nav_ringacc_ring_free(uc->rflow->fd_ring);
+		k3_nav_ringacc_ring_free(uc->rflow->r_ring);
+		uc->rflow->fd_ring = NULL;
+		uc->rflow->r_ring = NULL;
+
+		udma_put_rflow(uc);
+	}
+
+	udma_put_rchan(uc);
+}
+
+static int udma_alloc_rx_resources(struct udma_chan *uc)
+{
+	struct k3_nav_ring_cfg ring_cfg;
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
+	ret = k3_nav_ringacc_request_rings_pair(ud->ringacc, fd_ring_id, -1,
+						&rflow->fd_ring, &rflow->r_ring);
+	if (ret) {
+		ret = -EBUSY;
+		goto err_rx_ring;
+	}
+
+	memset(&ring_cfg, 0, sizeof(ring_cfg));
+	ring_cfg.size = 16;
+	ring_cfg.elm_size = K3_NAV_RINGACC_RING_ELSIZE_8;
+	ring_cfg.mode = K3_NAV_RINGACC_RING_MODE_RING;
+
+	ret = k3_nav_ringacc_ring_cfg(rflow->fd_ring, &ring_cfg);
+	ret |= k3_nav_ringacc_ring_cfg(rflow->r_ring, &ring_cfg);
+	if (ret)
+		goto err_ringcfg;
+
+	return 0;
+
+err_ringcfg:
+	k3_nav_ringacc_ring_free(rflow->r_ring);
+	rflow->r_ring = NULL;
+	k3_nav_ringacc_ring_free(rflow->fd_ring);
+	rflow->fd_ring = NULL;
+err_rx_ring:
+	udma_put_rflow(uc);
+err_rflow:
+	udma_put_rchan(uc);
+
+	return ret;
+}
+
+static int udma_alloc_tchan_sci_req(struct udma_chan *uc)
+{
+	struct udma_dev *ud = uc->ud;
+	int tc_ring = k3_nav_ringacc_get_ring_id(uc->tchan->tc_ring);
+	struct ti_sci_msg_rm_udmap_tx_ch_cfg req;
+	struct udma_tisci_rm *tisci_rm = &ud->tisci_rm;
+	u32 mode;
+	int ret;
+
+	if (uc->config.pkt_mode)
+		mode = TI_SCI_RM_UDMAP_CHAN_TYPE_PKT_PBRR;
+	else
+		mode = TI_SCI_RM_UDMAP_CHAN_TYPE_3RDP_BCOPY_PBRR;
+
+	req.valid_params = TI_SCI_MSG_VALUE_RM_UDMAP_CH_CHAN_TYPE_VALID |
+			TI_SCI_MSG_VALUE_RM_UDMAP_CH_FETCH_SIZE_VALID |
+			TI_SCI_MSG_VALUE_RM_UDMAP_CH_CQ_QNUM_VALID;
+	req.nav_id = tisci_rm->tisci_dev_id;
+	req.index = uc->tchan->id;
+	req.tx_chan_type = mode;
+	if (uc->config.dir == DMA_MEM_TO_MEM)
+		req.tx_fetch_size = sizeof(struct cppi5_desc_hdr_t) >> 2;
+	else
+		req.tx_fetch_size = cppi5_hdesc_calc_size(uc->config.needs_epib,
+							  uc->config.psd_size,
+							  0) >> 2;
+	req.txcq_qnum = tc_ring;
+
+	ret = tisci_rm->tisci_udmap_ops->tx_ch_cfg(tisci_rm->tisci, &req);
+	if (ret) {
+		dev_err(ud->dev, "tisci tx alloc failed %d\n", ret);
+		return ret;
+	}
+
+	/*
+	 * Above TI SCI call handles firewall configuration, cfg
+	 * register configuration still has to be done locally in
+	 * absence of RM services.
+	 */
+	if (IS_ENABLED(CONFIG_K3_DM_FW))
+		udma_alloc_tchan_raw(uc);
+
+	return 0;
+}
+
+static int udma_alloc_rchan_sci_req(struct udma_chan *uc)
+{
+	struct udma_dev *ud = uc->ud;
+	int fd_ring = k3_nav_ringacc_get_ring_id(uc->rflow->fd_ring);
+	int rx_ring = k3_nav_ringacc_get_ring_id(uc->rflow->r_ring);
+	int tc_ring = k3_nav_ringacc_get_ring_id(uc->tchan->tc_ring);
+	struct ti_sci_msg_rm_udmap_rx_ch_cfg req = { 0 };
+	struct ti_sci_msg_rm_udmap_flow_cfg flow_req = { 0 };
+	struct udma_tisci_rm *tisci_rm = &ud->tisci_rm;
+	u32 mode;
+	int ret;
+
+	if (uc->config.pkt_mode)
+		mode = TI_SCI_RM_UDMAP_CHAN_TYPE_PKT_PBRR;
+	else
+		mode = TI_SCI_RM_UDMAP_CHAN_TYPE_3RDP_BCOPY_PBRR;
+
+	req.valid_params = TI_SCI_MSG_VALUE_RM_UDMAP_CH_FETCH_SIZE_VALID |
+			TI_SCI_MSG_VALUE_RM_UDMAP_CH_CQ_QNUM_VALID |
+			TI_SCI_MSG_VALUE_RM_UDMAP_CH_CHAN_TYPE_VALID;
+	req.nav_id = tisci_rm->tisci_dev_id;
+	req.index = uc->rchan->id;
+	req.rx_chan_type = mode;
+	if (uc->config.dir == DMA_MEM_TO_MEM) {
+		req.rx_fetch_size = sizeof(struct cppi5_desc_hdr_t) >> 2;
+		req.rxcq_qnum = tc_ring;
+	} else {
+		req.rx_fetch_size = cppi5_hdesc_calc_size(uc->config.needs_epib,
+							  uc->config.psd_size,
+							  0) >> 2;
+		req.rxcq_qnum = rx_ring;
+	}
+	if (ud->match_data->type == DMA_TYPE_UDMA &&
+	    uc->rflow->id != uc->rchan->id &&
+	    uc->config.dir != DMA_MEM_TO_MEM) {
+		req.flowid_start = uc->rflow->id;
+		req.flowid_cnt = 1;
+		req.valid_params |= TI_SCI_MSG_VALUE_RM_UDMAP_CH_RX_FLOWID_START_VALID |
+				    TI_SCI_MSG_VALUE_RM_UDMAP_CH_RX_FLOWID_CNT_VALID;
+	}
+
+	ret = tisci_rm->tisci_udmap_ops->rx_ch_cfg(tisci_rm->tisci, &req);
+	if (ret) {
+		dev_err(ud->dev, "tisci rx %u cfg failed %d\n",
+			uc->rchan->id, ret);
+		return ret;
+	}
+	if (uc->config.dir == DMA_MEM_TO_MEM)
+		return ret;
+
+	flow_req.valid_params =
+			TI_SCI_MSG_VALUE_RM_UDMAP_FLOW_EINFO_PRESENT_VALID |
+			TI_SCI_MSG_VALUE_RM_UDMAP_FLOW_PSINFO_PRESENT_VALID |
+			TI_SCI_MSG_VALUE_RM_UDMAP_FLOW_ERROR_HANDLING_VALID |
+			TI_SCI_MSG_VALUE_RM_UDMAP_FLOW_DESC_TYPE_VALID |
+			TI_SCI_MSG_VALUE_RM_UDMAP_FLOW_DEST_QNUM_VALID |
+			TI_SCI_MSG_VALUE_RM_UDMAP_FLOW_SRC_TAG_HI_SEL_VALID |
+			TI_SCI_MSG_VALUE_RM_UDMAP_FLOW_SRC_TAG_LO_SEL_VALID |
+			TI_SCI_MSG_VALUE_RM_UDMAP_FLOW_DEST_TAG_HI_SEL_VALID |
+			TI_SCI_MSG_VALUE_RM_UDMAP_FLOW_DEST_TAG_LO_SEL_VALID |
+			TI_SCI_MSG_VALUE_RM_UDMAP_FLOW_FDQ0_SZ0_QNUM_VALID |
+			TI_SCI_MSG_VALUE_RM_UDMAP_FLOW_FDQ1_QNUM_VALID |
+			TI_SCI_MSG_VALUE_RM_UDMAP_FLOW_FDQ2_QNUM_VALID |
+			TI_SCI_MSG_VALUE_RM_UDMAP_FLOW_FDQ3_QNUM_VALID |
+			TI_SCI_MSG_VALUE_RM_UDMAP_FLOW_PS_LOCATION_VALID;
+
+	flow_req.nav_id = tisci_rm->tisci_dev_id;
+	flow_req.flow_index = uc->rflow->id;
+
+	if (uc->config.needs_epib)
+		flow_req.rx_einfo_present = 1;
+	else
+		flow_req.rx_einfo_present = 0;
+
+	if (uc->config.psd_size)
+		flow_req.rx_psinfo_present = 1;
+	else
+		flow_req.rx_psinfo_present = 0;
+
+	flow_req.rx_error_handling = 0;
+	flow_req.rx_desc_type = 0;
+	flow_req.rx_dest_qnum = rx_ring;
+	flow_req.rx_src_tag_hi_sel = 2;
+	flow_req.rx_src_tag_lo_sel = 4;
+	flow_req.rx_dest_tag_hi_sel = 5;
+	flow_req.rx_dest_tag_lo_sel = 4;
+	flow_req.rx_fdq0_sz0_qnum = fd_ring;
+	flow_req.rx_fdq1_qnum = fd_ring;
+	flow_req.rx_fdq2_qnum = fd_ring;
+	flow_req.rx_fdq3_qnum = fd_ring;
+	flow_req.rx_ps_location = 0;
+
+	ret = tisci_rm->tisci_udmap_ops->rx_flow_cfg(tisci_rm->tisci,
+						     &flow_req);
+	if (ret) {
+		dev_err(ud->dev, "tisci rx %u flow %u cfg failed %d\n",
+			uc->rchan->id, uc->rflow->id, ret);
+		return ret;
+	}
+
+	/*
+	 * Above TI SCI call handles firewall configuration, cfg
+	 * register configuration still has to be done locally in
+	 * absence of RM services.
+	 */
+	if (IS_ENABLED(CONFIG_K3_DM_FW))
+		udma_alloc_rchan_raw(uc);
+
+	return 0;
+}
+
+static int udma_alloc_chan_resources(struct udma_chan *uc)
+{
+	struct udma_dev *ud = uc->ud;
+	int ret;
+
+	dev_dbg(ud->dev, "%s: chan:%d as %s\n",
+		 __func__, uc->id, udma_get_dir_text(uc->config.dir));
+
+	switch (uc->config.dir) {
+	case DMA_MEM_TO_MEM:
+		/* Non synchronized - mem to mem type of transfer */
+		uc->config.pkt_mode = false;
+		ret = udma_get_chan_pair(uc);
+		if (ret)
+			return ret;
+
+		ret = udma_alloc_tx_resources(uc);
+		if (ret)
+			goto err_free_res;
+
+		ret = udma_alloc_rx_resources(uc);
+		if (ret)
+			goto err_free_res;
+
+		uc->config.src_thread = ud->psil_base + uc->tchan->id;
+		uc->config.dst_thread = (ud->psil_base + uc->rchan->id) | 0x8000;
+
+		ret = udma_alloc_tchan_sci_req(uc);
+		if (ret)
+			goto err_free_res;
+
+		ret = udma_alloc_rchan_sci_req(uc);
+		if (ret)
+			goto err_free_res;
+		break;
+	case DMA_MEM_TO_DEV:
+		/* Slave transfer synchronized - mem to dev (TX) trasnfer */
+		ret = udma_alloc_tx_resources(uc);
+		if (ret)
+			goto err_free_res;
+
+		uc->config.src_thread = ud->psil_base + uc->tchan->id;
+		uc->config.dst_thread = uc->config.remote_thread_id;
+		uc->config.dst_thread |= 0x8000;
+
+		ret = udma_alloc_tchan_sci_req(uc);
+		if (ret)
+			goto err_free_res;
+
+		break;
+	case DMA_DEV_TO_MEM:
+		/* Slave transfer synchronized - dev to mem (RX) trasnfer */
+		ret = udma_alloc_rx_resources(uc);
+		if (ret)
+			goto err_free_res;
+
+		uc->config.src_thread = uc->config.remote_thread_id;
+		uc->config.dst_thread = (ud->psil_base + uc->rchan->id) | 0x8000;
+
+		ret = udma_alloc_rchan_sci_req(uc);
+		if (ret)
+			goto err_free_res;
+
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	if (udma_is_chan_running(uc)) {
+		dev_warn(ud->dev, "chan%d: is running!\n", uc->id);
+		udma_stop(uc);
+		if (udma_is_chan_running(uc)) {
+			dev_err(ud->dev, "chan%d: won't stop!\n", uc->id);
+			goto err_free_res;
+		}
+	}
+
+	/* PSI-L pairing */
+	ret = udma_navss_psil_pair(ud, uc->config.src_thread, uc->config.dst_thread);
+	if (ret) {
+		dev_err(ud->dev, "k3_nav_psil_request_link fail\n");
+		goto err_free_res;
+	}
+
+	return 0;
+
+err_free_res:
+	udma_free_tx_resources(uc);
+	udma_free_rx_resources(uc);
+	uc->config.remote_thread_id = -1;
+	return ret;
+}
+
+static void udma_free_chan_resources(struct udma_chan *uc)
+{
+	/* Hard reset UDMA channel */
+	udma_stop_hard(uc);
+	udma_reset_counters(uc);
+
+	/* Release PSI-L pairing */
+	udma_navss_psil_unpair(uc->ud, uc->config.src_thread, uc->config.dst_thread);
+
+	/* Reset the rings for a new start */
+	udma_reset_rings(uc);
+	udma_free_tx_resources(uc);
+	udma_free_rx_resources(uc);
+
+	uc->config.remote_thread_id = -1;
+	uc->config.dir = DMA_MEM_TO_MEM;
+}
+
+static const char * const range_names[] = {
+	[RM_RANGE_BCHAN] = "ti,sci-rm-range-bchan",
+	[RM_RANGE_TCHAN] = "ti,sci-rm-range-tchan",
+	[RM_RANGE_RCHAN] = "ti,sci-rm-range-rchan",
+	[RM_RANGE_RFLOW] = "ti,sci-rm-range-rflow",
+	[RM_RANGE_TFLOW] = "ti,sci-rm-range-tflow",
+};
+
+static int udma_get_mmrs(struct udma_dev *ud)
+{
+	u32 cap2, cap3, cap4;
+	int i;
+
+	ud->mmrs[MMR_GCFG] = dev_request_mem_region_by_name(ud->dev, mmr_names[MMR_GCFG]);
+	if (!ud->mmrs[MMR_GCFG])
+		return -EINVAL;
+
+	cap2 = udma_read(ud->mmrs[MMR_GCFG], 0x28);
+	cap3 = udma_read(ud->mmrs[MMR_GCFG], 0x2c);
+
+	switch (ud->match_data->type) {
+	case DMA_TYPE_UDMA:
+		ud->rflow_cnt = cap3 & 0x3fff;
+		ud->tchan_cnt = cap2 & 0x1ff;
+		ud->echan_cnt = (cap2 >> 9) & 0x1ff;
+		ud->rchan_cnt = (cap2 >> 18) & 0x1ff;
+		break;
+	case DMA_TYPE_BCDMA:
+		ud->bchan_cnt = cap2 & 0x1ff;
+		ud->tchan_cnt = (cap2 >> 9) & 0x1ff;
+		ud->rchan_cnt = (cap2 >> 18) & 0x1ff;
+		break;
+	case DMA_TYPE_PKTDMA:
+		cap4 = udma_read(ud->mmrs[MMR_GCFG], 0x30);
+		ud->tchan_cnt = cap2 & 0x1ff;
+		ud->rchan_cnt = (cap2 >> 18) & 0x1ff;
+		ud->rflow_cnt = cap3 & 0x3fff;
+		ud->tflow_cnt = cap4 & 0x3fff;
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	for (i = 1; i < MMR_LAST; i++) {
+		if (i == MMR_BCHANRT && ud->bchan_cnt == 0)
+			continue;
+		if (i == MMR_TCHANRT && ud->tchan_cnt == 0)
+			continue;
+		if (i == MMR_RCHANRT && ud->rchan_cnt == 0)
+			continue;
+
+		ud->mmrs[i] = dev_request_mem_region_by_name(ud->dev, mmr_names[i]);
+		if (!ud->mmrs[i])
+			return -EINVAL;
+	}
+
+	return 0;
+}
+
+static int udma_setup_resources(struct udma_dev *ud)
+{
+	struct device *dev = ud->dev;
+	int i;
+	struct ti_sci_resource_desc *rm_desc;
+	struct ti_sci_resource *rm_res;
+	struct udma_tisci_rm *tisci_rm = &ud->tisci_rm;
+
+	ud->tchan_map = devm_kmalloc_array(dev, BITS_TO_LONGS(ud->tchan_cnt),
+					   sizeof(unsigned long), GFP_KERNEL);
+	ud->tchans = devm_kcalloc(dev, ud->tchan_cnt, sizeof(*ud->tchans),
+				  GFP_KERNEL);
+	ud->rchan_map = devm_kmalloc_array(dev, BITS_TO_LONGS(ud->rchan_cnt),
+					   sizeof(unsigned long), GFP_KERNEL);
+	ud->rchans = devm_kcalloc(dev, ud->rchan_cnt, sizeof(*ud->rchans),
+				  GFP_KERNEL);
+	ud->rflow_map = devm_kmalloc_array(dev, BITS_TO_LONGS(ud->rflow_cnt),
+					   sizeof(unsigned long), GFP_KERNEL);
+	ud->rflow_map_reserved = devm_kcalloc(dev, BITS_TO_LONGS(ud->rflow_cnt),
+					      sizeof(unsigned long),
+					      GFP_KERNEL);
+	ud->rflows = devm_kcalloc(dev, ud->rflow_cnt, sizeof(*ud->rflows),
+				  GFP_KERNEL);
+
+	if (!ud->tchan_map || !ud->rchan_map || !ud->rflow_map ||
+	    !ud->rflow_map_reserved || !ud->tchans || !ud->rchans ||
+	    !ud->rflows)
+		return -ENOMEM;
+
+	/*
+	 * RX flows with the same Ids as RX channels are reserved to be used
+	 * as default flows if remote HW can't generate flow_ids. Those
+	 * RX flows can be requested only explicitly by id.
+	 */
+	bitmap_set(ud->rflow_map_reserved, 0, ud->rchan_cnt);
+
+	/* Get resource ranges from tisci */
+	for (i = 0; i < RM_RANGE_LAST; i++) {
+		if (i == RM_RANGE_BCHAN || i == RM_RANGE_TFLOW)
+			continue;
+
+		tisci_rm->rm_ranges[i] =
+			devm_ti_sci_get_of_resource(tisci_rm->tisci, dev,
+						    tisci_rm->tisci_dev_id,
+						    (char *)range_names[i]);
+	}
+
+	/* tchan ranges */
+	rm_res = tisci_rm->rm_ranges[RM_RANGE_TCHAN];
+	if (IS_ERR(rm_res)) {
+		bitmap_zero(ud->tchan_map, ud->tchan_cnt);
+	} else {
+		bitmap_fill(ud->tchan_map, ud->tchan_cnt);
+		for (i = 0; i < rm_res->sets; i++) {
+			rm_desc = &rm_res->desc[i];
+			bitmap_clear(ud->tchan_map, rm_desc->start,
+				     rm_desc->num);
+		}
+	}
+
+	/* rchan and matching default flow ranges */
+	rm_res = tisci_rm->rm_ranges[RM_RANGE_RCHAN];
+	if (IS_ERR(rm_res)) {
+		bitmap_zero(ud->rchan_map, ud->rchan_cnt);
+		bitmap_zero(ud->rflow_map, ud->rchan_cnt);
+	} else {
+		bitmap_fill(ud->rchan_map, ud->rchan_cnt);
+		bitmap_fill(ud->rflow_map, ud->rchan_cnt);
+		for (i = 0; i < rm_res->sets; i++) {
+			rm_desc = &rm_res->desc[i];
+			bitmap_clear(ud->rchan_map, rm_desc->start,
+				     rm_desc->num);
+			bitmap_clear(ud->rflow_map, rm_desc->start,
+				     rm_desc->num);
+		}
+	}
+
+	/* GP rflow ranges */
+	rm_res = tisci_rm->rm_ranges[RM_RANGE_RFLOW];
+	if (IS_ERR(rm_res)) {
+		bitmap_clear(ud->rflow_map, ud->rchan_cnt,
+			     ud->rflow_cnt - ud->rchan_cnt);
+	} else {
+		bitmap_set(ud->rflow_map, ud->rchan_cnt,
+			   ud->rflow_cnt - ud->rchan_cnt);
+		for (i = 0; i < rm_res->sets; i++) {
+			rm_desc = &rm_res->desc[i];
+			bitmap_clear(ud->rflow_map, rm_desc->start,
+				     rm_desc->num);
+		}
+	}
+
+	return 0;
+}
+
+static int bcdma_setup_resources(struct udma_dev *ud)
+{
+	int i;
+	struct device *dev = ud->dev;
+	struct ti_sci_resource_desc *rm_desc;
+	struct ti_sci_resource *rm_res;
+	struct udma_tisci_rm *tisci_rm = &ud->tisci_rm;
+
+	ud->bchan_map = devm_kmalloc_array(dev, BITS_TO_LONGS(ud->bchan_cnt),
+					   sizeof(unsigned long), GFP_KERNEL);
+	ud->bchans = devm_kcalloc(dev, ud->bchan_cnt, sizeof(*ud->bchans),
+				  GFP_KERNEL);
+	ud->tchan_map = devm_kmalloc_array(dev, BITS_TO_LONGS(ud->tchan_cnt),
+					   sizeof(unsigned long), GFP_KERNEL);
+	ud->tchans = devm_kcalloc(dev, ud->tchan_cnt, sizeof(*ud->tchans),
+				  GFP_KERNEL);
+	ud->rchan_map = devm_kmalloc_array(dev, BITS_TO_LONGS(ud->rchan_cnt),
+					   sizeof(unsigned long), GFP_KERNEL);
+	ud->rchans = devm_kcalloc(dev, ud->rchan_cnt, sizeof(*ud->rchans),
+				  GFP_KERNEL);
+	ud->rflows = devm_kcalloc(dev, ud->rchan_cnt, sizeof(*ud->rflows),
+				  GFP_KERNEL);
+
+	if (!ud->bchan_map || !ud->tchan_map || !ud->rchan_map ||
+	    !ud->bchans || !ud->tchans || !ud->rchans ||
+	    !ud->rflows)
+		return -ENOMEM;
+
+	/* Get resource ranges from tisci */
+	for (i = 0; i < RM_RANGE_LAST; i++) {
+		if (i == RM_RANGE_RFLOW || i == RM_RANGE_TFLOW)
+			continue;
+
+		tisci_rm->rm_ranges[i] =
+			devm_ti_sci_get_of_resource(tisci_rm->tisci, dev,
+						    tisci_rm->tisci_dev_id,
+						    (char *)range_names[i]);
+	}
+
+	/* bchan ranges */
+	rm_res = tisci_rm->rm_ranges[RM_RANGE_BCHAN];
+	if (IS_ERR(rm_res)) {
+		bitmap_zero(ud->bchan_map, ud->bchan_cnt);
+	} else {
+		bitmap_fill(ud->bchan_map, ud->bchan_cnt);
+		for (i = 0; i < rm_res->sets; i++) {
+			rm_desc = &rm_res->desc[i];
+			bitmap_clear(ud->bchan_map, rm_desc->start,
+				     rm_desc->num);
+			dev_dbg(dev, "ti-sci-res: bchan: %d:%d\n",
+				rm_desc->start, rm_desc->num);
+		}
+	}
+
+	/* tchan ranges */
+	rm_res = tisci_rm->rm_ranges[RM_RANGE_TCHAN];
+	if (IS_ERR(rm_res)) {
+		bitmap_zero(ud->tchan_map, ud->tchan_cnt);
+	} else {
+		bitmap_fill(ud->tchan_map, ud->tchan_cnt);
+		for (i = 0; i < rm_res->sets; i++) {
+			rm_desc = &rm_res->desc[i];
+			bitmap_clear(ud->tchan_map, rm_desc->start,
+				     rm_desc->num);
+			dev_dbg(dev, "ti-sci-res: tchan: %d:%d\n",
+				rm_desc->start, rm_desc->num);
+		}
+	}
+
+	/* rchan ranges */
+	rm_res = tisci_rm->rm_ranges[RM_RANGE_RCHAN];
+	if (IS_ERR(rm_res)) {
+		bitmap_zero(ud->rchan_map, ud->rchan_cnt);
+	} else {
+		bitmap_fill(ud->rchan_map, ud->rchan_cnt);
+		for (i = 0; i < rm_res->sets; i++) {
+			rm_desc = &rm_res->desc[i];
+			bitmap_clear(ud->rchan_map, rm_desc->start,
+				     rm_desc->num);
+			dev_dbg(dev, "ti-sci-res: rchan: %d:%d\n",
+				rm_desc->start, rm_desc->num);
+		}
+	}
+
+	return 0;
+}
+
+static int pktdma_setup_resources(struct udma_dev *ud)
+{
+	int i;
+	struct device *dev = ud->dev;
+	struct ti_sci_resource *rm_res;
+	struct ti_sci_resource_desc *rm_desc;
+	struct udma_tisci_rm *tisci_rm = &ud->tisci_rm;
+
+	ud->tchan_map = devm_kmalloc_array(dev, BITS_TO_LONGS(ud->tchan_cnt),
+					   sizeof(unsigned long), GFP_KERNEL);
+	ud->tchans = devm_kcalloc(dev, ud->tchan_cnt, sizeof(*ud->tchans),
+				  GFP_KERNEL);
+	ud->rchan_map = devm_kmalloc_array(dev, BITS_TO_LONGS(ud->rchan_cnt),
+					   sizeof(unsigned long), GFP_KERNEL);
+	ud->rchans = devm_kcalloc(dev, ud->rchan_cnt, sizeof(*ud->rchans),
+				  GFP_KERNEL);
+	ud->rflow_map = devm_kcalloc(dev, BITS_TO_LONGS(ud->rflow_cnt),
+				     sizeof(unsigned long),
+				     GFP_KERNEL);
+	ud->rflows = devm_kcalloc(dev, ud->rflow_cnt, sizeof(*ud->rflows),
+				  GFP_KERNEL);
+	ud->tflow_map = devm_kmalloc_array(dev, BITS_TO_LONGS(ud->tflow_cnt),
+					   sizeof(unsigned long), GFP_KERNEL);
+
+	if (!ud->tchan_map || !ud->rchan_map || !ud->tflow_map || !ud->tchans ||
+	    !ud->rchans || !ud->rflows || !ud->rflow_map)
+		return -ENOMEM;
+
+	/* Get resource ranges from tisci */
+	for (i = 0; i < RM_RANGE_LAST; i++) {
+		if (i == RM_RANGE_BCHAN)
+			continue;
+
+		tisci_rm->rm_ranges[i] =
+			devm_ti_sci_get_of_resource(tisci_rm->tisci, dev,
+						    tisci_rm->tisci_dev_id,
+						    (char *)range_names[i]);
+	}
+
+	/* tchan ranges */
+	rm_res = tisci_rm->rm_ranges[RM_RANGE_TCHAN];
+	if (IS_ERR(rm_res)) {
+		bitmap_zero(ud->tchan_map, ud->tchan_cnt);
+	} else {
+		bitmap_fill(ud->tchan_map, ud->tchan_cnt);
+		for (i = 0; i < rm_res->sets; i++) {
+			rm_desc = &rm_res->desc[i];
+			bitmap_clear(ud->tchan_map, rm_desc->start,
+				     rm_desc->num);
+			dev_dbg(dev, "ti-sci-res: tchan: %d:%d\n",
+				rm_desc->start, rm_desc->num);
+		}
+	}
+
+	/* rchan ranges */
+	rm_res = tisci_rm->rm_ranges[RM_RANGE_RCHAN];
+	if (IS_ERR(rm_res)) {
+		bitmap_zero(ud->rchan_map, ud->rchan_cnt);
+	} else {
+		bitmap_fill(ud->rchan_map, ud->rchan_cnt);
+		for (i = 0; i < rm_res->sets; i++) {
+			rm_desc = &rm_res->desc[i];
+			bitmap_clear(ud->rchan_map, rm_desc->start,
+				     rm_desc->num);
+			dev_dbg(dev, "ti-sci-res: rchan: %d:%d\n",
+				rm_desc->start, rm_desc->num);
+		}
+	}
+
+	/* rflow ranges */
+	rm_res = tisci_rm->rm_ranges[RM_RANGE_RFLOW];
+	if (IS_ERR(rm_res)) {
+		/* all rflows are assigned exclusively to Linux */
+		bitmap_zero(ud->rflow_map, ud->rflow_cnt);
+	} else {
+		bitmap_fill(ud->rflow_map, ud->rflow_cnt);
+		for (i = 0; i < rm_res->sets; i++) {
+			rm_desc = &rm_res->desc[i];
+			bitmap_clear(ud->rflow_map, rm_desc->start,
+				     rm_desc->num);
+			dev_dbg(dev, "ti-sci-res: rflow: %d:%d\n",
+				rm_desc->start, rm_desc->num);
+		}
+	}
+
+	/* tflow ranges */
+	rm_res = tisci_rm->rm_ranges[RM_RANGE_TFLOW];
+	if (IS_ERR(rm_res)) {
+		/* all tflows are assigned exclusively to Linux */
+		bitmap_zero(ud->tflow_map, ud->tflow_cnt);
+	} else {
+		bitmap_fill(ud->tflow_map, ud->tflow_cnt);
+		for (i = 0; i < rm_res->sets; i++) {
+			rm_desc = &rm_res->desc[i];
+			bitmap_clear(ud->tflow_map, rm_desc->start,
+				     rm_desc->num);
+			dev_dbg(dev, "ti-sci-res: tflow: %d:%d\n",
+				rm_desc->start, rm_desc->num);
+		}
+	}
+
+	return 0;
+}
+
+static int setup_resources(struct udma_dev *ud)
+{
+	struct device *dev = ud->dev;
+	int ch_count, ret;
+
+	switch (ud->match_data->type) {
+	case DMA_TYPE_UDMA:
+		ret = udma_setup_resources(ud);
+		break;
+	case DMA_TYPE_BCDMA:
+		ret = bcdma_setup_resources(ud);
+		break;
+	case DMA_TYPE_PKTDMA:
+		ret = pktdma_setup_resources(ud);
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	if (ret)
+		return ret;
+
+	ch_count  = ud->bchan_cnt + ud->tchan_cnt + ud->rchan_cnt;
+	if (ud->bchan_cnt)
+		ch_count -= bitmap_weight(ud->bchan_map, ud->bchan_cnt);
+	ch_count -= bitmap_weight(ud->tchan_map, ud->tchan_cnt);
+	ch_count -= bitmap_weight(ud->rchan_map, ud->rchan_cnt);
+	if (!ch_count)
+		return -ENODEV;
+
+	ud->channels = devm_kcalloc(dev, ch_count, sizeof(*ud->channels),
+				    GFP_KERNEL);
+	if (!ud->channels)
+		return -ENOMEM;
+
+	switch (ud->match_data->type) {
+	case DMA_TYPE_UDMA:
+		dev_dbg(dev,
+			"Channels: %d (tchan: %u, rchan: %u, gp-rflow: %u)\n",
+			ch_count,
+			ud->tchan_cnt - bitmap_weight(ud->tchan_map,
+						      ud->tchan_cnt),
+			ud->rchan_cnt - bitmap_weight(ud->rchan_map,
+						      ud->rchan_cnt),
+			ud->rflow_cnt - bitmap_weight(ud->rflow_map,
+						      ud->rflow_cnt));
+		break;
+	case DMA_TYPE_BCDMA:
+		dev_dbg(dev,
+			"Channels: %d (bchan: %u, tchan: %u, rchan: %u)\n",
+			ch_count,
+			ud->bchan_cnt - bitmap_weight(ud->bchan_map,
+						      ud->bchan_cnt),
+			ud->tchan_cnt - bitmap_weight(ud->tchan_map,
+						      ud->tchan_cnt),
+			ud->rchan_cnt - bitmap_weight(ud->rchan_map,
+						      ud->rchan_cnt));
+		break;
+	case DMA_TYPE_PKTDMA:
+		dev_dbg(dev,
+			"Channels: %d (tchan: %u, rchan: %u)\n",
+			ch_count,
+			ud->tchan_cnt - bitmap_weight(ud->tchan_map,
+						      ud->tchan_cnt),
+			ud->rchan_cnt - bitmap_weight(ud->rchan_map,
+						      ud->rchan_cnt));
+		break;
+	default:
+		break;
+	}
+
+	return ch_count;
+}
+
+static int udma_push_to_ring(struct k3_nav_ring *ring, void *elem)
+{
+	u64 addr = 0;
+
+	memcpy(&addr, &elem, sizeof(elem));
+	return k3_nav_ringacc_ring_push(ring, &addr);
+}
+
+static int *udma_prep_dma_memcpy(struct udma_chan *uc, dma_addr_t dest,
+				 dma_addr_t src, size_t len)
+{
+	u32 tc_ring_id = k3_nav_ringacc_get_ring_id(uc->tchan->tc_ring);
+	struct cppi5_tr_type15_t *tr_req;
+	int num_tr;
+	size_t tr_size = sizeof(struct cppi5_tr_type15_t);
+	u16 tr0_cnt0, tr0_cnt1, tr1_cnt0;
+	dma_addr_t dummy;
+	void *tr_desc;
+	size_t desc_size;
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
+	tr_desc = dma_alloc_coherent(DMA_DEVICE_BROKEN, desc_size, &dummy);
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
+#define TISCI_BCDMA_BCHAN_VALID_PARAMS (			\
+	TI_SCI_MSG_VALUE_RM_UDMAP_CH_PAUSE_ON_ERR_VALID |	\
+	TI_SCI_MSG_VALUE_RM_UDMAP_CH_EXTENDED_CH_TYPE_VALID)
+
+#define TISCI_BCDMA_TCHAN_VALID_PARAMS (			\
+	TI_SCI_MSG_VALUE_RM_UDMAP_CH_PAUSE_ON_ERR_VALID |	\
+	TI_SCI_MSG_VALUE_RM_UDMAP_CH_TX_SUPR_TDPKT_VALID)
+
+#define TISCI_BCDMA_RCHAN_VALID_PARAMS (			\
+	TI_SCI_MSG_VALUE_RM_UDMAP_CH_PAUSE_ON_ERR_VALID)
+
+#define TISCI_UDMA_TCHAN_VALID_PARAMS (				\
+	TI_SCI_MSG_VALUE_RM_UDMAP_CH_PAUSE_ON_ERR_VALID |	\
+	TI_SCI_MSG_VALUE_RM_UDMAP_CH_TX_FILT_EINFO_VALID |	\
+	TI_SCI_MSG_VALUE_RM_UDMAP_CH_TX_FILT_PSWORDS_VALID |	\
+	TI_SCI_MSG_VALUE_RM_UDMAP_CH_CHAN_TYPE_VALID |		\
+	TI_SCI_MSG_VALUE_RM_UDMAP_CH_TX_SUPR_TDPKT_VALID |	\
+	TI_SCI_MSG_VALUE_RM_UDMAP_CH_FETCH_SIZE_VALID |		\
+	TI_SCI_MSG_VALUE_RM_UDMAP_CH_CQ_QNUM_VALID |		\
+	TI_SCI_MSG_VALUE_RM_UDMAP_CH_ATYPE_VALID)
+
+#define TISCI_UDMA_RCHAN_VALID_PARAMS (				\
+	TI_SCI_MSG_VALUE_RM_UDMAP_CH_PAUSE_ON_ERR_VALID |	\
+	TI_SCI_MSG_VALUE_RM_UDMAP_CH_FETCH_SIZE_VALID |		\
+	TI_SCI_MSG_VALUE_RM_UDMAP_CH_CQ_QNUM_VALID |		\
+	TI_SCI_MSG_VALUE_RM_UDMAP_CH_CHAN_TYPE_VALID |		\
+	TI_SCI_MSG_VALUE_RM_UDMAP_CH_RX_IGNORE_SHORT_VALID |	\
+	TI_SCI_MSG_VALUE_RM_UDMAP_CH_RX_IGNORE_LONG_VALID |	\
+	TI_SCI_MSG_VALUE_RM_UDMAP_CH_RX_FLOWID_START_VALID |	\
+	TI_SCI_MSG_VALUE_RM_UDMAP_CH_RX_FLOWID_CNT_VALID |	\
+	TI_SCI_MSG_VALUE_RM_UDMAP_CH_ATYPE_VALID)
+
+static int bcdma_tisci_m2m_channel_config(struct udma_chan *uc)
+{
+	struct udma_dev *ud = uc->ud;
+	struct udma_tisci_rm *tisci_rm = &ud->tisci_rm;
+	const struct ti_sci_rm_udmap_ops *tisci_ops = tisci_rm->tisci_udmap_ops;
+	struct ti_sci_msg_rm_udmap_tx_ch_cfg req_tx = { 0 };
+	struct udma_bchan *bchan = uc->bchan;
+	int ret = 0;
+
+	req_tx.valid_params = TISCI_BCDMA_BCHAN_VALID_PARAMS;
+	req_tx.nav_id = tisci_rm->tisci_dev_id;
+	req_tx.extended_ch_type = TI_SCI_RM_BCDMA_EXTENDED_CH_TYPE_BCHAN;
+	req_tx.index = bchan->id;
+
+	ret = tisci_ops->tx_ch_cfg(tisci_rm->tisci, &req_tx);
+	if (ret)
+		dev_err(ud->dev, "bchan%d cfg failed %d\n", bchan->id, ret);
+
+	return ret;
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
+static void bcdma_free_bchan_resources(struct udma_chan *uc)
+{
+	if (!uc->bchan)
+		return;
+
+	k3_nav_ringacc_ring_free(uc->bchan->tc_ring);
+	k3_nav_ringacc_ring_free(uc->bchan->t_ring);
+	uc->bchan->tc_ring = NULL;
+	uc->bchan->t_ring = NULL;
+
+	bcdma_put_bchan(uc);
+}
+
+static int bcdma_alloc_bchan_resources(struct udma_chan *uc)
+{
+	struct k3_nav_ring_cfg ring_cfg;
+	struct udma_dev *ud = uc->ud;
+	int ret;
+
+	ret = bcdma_get_bchan(uc);
+	if (ret)
+		return ret;
+
+	ret = k3_nav_ringacc_request_rings_pair(ud->ringacc, uc->bchan->id, -1,
+						&uc->bchan->t_ring,
+						&uc->bchan->tc_ring);
+	if (ret) {
+		ret = -EBUSY;
+		goto err_ring;
+	}
+
+	memset(&ring_cfg, 0, sizeof(ring_cfg));
+	ring_cfg.size = 16;
+	ring_cfg.elm_size = K3_NAV_RINGACC_RING_ELSIZE_8;
+	ring_cfg.mode = K3_NAV_RINGACC_RING_MODE_RING;
+
+	ret = k3_nav_ringacc_ring_cfg(uc->bchan->t_ring, &ring_cfg);
+	if (ret)
+		goto err_ringcfg;
+
+	return 0;
+
+err_ringcfg:
+	k3_nav_ringacc_ring_free(uc->bchan->tc_ring);
+	uc->bchan->tc_ring = NULL;
+	k3_nav_ringacc_ring_free(uc->bchan->t_ring);
+	uc->bchan->t_ring = NULL;
+err_ring:
+	bcdma_put_bchan(uc);
+
+	return ret;
+}
+
+static int bcdma_tisci_tx_channel_config(struct udma_chan *uc)
+{
+	struct udma_dev *ud = uc->ud;
+	struct udma_tisci_rm *tisci_rm = &ud->tisci_rm;
+	const struct ti_sci_rm_udmap_ops *tisci_ops = tisci_rm->tisci_udmap_ops;
+	struct udma_tchan *tchan = uc->tchan;
+	struct ti_sci_msg_rm_udmap_tx_ch_cfg req_tx = { 0 };
+	int ret = 0;
+
+	req_tx.valid_params = TISCI_BCDMA_TCHAN_VALID_PARAMS;
+	req_tx.nav_id = tisci_rm->tisci_dev_id;
+	req_tx.index = tchan->id;
+	req_tx.tx_supr_tdpkt = uc->config.notdpkt;
+	if (uc->config.ep_type == PSIL_EP_PDMA_XY &&
+	    ud->match_data->flags & UDMA_FLAG_TDTYPE) {
+		/* wait for peer to complete the teardown for PDMAs */
+		req_tx.valid_params |=
+				TI_SCI_MSG_VALUE_RM_UDMAP_CH_TX_TDTYPE_VALID;
+		req_tx.tx_tdtype = 1;
+	}
+
+	ret = tisci_ops->tx_ch_cfg(tisci_rm->tisci, &req_tx);
+	if (ret)
+		dev_err(ud->dev, "tchan%d cfg failed %d\n", tchan->id, ret);
+
+	if (IS_ENABLED(CONFIG_K3_DM_FW))
+		udma_alloc_tchan_raw(uc);
+
+	return ret;
+}
+
+#define pktdma_tisci_tx_channel_config bcdma_tisci_tx_channel_config
+
+static int pktdma_tisci_rx_channel_config(struct udma_chan *uc)
+{
+	struct udma_dev *ud = uc->ud;
+	struct udma_tisci_rm *tisci_rm = &ud->tisci_rm;
+	const struct ti_sci_rm_udmap_ops *tisci_ops = tisci_rm->tisci_udmap_ops;
+	struct ti_sci_msg_rm_udmap_rx_ch_cfg req_rx = { 0 };
+	struct ti_sci_msg_rm_udmap_flow_cfg flow_req = { 0 };
+	int ret = 0;
+
+	req_rx.valid_params = TISCI_BCDMA_RCHAN_VALID_PARAMS;
+	req_rx.nav_id = tisci_rm->tisci_dev_id;
+	req_rx.index = uc->rchan->id;
+
+	ret = tisci_ops->rx_ch_cfg(tisci_rm->tisci, &req_rx);
+	if (ret) {
+		dev_err(ud->dev, "rchan%d cfg failed %d\n", uc->rchan->id, ret);
+		return ret;
+	}
+
+	flow_req.valid_params =
+		TI_SCI_MSG_VALUE_RM_UDMAP_FLOW_EINFO_PRESENT_VALID |
+		TI_SCI_MSG_VALUE_RM_UDMAP_FLOW_PSINFO_PRESENT_VALID |
+		TI_SCI_MSG_VALUE_RM_UDMAP_FLOW_ERROR_HANDLING_VALID;
+
+	flow_req.nav_id = tisci_rm->tisci_dev_id;
+	flow_req.flow_index = uc->rflow->id;
+
+	if (uc->config.needs_epib)
+		flow_req.rx_einfo_present = 1;
+	else
+		flow_req.rx_einfo_present = 0;
+	if (uc->config.psd_size)
+		flow_req.rx_psinfo_present = 1;
+	else
+		flow_req.rx_psinfo_present = 0;
+	flow_req.rx_error_handling = 0;
+
+	ret = tisci_ops->rx_flow_cfg(tisci_rm->tisci, &flow_req);
+
+	if (ret)
+		dev_err(ud->dev, "flow%d config failed: %d\n", uc->rflow->id,
+			ret);
+
+	if (IS_ENABLED(CONFIG_K3_DM_FW))
+		udma_alloc_rchan_raw(uc);
+
+	return ret;
+}
+
+static int bcdma_alloc_chan_resources(struct udma_chan *uc)
+{
+	int ret;
+
+	uc->config.pkt_mode = false;
+
+	switch (uc->config.dir) {
+	case DMA_MEM_TO_MEM:
+		/* Non synchronized - mem to mem type of transfer */
+		dev_dbg(uc->ud->dev, "%s: chan%d as MEM-to-MEM\n", __func__,
+			uc->id);
+
+		ret = bcdma_alloc_bchan_resources(uc);
+		if (ret)
+			return ret;
+
+		ret = bcdma_tisci_m2m_channel_config(uc);
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	/* check if the channel configuration was successful */
+	if (ret)
+		goto err_res_free;
+
+	if (udma_is_chan_running(uc)) {
+		dev_warn(uc->ud->dev, "chan%d: is running!\n", uc->id);
+		udma_stop(uc);
+		if (udma_is_chan_running(uc)) {
+			dev_err(uc->ud->dev, "chan%d: won't stop!\n", uc->id);
+			goto err_res_free;
+		}
+	}
+
+	udma_reset_rings(uc);
+
+	return 0;
+
+err_res_free:
+	bcdma_free_bchan_resources(uc);
+	udma_free_tx_resources(uc);
+	udma_free_rx_resources(uc);
+
+	udma_reset_uchan(uc);
+
+	return ret;
+}
+
+static int pktdma_alloc_chan_resources(struct udma_chan *uc)
+{
+	struct udma_dev *ud = uc->ud;
+	int ret;
+
+	switch (uc->config.dir) {
+	case DMA_MEM_TO_DEV:
+		/* Slave transfer synchronized - mem to dev (TX) trasnfer */
+		dev_dbg(ud->dev, "%s: chan%d as MEM-to-DEV\n", __func__,
+			uc->id);
+
+		ret = udma_alloc_tx_resources(uc);
+		if (ret) {
+			uc->config.remote_thread_id = -1;
+			return ret;
+		}
+
+		uc->config.src_thread = ud->psil_base + uc->tchan->id;
+		uc->config.dst_thread = uc->config.remote_thread_id;
+		uc->config.dst_thread |= K3_PSIL_DST_THREAD_ID_OFFSET;
+
+		ret = pktdma_tisci_tx_channel_config(uc);
+		break;
+	case DMA_DEV_TO_MEM:
+		/* Slave transfer synchronized - dev to mem (RX) trasnfer */
+		dev_dbg(ud->dev, "%s: chan%d as DEV-to-MEM\n", __func__,
+			uc->id);
+
+		ret = udma_alloc_rx_resources(uc);
+		if (ret) {
+			uc->config.remote_thread_id = -1;
+			return ret;
+		}
+
+		uc->config.src_thread = uc->config.remote_thread_id;
+		uc->config.dst_thread = (ud->psil_base + uc->rchan->id) |
+					K3_PSIL_DST_THREAD_ID_OFFSET;
+
+		ret = pktdma_tisci_rx_channel_config(uc);
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	/* check if the channel configuration was successful */
+	if (ret)
+		goto err_res_free;
+
+	/* PSI-L pairing */
+	ret = udma_navss_psil_pair(ud, uc->config.src_thread, uc->config.dst_thread);
+	if (ret) {
+		dev_err(ud->dev, "PSI-L pairing failed: 0x%04x -> 0x%04x\n",
+			uc->config.src_thread, uc->config.dst_thread);
+		goto err_res_free;
+	}
+
+	if (udma_is_chan_running(uc)) {
+		dev_warn(ud->dev, "chan%d: is running!\n", uc->id);
+		udma_stop(uc);
+		if (udma_is_chan_running(uc)) {
+			dev_err(ud->dev, "chan%d: won't stop!\n", uc->id);
+			goto err_res_free;
+		}
+	}
+
+	udma_reset_rings(uc);
+
+	if (uc->tchan)
+		dev_dbg(ud->dev,
+			"chan%d: tchan%d, tflow%d, Remote thread: 0x%04x\n",
+			uc->id, uc->tchan->id, uc->tchan->tflow_id,
+			uc->config.remote_thread_id);
+	else if (uc->rchan)
+		dev_dbg(ud->dev,
+			"chan%d: rchan%d, rflow%d, Remote thread: 0x%04x\n",
+			uc->id, uc->rchan->id, uc->rflow->id,
+			uc->config.remote_thread_id);
+	return 0;
+
+err_res_free:
+	udma_free_tx_resources(uc);
+	udma_free_rx_resources(uc);
+
+	udma_reset_uchan(uc);
+
+	return ret;
+}
+
+static int udma_transfer(struct device *dev, int direction,
+			 dma_addr_t dst, dma_addr_t src, size_t len)
+{
+	struct udma_dev *ud = dev_get_priv(dev);
+	/* Channel0 is reserved for memcpy */
+	struct udma_chan *uc = &ud->channels[0];
+	dma_addr_t paddr = 0;
+
+	udma_prep_dma_memcpy(uc, dst, src, len);
+	udma_start(uc);
+	udma_poll_completion(uc, &paddr);
+	udma_stop(uc);
+
+	return 0;
+}
+
+static int udma_request(struct dma *dma)
+{
+	struct udma_dev *ud = dev_get_priv(dma->dev);
+	struct udma_chan_config *ucc;
+	struct udma_chan *uc;
+	dma_addr_t dummy;
+	int ret;
+
+	if (dma->id >= (ud->rchan_cnt + ud->tchan_cnt)) {
+		dev_err(dma->dev, "invalid dma ch_id %lu\n", dma->id);
+		return -EINVAL;
+	}
+
+	uc = &ud->channels[dma->id];
+	ucc = &uc->config;
+	switch (ud->match_data->type) {
+	case DMA_TYPE_UDMA:
+		ret = udma_alloc_chan_resources(uc);
+		break;
+	case DMA_TYPE_BCDMA:
+		ret = bcdma_alloc_chan_resources(uc);
+		break;
+	case DMA_TYPE_PKTDMA:
+		ret = pktdma_alloc_chan_resources(uc);
+		break;
+	default:
+		return -EINVAL;
+	}
+	if (ret) {
+		dev_err(dma->dev, "alloc dma res failed %d\n", ret);
+		return -EINVAL;
+	}
+
+	if (uc->config.dir == DMA_MEM_TO_DEV) {
+		uc->desc_tx = dma_alloc_coherent(DMA_DEVICE_BROKEN, ucc->hdesc_size, &dummy);
+	} else {
+		uc->desc_rx = dma_alloc_coherent(DMA_DEVICE_BROKEN,
+				ucc->hdesc_size * UDMA_RX_DESC_NUM, &dummy);
+	}
+
+	uc->in_use = true;
+	uc->desc_rx_cur = 0;
+	uc->num_rx_bufs = 0;
+
+	if (uc->config.dir == DMA_DEV_TO_MEM) {
+		uc->cfg_data.flow_id_base = uc->rflow->id;
+		uc->cfg_data.flow_id_cnt = 1;
+	}
+
+	return 0;
+}
+
+static int udma_rfree(struct dma *dma)
+{
+	struct udma_dev *ud = dev_get_priv(dma->dev);
+	struct udma_chan *uc;
+
+	if (dma->id >= (ud->rchan_cnt + ud->tchan_cnt)) {
+		dev_err(dma->dev, "invalid dma ch_id %lu\n", dma->id);
+		return -EINVAL;
+	}
+	uc = &ud->channels[dma->id];
+
+	if (udma_is_chan_running(uc))
+		udma_stop(uc);
+
+	udma_navss_psil_unpair(ud, uc->config.src_thread,
+			       uc->config.dst_thread);
+
+	bcdma_free_bchan_resources(uc);
+	udma_free_tx_resources(uc);
+	udma_free_rx_resources(uc);
+	udma_reset_uchan(uc);
+
+	uc->in_use = false;
+
+	return 0;
+}
+
+static int udma_enable(struct dma *dma)
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
+static int udma_disable(struct dma *dma)
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
+static int udma_send(struct dma *dma, dma_addr_t src, size_t len, void *metadata)
+{
+	struct udma_dev *ud = dev_get_priv(dma->dev);
+	struct cppi5_host_desc_t *desc_tx;
+	struct ti_udma_drv_packet_data packet_data = { 0 };
+	dma_addr_t paddr;
+	struct udma_chan *uc;
+	u32 tc_ring_id;
+	int ret;
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
+	if (uc->config.dir != DMA_MEM_TO_DEV)
+		return -EINVAL;
+
+	tc_ring_id = k3_nav_ringacc_get_ring_id(uc->tchan->tc_ring);
+
+	desc_tx = uc->desc_tx;
+
+	cppi5_hdesc_reset_hbdesc(desc_tx);
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
+	udma_poll_completion(uc, &paddr);
+
+	return 0;
+}
+
+static int udma_receive(struct dma *dma, dma_addr_t *dst, void *metadata)
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
+	ret = k3_nav_ringacc_ring_pop(uc->rflow->r_ring, &desc_rx);
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
+	*dst = buf_dma;
+	uc->num_rx_bufs--;
+
+	return pkt_len;
+}
+
+static int udma_of_xlate(struct dma *dma, struct of_phandle_args *args)
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
+static int udma_prepare_rcv_buf(struct dma *dma, dma_addr_t dst, size_t size)
+{
+	struct udma_dev *ud = dev_get_priv(dma->dev);
+	struct cppi5_host_desc_t *desc_rx;
+	struct udma_chan *uc;
+	u32 desc_num;
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
+	desc_num = uc->desc_rx_cur % UDMA_RX_DESC_NUM;
+	desc_rx = uc->desc_rx + (desc_num * uc->config.hdesc_size);
+
+	cppi5_hdesc_reset_hbdesc(desc_rx);
+
+	cppi5_hdesc_init(desc_rx,
+			 uc->config.needs_epib ? CPPI5_INFO0_HDESC_EPIB_PRESENT : 0,
+			 uc->config.psd_size);
+	cppi5_hdesc_set_pktlen(desc_rx, size);
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
+static int udma_get_cfg(struct dma *dma, u32 id, void **data)
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
+
+static const struct dma_ops udma_ops = {
+	.transfer	= udma_transfer,
+	.of_xlate	= udma_of_xlate,
+	.request	= udma_request,
+	.rfree		= udma_rfree,
+	.enable		= udma_enable,
+	.disable	= udma_disable,
+	.send		= udma_send,
+	.receive	= udma_receive,
+	.prepare_rcv_buf = udma_prepare_rcv_buf,
+	.get_cfg	= udma_get_cfg,
+};
+
+static int k3_udma_probe(struct device *dev)
+{
+	struct udma_dev *ud;
+	int i, ret;
+	struct udma_tisci_rm *tisci_rm;
+	struct udma_chan *uc;
+	const struct udma_match_data *match_data;
+	struct device_node *np = dev->of_node;
+	struct dma_device *dmad;
+
+	match_data = device_get_match_data(dev);
+
+	ud = xzalloc(sizeof(*ud));
+	ud->match_data = match_data;
+	ud->dev = dev;
+	tisci_rm = &ud->tisci_rm;
+
+	dev->priv = ud;
+
+	ret = udma_get_mmrs(ud);
+	if (ret)
+		return ret;
+
+	ud->psil_base = match_data->psil_base;
+
+	tisci_rm->tisci = ti_sci_get_by_phandle(dev, "ti,sci");
+	if (IS_ERR(tisci_rm->tisci))
+		return dev_err_probe(dev, PTR_ERR(tisci_rm->tisci), "Can't get tisci\n");
+
+	tisci_rm->tisci_dev_id = -1;
+	ret = of_property_read_u32(np, "ti,sci-dev-id", &tisci_rm->tisci_dev_id);
+	if (ret) {
+		dev_err(dev, "ti,sci-dev-id read failure %d\n", ret);
+		return ret;
+	}
+
+	tisci_rm->tisci_navss_dev_id = -1;
+	ret = of_property_read_u32(np->parent, "ti,sci-dev-id",
+			      &tisci_rm->tisci_navss_dev_id);
+	if (ret) {
+		dev_err(dev, "navss sci-dev-id read failure %d\n", ret);
+		return ret;
+	}
+
+	tisci_rm->tisci_udmap_ops = &tisci_rm->tisci->ops.rm_udmap_ops;
+	tisci_rm->tisci_psil_ops = &tisci_rm->tisci->ops.rm_psil_ops;
+
+	if (ud->match_data->type == DMA_TYPE_UDMA) {
+		ud->ringacc = k3_navss_ringacc_get_by_phandle(dev, "ti,ringacc");
+	} else {
+		struct k3_ringacc_init_data ring_init_data;
+
+		ring_init_data.tisci = ud->tisci_rm.tisci;
+		ring_init_data.tisci_dev_id = ud->tisci_rm.tisci_dev_id;
+		if (ud->match_data->type == DMA_TYPE_BCDMA) {
+			ring_init_data.num_rings = ud->bchan_cnt +
+						   ud->tchan_cnt +
+						   ud->rchan_cnt;
+		} else {
+			ring_init_data.num_rings = ud->rflow_cnt +
+						   ud->tflow_cnt;
+		}
+
+		ud->ringacc = k3_ringacc_dmarings_init(dev, &ring_init_data);
+	}
+	if (IS_ERR(ud->ringacc))
+		return PTR_ERR(ud->ringacc);
+
+	ret = setup_resources(ud);
+	if (ret < 0)
+		return ret;
+
+	ud->ch_count = ret;
+
+	for (i = 0; i < ud->bchan_cnt; i++) {
+		struct udma_bchan *bchan = &ud->bchans[i];
+
+		bchan->id = i;
+		bchan->reg_rt = ud->mmrs[MMR_BCHANRT] + i * 0x1000;
+	}
+
+	for (i = 0; i < ud->tchan_cnt; i++) {
+		struct udma_tchan *tchan = &ud->tchans[i];
+
+		tchan->id = i;
+		tchan->reg_chan = ud->mmrs[MMR_TCHAN] + UDMA_CH_100(i);
+		tchan->reg_rt = ud->mmrs[MMR_TCHANRT] + UDMA_CH_1000(i);
+	}
+
+	for (i = 0; i < ud->rchan_cnt; i++) {
+		struct udma_rchan *rchan = &ud->rchans[i];
+
+		rchan->id = i;
+		rchan->reg_chan = ud->mmrs[MMR_RCHAN] + UDMA_CH_100(i);
+		rchan->reg_rt = ud->mmrs[MMR_RCHANRT] + UDMA_CH_1000(i);
+	}
+
+	for (i = 0; i < ud->rflow_cnt; i++) {
+		struct udma_rflow *rflow = &ud->rflows[i];
+
+		rflow->id = i;
+		rflow->reg_rflow = ud->mmrs[MMR_RFLOW] + UDMA_CH_40(i);
+	}
+
+	for (i = 0; i < ud->ch_count; i++) {
+		struct udma_chan *uc = &ud->channels[i];
+
+		uc->ud = ud;
+		uc->id = i;
+		uc->config.remote_thread_id = -1;
+		uc->bchan = NULL;
+		uc->tchan = NULL;
+		uc->rchan = NULL;
+		uc->config.mapped_channel_id = -1;
+		uc->config.default_flow_id = -1;
+		uc->config.dir = DMA_MEM_TO_MEM;
+		sprintf(uc->name, "UDMA chan%d\n", i);
+		if (!i)
+			uc->in_use = true;
+	}
+
+	dev_dbg(dev, "(rev: 0x%08x) CAP0-3: 0x%08x, 0x%08x, 0x%08x, 0x%08x\n",
+		 udma_read(ud->mmrs[MMR_GCFG], 0),
+		 udma_read(ud->mmrs[MMR_GCFG], 0x20),
+		 udma_read(ud->mmrs[MMR_GCFG], 0x24),
+		 udma_read(ud->mmrs[MMR_GCFG], 0x28),
+		 udma_read(ud->mmrs[MMR_GCFG], 0x2c));
+
+	uc = &ud->channels[0];
+	ret = 0;
+	switch (ud->match_data->type) {
+	case DMA_TYPE_UDMA:
+		ret = udma_alloc_chan_resources(uc);
+		break;
+	case DMA_TYPE_BCDMA:
+		ret = bcdma_alloc_chan_resources(uc);
+		break;
+	default:
+		break; /* Do nothing in any other case */
+	};
+
+	if (ret)
+		dev_err(dev, " Channel 0 allocation failure %d\n", ret);
+
+	dmad = &ud->dmad;
+
+	dmad->dev = dev;
+	dmad->ops = &udma_ops;
+
+	ret = dma_device_register(dmad);
+
+	return ret;
+}
+
+static void udma_remove(struct device *dev)
+{
+	struct udma_dev *ud = dev_get_priv(dev);
+	struct udma_chan *uc = &ud->channels[0];
+
+	switch (ud->match_data->type) {
+	case DMA_TYPE_UDMA:
+		udma_free_chan_resources(uc);
+		break;
+	case DMA_TYPE_BCDMA:
+		bcdma_free_bchan_resources(uc);
+		break;
+	default:
+		break;
+	};
+}
+
+static struct udma_match_data am654_main_data = {
+	.type = DMA_TYPE_UDMA,
+	.psil_base = 0x1000,
+	.enable_memcpy_support = true,
+	.statictr_z_mask = GENMASK(11, 0),
+	.oes = {
+		.udma_rchan = 0x200,
+	},
+	.tpl_levels = 2,
+	.level_start_idx = {
+		[0] = 8, /* Normal channels */
+		[1] = 0, /* High Throughput channels */
+	},
+};
+
+static struct udma_match_data am654_mcu_data = {
+	.type = DMA_TYPE_UDMA,
+	.psil_base = 0x6000,
+	.enable_memcpy_support = true,
+	.statictr_z_mask = GENMASK(11, 0),
+	.oes = {
+		.udma_rchan = 0x200,
+	},
+	.tpl_levels = 2,
+	.level_start_idx = {
+		[0] = 2, /* Normal channels */
+		[1] = 0, /* High Throughput channels */
+	},
+};
+
+static struct udma_match_data j721e_main_data = {
+	.type = DMA_TYPE_UDMA,
+	.psil_base = 0x1000,
+	.enable_memcpy_support = true,
+	.flags = UDMA_FLAG_PDMA_ACC32 | UDMA_FLAG_PDMA_BURST | UDMA_FLAG_TDTYPE,
+	.statictr_z_mask = GENMASK(23, 0),
+	.oes = {
+		.udma_rchan = 0x400,
+	},
+	.tpl_levels = 3,
+	.level_start_idx = {
+		[0] = 16, /* Normal channels */
+		[1] = 4, /* High Throughput channels */
+		[2] = 0, /* Ultra High Throughput channels */
+	},
+};
+
+static struct udma_match_data j721e_mcu_data = {
+	.type = DMA_TYPE_UDMA,
+	.psil_base = 0x6000,
+	.enable_memcpy_support = true,
+	.flags = UDMA_FLAG_PDMA_ACC32 | UDMA_FLAG_PDMA_BURST | UDMA_FLAG_TDTYPE,
+	.statictr_z_mask = GENMASK(23, 0),
+	.oes = {
+		.udma_rchan = 0x400,
+	},
+	.tpl_levels = 2,
+	.level_start_idx = {
+		[0] = 2, /* Normal channels */
+		[1] = 0, /* High Throughput channels */
+	},
+};
+
+static struct udma_match_data am64_bcdma_data = {
+	.type = DMA_TYPE_BCDMA,
+	.psil_base = 0x2000, /* for tchan and rchan, not applicable to bchan */
+	.enable_memcpy_support = true, /* Supported via bchan */
+	.flags = UDMA_FLAG_PDMA_ACC32 | UDMA_FLAG_PDMA_BURST | UDMA_FLAG_TDTYPE,
+	.statictr_z_mask = GENMASK(23, 0),
+	.oes = {
+		.bcdma_bchan_data = 0x2200,
+		.bcdma_bchan_ring = 0x2400,
+		.bcdma_tchan_data = 0x2800,
+		.bcdma_tchan_ring = 0x2a00,
+		.bcdma_rchan_data = 0x2e00,
+		.bcdma_rchan_ring = 0x3000,
+	},
+	/* No throughput levels */
+};
+
+static struct udma_match_data am64_pktdma_data = {
+	.type = DMA_TYPE_PKTDMA,
+	.psil_base = 0x1000,
+	.enable_memcpy_support = false,
+	.flags = UDMA_FLAG_PDMA_ACC32 | UDMA_FLAG_PDMA_BURST | UDMA_FLAG_TDTYPE,
+	.statictr_z_mask = GENMASK(23, 0),
+	.oes = {
+		.pktdma_tchan_flow = 0x1200,
+		.pktdma_rchan_flow = 0x1600,
+	},
+	/* No throughput levels */
+};
+
+static struct of_device_id k3_udma_dt_ids[] = {
+	{
+		.compatible = "ti,am654-navss-main-udmap",
+		.data = &am654_main_data,
+	}, {
+		.compatible = "ti,am654-navss-mcu-udmap",
+		.data = &am654_mcu_data,
+	}, {
+		.compatible = "ti,j721e-navss-main-udmap",
+		.data = &j721e_main_data,
+	}, {
+		.compatible = "ti,j721e-navss-mcu-udmap",
+		.data = &j721e_mcu_data,
+	}, {
+		.compatible = "ti,am64-dmss-bcdma",
+		.data = &am64_bcdma_data,
+	}, {
+		.compatible = "ti,am64-dmss-pktdma",
+		.data = &am64_pktdma_data,
+	}, {
+		/* Sentinel */
+	},
+};
+
+static struct driver k3_udma_driver = {
+	.probe  = k3_udma_probe,
+	.remove = udma_remove,
+	.name   = "k3-udma",
+	.of_compatible = k3_udma_dt_ids,
+};
+
+core_platform_driver(k3_udma_driver);
diff --git a/include/soc/ti/cppi5.h b/include/soc/ti/cppi5.h
new file mode 100644
index 0000000000..34e118fff2
--- /dev/null
+++ b/include/soc/ti/cppi5.h
@@ -0,0 +1,996 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * CPPI5 descriptors interface
+ *
+ * Copyright (C) 2018 Texas Instruments Incorporated - https://www.ti.com
+ */
+
+#ifndef __TI_CPPI5_H__
+#define __TI_CPPI5_H__
+
+#include <linux/bitops.h>
+#include <linux/bug.h>
+#include <linux/printk.h>
+
+/**
+ * Descriptor header, present in all types of descriptors
+ */
+struct cppi5_desc_hdr_t {
+	u32 pkt_info0;	/* Packet info word 0 (n/a in Buffer desc) */
+	u32 pkt_info1;	/* Packet info word 1 (n/a in Buffer desc) */
+	u32 pkt_info2;	/* Packet info word 2 Buffer reclamation info */
+	u32 src_dst_tag; /* Packet info word 3 (n/a in Buffer desc) */
+} __packed;
+
+/**
+ * Host-mode packet and buffer descriptor definition
+ */
+struct cppi5_host_desc_t {
+	struct cppi5_desc_hdr_t hdr;
+	u64 next_desc;	/* w4/5: Linking word */
+	u64 buf_ptr;	/* w6/7: Buffer pointer */
+	u32 buf_info1;	/* w8: Buffer valid data length */
+	u32 org_buf_len; /* w9: Original buffer length */
+	u64 org_buf_ptr; /* w10/11: Original buffer pointer */
+	u32 epib[0];	/* Extended Packet Info Data (optional, 4 words) */
+	/*
+	 * Protocol Specific Data (optional, 0-128 bytes in multiples of 4),
+	 * and/or Other Software Data (0-N bytes, optional)
+	 */
+} __packed;
+
+#define CPPI5_DESC_MIN_ALIGN			(16U)
+
+#define CPPI5_INFO0_HDESC_EPIB_SIZE		(16U)
+#define CPPI5_INFO0_HDESC_PSDATA_MAX_SIZE	(128U)
+
+#define CPPI5_INFO0_HDESC_TYPE_SHIFT		(30U)
+#define CPPI5_INFO0_HDESC_TYPE_MASK		GENMASK(31, 30)
+#define   CPPI5_INFO0_DESC_TYPE_VAL_HOST	(1U)
+#define   CPPI5_INFO0_DESC_TYPE_VAL_MONO	(2U)
+#define   CPPI5_INFO0_DESC_TYPE_VAL_TR		(3U)
+#define CPPI5_INFO0_HDESC_EPIB_PRESENT		BIT(29)
+/*
+ * Protocol Specific Words location:
+ * 0 - located in the descriptor,
+ * 1 = located in the SOP Buffer immediately prior to the data.
+ */
+#define CPPI5_INFO0_HDESC_PSINFO_LOCATION	BIT(28)
+#define CPPI5_INFO0_HDESC_PSINFO_SIZE_SHIFT	(22U)
+#define CPPI5_INFO0_HDESC_PSINFO_SIZE_MASK	GENMASK(27, 22)
+#define CPPI5_INFO0_HDESC_PKTLEN_SHIFT		(0)
+#define CPPI5_INFO0_HDESC_PKTLEN_MASK		GENMASK(21, 0)
+
+#define CPPI5_INFO1_DESC_PKTERROR_SHIFT		(28U)
+#define CPPI5_INFO1_DESC_PKTERROR_MASK		GENMASK(31, 28)
+#define CPPI5_INFO1_HDESC_PSFLGS_SHIFT		(24U)
+#define CPPI5_INFO1_HDESC_PSFLGS_MASK		GENMASK(27, 24)
+#define CPPI5_INFO1_DESC_PKTID_SHIFT		(14U)
+#define CPPI5_INFO1_DESC_PKTID_MASK		GENMASK(23, 14)
+#define CPPI5_INFO1_DESC_FLOWID_SHIFT		(0)
+#define CPPI5_INFO1_DESC_FLOWID_MASK		GENMASK(13, 0)
+
+#define CPPI5_INFO2_HDESC_PKTTYPE_SHIFT		(27U)
+#define CPPI5_INFO2_HDESC_PKTTYPE_MASK		GENMASK(31, 27)
+/* Return Policy: 0 - Entire packet 1 - Each buffer */
+#define CPPI5_INFO2_HDESC_RETPOLICY		BIT(18)
+/*
+ * Early Return:
+ * 0 = desc pointers should be returned after all reads have been completed
+ * 1 = desc pointers should be returned immediately upon fetching
+ * the descriptor and beginning to transfer data.
+ */
+#define CPPI5_INFO2_HDESC_EARLYRET		BIT(17)
+/*
+ * Return Push Policy:
+ * 0 = Descriptor must be returned to tail of queue
+ * 1 = Descriptor must be returned to head of queue
+ */
+#define CPPI5_INFO2_DESC_RETPUSHPOLICY		BIT(16)
+#define CPPI5_INFO2_DESC_RETQ_SHIFT		(0)
+#define CPPI5_INFO2_DESC_RETQ_MASK		GENMASK(15, 0)
+
+#define CPPI5_INFO3_DESC_SRCTAG_SHIFT		(16U)
+#define CPPI5_INFO3_DESC_SRCTAG_MASK		GENMASK(31, 16)
+#define CPPI5_INFO3_DESC_DSTTAG_SHIFT		(0)
+#define CPPI5_INFO3_DESC_DSTTAG_MASK		GENMASK(15, 0)
+
+#define CPPI5_BUFINFO1_HDESC_DATA_LEN_SHIFT	(0)
+#define CPPI5_BUFINFO1_HDESC_DATA_LEN_MASK	GENMASK(27, 0)
+
+#define CPPI5_OBUFINFO0_HDESC_BUF_LEN_SHIFT	(0)
+#define CPPI5_OBUFINFO0_HDESC_BUF_LEN_MASK	GENMASK(27, 0)
+
+/*
+ * Host Packet Descriptor Extended Packet Info Block
+ */
+struct cppi5_desc_epib_t {
+	u32 timestamp;	/* w0: application specific timestamp */
+	u32 sw_info0;	/* w1: Software Info 0 */
+	u32 sw_info1;	/* w2: Software Info 1 */
+	u32 sw_info2;	/* w3: Software Info 2 */
+};
+
+/**
+ * Monolithic-mode packet descriptor
+ */
+struct cppi5_monolithic_desc_t {
+	struct cppi5_desc_hdr_t hdr;
+	u32 epib[0];	/* Extended Packet Info Data (optional, 4 words) */
+	/*
+	 * Protocol Specific Data (optional, 0-128 bytes in multiples of 4),
+	 *  and/or Other Software Data (0-N bytes, optional)
+	 */
+};
+
+#define CPPI5_INFO2_MDESC_DATA_OFFSET_SHIFT	(18U)
+#define CPPI5_INFO2_MDESC_DATA_OFFSET_MASK	GENMASK(26, 18)
+
+/*
+ * Reload Enable:
+ * 0 = Finish the packet and place the descriptor back on the return queue
+ * 1 = Vector to the Reload Index and resume processing
+ */
+#define CPPI5_INFO0_TRDESC_RLDCNT_SHIFT		(20U)
+#define CPPI5_INFO0_TRDESC_RLDCNT_MASK		GENMASK(28, 20)
+#define CPPI5_INFO0_TRDESC_RLDCNT_MAX		(0x1ff)
+#define CPPI5_INFO0_TRDESC_RLDCNT_INFINITE	CPPI5_INFO0_TRDESC_RLDCNT_MAX
+#define CPPI5_INFO0_TRDESC_RLDIDX_SHIFT		(14U)
+#define CPPI5_INFO0_TRDESC_RLDIDX_MASK		GENMASK(19, 14)
+#define CPPI5_INFO0_TRDESC_RLDIDX_MAX		(0x3f)
+#define CPPI5_INFO0_TRDESC_LASTIDX_SHIFT	(0)
+#define CPPI5_INFO0_TRDESC_LASTIDX_MASK		GENMASK(13, 0)
+
+#define CPPI5_INFO1_TRDESC_RECSIZE_SHIFT	(24U)
+#define CPPI5_INFO1_TRDESC_RECSIZE_MASK		GENMASK(26, 24)
+#define   CPPI5_INFO1_TRDESC_RECSIZE_VAL_16B	(0)
+#define   CPPI5_INFO1_TRDESC_RECSIZE_VAL_32B	(1U)
+#define   CPPI5_INFO1_TRDESC_RECSIZE_VAL_64B	(2U)
+#define   CPPI5_INFO1_TRDESC_RECSIZE_VAL_128B	(3U)
+
+static inline void cppi5_desc_dump(void *desc, u32 size)
+{
+	print_hex_dump(KERN_ERR, "dump udmap_desc: ", DUMP_PREFIX_NONE,
+		       32, 4, desc, size, false);
+}
+
+/**
+ * cppi5_desc_get_type - get descriptor type
+ * @desc_hdr: packet descriptor/TR header
+ *
+ * Returns descriptor type:
+ * CPPI5_INFO0_DESC_TYPE_VAL_HOST
+ * CPPI5_INFO0_DESC_TYPE_VAL_MONO
+ * CPPI5_INFO0_DESC_TYPE_VAL_TR
+ */
+static inline u32 cppi5_desc_get_type(struct cppi5_desc_hdr_t *desc_hdr)
+{
+	WARN_ON(!desc_hdr);
+
+	return (desc_hdr->pkt_info0 & CPPI5_INFO0_HDESC_TYPE_MASK) >>
+		CPPI5_INFO0_HDESC_TYPE_SHIFT;
+}
+
+/**
+ * cppi5_desc_get_errflags - get Error Flags from Desc
+ * @desc_hdr: packet/TR descriptor header
+ *
+ * Returns Error Flags from Packet/TR Descriptor
+ */
+static inline u32 cppi5_desc_get_errflags(struct cppi5_desc_hdr_t *desc_hdr)
+{
+	WARN_ON(!desc_hdr);
+
+	return (desc_hdr->pkt_info1 & CPPI5_INFO1_DESC_PKTERROR_MASK) >>
+		CPPI5_INFO1_DESC_PKTERROR_SHIFT;
+}
+
+/**
+ * cppi5_desc_get_pktids - get Packet and Flow ids from Desc
+ * @desc_hdr: packet/TR descriptor header
+ * @pkt_id: Packet ID
+ * @flow_id: Flow ID
+ *
+ * Returns Packet and Flow ids from packet/TR descriptor
+ */
+static inline void cppi5_desc_get_pktids(struct cppi5_desc_hdr_t *desc_hdr,
+					 u32 *pkt_id, u32 *flow_id)
+{
+	WARN_ON(!desc_hdr);
+
+	*pkt_id = (desc_hdr->pkt_info1 & CPPI5_INFO1_DESC_PKTID_MASK) >>
+		   CPPI5_INFO1_DESC_PKTID_SHIFT;
+	*flow_id = (desc_hdr->pkt_info1 & CPPI5_INFO1_DESC_FLOWID_MASK) >>
+		    CPPI5_INFO1_DESC_FLOWID_SHIFT;
+}
+
+/**
+ * cppi5_desc_set_pktids - set Packet and Flow ids in Desc
+ * @desc_hdr: packet/TR descriptor header
+ * @pkt_id: Packet ID
+ * @flow_id: Flow ID
+ */
+static inline void cppi5_desc_set_pktids(struct cppi5_desc_hdr_t *desc_hdr,
+					 u32 pkt_id, u32 flow_id)
+{
+	WARN_ON(!desc_hdr);
+
+	desc_hdr->pkt_info1 |= (pkt_id << CPPI5_INFO1_DESC_PKTID_SHIFT) &
+				CPPI5_INFO1_DESC_PKTID_MASK;
+	desc_hdr->pkt_info1 |= (flow_id << CPPI5_INFO1_DESC_FLOWID_SHIFT) &
+				CPPI5_INFO1_DESC_FLOWID_MASK;
+}
+
+/**
+ * cppi5_desc_set_retpolicy - set Packet Return Policy in Desc
+ * @desc_hdr: packet/TR descriptor header
+ * @flags: fags, supported values
+ *  CPPI5_INFO2_HDESC_RETPOLICY
+ *  CPPI5_INFO2_HDESC_EARLYRET
+ *  CPPI5_INFO2_DESC_RETPUSHPOLICY
+ * @return_ring_id: Packet Return Queue/Ring id, value 0xFFFF reserved
+ */
+static inline void cppi5_desc_set_retpolicy(struct cppi5_desc_hdr_t *desc_hdr,
+					    u32 flags, u32 return_ring_id)
+{
+	WARN_ON(!desc_hdr);
+
+	desc_hdr->pkt_info2 |= flags;
+	desc_hdr->pkt_info2 |= return_ring_id & CPPI5_INFO2_DESC_RETQ_MASK;
+}
+
+/**
+ * cppi5_desc_get_tags_ids - get Packet Src/Dst Tags from Desc
+ * @desc_hdr: packet/TR descriptor header
+ * @src_tag_id: Source Tag
+ * @dst_tag_id: Dest Tag
+ *
+ * Returns Packet Src/Dst Tags from packet/TR descriptor
+ */
+static inline void cppi5_desc_get_tags_ids(struct cppi5_desc_hdr_t *desc_hdr,
+					   u32 *src_tag_id, u32 *dst_tag_id)
+{
+	WARN_ON(!desc_hdr);
+
+	if (src_tag_id)
+		*src_tag_id = (desc_hdr->src_dst_tag &
+			      CPPI5_INFO3_DESC_SRCTAG_MASK) >>
+			      CPPI5_INFO3_DESC_SRCTAG_SHIFT;
+	if (dst_tag_id)
+		*dst_tag_id = desc_hdr->src_dst_tag &
+			      CPPI5_INFO3_DESC_DSTTAG_MASK;
+}
+
+/**
+ * cppi5_desc_set_tags_ids - set Packet Src/Dst Tags in HDesc
+ * @desc_hdr: packet/TR descriptor header
+ * @src_tag_id: Source Tag
+ * @dst_tag_id: Dest Tag
+ *
+ * Returns Packet Src/Dst Tags from packet/TR descriptor
+ */
+static inline void cppi5_desc_set_tags_ids(struct cppi5_desc_hdr_t *desc_hdr,
+					   u32 src_tag_id, u32 dst_tag_id)
+{
+	WARN_ON(!desc_hdr);
+
+	desc_hdr->src_dst_tag = (src_tag_id << CPPI5_INFO3_DESC_SRCTAG_SHIFT) &
+				CPPI5_INFO3_DESC_SRCTAG_MASK;
+	desc_hdr->src_dst_tag |= dst_tag_id & CPPI5_INFO3_DESC_DSTTAG_MASK;
+}
+
+/**
+ * cppi5_hdesc_calc_size - Calculate Host Packet Descriptor size
+ * @epib: is EPIB present
+ * @psdata_size: PSDATA size
+ * @sw_data_size: SWDATA size
+ *
+ * Returns required Host Packet Descriptor size
+ * 0 - if PSDATA > CPPI5_INFO0_HDESC_PSDATA_MAX_SIZE
+ */
+static inline u32 cppi5_hdesc_calc_size(bool epib, u32 psdata_size,
+					u32 sw_data_size)
+{
+	u32 desc_size;
+
+	if (psdata_size > CPPI5_INFO0_HDESC_PSDATA_MAX_SIZE)
+		return 0;
+	//TODO_GS: align
+	desc_size = sizeof(struct cppi5_host_desc_t) + psdata_size +
+		    sw_data_size;
+
+	if (epib)
+		desc_size += CPPI5_INFO0_HDESC_EPIB_SIZE;
+
+	return ALIGN(desc_size, CPPI5_DESC_MIN_ALIGN);
+}
+
+/**
+ * cppi5_hdesc_init - Init Host Packet Descriptor size
+ * @desc: Host packet descriptor
+ * @flags: supported values
+ *	CPPI5_INFO0_HDESC_EPIB_PRESENT
+ *	CPPI5_INFO0_HDESC_PSINFO_LOCATION
+ * @psdata_size: PSDATA size
+ *
+ * Returns required Host Packet Descriptor size
+ * 0 - if PSDATA > CPPI5_INFO0_HDESC_PSDATA_MAX_SIZE
+ */
+static inline void cppi5_hdesc_init(struct cppi5_host_desc_t *desc, u32 flags,
+				    u32 psdata_size)
+{
+	WARN_ON(!desc);
+	WARN_ON(psdata_size > CPPI5_INFO0_HDESC_PSDATA_MAX_SIZE);
+	WARN_ON(flags & ~(CPPI5_INFO0_HDESC_EPIB_PRESENT |
+			  CPPI5_INFO0_HDESC_PSINFO_LOCATION));
+
+	desc->hdr.pkt_info0 = (CPPI5_INFO0_DESC_TYPE_VAL_HOST <<
+			       CPPI5_INFO0_HDESC_TYPE_SHIFT) | (flags);
+	desc->hdr.pkt_info0 |= ((psdata_size >> 2) <<
+				CPPI5_INFO0_HDESC_PSINFO_SIZE_SHIFT) &
+				CPPI5_INFO0_HDESC_PSINFO_SIZE_MASK;
+	desc->next_desc = 0;
+}
+
+/**
+ * cppi5_hdesc_update_flags - Replace descriptor flags
+ * @desc: Host packet descriptor
+ * @flags: supported values
+ *	CPPI5_INFO0_HDESC_EPIB_PRESENT
+ *	CPPI5_INFO0_HDESC_PSINFO_LOCATION
+ */
+static inline void cppi5_hdesc_update_flags(struct cppi5_host_desc_t *desc,
+					    u32 flags)
+{
+	WARN_ON(!desc);
+	WARN_ON(flags & ~(CPPI5_INFO0_HDESC_EPIB_PRESENT |
+			  CPPI5_INFO0_HDESC_PSINFO_LOCATION));
+
+	desc->hdr.pkt_info0 &= ~(CPPI5_INFO0_HDESC_EPIB_PRESENT |
+				 CPPI5_INFO0_HDESC_PSINFO_LOCATION);
+	desc->hdr.pkt_info0 |= flags;
+}
+
+/**
+ * cppi5_hdesc_update_psdata_size - Replace PSdata size
+ * @desc: Host packet descriptor
+ * @psdata_size: PSDATA size
+ */
+static inline void cppi5_hdesc_update_psdata_size(
+				struct cppi5_host_desc_t *desc, u32 psdata_size)
+{
+	WARN_ON(!desc);
+	WARN_ON(psdata_size > CPPI5_INFO0_HDESC_PSDATA_MAX_SIZE);
+
+	desc->hdr.pkt_info0 &= ~CPPI5_INFO0_HDESC_PSINFO_SIZE_MASK;
+	desc->hdr.pkt_info0 |= ((psdata_size >> 2) <<
+				CPPI5_INFO0_HDESC_PSINFO_SIZE_SHIFT) &
+				CPPI5_INFO0_HDESC_PSINFO_SIZE_MASK;
+}
+
+/**
+ * cppi5_hdesc_get_psdata_size - get PSdata size in bytes
+ * @desc: Host packet descriptor
+ */
+static inline u32 cppi5_hdesc_get_psdata_size(struct cppi5_host_desc_t *desc)
+{
+	u32 psdata_size = 0;
+
+	WARN_ON(!desc);
+
+	if (!(desc->hdr.pkt_info0 & CPPI5_INFO0_HDESC_PSINFO_LOCATION))
+		psdata_size = (desc->hdr.pkt_info0 &
+			       CPPI5_INFO0_HDESC_PSINFO_SIZE_MASK) >>
+			       CPPI5_INFO0_HDESC_PSINFO_SIZE_SHIFT;
+
+	return (psdata_size << 2);
+}
+
+/**
+ * cppi5_hdesc_get_pktlen - get Packet Length from HDesc
+ * @desc: Host packet descriptor
+ *
+ * Returns Packet Length from Host Packet Descriptor
+ */
+static inline u32 cppi5_hdesc_get_pktlen(struct cppi5_host_desc_t *desc)
+{
+	WARN_ON(!desc);
+
+	return (desc->hdr.pkt_info0 & CPPI5_INFO0_HDESC_PKTLEN_MASK);
+}
+
+/**
+ * cppi5_hdesc_set_pktlen - set Packet Length in HDesc
+ * @desc: Host packet descriptor
+ */
+static inline void cppi5_hdesc_set_pktlen(struct cppi5_host_desc_t *desc,
+					  u32 pkt_len)
+{
+	WARN_ON(!desc);
+
+	desc->hdr.pkt_info0 |= (pkt_len & CPPI5_INFO0_HDESC_PKTLEN_MASK);
+}
+
+/**
+ * cppi5_hdesc_get_psflags - get Protocol Specific Flags from HDesc
+ * @desc: Host packet descriptor
+ *
+ * Returns Protocol Specific Flags from Host Packet Descriptor
+ */
+static inline u32 cppi5_hdesc_get_psflags(struct cppi5_host_desc_t *desc)
+{
+	WARN_ON(!desc);
+
+	return (desc->hdr.pkt_info1 & CPPI5_INFO1_HDESC_PSFLGS_MASK) >>
+		CPPI5_INFO1_HDESC_PSFLGS_SHIFT;
+}
+
+/**
+ * cppi5_hdesc_set_psflags - set Protocol Specific Flags in HDesc
+ * @desc: Host packet descriptor
+ */
+static inline void cppi5_hdesc_set_psflags(struct cppi5_host_desc_t *desc,
+					   u32 ps_flags)
+{
+	WARN_ON(!desc);
+
+	desc->hdr.pkt_info1 |= (ps_flags <<
+				CPPI5_INFO1_HDESC_PSFLGS_SHIFT) &
+				CPPI5_INFO1_HDESC_PSFLGS_MASK;
+}
+
+/**
+ * cppi5_hdesc_get_errflags - get Packet Type from HDesc
+ * @desc: Host packet descriptor
+ */
+static inline u32 cppi5_hdesc_get_pkttype(struct cppi5_host_desc_t *desc)
+{
+	WARN_ON(!desc);
+
+	return (desc->hdr.pkt_info2 & CPPI5_INFO2_HDESC_PKTTYPE_MASK) >>
+		CPPI5_INFO2_HDESC_PKTTYPE_SHIFT;
+}
+
+/**
+ * cppi5_hdesc_get_errflags - set Packet Type in HDesc
+ * @desc: Host packet descriptor
+ * @pkt_type: Packet Type
+ */
+static inline void cppi5_hdesc_set_pkttype(struct cppi5_host_desc_t *desc,
+					   u32 pkt_type)
+{
+	WARN_ON(!desc);
+	desc->hdr.pkt_info2 |=
+			(pkt_type << CPPI5_INFO2_HDESC_PKTTYPE_SHIFT) &
+			 CPPI5_INFO2_HDESC_PKTTYPE_MASK;
+}
+
+/**
+ * cppi5_hdesc_attach_buf - attach buffer to HDesc
+ * @desc: Host packet descriptor
+ * @buf: Buffer physical address
+ * @buf_data_len: Buffer length
+ * @obuf: Original Buffer physical address
+ * @obuf_len: Original Buffer length
+ *
+ * Attaches buffer to Host Packet Descriptor
+ */
+static inline void cppi5_hdesc_attach_buf(struct cppi5_host_desc_t *desc,
+					  dma_addr_t buf, u32 buf_data_len,
+					  dma_addr_t obuf, u32 obuf_len)
+{
+	WARN_ON(!desc);
+	WARN_ON(!buf && !obuf);
+
+	desc->buf_ptr = buf;
+	desc->buf_info1 = buf_data_len & CPPI5_BUFINFO1_HDESC_DATA_LEN_MASK;
+	desc->org_buf_ptr = obuf;
+	desc->org_buf_len = obuf_len & CPPI5_OBUFINFO0_HDESC_BUF_LEN_MASK;
+}
+
+static inline void cppi5_hdesc_get_obuf(struct cppi5_host_desc_t *desc,
+					dma_addr_t *obuf, u32 *obuf_len)
+{
+	WARN_ON(!desc);
+	WARN_ON(!obuf);
+	WARN_ON(!obuf_len);
+
+	*obuf = desc->org_buf_ptr;
+	*obuf_len = desc->org_buf_len & CPPI5_OBUFINFO0_HDESC_BUF_LEN_MASK;
+}
+
+static inline void cppi5_hdesc_reset_to_original(struct cppi5_host_desc_t *desc)
+{
+	WARN_ON(!desc);
+
+	desc->buf_ptr = desc->org_buf_ptr;
+	desc->buf_info1 = desc->org_buf_len;
+}
+
+/**
+ * cppi5_hdesc_link_hbdesc - link Host Buffer Descriptor to HDesc
+ * @desc: Host Packet Descriptor
+ * @buf_desc: Host Buffer Descriptor physical address
+ *
+ * add and link Host Buffer Descriptor to HDesc
+ */
+static inline void cppi5_hdesc_link_hbdesc(struct cppi5_host_desc_t *desc,
+					   dma_addr_t hbuf_desc)
+{
+	WARN_ON(!desc);
+	WARN_ON(!hbuf_desc);
+
+	desc->next_desc = hbuf_desc;
+}
+
+static inline dma_addr_t cppi5_hdesc_get_next_hbdesc(
+				struct cppi5_host_desc_t *desc)
+{
+	WARN_ON(!desc);
+
+	return (dma_addr_t)desc->next_desc;
+}
+
+static inline void cppi5_hdesc_reset_hbdesc(struct cppi5_host_desc_t *desc)
+{
+	WARN_ON(!desc);
+
+	desc->hdr = (struct cppi5_desc_hdr_t) { 0 };
+	desc->next_desc = 0;
+}
+
+/**
+ * cppi5_hdesc_epib_present -  check if EPIB present
+ * @desc_hdr: packet descriptor/TR header
+ *
+ * Returns true if EPIB present in the packet
+ */
+static inline bool cppi5_hdesc_epib_present(struct cppi5_desc_hdr_t *desc_hdr)
+{
+	WARN_ON(!desc_hdr);
+	return !!(desc_hdr->pkt_info0 & CPPI5_INFO0_HDESC_EPIB_PRESENT);
+}
+
+/**
+ * cppi5_hdesc_get_psdata -  Get pointer on PSDATA
+ * @desc: Host packet descriptor
+ *
+ * Returns pointer on PSDATA in HDesc.
+ * NULL - if ps_data placed at the start of data buffer.
+ */
+static inline void *cppi5_hdesc_get_psdata(struct cppi5_host_desc_t *desc)
+{
+	u32 psdata_size;
+	void *psdata;
+
+	WARN_ON(!desc);
+
+	if (desc->hdr.pkt_info0 & CPPI5_INFO0_HDESC_PSINFO_LOCATION)
+		return NULL;
+
+	psdata_size = (desc->hdr.pkt_info0 &
+		       CPPI5_INFO0_HDESC_PSINFO_SIZE_MASK) >>
+		       CPPI5_INFO0_HDESC_PSINFO_SIZE_SHIFT;
+
+	if (!psdata_size)
+		return NULL;
+
+	psdata = &desc->epib;
+
+	if (cppi5_hdesc_epib_present(&desc->hdr))
+		psdata += CPPI5_INFO0_HDESC_EPIB_SIZE;
+
+	return psdata;
+}
+
+static inline u32 *cppi5_hdesc_get_psdata32(struct cppi5_host_desc_t *desc)
+{
+	return (u32 *)cppi5_hdesc_get_psdata(desc);
+}
+
+/**
+ * cppi5_hdesc_get_swdata -  Get pointer on swdata
+ * @desc: Host packet descriptor
+ *
+ * Returns pointer on SWDATA in HDesc.
+ * NOTE. It's caller responsibility to be sure hdesc actually has swdata.
+ */
+static inline void *cppi5_hdesc_get_swdata(struct cppi5_host_desc_t *desc)
+{
+	u32 psdata_size = 0;
+	void *swdata;
+
+	WARN_ON(!desc);
+
+	if (!(desc->hdr.pkt_info0 & CPPI5_INFO0_HDESC_PSINFO_LOCATION))
+		psdata_size = (desc->hdr.pkt_info0 &
+			       CPPI5_INFO0_HDESC_PSINFO_SIZE_MASK) >>
+			       CPPI5_INFO0_HDESC_PSINFO_SIZE_SHIFT;
+
+	swdata = &desc->epib;
+
+	if (cppi5_hdesc_epib_present(&desc->hdr))
+		swdata += CPPI5_INFO0_HDESC_EPIB_SIZE;
+
+	swdata += (psdata_size << 2);
+
+	return swdata;
+}
+
+/* ================================== TR ================================== */
+
+#define CPPI5_TR_TYPE_SHIFT			(0U)
+#define CPPI5_TR_TYPE_MASK			GENMASK(3, 0)
+#define CPPI5_TR_STATIC				BIT(4)
+#define CPPI5_TR_WAIT				BIT(5)
+#define CPPI5_TR_EVENT_SIZE_SHIFT		(6U)
+#define CPPI5_TR_EVENT_SIZE_MASK		GENMASK(7, 6)
+#define CPPI5_TR_TRIGGER0_SHIFT			(8U)
+#define CPPI5_TR_TRIGGER0_MASK			GENMASK(9, 8)
+#define CPPI5_TR_TRIGGER0_TYPE_SHIFT		(10U)
+#define CPPI5_TR_TRIGGER0_TYPE_MASK		GENMASK(11, 10)
+#define CPPI5_TR_TRIGGER1_SHIFT			(12U)
+#define CPPI5_TR_TRIGGER1_MASK			GENMASK(13, 12)
+#define CPPI5_TR_TRIGGER1_TYPE_SHIFT		(14U)
+#define CPPI5_TR_TRIGGER1_TYPE_MASK		GENMASK(15, 14)
+#define CPPI5_TR_CMD_ID_SHIFT			(16U)
+#define CPPI5_TR_CMD_ID_MASK			GENMASK(23, 16)
+#define CPPI5_TR_CSF_FLAGS_SHIFT		(24U)
+#define CPPI5_TR_CSF_FLAGS_MASK			GENMASK(31, 24)
+#define   CPPI5_TR_CSF_SA_INDIRECT		BIT(0)
+#define   CPPI5_TR_CSF_DA_INDIRECT		BIT(1)
+#define   CPPI5_TR_CSF_SUPR_EVT			BIT(2)
+#define   CPPI5_TR_CSF_EOL_ADV_SHIFT		(4U)
+#define   CPPI5_TR_CSF_EOL_ADV_MASK		GENMASK(6, 4)
+#define   CPPI5_TR_CSF_EOP			BIT(7)
+
+/* Udmap TR flags Type field specifies the type of TR. */
+enum cppi5_tr_types {
+	/* type0: One dimensional data move */
+	CPPI5_TR_TYPE0 = 0,
+	/* type1: Two dimensional data move */
+	CPPI5_TR_TYPE1,
+	/* type2: Three dimensional data move */
+	CPPI5_TR_TYPE2,
+	/* type3: Four dimensional data move */
+	CPPI5_TR_TYPE3,
+	/* type4: Four dimensional data move with data formatting */
+	CPPI5_TR_TYPE4,
+	/* type5: Four dimensional Cache Warm */
+	CPPI5_TR_TYPE5,
+	/* type6-7: Reserved */
+	/* type8: Four Dimensional Block Move */
+	CPPI5_TR_TYPE8 = 8,
+	/* type9: Four Dimensional Block Move with Repacking */
+	CPPI5_TR_TYPE9,
+	/* type10: Two Dimensional Block Move */
+	CPPI5_TR_TYPE10,
+	/* type11: Two Dimensional Block Move with Repacking */
+	CPPI5_TR_TYPE11,
+	/* type12-14: Reserved */
+	/* type15 Four Dimensional Block Move with Repacking and Indirection */
+	CPPI5_TR_TYPE15 = 15,
+	CPPI5_TR_TYPE_MAX
+};
+
+/*
+ * Udmap TR Flags EVENT_SIZE field specifies when an event is generated
+ * for each TR.
+ */
+enum cppi5_tr_event_size {
+	/* When TR is complete and all status for the TR has been received */
+	CPPI5_TR_EVENT_SIZE_COMPLETION,
+	/*
+	 * Type 0: when the last data transaction is sent for the TR;
+	 * Type 1-11: when ICNT1 is decremented
+	 */
+	CPPI5_TR_EVENT_SIZE_ICNT1_DEC,
+	/*
+	 * Type 0-1,10-11: when the last data transaction is sent for the TR;
+	 * All other types: when ICNT2 is decremented
+	 */
+	CPPI5_TR_EVENT_SIZE_ICNT2_DEC,
+	/*
+	 * Type 0-2,10-11: when the last data transaction is sent for the TR;
+	 * All other types: when ICNT3 is decremented
+	 */
+	CPPI5_TR_EVENT_SIZE_ICNT3_DEC,
+	CPPI5_TR_EVENT_SIZE_MAX
+};
+
+/*
+ * Udmap TR Flags TRIGGERx field specifies the type of trigger used to
+ * enable the TR to transfer data as specified by TRIGGERx_TYPE field.
+ */
+enum cppi5_tr_trigger {
+	CPPI5_TR_TRIGGER_NONE,		/* No Trigger */
+	CPPI5_TR_TRIGGER_GLOBAL0,		/* Global Trigger 0 */
+	CPPI5_TR_TRIGGER_GLOBAL1,		/* Global Trigger 1 */
+	CPPI5_TR_TRIGGER_LOCAL_EVENT,	/* Local Event */
+	CPPI5_TR_TRIGGER_MAX
+};
+
+/*
+ * Udmap TR Flags TRIGGERx_TYPE field specifies the type of data transfer
+ * that will be enabled by receiving a trigger as specified by TRIGGERx.
+ */
+enum cppi5_tr_trigger_type {
+	/* The second inner most loop (ICNT1) will be decremented by 1 */
+	CPPI5_TR_TRIGGER_TYPE_ICNT1_DEC,
+	/* The third inner most loop (ICNT2) will be decremented by 1 */
+	CPPI5_TR_TRIGGER_TYPE_ICNT2_DEC,
+	/* The outer most loop (ICNT3) will be decremented by 1 */
+	CPPI5_TR_TRIGGER_TYPE_ICNT3_DEC,
+	/* The entire TR will be allowed to complete */
+	CPPI5_TR_TRIGGER_TYPE_ALL,
+	CPPI5_TR_TRIGGER_TYPE_MAX
+};
+
+typedef u32 cppi5_tr_flags_t;
+
+/* Type 0 (One dimensional data move) TR (16 byte) */
+struct cppi5_tr_type0_t {
+	cppi5_tr_flags_t flags;
+	u16 icnt0;
+	u16 unused;
+	u64 addr;
+} __aligned(16) __packed;
+
+/* Type 1 (Two dimensional data move) TR (32 byte) */
+struct cppi5_tr_type1_t {
+	cppi5_tr_flags_t flags;
+	u16 icnt0;
+	u16 icnt1;
+	u64 addr;
+	s32 dim1;
+} __aligned(32) __packed;
+
+/* Type 2 (Three dimensional data move) TR (32 byte) */
+struct cppi5_tr_type2_t {
+	cppi5_tr_flags_t flags;
+	u16 icnt0;
+	u16 icnt1;
+	u64 addr;
+	s32 dim1;
+	u16 icnt2;
+	u16 unused;
+	s32 dim2;
+} __aligned(32) __packed;
+
+/* Type 3 (Four dimensional data move) TR (32 byte) */
+struct cppi5_tr_type3_t {
+	cppi5_tr_flags_t flags;
+	u16 icnt0;
+	u16 icnt1;
+	u64 addr;
+	s32 dim1;
+	u16 icnt2;
+	u16 icnt3;
+	s32 dim2;
+	s32 dim3;
+} __aligned(32) __packed;
+
+/*
+ * Type 15 (Four Dimensional Block Copy with Repacking and
+ * Indirection Support) TR (64 byte).
+ */
+struct cppi5_tr_type15_t {
+	cppi5_tr_flags_t flags;
+	u16 icnt0;
+	u16 icnt1;
+	u64 addr;
+	s32 dim1;
+	u16 icnt2;
+	u16 icnt3;
+	s32 dim2;
+	s32 dim3;
+	u32 _reserved;
+	s32 ddim1;
+	u64 daddr;
+	s32 ddim2;
+	s32 ddim3;
+	u16 dicnt0;
+	u16 dicnt1;
+	u16 dicnt2;
+	u16 dicnt3;
+} __aligned(64) __packed;
+
+struct cppi5_tr_resp_t {
+	u8 status;
+	u8 reserved;
+	u8 cmd_id;
+	u8 flags;
+} __packed;
+
+#define CPPI5_TR_RESPONSE_STATUS_TYPE_SHIFT	(0U)
+#define CPPI5_TR_RESPONSE_STATUS_TYPE_MASK	GENMASK(3, 0)
+#define CPPI5_TR_RESPONSE_STATUS_INFO_SHIFT	(4U)
+#define CPPI5_TR_RESPONSE_STATUS_INFO_MASK	GENMASK(7, 4)
+#define CPPI5_TR_RESPONSE_CMDID_SHIFT		(16U)
+#define CPPI5_TR_RESPONSE_CMDID_MASK		GENMASK(23, 16)
+#define CPPI5_TR_RESPONSE_CFG_SPECIFIC_SHIFT	(24U)
+#define CPPI5_TR_RESPONSE_CFG_SPECIFIC_MASK	GENMASK(31, 24)
+
+/*
+ * Udmap TR Response Status Type field is used to determine
+ * what type of status is being returned.
+ */
+enum cppi5_tr_resp_status_type {
+	CPPI5_TR_RESPONSE_STATUS_COMPLETE,		/* None */
+	CPPI5_TR_RESPONSE_STATUS_TRANSFER_ERR,		/* Transfer Error */
+	CPPI5_TR_RESPONSE_STATUS_ABORTED_ERR,		/* Aborted Error */
+	CPPI5_TR_RESPONSE_STATUS_SUBMISSION_ERR,	/* Submission Error */
+	CPPI5_TR_RESPONSE_STATUS_UNSUPPORTED_ERR,	/* Unsup. Feature */
+	CPPI5_TR_RESPONSE_STATUS_MAX
+};
+
+/*
+ * Udmap TR Response Status field values which corresponds
+ * CPPI5_TR_RESPONSE_STATUS_SUBMISSION_ERR
+ */
+enum cppi5_tr_resp_status_submission {
+	/* ICNT0 was 0 */
+	CPPI5_TR_RESPONSE_STATUS_SUBMISSION_ICNT0,
+	/* Channel FIFO was full when TR received */
+	CPPI5_TR_RESPONSE_STATUS_SUBMISSION_FIFO_FULL,
+	/* Channel is not owned by the submitter */
+	CPPI5_TR_RESPONSE_STATUS_SUBMISSION_OWN,
+	CPPI5_TR_RESPONSE_STATUS_SUBMISSION_MAX
+};
+
+/*
+ * Udmap TR Response Status field values which corresponds
+ * CPPI5_TR_RESPONSE_STATUS_UNSUPPORTED_ERR
+ */
+enum cppi5_tr_resp_status_unsupported {
+	/* TR Type not supported */
+	CPPI5_TR_RESPONSE_STATUS_UNSUPPORTED_TR_TYPE,
+	/* STATIC not supported */
+	CPPI5_TR_RESPONSE_STATUS_UNSUPPORTED_STATIC,
+	/* EOL not supported */
+	CPPI5_TR_RESPONSE_STATUS_UNSUPPORTED_EOL,
+	/* CONFIGURATION SPECIFIC not supported */
+	CPPI5_TR_RESPONSE_STATUS_UNSUPPORTED_CFG_SPECIFIC,
+	/* AMODE not supported */
+	CPPI5_TR_RESPONSE_STATUS_UNSUPPORTED_AMODE,
+	/* ELTYPE not supported */
+	CPPI5_TR_RESPONSE_STATUS_UNSUPPORTED_ELTYPE,
+	/* DFMT not supported */
+	CPPI5_TR_RESPONSE_STATUS_UNSUPPORTED_DFMT,
+	/* SECTR not supported */
+	CPPI5_TR_RESPONSE_STATUS_UNSUPPORTED_SECTR,
+	/* AMODE SPECIFIC field not supported */
+	CPPI5_TR_RESPONSE_STATUS_UNSUPPORTED_AMODE_SPECIFIC,
+	CPPI5_TR_RESPONSE_STATUS_UNSUPPORTED_MAX
+};
+
+/**
+ * cppi5_trdesc_calc_size - Calculate TR Descriptor size
+ * @tr_count: number of TR records
+ * @tr_size: Nominal size of TR record (max) [16, 32, 64, 128]
+ *
+ * Returns required TR Descriptor size
+ */
+static inline size_t cppi5_trdesc_calc_size(u32 tr_count, u32 tr_size)
+{
+	/*
+	 * The Size of a TR descriptor is:
+	 * 1 x tr_size : the first 16 bytes is used by the packet info block +
+	 * tr_count x tr_size : Transfer Request Records +
+	 * tr_count x sizeof(struct cppi5_tr_resp_t) : Transfer Response Records
+	 */
+	return tr_size * (tr_count + 1) +
+		sizeof(struct cppi5_tr_resp_t) * tr_count;
+}
+
+/**
+ * cppi5_trdesc_init - Init TR Descriptor
+ * @desc: TR Descriptor
+ * @tr_count: number of TR records
+ * @tr_size: Nominal size of TR record (max) [16, 32, 64, 128]
+ * @reload_idx: Absolute index to jump to on the 2nd and following passes
+ *		through the TR packet.
+ * @reload_count: Number of times to jump from last entry to reload_idx. 0x1ff
+ *		  indicates infinite looping.
+ *
+ * Init TR Descriptor
+ */
+static inline void cppi5_trdesc_init(struct cppi5_desc_hdr_t *desc_hdr,
+				     u32 tr_count, u32 tr_size, u32 reload_idx,
+				     u32 reload_count)
+{
+	WARN_ON(!desc_hdr);
+	WARN_ON(tr_count & ~CPPI5_INFO0_TRDESC_LASTIDX_MASK);
+	WARN_ON(reload_idx > CPPI5_INFO0_TRDESC_RLDIDX_MAX);
+	WARN_ON(reload_count > CPPI5_INFO0_TRDESC_RLDCNT_MAX);
+
+	desc_hdr->pkt_info0 = CPPI5_INFO0_DESC_TYPE_VAL_TR <<
+			      CPPI5_INFO0_HDESC_TYPE_SHIFT;
+	desc_hdr->pkt_info0 |= (reload_count << CPPI5_INFO0_TRDESC_RLDCNT_SHIFT) &
+			       CPPI5_INFO0_TRDESC_RLDCNT_MASK;
+	desc_hdr->pkt_info0 |= (reload_idx << CPPI5_INFO0_TRDESC_RLDIDX_SHIFT) &
+			       CPPI5_INFO0_TRDESC_RLDIDX_MASK;
+	desc_hdr->pkt_info0 |= (tr_count - 1) & CPPI5_INFO0_TRDESC_LASTIDX_MASK;
+
+	desc_hdr->pkt_info1 |= ((ffs(tr_size >> 4) - 1) <<
+				CPPI5_INFO1_TRDESC_RECSIZE_SHIFT) &
+				CPPI5_INFO1_TRDESC_RECSIZE_MASK;
+}
+
+/**
+ * cppi5_tr_init - Init TR record
+ * @flags: Pointer to the TR's flags
+ * @type: TR type
+ * @static_tr: TR is static
+ * @wait: Wait for TR completion before allow the next TR to start
+ * @event_size: output event generation cfg
+ * @cmd_id: TR identifier (application specifics)
+ *
+ * Init TR record
+ */
+static inline void cppi5_tr_init(cppi5_tr_flags_t *flags,
+				 enum cppi5_tr_types type, bool static_tr,
+				 bool wait, enum cppi5_tr_event_size event_size,
+				 u32 cmd_id)
+{
+	WARN_ON(!flags);
+
+	*flags = type;
+	*flags |= (event_size << CPPI5_TR_EVENT_SIZE_SHIFT) &
+		  CPPI5_TR_EVENT_SIZE_MASK;
+
+	*flags |= (cmd_id << CPPI5_TR_CMD_ID_SHIFT) &
+		  CPPI5_TR_CMD_ID_MASK;
+
+	if (static_tr && (type == CPPI5_TR_TYPE8 || type == CPPI5_TR_TYPE9))
+		*flags |= CPPI5_TR_STATIC;
+
+	if (wait)
+		*flags |= CPPI5_TR_WAIT;
+}
+
+/**
+ * cppi5_tr_set_trigger - Configure trigger0/1 and trigger0/1_type
+ * @flags: Pointer to the TR's flags
+ * @trigger0: trigger0 selection
+ * @trigger0_type: type of data transfer that will be enabled by trigger0
+ * @trigger1: trigger1 selection
+ * @trigger1_type: type of data transfer that will be enabled by trigger1
+ *
+ * Configure the triggers for the TR
+ */
+static inline void cppi5_tr_set_trigger(cppi5_tr_flags_t *flags,
+				enum cppi5_tr_trigger trigger0,
+				enum cppi5_tr_trigger_type trigger0_type,
+				enum cppi5_tr_trigger trigger1,
+				enum cppi5_tr_trigger_type trigger1_type)
+{
+	WARN_ON(!flags);
+
+	*flags |= (trigger0 << CPPI5_TR_TRIGGER0_SHIFT) &
+		  CPPI5_TR_TRIGGER0_MASK;
+	*flags |= (trigger0_type << CPPI5_TR_TRIGGER0_TYPE_SHIFT) &
+		  CPPI5_TR_TRIGGER0_TYPE_MASK;
+
+	*flags |= (trigger1 << CPPI5_TR_TRIGGER1_SHIFT) &
+		  CPPI5_TR_TRIGGER1_MASK;
+	*flags |= (trigger1_type << CPPI5_TR_TRIGGER1_TYPE_SHIFT) &
+		  CPPI5_TR_TRIGGER1_TYPE_MASK;
+}
+
+/**
+ * cppi5_tr_cflag_set - Update the Configuration specific flags
+ * @flags: Pointer to the TR's flags
+ * @csf: Configuration specific flags
+ *
+ * Set a bit in Configuration Specific Flags section of the TR flags.
+ */
+static inline void cppi5_tr_csf_set(cppi5_tr_flags_t *flags, u32 csf)
+{
+	WARN_ON(!flags);
+
+	*flags |= (csf << CPPI5_TR_CSF_FLAGS_SHIFT) &
+		  CPPI5_TR_CSF_FLAGS_MASK;
+}
+
+#endif /* __TI_CPPI5_H__ */
diff --git a/include/soc/ti/ti-udma.h b/include/soc/ti/ti-udma.h
new file mode 100644
index 0000000000..3f7ac64b29
--- /dev/null
+++ b/include/soc/ti/ti-udma.h
@@ -0,0 +1,45 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ *  Copyright (C) 2018 Texas Instruments Incorporated - https://www.ti.com
+ *  Author: Peter Ujfalusi <peter.ujfalusi@ti.com>
+ */
+
+#ifndef __TI_UDMA_H
+#define __TI_UDMA_H
+
+/**
+ * struct ti_udma_drv_packet_data - TI UDMA transfer specific data
+ *
+ * @pkt_type: Packet Type - specific for each DMA client HW
+ * @dest_tag: Destination tag The source pointer.
+ * @src_tag:  Where this packet is coming from for received packets
+ *
+ * TI UDMA transfer specific data passed as part of DMA transfer to
+ * the DMA client HW in UDMA descriptors.
+ */
+struct ti_udma_drv_packet_data {
+	u32	pkt_type;
+	u32	dest_tag;
+	u32	src_tag;
+};
+
+/**
+ * struct ti_udma_drv_chan_cfg_data - TI UDMA per channel specific
+ *                                     configuration data
+ *
+ * @flow_id_base: Start index of flow ID allocated to this channel
+ * @flow_id_cnt: Number of flows allocated for this channel starting at
+ *               flow_id_base
+ *
+ * TI UDMA channel specific data returned as part of dma_get_cfg() call
+ * from the DMA client driver.
+ */
+struct ti_udma_drv_chan_cfg_data {
+	u32	flow_id_base;
+	u32	flow_id_cnt;
+};
+
+/* TI UDMA specific flag IDs for dma_get_cfg() call */
+#define TI_UDMA_CHAN_PRIV_INFO		0
+
+#endif /* __TI_UDMA_H */

-- 
2.39.5




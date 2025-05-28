Delivery-date: Wed, 28 May 2025 14:04:26 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKFWE-001B0X-2U
	for lore@lore.pengutronix.de;
	Wed, 28 May 2025 14:04:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKFW7-0006i4-4f
	for lore@pengutronix.de; Wed, 28 May 2025 14:04:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7rm5C6GgBaCL2NqY9Ncympjk5oq2Pa6RldWLS3cmsJM=; b=tMGje3ykDa/a8bT7thKNysgrFW
	9pvLGQlsWwf2niZ3RrFgalNDR/UlrPXRdzrm+wAmngNkdkD/tOTlHQ/mS3/4qHnJ+v4D2arFEyq5O
	37QBGdOB5dwpYBx4wjOA17GkiojPt3Dzuv6wTxRUFvDc/G6/TV8Nk3AcASzqq69c942f5smDFHPa+
	tNWdBZJ6rsPnQBAEyTpibTcQ17RvjtFS3HGSfx9oLvCQCTDH+lx7dyST5Dd2Jlu0bWflVMKqpzoaE
	wcESGglrq5QLONWyHktRTUQEQoCgzTLLLmRrzDQtsE21sRzHms6QEa80TqUBPSMO3zTMTqmt1yrI7
	LgqH9FXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKFVQ-0000000D2gr-011B;
	Wed, 28 May 2025 12:03:36 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKFU0-0000000D2ag-23j5
	for barebox@bombadil.infradead.org;
	Wed, 28 May 2025 12:02:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Cc:To:In-Reply-To:References:Message-Id
	:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=7rm5C6GgBaCL2NqY9Ncympjk5oq2Pa6RldWLS3cmsJM=; b=A0zCpgyMKag9WWIJKxQG6kR4If
	rPgNKXJf8ij10kR6W+AAt5xHCzaxyJH8rv3q3KB+5PeVAHjDmVieBAjopBQLCUm9kWLv944x8Qyyj
	wE2WEabxD7dt164WGKBRjV45RVpl0EKYK+EKcRYdP7VLm+KcNUWt5g8vdch2thtEfOmOkIEr0jVeK
	SYxBmRxbqIG/uchroysd5Am/h1Iq6s3Ji/5doZBSmwNAI9GyaH8HeTAccCPnXLMJMPPLFApWpbzBv
	mq0V7OUexDwxDcjHM1uceqwP+13nT+HZ/uVwOhxQgqxJZsq6yxfVylQS4vR6n8jz5rkjXsmRwXguS
	bGpsBrYQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKFTw-0000000Dapf-2kZq
	for barebox@lists.infradead.org;
	Wed, 28 May 2025 12:02:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uKFTp-0004SZ-RS; Wed, 28 May 2025 14:01:57 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uKFTp-000a9j-24;
	Wed, 28 May 2025 14:01:57 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uKFE2-00CB0R-1h;
	Wed, 28 May 2025 13:45:38 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 28 May 2025 13:45:26 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250528-arm-k3-am62l-v1-14-3f88e6d10d99@pengutronix.de>
References: <20250528-arm-k3-am62l-v1-0-3f88e6d10d99@pengutronix.de>
In-Reply-To: <20250528-arm-k3-am62l-v1-0-3f88e6d10d99@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1748432738; l=3781;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=CfyJf0mtnnPhSVKk+P8GxuBJgYEcqcqDboiJxDeSD8I=;
 b=YYBV0PktB766jAtqq4/iqpijeVwRcpwEPZO3PA/xRk4cwDMeQVu3reCr14ja6T8i8HBkInUMi
 8I8OzsY7me+DkEoPBfFGG8Q7KQAmDyumDazl63AON9C9kKGlkcnRoRI
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250528_130204_710759_A76C7ACD 
X-CRM114-Status: GOOD (  16.23  )
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
Subject: [PATCH 14/31] dma: ti: k3-psil: Add PSIL data for AM62L
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This introduces PSIL data specific to AM62L SoC. Based on U-Boot
downstream commit:

| commit 3e91f4443a2b01e1a313ee3ecfe2a082c88402af
| Author: Vignesh Raghavendra <vigneshr@ti.com>
| Date:   Wed Feb 26 19:55:43 2025 +0530
|
|    PENDING: dma: ti: k3-psil: Add PSIL data for AM62L
|
|    This introduces PSIL data specific to AM62L SoC
|
|    Signed-off-by: Vignesh Raghavendra <vigneshr@ti.com>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/dma/ti/Makefile        |  2 +-
 drivers/dma/ti/k3-psil-am62l.c | 50 ++++++++++++++++++++++++++++++++++++++++++
 drivers/dma/ti/k3-psil-priv.h  |  1 +
 drivers/dma/ti/k3-psil.c       |  2 ++
 4 files changed, 54 insertions(+), 1 deletion(-)

diff --git a/drivers/dma/ti/Makefile b/drivers/dma/ti/Makefile
index f449429e2a23633a7dadbda1470104d52d49e5e8..b7dfff07210537660965d235c10ea7345c22b0a6 100644
--- a/drivers/dma/ti/Makefile
+++ b/drivers/dma/ti/Makefile
@@ -1 +1 @@
-obj-$(CONFIG_TI_K3_UDMA) += k3-udma.o k3-psil.o
+obj-$(CONFIG_TI_K3_UDMA) += k3-udma.o k3-psil.o k3-psil-am62l.o
diff --git a/drivers/dma/ti/k3-psil-am62l.c b/drivers/dma/ti/k3-psil-am62l.c
new file mode 100644
index 0000000000000000000000000000000000000000..972895ec56fb4278e958ffa7ec88819e8fbf23ee
--- /dev/null
+++ b/drivers/dma/ti/k3-psil-am62l.c
@@ -0,0 +1,50 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ *  Copyright (C) 2025 Texas Instruments Incorporated - https://www.ti.com
+ */
+
+#include <linux/kernel.h>
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
+static struct psil_ep am62l_src_ep_map[] = {
+	/* CPSW3G */
+	PSIL_ETHERNET(0x4600, 96, 96, 16),
+};
+
+/* PSI-L destination thread IDs, used for TX (DMA_MEM_TO_DEV) */
+static struct psil_ep am62l_dst_ep_map[] = {
+	/* CPSW3G */
+	PSIL_ETHERNET(0xc600, 64, 64, 2),
+	PSIL_ETHERNET(0xc601, 66, 66, 2),
+	PSIL_ETHERNET(0xc602, 68, 68, 2),
+	PSIL_ETHERNET(0xc603, 70, 70, 2),
+	PSIL_ETHERNET(0xc604, 72, 72, 2),
+	PSIL_ETHERNET(0xc605, 74, 74, 2),
+	PSIL_ETHERNET(0xc606, 76, 76, 2),
+	PSIL_ETHERNET(0xc607, 78, 78, 2),
+};
+
+struct psil_ep_map am62l_ep_map = {
+	.name = "am62l",
+	.src = am62l_src_ep_map,
+	.src_count = ARRAY_SIZE(am62l_src_ep_map),
+	.dst = am62l_dst_ep_map,
+	.dst_count = ARRAY_SIZE(am62l_dst_ep_map),
+};
diff --git a/drivers/dma/ti/k3-psil-priv.h b/drivers/dma/ti/k3-psil-priv.h
index b80916a7ff8fa728ca41f1dbabc1817bde69cf6e..d00ef99867a4f146621550c9eb308958ca8d182c 100644
--- a/drivers/dma/ti/k3-psil-priv.h
+++ b/drivers/dma/ti/k3-psil-priv.h
@@ -45,5 +45,6 @@ extern struct psil_ep_map am62_ep_map;
 extern struct psil_ep_map am62a_ep_map;
 extern struct psil_ep_map j784s4_ep_map;
 extern struct psil_ep_map am62p_ep_map;
+extern struct psil_ep_map am62l_ep_map;
 
 #endif /* K3_PSIL_PRIV_H_ */
diff --git a/drivers/dma/ti/k3-psil.c b/drivers/dma/ti/k3-psil.c
index 58f39c0453e9724ad28680fa375a031529687ed8..f517da7afcac17d502af3002494c2cd7cbf7322b 100644
--- a/drivers/dma/ti/k3-psil.c
+++ b/drivers/dma/ti/k3-psil.c
@@ -62,6 +62,8 @@ struct psil_endpoint_config *psil_get_ep_config(u32 thread_id)
 	if (!soc_ep_map) {
 		if (of_machine_is_compatible("ti,am625"))
 			soc_ep_map = &am62_ep_map;
+		else if (of_machine_is_compatible("ti,am62l3"))
+			soc_ep_map = &am62l_ep_map;
 	}
 
 	if (!soc_ep_map) {

-- 
2.39.5




Delivery-date: Thu, 13 Mar 2025 08:49:04 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tsdJR-00DTdE-09
	for lore@lore.pengutronix.de;
	Thu, 13 Mar 2025 08:49:04 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tsdJP-0008J7-RL
	for lore@pengutronix.de; Thu, 13 Mar 2025 08:49:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=F7x5Ta0pR9Whpr+7cLVQflp1VhZqiJ7MDm/ytwDgXio=; b=zRQhqSsqGAiTOkGxW4qmOvfAi+
	kHKpOWqsrNvsMXMYzMzg5B5NvE+z/fLZdXuo2Ly/6xbucp/hEi2LRG3m0lXUcnggVdhkNs0Oq+vMP
	xpByZyLpR+Rton4BgM6ignQRGusOPOBTYXfEFMKUilV5M380n40X8k8nT0kDa08QR5xzBrDbi4HDy
	opPnc4dgfqFefO9j5z1/49XEpSLSovdIeoWKbksZqtOuLDzxdXhvpI0mokGptdG0PQ689nsiVprus
	ude8r64/6W8bQN807T1m6mtwRkABQOlCcKlpMmXZ9+t0NMTeHtjzwUacTElI9TAUt5v9TvdIOxpSe
	1mXxsUvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tsdIz-0000000AQey-3oxO;
	Thu, 13 Mar 2025 07:48:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tsd5j-0000000AOUm-3KT2
	for barebox@lists.infradead.org;
	Thu, 13 Mar 2025 07:34:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tsd5i-0005mP-9g; Thu, 13 Mar 2025 08:34:54 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tsd5i-005Uve-0M;
	Thu, 13 Mar 2025 08:34:54 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tsd5i-003pwb-03;
	Thu, 13 Mar 2025 08:34:54 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 13 Mar 2025 08:34:25 +0100
Message-Id: <20250313073445.764875-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250313073445.764875-1-a.fatoum@pengutronix.de>
References: <20250313073445.764875-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250313_003455_866060_236504FD 
X-CRM114-Status: GOOD (  12.94  )
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
Subject: [PATCH 02/22] soc: ti: k3-navss-ringacc: fix COMPILE_TEST link error
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The TI UDMA driver has a fixed dependency on the K3 RINGACC driver,
which is not necessarily satisfied during COMPILE_TEST as the latter
depends on ARCH_K3 being enabled, which is an ARM-only symbol
unavailable when compile testing on other architectures.

Fix this by selecting the code as needed.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/dma/ti/Kconfig  |  6 ++++++
 drivers/soc/Makefile    |  2 +-
 drivers/soc/ti/Kconfig  | 11 +++++++++++
 drivers/soc/ti/Makefile |  4 +++-
 4 files changed, 21 insertions(+), 2 deletions(-)

diff --git a/drivers/dma/ti/Kconfig b/drivers/dma/ti/Kconfig
index 78755bb33a45..df705a23bff7 100644
--- a/drivers/dma/ti/Kconfig
+++ b/drivers/dma/ti/Kconfig
@@ -1,6 +1,12 @@
+# SPDX-License-Identifier: GPL-2.0-only
+#
+# Texas Instruments DMA drivers
+#
+
 config TI_K3_UDMA
         tristate "Texas Instruments UDMA support"
         depends on ARCH_K3 || COMPILE_TEST
+        select TI_K3_RINGACC
         help
           Enable support for the TI UDMA (Unified DMA) controller. This
           DMA engine is used in AM65x and j721e.
diff --git a/drivers/soc/Makefile b/drivers/soc/Makefile
index 5b6ebe53c39d..975304cd50b4 100644
--- a/drivers/soc/Makefile
+++ b/drivers/soc/Makefile
@@ -5,4 +5,4 @@ obj-$(CONFIG_KVX)		+= kvx/
 obj-$(CONFIG_ARCH_ROCKCHIP)	+= rockchip/
 obj-$(CONFIG_CPU_SIFIVE)	+= sifive/
 obj-$(CONFIG_SOC_STARFIVE)	+= starfive/
-obj-$(CONFIG_ARCH_K3)		+= ti/
+obj-y				+= ti/
diff --git a/drivers/soc/ti/Kconfig b/drivers/soc/ti/Kconfig
index 8d2dd86f3fe6..d0aadbce10c3 100644
--- a/drivers/soc/ti/Kconfig
+++ b/drivers/soc/ti/Kconfig
@@ -2,3 +2,14 @@ config K3_ESM
 	bool
 	depends on ARCH_K3 && MACH_K3_CORTEX_R5
 	default y
+
+config TI_K3_RINGACC
+	tristate "K3 Ring accelerator Sub System"
+	depends on ARCH_K3 || COMPILE_TEST
+	help
+	  Say y here to support the K3 Ring accelerator module.
+	  The Ring Accelerator (RINGACC or RA)  provides hardware acceleration
+	  to enable straightforward passing of work between a producer
+	  and a consumer. There is one RINGACC module per NAVSS on TI AM65x SoCs
+	  If unsure, say N.
+
diff --git a/drivers/soc/ti/Makefile b/drivers/soc/ti/Makefile
index 3109a4e9675c..6d6ff4dd2aaf 100644
--- a/drivers/soc/ti/Makefile
+++ b/drivers/soc/ti/Makefile
@@ -1,2 +1,4 @@
-obj-y += k3-navss-ringacc.o
+# SPDX-License-Identifier: GPL-2.0-only
+
+obj-$(CONFIG_TI_K3_RINGACC) += k3-navss-ringacc.o
 obj-$(CONFIG_K3_ESM) += k3-esm.o
-- 
2.39.5




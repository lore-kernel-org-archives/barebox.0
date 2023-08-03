Delivery-date: Thu, 03 Aug 2023 12:52:06 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qRVw6-004wTC-SB
	for lore@lore.pengutronix.de; Thu, 03 Aug 2023 12:52:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qRVw3-0002Bt-VI
	for lore@pengutronix.de; Thu, 03 Aug 2023 12:52:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KBM4mRR82U4uDsxwIPROemzVHRJdrYT4RKWkTg9W+TM=; b=O78T6KmgjFoJI7Bcua2OPQVAgm
	Xii6wyS++hMapt4G2qXiOpei2Ckn/GQ405yDA322Ff5p39RAJ82ne5/aqp0oYI89uNFBLi7AR+Msj
	7/pFGrkju+ebkGAZZT1w4BUDPBG0eSCujccGxyFuEFWeLGxmRd2GpI7ZztSoFkRLKffdOhXo7KYuE
	iycnUqnyAJ0FgsoC/w45vv6NlF+mCSb21NCC4ZPVmUAEtU3jLfkJi85v2yy04JVMI/rLQqPciIqn+
	WnURjTT3LsPT18dKZq0xvc0g5B/+aLhaDN1lMraj77g1J8lCHgCt+pK5cryl1Nd5ImFQc2IC+7+Ym
	FQM7sjog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qRVuv-007VEQ-1Z;
	Thu, 03 Aug 2023 10:50:53 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qRVuD-007UYN-1U
	for barebox@lists.infradead.org;
	Thu, 03 Aug 2023 10:50:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qRVuC-0000vt-8c; Thu, 03 Aug 2023 12:50:08 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qRVuB-000ova-Hs; Thu, 03 Aug 2023 12:50:07 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qRVu8-00HAzr-QY; Thu, 03 Aug 2023 12:50:04 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  3 Aug 2023 12:49:58 +0200
Message-Id: <20230803105003.4088205-18-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230803105003.4088205-1-s.hauer@pengutronix.de>
References: <20230803105003.4088205-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230803_035009_505968_E79B51AC 
X-CRM114-Status: GOOD (  17.95  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 17/22] ARM: Add Texas Instruments K3 architecture
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This adds the Kconfig snippets for supporting the Texas Instruments K3
architecure. This also enables deep probe support on a SoC basis as all
new boards should work with deep probe enabled. Likewise we need PM
domain support for the initially supported AM62x SoC, so enable that
for this SoC as well.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Kconfig          | 14 ++++++++++++++
 arch/arm/Makefile         |  1 +
 arch/arm/mach-k3/Kconfig  |  6 ++++++
 arch/arm/mach-k3/Makefile |  1 +
 arch/arm/mach-k3/common.c | 24 ++++++++++++++++++++++++
 5 files changed, 46 insertions(+)
 create mode 100644 arch/arm/mach-k3/Kconfig
 create mode 100644 arch/arm/mach-k3/Makefile
 create mode 100644 arch/arm/mach-k3/common.c

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index e76ee0f6df..5e0907e3ea 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -232,6 +232,19 @@ config ARCH_IMX
 	select HAVE_PBL_MULTI_IMAGES
 	select RELOCATABLE
 
+config ARCH_K3
+	bool "Texas Instruments Inc. K3 multicore SoC architecture"
+	depends on 64BIT
+	select CPU_V8
+	select GPIOLIB
+	select COMMON_CLK
+	select CLKDEV_LOOKUP
+	select HAVE_PBL_MULTI_IMAGES
+	select HAS_DEBUG_LL
+	select HAVE_CLK
+	select COMMON_CLK_OF_PROVIDER
+	select PM_GENERIC_DOMAINS
+
 config ARCH_OMAP_MULTI
 	bool "TI OMAP"
 	depends on 32BIT
@@ -327,6 +340,7 @@ source "arch/arm/mach-layerscape/Kconfig"
 source "arch/arm/mach-mxs/Kconfig"
 source "arch/arm/mach-mvebu/Kconfig"
 source "arch/arm/mach-nomadik/Kconfig"
+source "arch/arm/mach-k3/Kconfig"
 source "arch/arm/mach-omap/Kconfig"
 source "arch/arm/mach-pxa/Kconfig"
 source "arch/arm/mach-rockchip/Kconfig"
diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 337b7e9095..17c9b4068a 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -89,6 +89,7 @@ machine-$(CONFIG_ARCH_DAVINCI)		+= davinci
 machine-$(CONFIG_ARCH_DIGIC)		+= digic
 machine-$(CONFIG_ARCH_EP93XX)		+= ep93xx
 machine-$(CONFIG_ARCH_IMX)		+= imx
+machine-$(CONFIG_ARCH_K3)		+= k3
 machine-$(CONFIG_ARCH_LAYERSCAPE)	+= layerscape
 machine-$(CONFIG_ARCH_MXS)		+= mxs
 machine-$(CONFIG_ARCH_MVEBU)		+= mvebu
diff --git a/arch/arm/mach-k3/Kconfig b/arch/arm/mach-k3/Kconfig
new file mode 100644
index 0000000000..b2954493c4
--- /dev/null
+++ b/arch/arm/mach-k3/Kconfig
@@ -0,0 +1,6 @@
+# SPDX-License-Identifier: GPL-2.0-or-later
+
+menu "K3 boards"
+        depends on ARCH_K3
+
+endmenu
diff --git a/arch/arm/mach-k3/Makefile b/arch/arm/mach-k3/Makefile
new file mode 100644
index 0000000000..f95691b59a
--- /dev/null
+++ b/arch/arm/mach-k3/Makefile
@@ -0,0 +1 @@
+obj-y += common.o
diff --git a/arch/arm/mach-k3/common.c b/arch/arm/mach-k3/common.c
new file mode 100644
index 0000000000..7c2375d3ec
--- /dev/null
+++ b/arch/arm/mach-k3/common.c
@@ -0,0 +1,24 @@
+// SPDX-License-Identifier: GPL-2.0-only
+#include <of.h>
+#include <deep-probe.h>
+#include <init.h>
+#include <pm_domain.h>
+
+static const struct of_device_id k3_of_match[] = {
+	{
+		.compatible = "ti,am625",
+	},
+	{ /* sentinel */ },
+};
+BAREBOX_DEEP_PROBE_ENABLE(k3_of_match);
+
+static int am625_init(void)
+{
+	if (!of_machine_is_compatible("ti,am625"))
+		return 0;
+
+	genpd_activate();
+
+	return 0;
+}
+postcore_initcall(am625_init);
-- 
2.39.2




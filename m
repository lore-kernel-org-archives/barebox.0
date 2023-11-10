Delivery-date: Fri, 10 Nov 2023 14:01:56 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1R91-005rew-1u
	for lore@lore.pengutronix.de;
	Fri, 10 Nov 2023 14:01:56 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1R91-00054j-Bl
	for lore@pengutronix.de; Fri, 10 Nov 2023 14:01:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GgBBSP3JRXuqOwct8dncbJ4+f77u6mbV8UfNAd5v9VM=; b=vB9/zVzJO9dYFIJL0lHV5lRcKo
	a2/jRtF9E7OKTyM0cLfhxhAsgwgdrfRfHEx8l3fNZ5ZXpdJFCI1c99V0GokyaJiNvSFwxlUaX56G+
	4BTGlXCNfOGM+g6fk+nadM2T0D6dw+bJWaj9p8VbjP39zEYb1LhwzpQDNK0qKSlOMupx/c2Nde2l/
	uAvYB3t1ldZZ/CC2HGhQawTsiEIyYzQ9OY1Q5+ss7sIqnnOu1xnWjoRZIL6GWX872z1EcVSU4iH1c
	+H2VcsuwZjijHnnlPjg+4hU/qjLBQgVSgMFu6apMsDphQxOmfIeDA603xtXv16FGUdeA7T+UZeoCA
	g6djeLcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r1R7u-008ly6-2J;
	Fri, 10 Nov 2023 13:00:46 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1R7r-008lw8-1N
	for barebox@bombadil.infradead.org;
	Fri, 10 Nov 2023 13:00:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=GgBBSP3JRXuqOwct8dncbJ4+f77u6mbV8UfNAd5v9VM=; b=AOzcNGMCsX2NshnlJoD4B9r0M6
	yfxVdkTuhbHHw5knLV/pppzo8BtG0qrZN/F9yorPdWAZ64SsykwltJM+NO5X33ya+TPixhCenGly7
	ascddYDGjFAIA9d65tSQ89ARG5FdKCPCIkEn488568pCAG+nUbLfaGIpnUPcCOBqsUTjZ7fjHb46h
	yxxLLnf/D5Ju8T9nnlwNN3a42FRDZO7V9ULttlL9hQpkUUUTLpXyU4vVV1c+2YDva5npYvnmoRPpv
	4AbAj9XlAZ6V1OZb5nBKxhYTTAAFfBtiVa0SuYkU/iShmPbDOkPIV5EuTRFeW4SOQIJsAU/ChHQuB
	iCuv1tFw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1R7f-00Fc3n-0R
	for barebox@lists.infradead.org;
	Fri, 10 Nov 2023 13:00:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r1R7e-000437-Eq; Fri, 10 Nov 2023 14:00:30 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1r1R7d-0081Yx-7B; Fri, 10 Nov 2023 14:00:29 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1r1R7d-0096MK-0V;
	Fri, 10 Nov 2023 14:00:29 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 10 Nov 2023 14:00:16 +0100
Message-Id: <20231110130028.2123895-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231110130028.2123895-1-s.hauer@pengutronix.de>
References: <20231110130028.2123895-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 01/13] ddr: imx8m: rename driver to imx
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The i.MX8M ddr driver can be re-used for i.MX93, so drop the '8m' suffix
from the driver directories and Kconfig options.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/ddr/Kconfig                                    | 2 +-
 drivers/ddr/Makefile                                   | 2 +-
 drivers/ddr/{imx8m => imx}/Kconfig                     | 6 +++++-
 drivers/ddr/imx/Makefile                               | 7 +++++++
 drivers/ddr/{imx8m => imx}/ddrphy_csr.c                | 0
 drivers/ddr/{imx8m => imx}/ddrphy_train.c              | 0
 drivers/ddr/{imx8m => imx}/ddrphy_utils.c              | 0
 drivers/ddr/{imx8m => imx}/helper.c                    | 0
 drivers/ddr/{imx8m/ddr_init.c => imx/imx8m_ddr_init.c} | 0
 drivers/ddr/imx8m/Makefile                             | 7 -------
 10 files changed, 14 insertions(+), 10 deletions(-)
 rename drivers/ddr/{imx8m => imx}/Kconfig (72%)
 create mode 100644 drivers/ddr/imx/Makefile
 rename drivers/ddr/{imx8m => imx}/ddrphy_csr.c (100%)
 rename drivers/ddr/{imx8m => imx}/ddrphy_train.c (100%)
 rename drivers/ddr/{imx8m => imx}/ddrphy_utils.c (100%)
 rename drivers/ddr/{imx8m => imx}/helper.c (100%)
 rename drivers/ddr/{imx8m/ddr_init.c => imx/imx8m_ddr_init.c} (100%)
 delete mode 100644 drivers/ddr/imx8m/Makefile

diff --git a/drivers/ddr/Kconfig b/drivers/ddr/Kconfig
index 17d01ab658..0b0d7a8893 100644
--- a/drivers/ddr/Kconfig
+++ b/drivers/ddr/Kconfig
@@ -1,3 +1,3 @@
 # SPDX-License-Identifier: GPL-2.0-only
 source "drivers/ddr/fsl/Kconfig"
-source "drivers/ddr/imx8m/Kconfig"
+source "drivers/ddr/imx/Kconfig"
diff --git a/drivers/ddr/Makefile b/drivers/ddr/Makefile
index 0b5ac949a4..e5d7bd14db 100644
--- a/drivers/ddr/Makefile
+++ b/drivers/ddr/Makefile
@@ -1,3 +1,3 @@
 # SPDX-License-Identifier: GPL-2.0-only
 obj-$(CONFIG_DDR_FSL) += fsl/
-obj-$(CONFIG_IMX8M_DRAM) += imx8m/
+obj-$(CONFIG_IMX_DRAM) += imx/
diff --git a/drivers/ddr/imx8m/Kconfig b/drivers/ddr/imx/Kconfig
similarity index 72%
rename from drivers/ddr/imx8m/Kconfig
rename to drivers/ddr/imx/Kconfig
index 720448f551..43e9181582 100644
--- a/drivers/ddr/imx8m/Kconfig
+++ b/drivers/ddr/imx/Kconfig
@@ -1,8 +1,12 @@
 # SPDX-License-Identifier: GPL-2.0-only
-menu "i.MX8M DDR controllers"
+menu "i.MX DDR controllers"
 	depends on ARCH_IMX8MQ || ARCH_IMX8MM || ARCH_IMX8MN || ARCH_IMX8MP
 
+config IMX_DRAM
+	bool
+
 config IMX8M_DRAM
+	select IMX_DRAM
 	bool "imx8m dram controller support"
 
 endmenu
diff --git a/drivers/ddr/imx/Makefile b/drivers/ddr/imx/Makefile
new file mode 100644
index 0000000000..62d09e731a
--- /dev/null
+++ b/drivers/ddr/imx/Makefile
@@ -0,0 +1,7 @@
+#
+# Copyright 2018 NXP
+#
+# SPDX-License-Identifier:	GPL-2.0+
+#
+pbl-$(CONFIG_IMX_DRAM) += helper.o ddrphy_utils.o ddrphy_train.o ddrphy_csr.o
+pbl-$(CONFIG_IMX8M_DRAM) += imx8m_ddr_init.o
diff --git a/drivers/ddr/imx8m/ddrphy_csr.c b/drivers/ddr/imx/ddrphy_csr.c
similarity index 100%
rename from drivers/ddr/imx8m/ddrphy_csr.c
rename to drivers/ddr/imx/ddrphy_csr.c
diff --git a/drivers/ddr/imx8m/ddrphy_train.c b/drivers/ddr/imx/ddrphy_train.c
similarity index 100%
rename from drivers/ddr/imx8m/ddrphy_train.c
rename to drivers/ddr/imx/ddrphy_train.c
diff --git a/drivers/ddr/imx8m/ddrphy_utils.c b/drivers/ddr/imx/ddrphy_utils.c
similarity index 100%
rename from drivers/ddr/imx8m/ddrphy_utils.c
rename to drivers/ddr/imx/ddrphy_utils.c
diff --git a/drivers/ddr/imx8m/helper.c b/drivers/ddr/imx/helper.c
similarity index 100%
rename from drivers/ddr/imx8m/helper.c
rename to drivers/ddr/imx/helper.c
diff --git a/drivers/ddr/imx8m/ddr_init.c b/drivers/ddr/imx/imx8m_ddr_init.c
similarity index 100%
rename from drivers/ddr/imx8m/ddr_init.c
rename to drivers/ddr/imx/imx8m_ddr_init.c
diff --git a/drivers/ddr/imx8m/Makefile b/drivers/ddr/imx8m/Makefile
deleted file mode 100644
index 2be313900f..0000000000
--- a/drivers/ddr/imx8m/Makefile
+++ /dev/null
@@ -1,7 +0,0 @@
-#
-# Copyright 2018 NXP
-#
-# SPDX-License-Identifier:	GPL-2.0+
-#
-
-pbl-$(CONFIG_IMX8M_DRAM) += helper.o ddrphy_utils.o ddrphy_train.o ddrphy_csr.o ddr_init.o
-- 
2.39.2




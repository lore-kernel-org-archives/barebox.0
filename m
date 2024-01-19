Delivery-date: Fri, 19 Jan 2024 17:27:37 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rQriS-007Glk-2G
	for lore@lore.pengutronix.de;
	Fri, 19 Jan 2024 17:27:37 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rQriT-00040b-64
	for lore@pengutronix.de; Fri, 19 Jan 2024 17:27:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=S6Tw4hiyzlUALDunKV1K9W8y44iir00TG7FFAUztg98=; b=UNNBcgzLQHEqcjN8pPCgR2zge6
	E2SalhYwJYjiHsmYEZjleyRgoDUJF/fQ/UTkDsqgR84hiNmrg3cdmnaCp5TeGeQZx+OlStcXKfror
	bOOKT+JtD6d1tUXak9OqWJgMeQx135H9EaKKhwilNms0/tctmFKgGQdtm45IoGx6/AYJ8MuXS4Pkb
	9B9vmr6aYFuhcVYZDijeq+gp4kNhQsn/O8zj3KKADXWo747jhu13HyYpxSmSjx/0UAEhzbGNeVGDn
	BFhLQuswYnyj/apOHlKKZ9Jb+HVtgKM5O3ebM8ETLvpoIIqrsN9fPzlcJ68fEK2+FHT4Um8W4tTXl
	95tKTXNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rQrhG-0066h1-2T;
	Fri, 19 Jan 2024 16:26:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rQrhC-0066c1-1Q
	for barebox@lists.infradead.org;
	Fri, 19 Jan 2024 16:26:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rQrh8-0003RX-MI; Fri, 19 Jan 2024 17:26:14 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rQrh8-000xTR-7p; Fri, 19 Jan 2024 17:26:14 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rQrh8-0054dX-0T;
	Fri, 19 Jan 2024 17:26:14 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 19 Jan 2024 17:25:52 +0100
Message-Id: <20240119162610.1014870-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240119162610.1014870-1-a.fatoum@pengutronix.de>
References: <20240119162610.1014870-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240119_082618_480299_EC835F79 
X-CRM114-Status: GOOD (  14.97  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 01/19] drivers: soc: split off powerdomains into new pmdomain directory
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Linux v6.6 has moved the pmdomain drivers from drivers/soc to
drivers/pmdomain. Follow its lead in barebox too.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/Kconfig                                  |  1 +
 drivers/Makefile                                 |  1 +
 drivers/pmdomain/Kconfig                         |  7 +++++++
 drivers/pmdomain/Makefile                        |  3 +++
 drivers/pmdomain/imx/Kconfig                     | 10 ++++++++++
 drivers/pmdomain/imx/Makefile                    |  2 ++
 drivers/{soc => pmdomain}/imx/gpcv2.c            |  0
 drivers/{soc => pmdomain}/ti/Kconfig             |  1 +
 drivers/{soc => pmdomain}/ti/Makefile            |  1 +
 drivers/{soc => pmdomain}/ti/ti_sci_pm_domains.c |  0
 drivers/soc/Kconfig                              |  1 -
 drivers/soc/Makefile                             |  1 -
 drivers/soc/imx/Kconfig                          |  6 ------
 drivers/soc/imx/Makefile                         |  1 -
 14 files changed, 26 insertions(+), 9 deletions(-)
 create mode 100644 drivers/pmdomain/Kconfig
 create mode 100644 drivers/pmdomain/Makefile
 create mode 100644 drivers/pmdomain/imx/Kconfig
 create mode 100644 drivers/pmdomain/imx/Makefile
 rename drivers/{soc => pmdomain}/imx/gpcv2.c (100%)
 rename drivers/{soc => pmdomain}/ti/Kconfig (84%)
 rename drivers/{soc => pmdomain}/ti/Makefile (57%)
 rename drivers/{soc => pmdomain}/ti/ti_sci_pm_domains.c (100%)

diff --git a/drivers/Kconfig b/drivers/Kconfig
index b81ee38989e8..04da623aa519 100644
--- a/drivers/Kconfig
+++ b/drivers/Kconfig
@@ -42,6 +42,7 @@ source "drivers/phy/Kconfig"
 source "drivers/crypto/Kconfig"
 source "drivers/memory/Kconfig"
 source "drivers/soc/Kconfig"
+source "drivers/pmdomain/Kconfig"
 source "drivers/nvme/Kconfig"
 source "drivers/ddr/Kconfig"
 source "drivers/power/Kconfig"
diff --git a/drivers/Makefile b/drivers/Makefile
index 42a71f73c259..fd85ac91b266 100644
--- a/drivers/Makefile
+++ b/drivers/Makefile
@@ -42,6 +42,7 @@ obj-y += crypto/
 obj-$(CONFIG_AIODEV) += aiodev/
 obj-y	+= memory/
 obj-y	+= soc/
+obj-$(CONFIG_PM_GENERIC_DOMAINS)	+= pmdomain/
 obj-y	+= nvme/
 obj-y	+= ddr/
 obj-y	+= power/
diff --git a/drivers/pmdomain/Kconfig b/drivers/pmdomain/Kconfig
new file mode 100644
index 000000000000..82095ae078c8
--- /dev/null
+++ b/drivers/pmdomain/Kconfig
@@ -0,0 +1,7 @@
+# SPDX-License-Identifier: GPL-2.0-only
+menu "PM Domains"
+
+source "drivers/pmdomain/imx/Kconfig"
+source "drivers/pmdomain/ti/Kconfig"
+
+endmenu
diff --git a/drivers/pmdomain/Makefile b/drivers/pmdomain/Makefile
new file mode 100644
index 000000000000..25983a67e12f
--- /dev/null
+++ b/drivers/pmdomain/Makefile
@@ -0,0 +1,3 @@
+# SPDX-License-Identifier: GPL-2.0-only
+obj-y					+= imx/
+obj-y					+= ti/
diff --git a/drivers/pmdomain/imx/Kconfig b/drivers/pmdomain/imx/Kconfig
new file mode 100644
index 000000000000..ba5fffd274fa
--- /dev/null
+++ b/drivers/pmdomain/imx/Kconfig
@@ -0,0 +1,10 @@
+# SPDX-License-Identifier: GPL-2.0-only
+menu "i.MX PM Domains"
+
+config IMX_GPCV2_PM_DOMAINS
+	bool "i.MX GPCv2 PM domains"
+	depends on ARCH_IMX7 || ARCH_IMX8M
+	select PM_GENERIC_DOMAINS
+	default y if ARCH_IMX7 || ARCH_IMX8M
+
+endmenu
diff --git a/drivers/pmdomain/imx/Makefile b/drivers/pmdomain/imx/Makefile
new file mode 100644
index 000000000000..3a8a8d0b00db
--- /dev/null
+++ b/drivers/pmdomain/imx/Makefile
@@ -0,0 +1,2 @@
+# SPDX-License-Identifier: GPL-2.0-only
+obj-$(CONFIG_IMX_GPCV2_PM_DOMAINS) += gpcv2.o
diff --git a/drivers/soc/imx/gpcv2.c b/drivers/pmdomain/imx/gpcv2.c
similarity index 100%
rename from drivers/soc/imx/gpcv2.c
rename to drivers/pmdomain/imx/gpcv2.c
diff --git a/drivers/soc/ti/Kconfig b/drivers/pmdomain/ti/Kconfig
similarity index 84%
rename from drivers/soc/ti/Kconfig
rename to drivers/pmdomain/ti/Kconfig
index dc1ec3efb7e3..f34a5146c133 100644
--- a/drivers/soc/ti/Kconfig
+++ b/drivers/pmdomain/ti/Kconfig
@@ -1,3 +1,4 @@
+# SPDX-License-Identifier: GPL-2.0-only
 config TI_SCI_PM_DOMAINS
 	bool "TI SCI PM Domains Driver"
 	depends on TI_SCI_PROTOCOL
diff --git a/drivers/soc/ti/Makefile b/drivers/pmdomain/ti/Makefile
similarity index 57%
rename from drivers/soc/ti/Makefile
rename to drivers/pmdomain/ti/Makefile
index f87420e41402..ab582e04a8b3 100644
--- a/drivers/soc/ti/Makefile
+++ b/drivers/pmdomain/ti/Makefile
@@ -1 +1,2 @@
+# SPDX-License-Identifier: GPL-2.0-only
 obj-$(CONFIG_TI_SCI_PM_DOMAINS) += ti_sci_pm_domains.o
diff --git a/drivers/soc/ti/ti_sci_pm_domains.c b/drivers/pmdomain/ti/ti_sci_pm_domains.c
similarity index 100%
rename from drivers/soc/ti/ti_sci_pm_domains.c
rename to drivers/pmdomain/ti/ti_sci_pm_domains.c
diff --git a/drivers/soc/Kconfig b/drivers/soc/Kconfig
index cbde3c35a411..c0fe21442917 100644
--- a/drivers/soc/Kconfig
+++ b/drivers/soc/Kconfig
@@ -3,6 +3,5 @@ menu "SoC drivers"
 source "drivers/soc/imx/Kconfig"
 source "drivers/soc/kvx/Kconfig"
 source "drivers/soc/rockchip/Kconfig"
-source "drivers/soc/ti/Kconfig"
 
 endmenu
diff --git a/drivers/soc/Makefile b/drivers/soc/Makefile
index 75ae4382ff77..9bff737b78c4 100644
--- a/drivers/soc/Makefile
+++ b/drivers/soc/Makefile
@@ -5,4 +5,3 @@ obj-$(CONFIG_KVX)		+= kvx/
 obj-$(CONFIG_ARCH_ROCKCHIP)	+= rockchip/
 obj-$(CONFIG_CPU_SIFIVE)	+= sifive/
 obj-$(CONFIG_SOC_STARFIVE)	+= starfive/
-obj-y += ti/
diff --git a/drivers/soc/imx/Kconfig b/drivers/soc/imx/Kconfig
index 57f5577acec8..333a134d3f9f 100644
--- a/drivers/soc/imx/Kconfig
+++ b/drivers/soc/imx/Kconfig
@@ -1,12 +1,6 @@
 # SPDX-License-Identifier: GPL-2.0-only
 menu "i.MX SoC drivers"
 
-config IMX_GPCV2_PM_DOMAINS
-	bool "i.MX GPCv2 PM domains"
-	depends on ARCH_IMX7 || ARCH_IMX8M
-	select PM_GENERIC_DOMAINS
-	default y if ARCH_IMX7 || ARCH_IMX8M
-
 config IMX8M_FEATCTRL
 	bool "i.MX8M feature controller"
 	depends on ARCH_IMX8M
diff --git a/drivers/soc/imx/Makefile b/drivers/soc/imx/Makefile
index bd1717b03883..54d8002a588c 100644
--- a/drivers/soc/imx/Makefile
+++ b/drivers/soc/imx/Makefile
@@ -1,3 +1,2 @@
 # SPDX-License-Identifier: GPL-2.0-only
-obj-$(CONFIG_IMX_GPCV2_PM_DOMAINS) += gpcv2.o
 obj-$(CONFIG_IMX8M_FEATCTRL) += imx8m-featctrl.o
-- 
2.39.2




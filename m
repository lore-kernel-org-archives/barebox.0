Delivery-date: Fri, 03 Mar 2023 10:24:37 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pY1eU-007NbQ-0k
	for lore@lore.pengutronix.de; Fri, 03 Mar 2023 10:24:37 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pY1eS-0001SU-Df
	for lore@pengutronix.de; Fri, 03 Mar 2023 10:24:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GNFgthoY4UEYJX1P+kSGcWJeme6pQMynkV96aakYQdI=; b=kodEu0ksGbH4LNs4Hlkf70Y3Y2
	6aWKMSfsvh8OWoiCd/4t3PE/ZNlVsjDfx9Pl8sFA2S27ca5Z2LzRHGfSZCgaZdxiQay6oFxhuuchD
	yEDcNmXFwthsE9BLfCY4aB3s1eAShmuxQe+C2W2BBXTLEmXSWkBt/q1UW5+9yMBiXL4SaHlnx76my
	INqVOnXpZiSrYTtVTnCvU8cypmzlAd7C/IPTxVY3p1qEKkBB1TAsQJf79NmrllNAhxGPV/Zw7b8yJ
	BH9wzC8ZwB1y8q0H8yU+IEuCNC7QRlARSv4f2IEXqSl5KhnqvUCb4KX6znqCptUGVrOrx8V+QH7Ww
	sezoXW3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY1cy-005fGQ-R6; Fri, 03 Mar 2023 09:23:01 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY1br-005eUm-LG
	for barebox@bombadil.infradead.org; Fri, 03 Mar 2023 09:21:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=GNFgthoY4UEYJX1P+kSGcWJeme6pQMynkV96aakYQdI=; b=t/ZqkCzTj4HJdGLi5Qi4cnVhDg
	nRkcNVM5KWJioCSVLB0o6jzKrwTZS6zxB4ROu+MlLCr69oazPelQTFisQmd1mLTiCdUPRIYHypaIX
	mEs5gT2bonOh+ZSFmK4C5GM7+hI6kmhUFX+Pa9nW+b2cAvGfVtBu/0q+o1TiTaSqsaUyHJm40EgWP
	Gd55x7U/GDZ4gieR/W/VjYxw+G02Pq9gTelkTZ7YWMMsj6Tk8rfauz76lH09HtYyvoFCB1Ag1duHP
	LFwKtEDs7zaUnTAwciEsn47a5n1smxytzIPWFSAYhWm/vJKlmJSK22fGHDXJ0KOSlqy8q8Y4dugpR
	PsL+nwVg==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY1bn-0031NF-6B
	for barebox@lists.infradead.org; Fri, 03 Mar 2023 09:21:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1bk-0000Ji-DR; Fri, 03 Mar 2023 10:21:44 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1bj-001Wk9-Qh; Fri, 03 Mar 2023 10:21:43 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1ba-00F2jS-V1; Fri, 03 Mar 2023 10:21:34 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri,  3 Mar 2023 10:21:16 +0100
Message-Id: <20230303092131.3063587-36-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230303092131.3063587-1-s.hauer@pengutronix.de>
References: <20230303092131.3063587-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230303_092147_799701_6F984764 
X-CRM114-Status: GOOD (  16.69  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 35/50] pm_domains: Enable explicitly when we have power-domain providers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Many SoCs provide power-domains in their device trees. In barebox
we most of the time do not have drivers for the power-domains. This
is no problem for most of the time as the necessary power domains
are either default on or enabled during early SoC init.
With multi-arch support it can happen that we compile in SoCs for
which we do not have power-domain drivers and other SoCs where we
need a power-domain driver. The example I stumbled upon is the
i.MX7 on the one hand which has a driver and OMAP on the other hand
which has power-domains described in the device tree for which
we do not have (and do not currently need) a driver.

To be able to handle both situations let's enable pm_domain support
explicitly on SoCs we know we have a driver for.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/imx7.c  |  3 +++
 arch/arm/mach-imx/imx8m.c |  3 +++
 drivers/base/power.c      | 10 ++++++++++
 include/pm_domain.h       |  6 ++++++
 4 files changed, 22 insertions(+)

diff --git a/arch/arm/mach-imx/imx7.c b/arch/arm/mach-imx/imx7.c
index 31d49c35e7..fbbed423c0 100644
--- a/arch/arm/mach-imx/imx7.c
+++ b/arch/arm/mach-imx/imx7.c
@@ -3,6 +3,7 @@
 #include <init.h>
 #include <common.h>
 #include <io.h>
+#include <pm_domain.h>
 #include <linux/sizes.h>
 #include <asm/psci.h>
 #include <mach/imx/imx7.h>
@@ -161,5 +162,7 @@ int imx7_init(void)
 	imx_set_silicon_revision(cputypestr, imx7_cpu_revision());
 	imx_set_reset_reason(src + IMX7_SRC_SRSR, imx7_reset_reasons);
 
+	genpd_activate();
+
 	return 0;
 }
diff --git a/arch/arm/mach-imx/imx8m.c b/arch/arm/mach-imx/imx8m.c
index 37ef17bc8e..32f1896b89 100644
--- a/arch/arm/mach-imx/imx8m.c
+++ b/arch/arm/mach-imx/imx8m.c
@@ -3,6 +3,7 @@
 #include <init.h>
 #include <common.h>
 #include <io.h>
+#include <pm_domain.h>
 #include <asm/syscounter.h>
 #include <asm/system.h>
 #include <mach/imx/generic.h>
@@ -54,6 +55,8 @@ static int imx8m_init(const char *cputypestr)
 	void __iomem *src = IOMEM(MX8M_SRC_BASE_ADDR);
 	struct arm_smccc_res res;
 
+	genpd_activate();
+
 	/*
 	 * Reset reasons seem to be identical to that of i.MX7
 	 */
diff --git a/drivers/base/power.c b/drivers/base/power.c
index 8e999c3e14..2db24329dd 100644
--- a/drivers/base/power.c
+++ b/drivers/base/power.c
@@ -237,6 +237,13 @@ static int __genpd_dev_pm_attach(struct device *dev, struct device_node *np,
 	return ret ?: 1;
 }
 
+static bool have_genpd_providers;
+
+void genpd_activate(void)
+{
+	have_genpd_providers = true;
+}
+
 /**
  * genpd_dev_pm_attach - Attach a device to its PM domain using DT.
  * @dev: Device to attach.
@@ -255,6 +262,9 @@ int genpd_dev_pm_attach(struct device *dev)
 	if (!dev->of_node)
 		return 0;
 
+	if (!have_genpd_providers)
+		return 0;
+
 	/*
 	 * Devices with multiple PM domains must be attached separately, as we
 	 * can only attach one PM domain per device.
diff --git a/include/pm_domain.h b/include/pm_domain.h
index fac7f99227..d297053531 100644
--- a/include/pm_domain.h
+++ b/include/pm_domain.h
@@ -23,6 +23,8 @@ typedef struct generic_pm_domain *(*genpd_xlate_t)(struct of_phandle_args *args,
 
 #ifdef CONFIG_PM_GENERIC_DOMAINS
 
+void genpd_activate(void);
+
 int genpd_dev_pm_attach(struct device *dev);
 
 /**
@@ -58,6 +60,10 @@ void pm_genpd_print(void);
 
 #else
 
+static inline void genpd_activate(void)
+{
+}
+
 static inline int pm_genpd_init(struct generic_pm_domain *genpd,
 				void *gov, bool is_off)
 {
-- 
2.30.2




Delivery-date: Wed, 03 Jun 2026 15:35:23 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wUlkh-001wTc-1n
	for lore@lore.pengutronix.de;
	Wed, 03 Jun 2026 15:35:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wUlkg-0004Nl-Lt
	for lore@pengutronix.de; Wed, 03 Jun 2026 15:35:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=g6WZDmEtCdPQmMKv/1uT07PioijY0xes/l6F6Bs8lCU=; b=fejfiRWSBGgw1VSQ0ltCxZC90g
	o4W4ZlUZB1zSMFipMUdBqGk0yFRGO4rXEQvraD2gqT0nezB2APfvn9Fbd8QK22v6LbSca2xm6ZNim
	Ar84MM+AtZy0QeCTChP35JLRHP0iHiGZUPPNNt1C6l2RrXohOsTS2M2mG/LA/AREd4OjpnzRCo8E+
	8ziO/D4IugnSlvBtTODsDxA/laVEK3ahlEocq+DBdKFB87/fA/N1biH3+9iYUy2S6lCoYSDKSNZwa
	Yi/kP22eooqbYjDZLnuNwQHPqfshvYRtyt86BJHk2+A1e2cEteUo7moheDRSzUVWtDZPUQTQX08jH
	NPZ0Gang==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUljC-0000000FBFm-1ZeK;
	Wed, 03 Jun 2026 13:33:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wUlj7-0000000FBDf-30U6
	for barebox@lists.infradead.org;
	Wed, 03 Jun 2026 13:33:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1wUlj4-0003n8-DF; Wed, 03 Jun 2026 15:33:42 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1wUlj4-000v73-16;
	Wed, 03 Jun 2026 15:33:42 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1wUlj4-00000009uCD-131c;
	Wed, 03 Jun 2026 15:33:42 +0200
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Date: Wed, 03 Jun 2026 15:33:45 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260603-feature-snvs-imx6ul-v1-4-6305f63bd3fa@pengutronix.de>
References: <20260603-feature-snvs-imx6ul-v1-0-6305f63bd3fa@pengutronix.de>
In-Reply-To: <20260603-feature-snvs-imx6ul-v1-0-6305f63bd3fa@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 "open list:BAREBOX" <barebox@lists.infradead.org>
Cc: Stefan Kerkmann <s.kerkmann@pengutronix.de>
X-Mailer: b4 0.15.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260603_063345_778128_15FFAD4D 
X-CRM114-Status: GOOD (  12.24  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 4/4] ARM: i.MX6UL: initialize SNVS
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The snvs lpgr register can only be written after initializing the snvs
peripheral. Which is identical across the i.MX8/7/6 families.

Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
---
 arch/arm/mach-imx/Kconfig    | 2 +-
 arch/arm/mach-imx/cpu_init.c | 2 ++
 arch/arm/mach-imx/snvs.c     | 8 ++++++++
 include/mach/imx/snvs.h      | 1 +
 4 files changed, 12 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 7f78e5282f..9d198e5406 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -70,7 +70,7 @@ config ARCH_IMX_TZASC
 
 config ARCH_IMX_SNVS
 	bool
-	depends on ARCH_IMX7 || ARCH_IMX8M
+	depends on ARCH_IMX6 || ARCH_IMX7 || ARCH_IMX8M
 	default y
 
 #
diff --git a/arch/arm/mach-imx/cpu_init.c b/arch/arm/mach-imx/cpu_init.c
index e0fa459fe7..4fd72a6f30 100644
--- a/arch/arm/mach-imx/cpu_init.c
+++ b/arch/arm/mach-imx/cpu_init.c
@@ -12,6 +12,7 @@
 #include <mach/imx/imx8mq-regs.h>
 #include <mach/imx/imx8m-ccm-regs.h>
 #include <mach/imx/imx9-regs.h>
+#include <mach/imx/snvs.h>
 #include <mach/imx/trdc.h>
 #include <io.h>
 #include <asm/cache.h>
@@ -52,6 +53,7 @@ void imx6ul_cpu_lowlevel_init(void)
 {
 	cortex_a7_lowlevel_init();
 	arm_cpu_lowlevel_init();
+	imx6_setup_snvs();
 }
 
 void imx7_cpu_lowlevel_init(void)
diff --git a/arch/arm/mach-imx/snvs.c b/arch/arm/mach-imx/snvs.c
index 8ec8accf6a..eb049eaf6f 100644
--- a/arch/arm/mach-imx/snvs.c
+++ b/arch/arm/mach-imx/snvs.c
@@ -3,6 +3,7 @@
 #include <io.h>
 #include <linux/bits.h>
 #include <mach/imx/snvs.h>
+#include <mach/imx/imx6-regs.h>
 #include <mach/imx/imx7-regs.h>
 #include <mach/imx/imx8m-regs.h>
 
@@ -36,6 +37,13 @@ void imx7_setup_snvs(void)
 	snvs_init(snvs);
 }
 
+void imx6_setup_snvs(void)
+{
+	void __iomem *snvs = IOMEM(MX6_SNVS_BASE_ADDR);
+
+	snvs_init(snvs);
+}
+
 void imx8m_setup_snvs(void)
 {
 	void __iomem *snvs = IOMEM(MX8M_SNVS_BASE_ADDR);
diff --git a/include/mach/imx/snvs.h b/include/mach/imx/snvs.h
index 65e1da34f0..dde2602074 100644
--- a/include/mach/imx/snvs.h
+++ b/include/mach/imx/snvs.h
@@ -3,6 +3,7 @@
 #ifndef __MACH_IMX_SNVS_H
 #define __MACH_IMX_SNVS_H
 
+void imx6_setup_snvs(void);
 void imx7_setup_snvs(void);
 void imx8m_setup_snvs(void);
 

-- 
2.47.3




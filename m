Delivery-date: Fri, 22 May 2026 15:59:23 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wQQPL-002cq3-0c
	for lore@lore.pengutronix.de;
	Fri, 22 May 2026 15:59:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wQQPK-0005uz-HF
	for lore@pengutronix.de; Fri, 22 May 2026 15:59:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=p+UlpADd3I2NQuliS8K88gTwTKgNF0Sfe0W2Tqer4EE=; b=DHVhE3dj3soR8/1L4kuEQTCXUl
	+4SwJAyyWhKB7lNo3XVdIGopub0Yhmtm0Cp6LScU3u0qxHZpqpwJbAh2/dsn27zR56rXtTsHHMt/3
	eAuhifbWPebQ2cejeXffKpz7uz2SwulQM3Gluv2wqVvPHdcwPtUAVbIeLKpuM+Ro1S3hRh/XukFaB
	tgCAUGGsvD0BQontQSzNSrVNb24LSUuLDBQvc/TCCPdmqvGnD0J2EEBennkRN5glNW6UDrEMlZ6oh
	W2yVG+xi3lAx82dUhle6tuY1/8xM2kRBsZQIyLdvpPx0V+mwf3SjVuEzZfztqUQLu+NeK+ExkHtdy
	aHdS7gvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQQEY-0000000B2l9-3XaC;
	Fri, 22 May 2026 13:48:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQQEW-0000000B2kV-0PS9
	for barebox@lists.infradead.org;
	Fri, 22 May 2026 13:48:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wQQES-0004DU-Vw; Fri, 22 May 2026 15:48:09 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wQQES-001HDz-1A;
	Fri, 22 May 2026 15:48:08 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wQQES-0000000CXL2-3SdR;
	Fri, 22 May 2026 15:48:08 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: str@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 22 May 2026 15:48:00 +0200
Message-ID: <20260522134803.2988021-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260522_064812_135849_EBDE3994 
X-CRM114-Status: GOOD (  10.59  )
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
Subject: [PATCH] ARM: i.MX: prevent use of imx_cpu_type in PBL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Functions like cpu_is_mx6q internally call cpu_is_mx6() first,
which can be evaluated at compile-time if only i.MX6 boards are enabled.

This allowed calling cpu_is_mx6q in PBL entry points as long as barebox was
compiled for only a single SoC.

Since the multi-arch/multi-platform support was added however,
cpu_is_mx6 became a runtime check that's never true in PBL, leading all
cpu_is_mx* in 32-boards to silently fail at runtime.

We have no in-tree boards that are affected by this, so until some
out-of-tree user is bothered enough to fix is, acknowledge that this no
longer works and turn the silent breakage into a loud compile-time error
whenever anything ends up referencing __imx_cpu_type.

Fixes: 1826809f122e ("ARM: i.MX: fix cpu_is_imx on CONFIG_ARM_MULTIARCH configurations")
Fixes: 60a3fd36fa1e ("arm: mach-imx: set cpu type in pbl")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-imx/Makefile |  4 ++--
 include/mach/imx/generic.h | 11 +++++++++++
 2 files changed, 13 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-imx/Makefile b/arch/arm/mach-imx/Makefile
index a7d60068b954..5c26af577504 100644
--- a/arch/arm/mach-imx/Makefile
+++ b/arch/arm/mach-imx/Makefile
@@ -20,7 +20,7 @@ obj-$(CONFIG_ARCH_VF610) += vf610.o
 obj-pbl-$(CONFIG_ARCH_IMX8M) += imx8m.o
 obj-pbl-$(CONFIG_ARCH_IMX_SCRATCHMEM) += scratch.o
 obj-$(CONFIG_ARCH_IMX9) += imx9.o imx-v3-image.o
-lwl-$(CONFIG_ARCH_IMX_ATF) += atf.o
+lwl-$(CONFIG_ARCH_IMX_ATF) += atf.o imx.o
 obj-pbl-$(CONFIG_ARCH_IMX_TZASC) += tzasc.o
 obj-pbl-$(CONFIG_ARCH_IMX_ROMAPI) += romapi.o
 obj-$(CONFIG_IMX_IIM)	+= iim.o
@@ -28,7 +28,7 @@ obj-$(CONFIG_NAND_IMX) += nand.o
 lwl-$(CONFIG_ARCH_IMX_EXTERNAL_BOOT_NAND) += external-nand-boot.o
 obj-y += imx.o
 obj-$(CONFIG_CMD_BOOTROM) += bootrom-cmd.o
-obj-pbl-y += esdctl.o boot.o imx.o
+obj-pbl-y += esdctl.o boot.o
 obj-$(CONFIG_BAREBOX_UPDATE) += imx-bbu-internal.o
 obj-$(CONFIG_BAREBOX_UPDATE_IMX_EXTERNAL_NAND) += imx-bbu-external-nand.o
 pbl-$(CONFIG_USB_GADGET_DRIVER_ARC_PBL) += imx-udc.o
diff --git a/include/mach/imx/generic.h b/include/mach/imx/generic.h
index 5f81aa65a745..0b06c00ac46d 100644
--- a/include/mach/imx/generic.h
+++ b/include/mach/imx/generic.h
@@ -86,12 +86,23 @@ static inline bool imx8mp_keep_compatible_soc_uid(void)
 /* range e.g. GPIO_1_5 is gpio 5 under linux */
 #define IMX_GPIO_NR(bank, nr)		(((bank) - 1) * 32 + (nr))
 
+#if IN_PROPER || defined(CONFIG_ARCH_IMX_ATF)
 extern unsigned int __imx_cpu_type;
 
 static __always_inline void imx_set_cpu_type(unsigned int cpu_type)
 {
 	__imx_cpu_type = cpu_type;
 }
+#else
+/*
+ * If you need this in your PBL entry point, consider using functions
+ * that only query the hardware directly like __cpu_mx6_is_*().
+ */
+extern int __imx_cpu_type(void) __compiletime_error("This API is not available in PBL");
+
+#define __imx_cpu_type __imx_cpu_type()
+#endif
+
 
 #ifdef CONFIG_ARCH_IMX1
 # ifdef imx_cpu_type
-- 
2.47.3




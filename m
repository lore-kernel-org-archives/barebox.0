Delivery-date: Fri, 05 Aug 2022 14:56:13 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oJws6-00CWHg-TI
	for lore@lore.pengutronix.de; Fri, 05 Aug 2022 14:56:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oJws6-0005DE-Qr
	for lore@pengutronix.de; Fri, 05 Aug 2022 14:56:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KBDXogIT2DUlaroPkMjxAhrB9t8G2FHEttpC0jNKGp8=; b=EyeR/cE5EHPUW9sgnHuMRjWdj2
	ce5DKDR+0FgupT/3bOVNWErkHD6AJVxYRFnMVPD0gyHadLuzDd//DcNAgpj456UvfNXZZK/Zk8VaP
	QigPOCoZeIzaugNYyoZO/l9RGSHSiksIZCtu1cC5dc5fonPvu+0/FBLdWAmxY5qWVI3HAzjyn+kFF
	WKPl/jATGS7udEuYfI0AJ75QaqZEBbzMEa3yA45o//J8ADXMT3/HxEmfQz4wfUrTE7WD3Y6LGpxnd
	q28cqarSEPPblO5mcHQ5N+FaCPmcY2jP+0QOX4afYqS/I379n2EATrOtQVEFZrovUuY7bWYWPHrIu
	plYVaZyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oJwqZ-00FA8s-Hx; Fri, 05 Aug 2022 12:54:35 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oJwqJ-00FA0B-7n
	for barebox@lists.infradead.org; Fri, 05 Aug 2022 12:54:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oJwqH-0004ba-4P; Fri, 05 Aug 2022 14:54:17 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oJwqE-001tgQ-2w; Fri, 05 Aug 2022 14:54:16 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oJwqF-004vtA-45; Fri, 05 Aug 2022 14:54:15 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: mfe@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri,  5 Aug 2022 14:54:05 +0200
Message-Id: <20220805125413.1046239-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220805125413.1046239-1-a.fatoum@pengutronix.de>
References: <20220805125413.1046239-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220805_055419_379116_198A2164 
X-CRM114-Status: GOOD (  11.92  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/9] ARM: i.MX8M: move TF-A chainload functions in <mach/xload.h>
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We already have <mach/xload.h> with related functions, so reuse that
header instead of adding a new one.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boards/nxp-imx8mm-evk/lowlevel.c        | 2 +-
 arch/arm/boards/nxp-imx8mp-evk/lowlevel.c        | 1 -
 arch/arm/boards/protonic-imx8m/lowlevel-prt8mm.c | 1 -
 arch/arm/mach-imx/atf.c                          | 1 -
 arch/arm/mach-imx/include/mach/xload.h           | 3 +++
 include/soc/imx8m.h                              | 9 ---------
 6 files changed, 4 insertions(+), 13 deletions(-)
 delete mode 100644 include/soc/imx8m.h

diff --git a/arch/arm/boards/nxp-imx8mm-evk/lowlevel.c b/arch/arm/boards/nxp-imx8mm-evk/lowlevel.c
index d13474602cb2..888bdd079083 100644
--- a/arch/arm/boards/nxp-imx8mm-evk/lowlevel.c
+++ b/arch/arm/boards/nxp-imx8mm-evk/lowlevel.c
@@ -15,7 +15,7 @@
 #include <mach/iomux-mx8mm.h>
 #include <mach/imx8m-ccm-regs.h>
 #include <mfd/bd71837.h>
-#include <soc/imx8m.h>
+#include <mach/xload.h>
 #include <soc/imx8m/ddr.h>
 #include <image-metadata.h>
 
diff --git a/arch/arm/boards/nxp-imx8mp-evk/lowlevel.c b/arch/arm/boards/nxp-imx8mp-evk/lowlevel.c
index df4925f533e7..338c8024c4a1 100644
--- a/arch/arm/boards/nxp-imx8mp-evk/lowlevel.c
+++ b/arch/arm/boards/nxp-imx8mp-evk/lowlevel.c
@@ -22,7 +22,6 @@
 #include <mfd/pca9450.h>
 #include <soc/imx8m/ddr.h>
 #include <soc/fsl/fsl_udc.h>
-#include <soc/imx8m.h>
 
 extern char __dtb_z_imx8mp_evk_start[];
 
diff --git a/arch/arm/boards/protonic-imx8m/lowlevel-prt8mm.c b/arch/arm/boards/protonic-imx8m/lowlevel-prt8mm.c
index c3272654265a..bfae39ea522e 100644
--- a/arch/arm/boards/protonic-imx8m/lowlevel-prt8mm.c
+++ b/arch/arm/boards/protonic-imx8m/lowlevel-prt8mm.c
@@ -14,7 +14,6 @@
 #include <mach/xload.h>
 #include <soc/fsl/fsl_udc.h>
 #include <soc/imx8m/ddr.h>
-#include <soc/imx8m.h>
 
 extern char __dtb_z_imx8mm_prt8mm_start[];
 
diff --git a/arch/arm/mach-imx/atf.c b/arch/arm/mach-imx/atf.c
index d9aaee1bc621..8fc523d3de61 100644
--- a/arch/arm/mach-imx/atf.c
+++ b/arch/arm/mach-imx/atf.c
@@ -7,7 +7,6 @@
 #include <mach/generic.h>
 #include <mach/xload.h>
 #include <mach/romapi.h>
-#include <soc/imx8m.h>
 #include <soc/fsl/fsl_udc.h>
 
 /**
diff --git a/arch/arm/mach-imx/include/mach/xload.h b/arch/arm/mach-imx/include/mach/xload.h
index 03ec23ebbdb0..cfc52a94879d 100644
--- a/arch/arm/mach-imx/include/mach/xload.h
+++ b/arch/arm/mach-imx/include/mach/xload.h
@@ -13,6 +13,9 @@ int imx8m_esdhc_load_image(int instance, bool start);
 int imx8mn_esdhc_load_image(int instance, bool start);
 int imx8mp_esdhc_load_image(int instance, bool start);
 
+void imx8mm_load_and_start_image_via_tfa(void);
+void imx8mp_load_and_start_image_via_tfa(void);
+
 int imx_image_size(void);
 int piggydata_size(void);
 
diff --git a/include/soc/imx8m.h b/include/soc/imx8m.h
deleted file mode 100644
index 15f7a4c2c001..000000000000
--- a/include/soc/imx8m.h
+++ /dev/null
@@ -1,9 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-
-#ifndef __MACH_IMX8M_H__
-#define __MACH_IMX8M_H__
-
-void imx8mm_load_and_start_image_via_tfa(void);
-void imx8mp_load_and_start_image_via_tfa(void);
-
-#endif
-- 
2.30.2




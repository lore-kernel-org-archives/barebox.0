Delivery-date: Mon, 30 Jun 2025 10:06:28 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uW9X2-00CYd5-2Y
	for lore@lore.pengutronix.de;
	Mon, 30 Jun 2025 10:06:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uW9X2-0006Ru-3W
	for lore@pengutronix.de; Mon, 30 Jun 2025 10:06:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YdfFXTukPEE+uzAPIRx3wuZbo4Tu8WqQvi8WHhcg12E=; b=Kr6BpjwidkI3tM9QO2h+RWE57+
	M0DEJRq9eUNUDDVyJwwlCb3tbaV3DU3bTfTuZBw+/Q98Uj/rkOiUkcBWWUnww3pkUrNDuT6UJ8MBX
	us4FDGw8GKrmwcSQnSpmMcHrvRst3idzW5BwXSPZV38PU2nwmBVuHf3k3H6rFxg5ZDknN7E0VZKGG
	/oNREI8zKWjNv37+dCcOfmQBgHPt+OyM3x993a2t03ybbhLVmOZm1JJfz7kxcEnmOx1CdihhH3p+E
	ctEv0gi7WoBUf8UzzFdZ7u367BoLsVM/IlA4gbJVHNtHo0huStQZ8jmeR2pF6qhg9LnhbUqKP1opU
	jskTsE7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uW9WY-00000001Z1U-3qVk;
	Mon, 30 Jun 2025 08:05:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uW9VR-00000001Yke-3A9d
	for barebox@lists.infradead.org;
	Mon, 30 Jun 2025 08:04:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uW9VQ-0004rx-HK; Mon, 30 Jun 2025 10:04:48 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uW9VQ-0064Ql-15;
	Mon, 30 Jun 2025 10:04:48 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uW9D2-004Sjo-0c;
	Mon, 30 Jun 2025 09:45:48 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 30 Jun 2025 09:45:55 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250630-arm-optee-early-helper-v2-13-c8cce3ae42b0@pengutronix.de>
References: <20250630-arm-optee-early-helper-v2-0-c8cce3ae42b0@pengutronix.de>
In-Reply-To: <20250630-arm-optee-early-helper-v2-0-c8cce3ae42b0@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1751269548; l=3200;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=SvndqJX6UaZeJFOEbfBP1gUJ5zrxUBXpDeItoIcTpDI=;
 b=XC6eHpkdm4mKPOqjGVTIRx2u296eamzQJhxlXigXRRo/KVWsmRky8pTYzhVeWEtHM3cOGX/58
 Z2D2oidQFoiBSyWzM1b5jQty/cXuFWKECNzg+gax+R59SC7buhgl01g
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250630_010449_816998_3F8B9D70 
X-CRM114-Status: GOOD (  15.81  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 13/14] ARM: i.MX: Webasto ccbv2: fix barebox
 chainloading with OP-TEE enabled
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

When barebox starts we have to guess if we have to start OP-TEE or not.
The current detection works by checking if the first stage passed us a
device tree pointer. This is not robust and might have security issues
[1], so replace that with the check with imx6_can_access_tzasc(). If we
can access the TZASC then we are the first stage and configure it and
start OP-TEE, otherwise assume that we are chainloaded and continue
without starting OP-TEE.

Chainloading barebox with OP-TEE enabled contained several bugs, so it
never actually worked. This patch fixes them.

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/webasto-ccbv2/lowlevel.c | 24 +++++++++---------------
 1 file changed, 9 insertions(+), 15 deletions(-)

diff --git a/arch/arm/boards/webasto-ccbv2/lowlevel.c b/arch/arm/boards/webasto-ccbv2/lowlevel.c
index 7a198bd801d41e61e6ab4b3c284948154b61d1ca..c25f8a9cb3ce58742576aa05193f1cf730e2e2c7 100644
--- a/arch/arm/boards/webasto-ccbv2/lowlevel.c
+++ b/arch/arm/boards/webasto-ccbv2/lowlevel.c
@@ -13,6 +13,7 @@
 #include <mach/imx/iomux-mx6ul.h>
 #include <asm/cache.h>
 #include <tee/optee.h>
+#include <mach/imx/tzasc.h>
 
 #include "ccbv2.h"
 
@@ -31,28 +32,21 @@ static void configure_uart(void)
 
 }
 
-static void noinline start_ccbv2(u32 r0, unsigned long mem_size, char *fdt)
+static void noinline start_ccbv2(unsigned long mem_size, char *fdt)
 {
 	int tee_size;
 	void *tee;
 
-	/* Enable normal/secure r/w for TZC380 region0 */
-	writel(0xf0000000, 0x021D0108);
-
 	configure_uart();
 
 	/*
-	 * Chainloading barebox will pass a device tree within the RAM in r0,
-	 * skip OP-TEE early loading in this case
+	 * Skip loading barebox when we are chainloaded. We can detect that by detecting
+	 * if we can access the TZASC.
 	 */
-	if(IS_ENABLED(CONFIG_FIRMWARE_CCBV2_OPTEE)
-	   && !(r0 > MX6_MMDC_P0_BASE_ADDR
-	        &&  r0 < MX6_MMDC_P0_BASE_ADDR + mem_size)) {
+	if (IS_ENABLED(CONFIG_FIRMWARE_TQMA6UL_OPTEE) && imx6_can_access_tzasc()) {
 		get_builtin_firmware(ccbv2_optee_bin, &tee, &tee_size);
 
-		memset((void *)OPTEE_OVERLAY_LOCATION, 0, 0x1000);
-
-		start_optee_early(NULL, tee);
+		imx6ul_start_optee_early(NULL, tee, (void *)OPTEE_OVERLAY_LOCATION, 0x1000);
 	}
 
 	imx6ul_barebox_entry(fdt);
@@ -70,7 +64,7 @@ ENTRY_FUNCTION(start_imx6ul_ccbv2_256m, r0, r1, r2)
 	setup_c();
 	barrier();
 
-	start_ccbv2(r0, SZ_256M, __dtb_z_imx6ul_webasto_ccbv2_start);
+	start_ccbv2(SZ_256M, __dtb_z_imx6ul_webasto_ccbv2_start);
 }
 
 ENTRY_FUNCTION(start_imx6ul_ccbv2_512m, r0, r1, r2)
@@ -83,7 +77,7 @@ ENTRY_FUNCTION(start_imx6ul_ccbv2_512m, r0, r1, r2)
 	setup_c();
 	barrier();
 
-	start_ccbv2(r0, SZ_512M, __dtb_z_imx6ul_webasto_ccbv2_start);
+	start_ccbv2(SZ_512M, __dtb_z_imx6ul_webasto_ccbv2_start);
 }
 
 extern char __dtb_z_imx6ul_webasto_marvel_start[];
@@ -97,5 +91,5 @@ ENTRY_FUNCTION(start_imx6ul_marvel, r0, r1, r2)
 	setup_c();
 	barrier();
 
-	start_ccbv2(r0, SZ_512M, __dtb_z_imx6ul_webasto_marvel_start);
+	start_ccbv2(SZ_512M, __dtb_z_imx6ul_webasto_marvel_start);
 }

-- 
2.39.5




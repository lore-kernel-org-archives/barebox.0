Delivery-date: Fri, 27 Jun 2025 17:09:59 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uVAiE-00Bepi-38
	for lore@lore.pengutronix.de;
	Fri, 27 Jun 2025 17:09:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uVAiD-0004j7-EE
	for lore@pengutronix.de; Fri, 27 Jun 2025 17:09:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dH3p7xbfGrYDlFeEDpAWK9uIbzNycYtdO/I2zO/vkng=; b=gA4vNWh8q0Za3mw5AS958gyKOt
	AeqjPvYjznrzJ1WJsGjHQCSvUb3W9XnTiSKL0DzTs9AqAMnwd57Mbn6Lful1EjULyTfUxlziK0qNx
	xfoVQQFuE+k4J94/uuGsZ8BCNmskVIFXaFEBLh3pdOxFPDe8K5tW0b4iOJZO0GzxNXUXIMOAVl0yz
	TNmQVLMDIpwRU/SGkxWpZFCD1XVAuBsyH3f/GEzNLNt56ycOP9B5CXUtrUpLxkuugjWJ+TeOb1BEC
	cA1EF7pIm0wlOBOyS66Zj4x3kLLihc1r+zvCD1GN8z53do7c8QUga7OgZh61X1l6DU6g07ufRmT7D
	1eZENkEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uVAhi-0000000F0xt-0PGD;
	Fri, 27 Jun 2025 15:09:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uVAAu-0000000Evk4-0f9J
	for barebox@lists.infradead.org;
	Fri, 27 Jun 2025 14:35:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uVAAt-0008Nq-20; Fri, 27 Jun 2025 16:35:31 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uVAAs-005dIs-2l;
	Fri, 27 Jun 2025 16:35:30 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uV9kG-004uPv-2U;
	Fri, 27 Jun 2025 16:08:00 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 27 Jun 2025 16:07:57 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250627-arm-optee-early-helper-v1-11-4b098e8ac7cd@pengutronix.de>
References: <20250627-arm-optee-early-helper-v1-0-4b098e8ac7cd@pengutronix.de>
In-Reply-To: <20250627-arm-optee-early-helper-v1-0-4b098e8ac7cd@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1751033280; l=3147;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=9fMb1fK1w04dZ+t6eMbt8USKyX/iKVY7imTfxfPySTI=;
 b=XdOka6RWWhmYSZD6J4prtHS67sBl3dDNzpC6uSv3qsd6zKO07jnnKaq034J2SZQ0tqek9fyVk
 7A+tM4Fg9jDDgZVccgG/qcVvCyIDMA8IR6J5Sh8Rr1sV66Rh+CN7lfc
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250627_073533_146265_1F95595D 
X-CRM114-Status: GOOD (  15.59  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 11/14] ARM: i.MX: tqma6ulx: fix barebox chainloading with
 OP-TEE enabled
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

[1] https://lore.kernel.org/70b41f3b-4329-48f7-827f-1924e002ab04@pengutronix.de

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/tqma6ulx/lowlevel.c | 22 +++++++++-------------
 arch/arm/mach-imx/Kconfig           |  1 +
 2 files changed, 10 insertions(+), 13 deletions(-)

diff --git a/arch/arm/boards/tqma6ulx/lowlevel.c b/arch/arm/boards/tqma6ulx/lowlevel.c
index 5fd997d2ec7e79c7319237a4ae52216e584ba5cd..da67e67537167096477de2b905ee5c42c653c3af 100644
--- a/arch/arm/boards/tqma6ulx/lowlevel.c
+++ b/arch/arm/boards/tqma6ulx/lowlevel.c
@@ -16,6 +16,8 @@
 #include <pbl/i2c.h>
 #include <boards/tq/tq_eeprom.h>
 #include <tee/optee.h>
+#include <mach/imx/tzasc.h>
+#include <tee/optee.h>
 
 #include "tqma6ulx.h"
 
@@ -66,7 +68,7 @@ static void *read_eeprom(void)
 	return fdt;
 }
 
-static void noinline start_mba6ulx(u32 r0)
+static void noinline start_mba6ulx(void)
 {
 	void *fdt;
 	int tee_size;
@@ -76,21 +78,15 @@ static void noinline start_mba6ulx(u32 r0)
 
 	fdt = read_eeprom();
 
-	/* Enable normal/secure r/w for TZC380 region0 */
-	writel(0xf0000000, 0x021D0108);
-
 	/*
-	 * Chainloading barebox will pass a device tree within the RAM in r0,
-	 * skip OP-TEE early loading in this case
+	 * Skip loading barebox when we are chainloaded. We can detect that by detecting
+	 * if we can access the TZASC.
 	 */
-	if (IS_ENABLED(CONFIG_FIRMWARE_TQMA6UL_OPTEE) &&
-	    !(r0 > MX6_MMDC_P0_BASE_ADDR &&
-	      r0 < MX6_MMDC_P0_BASE_ADDR + SZ_256M)) {
-		get_builtin_firmware(mba6ul_optee_bin, &tee, &tee_size);
+	if (IS_ENABLED(CONFIG_FIRMWARE_TQMA6UL_OPTEE) && imx6_can_access_tzasc()) {
 
-		memset((void *)OPTEE_OVERLAY_LOCATION, 0, 0x1000);
+		get_builtin_firmware(mba6ul_optee_bin, &tee, &tee_size);
 
-		start_optee_early(NULL, tee);
+		imx6ul_start_optee_early(NULL, tee, (void *)OPTEE_OVERLAY_LOCATION, 0x1000);
 	}
 
 	imx6ul_barebox_entry(fdt);
@@ -112,5 +108,5 @@ ENTRY_FUNCTION(start_imx6ul_mba6ulx, r0, r1, r2)
 	setup_c();
 	barrier();
 
-	start_mba6ulx(r0);
+	start_mba6ulx();
 }
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 552e7227a0221fee8232dfba5dcdd60de923ff0c..1bf28b473af2b517a784c11d33f745ad74750583 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -490,6 +490,7 @@ config MACH_TQMA6X
 
 config MACH_TQMA6UL
 	bool "TQ tqma6ul on mba6ulx"
+	select CONFIG_ARM_EXCEPTIONS_PBL if FIRMWARE_TQMA6UL_OPTEE
 	select ARCH_IMX6UL
 	select BOARD_TQ
 	select I2C_IMX_EARLY

-- 
2.39.5




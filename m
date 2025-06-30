Delivery-date: Mon, 30 Jun 2025 10:06:30 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uW9X3-00CYdm-38
	for lore@lore.pengutronix.de;
	Mon, 30 Jun 2025 10:06:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uW9X3-0006Wj-BS
	for lore@pengutronix.de; Mon, 30 Jun 2025 10:06:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3teNu9Mf/D5yxEZXvqTnxsBXoXPIq6NoJ1YTFwSQkHs=; b=Ijkf5onqOUN+zsn7x9i0lxfszk
	xRSZpL1VhWXxnDDZKbZAUP7l54YOVFcIxhl9ekglQHsYRSYVOpXQzNONQQucQbQekvb7n4djcCD5p
	2E/PQiw/LLePc1PARH/BIzVgSj4//j7nafuhIOZn6GuqweRaZjq2oo6HWK3L9g409KG2jrlbs3wrJ
	cxqxG6DFpWBJgCBoipnsKk1EdsXtgP7c3MqgNpbOny6N6zACkbnyfwQJ4BsYNREA1uiSapOKx0DI4
	xXsd1qQmEa8YRSp3MlPFtKn1OoWdnnmS3t6s+arhiYNStzx/KzhsAqb5ybhkDcCAoj8WORzFFqfwa
	XizSMGgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uW9WZ-00000001Z1w-22fR;
	Mon, 30 Jun 2025 08:05:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uW9VR-00000001Ykb-2hPH
	for barebox@lists.infradead.org;
	Mon, 30 Jun 2025 08:04:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uW9VQ-0004rb-BK; Mon, 30 Jun 2025 10:04:48 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uW9VQ-0064Qe-0V;
	Mon, 30 Jun 2025 10:04:48 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uW9D2-004Sjo-0b;
	Mon, 30 Jun 2025 09:45:48 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 30 Jun 2025 09:45:54 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250630-arm-optee-early-helper-v2-12-c8cce3ae42b0@pengutronix.de>
References: <20250630-arm-optee-early-helper-v2-0-c8cce3ae42b0@pengutronix.de>
In-Reply-To: <20250630-arm-optee-early-helper-v2-0-c8cce3ae42b0@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1751269548; l=2751;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=iiT5PnHuVi0Qo7IbXfL051g6z6M/JgMctVfeO9X4qKM=;
 b=GLAmsAtEEcuZZLbjWLhI63gmqWnTuh9Otr7z9Kfi6rcqzy+ucCBxcajjfEubz0XP6A0KANtGS
 pAsFLwSz7ViASw4MfDLL89hJISwSjj9WKiP1cDZC5TMldKfjdAeTtB+
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250630_010449_690253_AB1F2BD2 
X-CRM114-Status: GOOD (  15.32  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, Marco Felsch <m.felsch@pengutronix.de>
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
Subject: [PATCH v2 12/14] ARM: i.MX: tqma6ulx: fix barebox chainloading
 with OP-TEE enabled
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

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>
Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/tqma6ulx/lowlevel.c | 22 +++++++++-------------
 1 file changed, 9 insertions(+), 13 deletions(-)

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

-- 
2.39.5




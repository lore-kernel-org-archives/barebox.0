Delivery-date: Thu, 02 Mar 2023 12:18:35 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pXgxG-006Urn-5k
	for lore@lore.pengutronix.de; Thu, 02 Mar 2023 12:18:35 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pXgxE-000246-TR
	for lore@pengutronix.de; Thu, 02 Mar 2023 12:18:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+rqdJUH4oDZga2g/Werh294HAE6UZlkNVQ7+37YMuOY=; b=eWi15wxx0Phh/VuXeO8XEiBW7p
	BfrBXb/W2/VnYUztalg6Y1KBZ+NIGevtM8A/yqK6+vKX+oZwERbmSbTq2jW5qf0G6gEe6gRTAL/gj
	twv68TkjdvIVwlU/G+YD774/7WkgbLf4jJTfwuPNu47ygxQr64h1irFR9y830J4h72J5+pPpWYIEo
	fkOKigDZnbpltTSydJTIM7LDtBD36KigCAdOF6mqKEp08Vm7c9mxdRVXMUD8hJWu4m2S+r0wPMmS0
	LYxQjvANpI7yD0CKEMfzwaXgeZzmhJ2+4PMT4xhaspzXLDZXacwFc3tqO46nXkycw58WM5Cp0ptpG
	zKwFWR+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pXgvf-001sds-MU; Thu, 02 Mar 2023 11:16:56 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pXgux-001sG2-Mz
	for barebox@lists.infradead.org; Thu, 02 Mar 2023 11:16:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pXguw-00017q-GU; Thu, 02 Mar 2023 12:16:10 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pXguv-001Jd8-R2; Thu, 02 Mar 2023 12:16:09 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pXgut-004QVL-Sa; Thu, 02 Mar 2023 12:16:07 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  2 Mar 2023 12:15:56 +0100
Message-Id: <20230302111606.1054037-4-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230302111606.1054037-1-s.hauer@pengutronix.de>
References: <20230302111606.1054037-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230302_031612_112047_C3EABEA2 
X-CRM114-Status: GOOD (  13.49  )
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
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 03/13] ARM: at91: Use ENTRY_FUNCTION_HEAD
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Use ENTRY_FUNCTION_HEAD in the at91 boards to customize the barebox
image header without having to hook into a generic include file.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/animeo_ip/lowlevel.c               |  4 ++--
 arch/arm/boards/at91rm9200ek/lowlevel.c            |  4 ++--
 arch/arm/boards/at91sam9260ek/lowlevel.c           |  6 +++---
 arch/arm/boards/at91sam9261ek/lowlevel_init.c      |  5 +++--
 arch/arm/boards/at91sam9m10g45ek/lowlevel.c        |  4 ++--
 arch/arm/boards/at91sam9m10ihd/lowlevel.c          |  4 ++--
 arch/arm/boards/at91sam9n12ek/lowlevel.c           |  4 ++--
 arch/arm/boards/dss11/lowlevel.c                   |  4 ++--
 arch/arm/boards/haba-knx/lowlevel.c                |  4 ++--
 arch/arm/boards/pm9261/lowlevel_init.c             |  3 ++-
 arch/arm/boards/pm9263/lowlevel_init.c             |  3 ++-
 arch/arm/boards/pm9g45/lowlevel.c                  |  4 ++--
 arch/arm/boards/qil-a926x/lowlevel.c               |  6 +++---
 arch/arm/boards/telit-evk-pro3/lowlevel.c          |  4 ++--
 arch/arm/boards/tny-a926x/tny_a9260_lowlevel.c     |  6 +++---
 arch/arm/boards/tny-a926x/tny_a9263_lowlevel.c     |  4 ++--
 arch/arm/boards/usb-a926x/usb_a9260_lowlevel.c     |  6 +++---
 arch/arm/boards/usb-a926x/usb_a9263_lowlevel.c     |  5 +++--
 arch/arm/mach-at91/Kconfig                         |  8 --------
 arch/arm/mach-at91/include/mach/barebox-arm-head.h | 12 ++++--------
 20 files changed, 46 insertions(+), 54 deletions(-)

diff --git a/arch/arm/boards/animeo_ip/lowlevel.c b/arch/arm/boards/animeo_ip/lowlevel.c
index 2d443f5384..f56f59fa8e 100644
--- a/arch/arm/boards/animeo_ip/lowlevel.c
+++ b/arch/arm/boards/animeo_ip/lowlevel.c
@@ -7,14 +7,14 @@
 #include <common.h>
 #include <init.h>
 
-#include <asm/barebox-arm-head.h>
+#include <mach/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
 
 #include <mach/at91sam9_sdramc.h>
 #include <mach/at91sam9260.h>
 #include <mach/hardware.h>
 
-ENTRY_FUNCTION(start_animeo_ip, r0, r1, r2)
+ENTRY_FUNCTION_AT91(start_animeo_ip, r0, r1, r2)
 {
 	arm_cpu_lowlevel_init();
 
diff --git a/arch/arm/boards/at91rm9200ek/lowlevel.c b/arch/arm/boards/at91rm9200ek/lowlevel.c
index ba62f1116d..9180a484aa 100644
--- a/arch/arm/boards/at91rm9200ek/lowlevel.c
+++ b/arch/arm/boards/at91rm9200ek/lowlevel.c
@@ -7,7 +7,7 @@
 #include <common.h>
 #include <init.h>
 
-#include <asm/barebox-arm-head.h>
+#include <mach/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
 
 #include <mach/at91rm9200_mc.h>
@@ -21,7 +21,7 @@ void static inline access_sdram(void)
 	writel(0x00000000, AT91_CHIPSELECT_1);
 }
 
-ENTRY_FUNCTION(start_at91rm9200ek, r0, r1, r2)
+ENTRY_FUNCTION_AT91(start_at91rm9200ek, r0, r1, r2)
 {
 	u32 r;
 	int i;
diff --git a/arch/arm/boards/at91sam9260ek/lowlevel.c b/arch/arm/boards/at91sam9260ek/lowlevel.c
index 81fe70278b..a44cfc6b35 100644
--- a/arch/arm/boards/at91sam9260ek/lowlevel.c
+++ b/arch/arm/boards/at91sam9260ek/lowlevel.c
@@ -7,14 +7,14 @@
 #include <common.h>
 #include <init.h>
 
-#include <asm/barebox-arm-head.h>
+#include <mach/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
 
 #include <mach/at91sam9_sdramc.h>
 #include <mach/at91sam9260.h>
 #include <mach/hardware.h>
 
-ENTRY_FUNCTION(start_at91sam9260ek, r0, r1, r2)
+ENTRY_FUNCTION_AT91(start_at91sam9260ek, r0, r1, r2)
 {
 	arm_cpu_lowlevel_init();
 
@@ -25,7 +25,7 @@ ENTRY_FUNCTION(start_at91sam9260ek, r0, r1, r2)
 			  NULL);
 }
 
-ENTRY_FUNCTION(start_at91sam9g20ek, r0, r1, r2)
+ENTRY_FUNCTION_AT91(start_at91sam9g20ek, r0, r1, r2)
 {
 	arm_cpu_lowlevel_init();
 
diff --git a/arch/arm/boards/at91sam9261ek/lowlevel_init.c b/arch/arm/boards/at91sam9261ek/lowlevel_init.c
index 47a8f21db8..1dd2a6b113 100644
--- a/arch/arm/boards/at91sam9261ek/lowlevel_init.c
+++ b/arch/arm/boards/at91sam9261ek/lowlevel_init.c
@@ -4,6 +4,7 @@
  * Under GPLv2
  */
 
+#include <mach/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
 
 #include <mach/at91sam926x_board_init.h>
@@ -117,7 +118,7 @@ static void __bare_init at91sam9261ek_init(void)
 	                  NULL);
 }
 
-ENTRY_FUNCTION(start_at91sam9261ek, r0, r1, r2)
+ENTRY_FUNCTION_AT91(start_at91sam9261ek, r0, r1, r2)
 {
 	arm_cpu_lowlevel_init();
 
@@ -126,7 +127,7 @@ ENTRY_FUNCTION(start_at91sam9261ek, r0, r1, r2)
 	at91sam9261ek_init();
 }
 
-ENTRY_FUNCTION(start_at91sam9g10ek, r0, r1, r2)
+ENTRY_FUNCTION_AT91(start_at91sam9g10ek, r0, r1, r2)
 {
 	arm_cpu_lowlevel_init();
 
diff --git a/arch/arm/boards/at91sam9m10g45ek/lowlevel.c b/arch/arm/boards/at91sam9m10g45ek/lowlevel.c
index 94732df14f..d3654df70b 100644
--- a/arch/arm/boards/at91sam9m10g45ek/lowlevel.c
+++ b/arch/arm/boards/at91sam9m10g45ek/lowlevel.c
@@ -7,13 +7,13 @@
 #include <common.h>
 #include <init.h>
 
-#include <asm/barebox-arm-head.h>
+#include <mach/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
 
 #include <mach/hardware.h>
 #include <mach/at91_ddrsdrc.h>
 
-ENTRY_FUNCTION(start_at91sam9m10g45ek, r0, r1, r2)
+ENTRY_FUNCTION_AT91(start_at91sam9m10g45ek, r0, r1, r2)
 {
 	arm_cpu_lowlevel_init();
 
diff --git a/arch/arm/boards/at91sam9m10ihd/lowlevel.c b/arch/arm/boards/at91sam9m10ihd/lowlevel.c
index 1dd17ee263..9ea128cd4d 100644
--- a/arch/arm/boards/at91sam9m10ihd/lowlevel.c
+++ b/arch/arm/boards/at91sam9m10ihd/lowlevel.c
@@ -7,14 +7,14 @@
 #include <common.h>
 #include <init.h>
 
-#include <asm/barebox-arm-head.h>
+#include <mach/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
 
 #include <mach/at91_ddrsdrc.h>
 #include <mach/at91sam9g45.h>
 #include <mach/hardware.h>
 
-ENTRY_FUNCTION(start_at91sam9m10ihd, r0, r1, r2)
+ENTRY_FUNCTION_AT91(start_at91sam9m10ihd, r0, r1, r2)
 {
 	arm_cpu_lowlevel_init();
 
diff --git a/arch/arm/boards/at91sam9n12ek/lowlevel.c b/arch/arm/boards/at91sam9n12ek/lowlevel.c
index 7366e74c3c..6911840388 100644
--- a/arch/arm/boards/at91sam9n12ek/lowlevel.c
+++ b/arch/arm/boards/at91sam9n12ek/lowlevel.c
@@ -7,13 +7,13 @@
 #include <common.h>
 #include <init.h>
 
-#include <asm/barebox-arm-head.h>
+#include <mach/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
 
 #include <mach/at91_ddrsdrc.h>
 #include <mach/hardware.h>
 
-ENTRY_FUNCTION(start_at91sam9n12ek, r0, r1, r2)
+ENTRY_FUNCTION_AT91(start_at91sam9n12ek, r0, r1, r2)
 {
 	arm_cpu_lowlevel_init();
 
diff --git a/arch/arm/boards/dss11/lowlevel.c b/arch/arm/boards/dss11/lowlevel.c
index 86cc295e8b..734d4c94be 100644
--- a/arch/arm/boards/dss11/lowlevel.c
+++ b/arch/arm/boards/dss11/lowlevel.c
@@ -7,14 +7,14 @@
 #include <common.h>
 #include <init.h>
 
-#include <asm/barebox-arm-head.h>
+#include <mach/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
 
 #include <mach/at91sam9_sdramc.h>
 #include <mach/at91sam9260.h>
 #include <mach/hardware.h>
 
-ENTRY_FUNCTION(start_dss11, r0, r1, r2)
+ENTRY_FUNCTION_AT91(start_dss11, r0, r1, r2)
 {
 	arm_cpu_lowlevel_init();
 
diff --git a/arch/arm/boards/haba-knx/lowlevel.c b/arch/arm/boards/haba-knx/lowlevel.c
index 3f810a396d..980cf55f83 100644
--- a/arch/arm/boards/haba-knx/lowlevel.c
+++ b/arch/arm/boards/haba-knx/lowlevel.c
@@ -7,14 +7,14 @@
 #include <common.h>
 #include <init.h>
 
-#include <asm/barebox-arm-head.h>
+#include <mach/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
 
 #include <mach/at91sam9_sdramc.h>
 #include <mach/at91sam9260.h>
 #include <mach/hardware.h>
 
-ENTRY_FUNCTION(start_haba_knx_lite, r0, r1, r2)
+ENTRY_FUNCTION_AT91(start_haba_knx_lite, r0, r1, r2)
 {
 	arm_cpu_lowlevel_init();
 
diff --git a/arch/arm/boards/pm9261/lowlevel_init.c b/arch/arm/boards/pm9261/lowlevel_init.c
index 13a604ceb8..ce2fc1f507 100644
--- a/arch/arm/boards/pm9261/lowlevel_init.c
+++ b/arch/arm/boards/pm9261/lowlevel_init.c
@@ -4,6 +4,7 @@
  * Under GPLv2
  */
 
+#include <mach/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
 
 #include <mach/at91sam926x_board_init.h>
@@ -111,7 +112,7 @@ static void __bare_init pm9261_init(void)
 	                  NULL);
 }
 
-ENTRY_FUNCTION(start_pm9261, r0, r1, r2)
+ENTRY_FUNCTION_AT91(start_pm9261, r0, r1, r2)
 {
 	arm_cpu_lowlevel_init();
 
diff --git a/arch/arm/boards/pm9263/lowlevel_init.c b/arch/arm/boards/pm9263/lowlevel_init.c
index 9a690531e3..752e36a79f 100644
--- a/arch/arm/boards/pm9263/lowlevel_init.c
+++ b/arch/arm/boards/pm9263/lowlevel_init.c
@@ -6,6 +6,7 @@
 
 #include <linux/sizes.h>
 
+#include <mach/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
 
 #include <mach/at91sam926x_board_init.h>
@@ -132,7 +133,7 @@ static void __bare_init pm9263_board_init(void)
 	                  NULL);
 }
 
-ENTRY_FUNCTION(start_pm9263, r0, r1, r2)
+ENTRY_FUNCTION_AT91(start_pm9263, r0, r1, r2)
 {
 	arm_cpu_lowlevel_init();
 
diff --git a/arch/arm/boards/pm9g45/lowlevel.c b/arch/arm/boards/pm9g45/lowlevel.c
index 096bbc485a..a6d54a0627 100644
--- a/arch/arm/boards/pm9g45/lowlevel.c
+++ b/arch/arm/boards/pm9g45/lowlevel.c
@@ -7,14 +7,14 @@
 #include <common.h>
 #include <init.h>
 
-#include <asm/barebox-arm-head.h>
+#include <mach/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
 
 #include <mach/at91_ddrsdrc.h>
 
 #include <mach/hardware.h>
 
-ENTRY_FUNCTION(start_pm9g45, r0, r1, r2)
+ENTRY_FUNCTION_AT91(start_pm9g45, r0, r1, r2)
 {
 	arm_cpu_lowlevel_init();
 
diff --git a/arch/arm/boards/qil-a926x/lowlevel.c b/arch/arm/boards/qil-a926x/lowlevel.c
index 3a233fcf17..b75d8ab761 100644
--- a/arch/arm/boards/qil-a926x/lowlevel.c
+++ b/arch/arm/boards/qil-a926x/lowlevel.c
@@ -7,14 +7,14 @@
 #include <common.h>
 #include <init.h>
 
-#include <asm/barebox-arm-head.h>
+#include <mach/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
 
 #include <mach/at91sam9_sdramc.h>
 #include <mach/at91sam9260.h>
 #include <mach/hardware.h>
 
-ENTRY_FUNCTION(start_qil_a926x, r0, r1, r2)
+ENTRY_FUNCTION_AT91(start_qil_a926x, r0, r1, r2)
 {
 	arm_cpu_lowlevel_init();
 
@@ -25,7 +25,7 @@ ENTRY_FUNCTION(start_qil_a926x, r0, r1, r2)
 			  NULL);
 }
 
-ENTRY_FUNCTION(start_qil_a9g20, r0, r1, r2)
+ENTRY_FUNCTION_AT91(start_qil_a9g20, r0, r1, r2)
 {
 	arm_cpu_lowlevel_init();
 
diff --git a/arch/arm/boards/telit-evk-pro3/lowlevel.c b/arch/arm/boards/telit-evk-pro3/lowlevel.c
index 3a613a65a8..f4ea203283 100644
--- a/arch/arm/boards/telit-evk-pro3/lowlevel.c
+++ b/arch/arm/boards/telit-evk-pro3/lowlevel.c
@@ -7,14 +7,14 @@
 #include <common.h>
 #include <init.h>
 
-#include <asm/barebox-arm-head.h>
+#include <mach/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
 
 #include <mach/at91sam9_sdramc.h>
 #include <mach/at91sam9260.h>
 #include <mach/hardware.h>
 
-ENTRY_FUNCTION(start_telit_evk_pro3, r0, r1, r2)
+ENTRY_FUNCTION_AT91(start_telit_evk_pro3, r0, r1, r2)
 {
 	arm_cpu_lowlevel_init();
 
diff --git a/arch/arm/boards/tny-a926x/tny_a9260_lowlevel.c b/arch/arm/boards/tny-a926x/tny_a9260_lowlevel.c
index e78e93528d..1cd420d902 100644
--- a/arch/arm/boards/tny-a926x/tny_a9260_lowlevel.c
+++ b/arch/arm/boards/tny-a926x/tny_a9260_lowlevel.c
@@ -7,14 +7,14 @@
 #include <common.h>
 #include <init.h>
 
-#include <asm/barebox-arm-head.h>
+#include <mach/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
 
 #include <mach/at91sam9_sdramc.h>
 #include <mach/at91sam9260.h>
 #include <mach/hardware.h>
 
-ENTRY_FUNCTION(start_tny_a9260, r0, r1, r2)
+ENTRY_FUNCTION_AT91(start_tny_a9260, r0, r1, r2)
 {
 	arm_cpu_lowlevel_init();
 
@@ -25,7 +25,7 @@ ENTRY_FUNCTION(start_tny_a9260, r0, r1, r2)
 			  NULL);
 }
 
-ENTRY_FUNCTION(start_tny_a9g20, r0, r1, r2)
+ENTRY_FUNCTION_AT91(start_tny_a9g20, r0, r1, r2)
 {
 	arm_cpu_lowlevel_init();
 
diff --git a/arch/arm/boards/tny-a926x/tny_a9263_lowlevel.c b/arch/arm/boards/tny-a926x/tny_a9263_lowlevel.c
index b8b813ef12..93c601c8cb 100644
--- a/arch/arm/boards/tny-a926x/tny_a9263_lowlevel.c
+++ b/arch/arm/boards/tny-a926x/tny_a9263_lowlevel.c
@@ -7,7 +7,7 @@
 #include <common.h>
 #include <init.h>
 
-#include <asm/barebox-arm-head.h>
+#include <mach/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
 
 #include <mach/at91sam926x_board_init.h>
@@ -118,7 +118,7 @@ static void __bare_init tny_a9263_init(void)
 	                  NULL);
 }
 
-ENTRY_FUNCTION(start_tny_a9263, r0, r1, r2)
+ENTRY_FUNCTION_AT91(start_tny_a9263, r0, r1, r2)
 {
 	arm_cpu_lowlevel_init();
 
diff --git a/arch/arm/boards/usb-a926x/usb_a9260_lowlevel.c b/arch/arm/boards/usb-a926x/usb_a9260_lowlevel.c
index 7e3ee80ab7..1f4febde11 100644
--- a/arch/arm/boards/usb-a926x/usb_a9260_lowlevel.c
+++ b/arch/arm/boards/usb-a926x/usb_a9260_lowlevel.c
@@ -7,14 +7,14 @@
 #include <common.h>
 #include <init.h>
 
-#include <asm/barebox-arm-head.h>
+#include <mach/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
 
 #include <mach/at91sam9_sdramc.h>
 #include <mach/at91sam9260.h>
 #include <mach/hardware.h>
 
-ENTRY_FUNCTION(start_usb_a9260, r0, r1, r2)
+ENTRY_FUNCTION_AT91(start_usb_a9260, r0, r1, r2)
 {
 	arm_cpu_lowlevel_init();
 
@@ -25,7 +25,7 @@ ENTRY_FUNCTION(start_usb_a9260, r0, r1, r2)
 			  NULL);
 }
 
-ENTRY_FUNCTION(start_usb_a9g20, r0, r1, r2)
+ENTRY_FUNCTION_AT91(start_usb_a9g20, r0, r1, r2)
 {
 	arm_cpu_lowlevel_init();
 
diff --git a/arch/arm/boards/usb-a926x/usb_a9263_lowlevel.c b/arch/arm/boards/usb-a926x/usb_a9263_lowlevel.c
index 0597321084..25e63f5180 100644
--- a/arch/arm/boards/usb-a926x/usb_a9263_lowlevel.c
+++ b/arch/arm/boards/usb-a926x/usb_a9263_lowlevel.c
@@ -6,6 +6,7 @@
 
 #include <linux/sizes.h>
 
+#include <mach/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
 
 #include <mach/at91sam926x_board_init.h>
@@ -122,7 +123,7 @@ static void __bare_init usb_a9263_init(bool has_mem_128m)
 	                  NULL);
 }
 
-ENTRY_FUNCTION(start_usb_a9263, r0, r1, r2)
+ENTRY_FUNCTION_AT91(start_usb_a9263, r0, r1, r2)
 {
 	arm_cpu_lowlevel_init();
 
@@ -131,7 +132,7 @@ ENTRY_FUNCTION(start_usb_a9263, r0, r1, r2)
 	usb_a9263_init(false);
 }
 
-ENTRY_FUNCTION(start_usb_a9263_128m, r0, r1, r2)
+ENTRY_FUNCTION_AT91(start_usb_a9263_128m, r0, r1, r2)
 {
 	arm_cpu_lowlevel_init();
 
diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index caf296dfcd..b803a1185d 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -92,7 +92,6 @@ config SOC_SAMA5D2
 	select HAVE_AT91_I2S_MUX_CLK
 	select PINCTRL_AT91PIO4
 	select HAS_MACB
-	select HAVE_MACH_ARM_HEAD
 	select HAVE_AT91_DDRAMC
 
 config SOC_SAMA5D3
@@ -105,7 +104,6 @@ config SOC_SAMA5D3
 	select HAVE_AT91_UTMI
 	select PINCTRL_AT91
 	select HAS_MACB
-	select HAVE_MACH_ARM_HEAD
 
 config SOC_SAMA5D4
 	bool
@@ -118,7 +116,6 @@ config SOC_SAMA5D4
 	select HAVE_AT91_UTMI
 	select PINCTRL_AT91
 	select HAS_MACB
-	select HAVE_MACH_ARM_HEAD
 
 config SOC_SAM9X60
 	bool
@@ -159,7 +156,6 @@ config SOC_AT91SAM9260
 	select SOC_AT91SAM9
 	select HAS_MACB
 	select PINCTRL_AT91
-	select HAVE_MACH_ARM_HEAD
 	help
 	  Select this if you are using one of Atmel's AT91SAM9260, AT91SAM9XE
 	  or AT91SAM9G20 SoC.
@@ -169,7 +165,6 @@ config SOC_AT91SAM9261
 	select SOC_AT91SAM9
 	select PINCTRL_AT91
 	select HAVE_AT91_LOAD_BAREBOX_SRAM
-	select HAVE_MACH_ARM_HEAD
 	help
 	  Select this if you are using one of Atmel's AT91SAM9261 or AT91SAM9G10 SoC.
 
@@ -178,7 +173,6 @@ config SOC_AT91SAM9263
 	select SOC_AT91SAM9
 	select HAS_MACB
 	select HAVE_AT91_LOAD_BAREBOX_SRAM
-	select HAVE_MACH_ARM_HEAD
 	select PINCTRL_AT91
 
 config SOC_AT91SAM9G45
@@ -186,7 +180,6 @@ config SOC_AT91SAM9G45
 	select SOC_AT91SAM9
 	select HAS_MACB
 	select PINCTRL_AT91
-	select HAVE_MACH_ARM_HEAD
 	help
 	  Select this if you are using one of Atmel's AT91SAM9G45 family SoC.
 	  This support covers AT91SAM9G45, AT91SAM9G46, AT91SAM9M10 and AT91SAM9M11.
@@ -209,7 +202,6 @@ config SOC_AT91SAM9N12
 	bool
 	select SOC_AT91SAM9
 	select PINCTRL_AT91
-	select HAVE_MACH_ARM_HEAD
 	help
 	  Select this if you are using Atmel's AT91SAM9N12 SoC.
 
diff --git a/arch/arm/mach-at91/include/mach/barebox-arm-head.h b/arch/arm/mach-at91/include/mach/barebox-arm-head.h
index 4a95f89fc9..68539ea48f 100644
--- a/arch/arm/mach-at91/include/mach/barebox-arm-head.h
+++ b/arch/arm/mach-at91/include/mach/barebox-arm-head.h
@@ -9,7 +9,9 @@
 #define AT91_EXV6	".word _barebox_bare_init_size\n"
 #endif
 
-static inline void __barebox_arm_head(void)
+#include <linux/compiler.h>
+
+static __always_inline void __barebox_at91_head(void)
 {
 	__asm__ __volatile__ (
 #ifdef CONFIG_THUMB2_BAREBOX
@@ -36,12 +38,6 @@ static inline void __barebox_arm_head(void)
 	);
 }
 
-static inline void barebox_arm_head(void)
-{
-	__barebox_arm_head();
-	__asm__ __volatile__ (
-		"b barebox_arm_reset_vector\n"
-	);
-}
+#define ENTRY_FUNCTION_AT91(fn, r0, r1, r2) ENTRY_FUNCTION_HEAD(fn, __barebox_at91_head, r0, r1, r2)
 
 #endif /* __MACH_ARM_HEAD_H */
-- 
2.30.2




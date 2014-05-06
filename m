Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Whl3F-0005BL-KQ
 for barebox@lists.infradead.org; Tue, 06 May 2014 19:29:18 +0000
Received: from antimon.intern.lynxeye.de.intern.lynxeye.de
 (p54833B91.dip0.t-ipconnect.de [84.131.59.145])
 by lynxeye.de (Postfix) with ESMTPA id D80D518B4257
 for <barebox@lists.infradead.org>; Tue,  6 May 2014 21:28:20 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Tue,  6 May 2014 21:28:16 +0200
Message-Id: <1399404496-11304-1-git-send-email-dev@lynxeye.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] ARM: phycard-imx6: fixup for barebox_arm_entry signature
 change
To: barebox@lists.infradead.org

This board wasn't changed properly, as it was merged in the short
timeframe where the signature change waited to be applied. Change
it now to get rid of the compiler warning.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
Sascha, please apply to master.
---
 arch/arm/boards/phytec-phycard-imx6/lowlevel.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/phytec-phycard-imx6/lowlevel.c b/arch/arm/boards/phytec-phycard-imx6/lowlevel.c
index 14df18f83543..64312b02437c 100644
--- a/arch/arm/boards/phytec-phycard-imx6/lowlevel.c
+++ b/arch/arm/boards/phytec-phycard-imx6/lowlevel.c
@@ -57,7 +57,7 @@ extern char __dtb_imx6q_phytec_pbaa03_start[];
 
 static void __noreturn start_imx6q_phytec_pbaa03_common(uint32_t size)
 {
-	uint32_t fdt;
+	void *fdt;
 
 	arm_cpu_lowlevel_init();
 
@@ -66,7 +66,7 @@ static void __noreturn start_imx6q_phytec_pbaa03_common(uint32_t size)
 	if (IS_ENABLED(CONFIG_DEBUG_LL))
 		setup_uart();
 
-	fdt = (uint32_t)__dtb_imx6q_phytec_pbaa03_start - get_runtime_offset();
+	fdt = __dtb_imx6q_phytec_pbaa03_start - get_runtime_offset();
 
 	barebox_arm_entry(0x10000000, size, fdt);
 }
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

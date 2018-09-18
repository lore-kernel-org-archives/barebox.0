Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g28mG-0000Kw-Sf
 for barebox@lists.infradead.org; Tue, 18 Sep 2018 05:42:45 +0000
Received: by mail-pf1-x441.google.com with SMTP id k21-v6so426277pff.11
 for <barebox@lists.infradead.org>; Mon, 17 Sep 2018 22:42:16 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 17 Sep 2018 22:41:48 -0700
Message-Id: <20180918054148.8878-9-andrew.smirnov@gmail.com>
In-Reply-To: <20180918054148.8878-1-andrew.smirnov@gmail.com>
References: <20180918054148.8878-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 8/8] ARM: nxp-imx8mq-evk: Make use of memory size detection
 code
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/boards/nxp-imx8mq-evk/board.c    | 2 --
 arch/arm/boards/nxp-imx8mq-evk/lowlevel.c | 4 ++--
 arch/arm/dts/imx8mq-evk.dts               | 6 +-----
 3 files changed, 3 insertions(+), 9 deletions(-)

diff --git a/arch/arm/boards/nxp-imx8mq-evk/board.c b/arch/arm/boards/nxp-imx8mq-evk/board.c
index aae6970d8..764eadb76 100644
--- a/arch/arm/boards/nxp-imx8mq-evk/board.c
+++ b/arch/arm/boards/nxp-imx8mq-evk/board.c
@@ -50,8 +50,6 @@ static int imx8mq_evk_mem_init(void)
 	if (!of_machine_is_compatible("fsl,imx8mq-evk"))
 		return 0;
 
-	arm_add_mem_device("ram0", 0x40000000, SZ_2G);
-
 	request_sdram_region("ATF", 0x40000000, SZ_128K);
 
 	return 0;
diff --git a/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c b/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c
index 438c70c87..1dff4b4d3 100644
--- a/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c
+++ b/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c
@@ -24,6 +24,7 @@
 #include <asm/sections.h>
 #include <asm/mmu.h>
 #include <mach/atf.h>
+#include <mach/esdctl.h>
 
 #include "ddr.h"
 
@@ -121,7 +122,6 @@ ENTRY_FUNCTION(start_nxp_imx8mq_evk, r0, r1, r2)
 	/*
 	 * Standard entry we hit once we initialized both DDR and ATF
 	 */
-	barebox_arm_entry(MX8MQ_DDR_CSD1_BASE_ADDR,
-			  SZ_2G + SZ_1G, __dtb_imx8mq_evk_start);
+	imx8mq_barebox_entry(__dtb_imx8mq_evk_start);
 }
 
diff --git a/arch/arm/dts/imx8mq-evk.dts b/arch/arm/dts/imx8mq-evk.dts
index bdc340a8b..277be5150 100644
--- a/arch/arm/dts/imx8mq-evk.dts
+++ b/arch/arm/dts/imx8mq-evk.dts
@@ -7,6 +7,7 @@
 /dts-v1/;
 
 #include "imx8mq.dtsi"
+#include "imx8mq-ddrc.dtsi"
 
 / {
 	model = "NXP i.MX8MQ EVK";
@@ -16,11 +17,6 @@
 		stdout-path = &uart1;
 	};
 
-	memory@40000000 {
-		device_type = "memory";
-		reg = <0x00000000 0x40000000 0 0xc0000000>;
-	};
-
 	reg_usdhc2_vmmc: regulator-vsd-3v3 {
 		pinctrl-names = "default";
 		pinctrl-0 = <&pinctrl_reg_usdhc2>;
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

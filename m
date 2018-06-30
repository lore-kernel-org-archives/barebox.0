Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x230.google.com ([2607:f8b0:400e:c05::230])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fZ6t4-0003gR-LO
 for barebox@lists.infradead.org; Sat, 30 Jun 2018 03:49:33 +0000
Received: by mail-pg0-x230.google.com with SMTP id i7-v6so4780112pgp.2
 for <barebox@lists.infradead.org>; Fri, 29 Jun 2018 20:49:15 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 29 Jun 2018 20:48:57 -0700
Message-Id: <20180630034900.3324-9-andrew.smirnov@gmail.com>
In-Reply-To: <20180630034900.3324-1-andrew.smirnov@gmail.com>
References: <20180630034900.3324-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 08/11] ARM: nxp-imx8mq-evk: Add code to load ATF BL31 blob
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/boards/nxp-imx8mq-evk/lowlevel.c | 3 +++
 arch/arm/mach-imx/Kconfig                 | 2 ++
 firmware/Kconfig                          | 2 +-
 3 files changed, 6 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c b/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c
index 1ed918ee0..c2dc6460a 100644
--- a/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c
+++ b/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c
@@ -23,6 +23,7 @@
 #include <asm/cache.h>
 #include <asm/sections.h>
 #include <asm/mmu.h>
+#include <mach/atf.h>
 
 #include "ddr.h"
 
@@ -75,6 +76,8 @@ ENTRY_FUNCTION(start_nxp_imx8mq_evk, r0, r1, r2)
 	if (get_pc() < MX8MQ_DDR_CSD1_BASE_ADDR)
 		nxp_imx8mq_evk_sram_setup();
 
+	imx8mq_atf_load_bl31(imx_imx8m_bl31_bin);
+
 	barebox_arm_entry(MX8MQ_DDR_CSD1_BASE_ADDR,
 			  SZ_2G + SZ_1G, __dtb_imx8mq_evk_start);
 }
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index a743bbfda..0086a7803 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -449,6 +449,8 @@ config MACH_NXP_IMX8MQ_EVK
 	bool "NXP i.MX8MQ EVK Board"
 	select ARCH_IMX8MQ
 	select FIRMWARE_IMX_LPDDR4_PMU_TRAIN
+	select FIRMWARE_IMX8MQ_ATF
+	select ARM_SMCCC
 
 endif
 
diff --git a/firmware/Kconfig b/firmware/Kconfig
index 3c5f0c30e..a6f79e8a9 100644
--- a/firmware/Kconfig
+++ b/firmware/Kconfig
@@ -7,7 +7,7 @@ config EXTRA_FIRMWARE_DIR
 config FIRMWARE_IMX_LPDDR4_PMU_TRAIN
        	bool
 
-config CONFIG_FIRMWARE_IMX8MQ_ATF
+config FIRMWARE_IMX8MQ_ATF
         bool
 
 endmenu
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

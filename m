Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x22d.google.com ([2607:f8b0:400e:c01::22d])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fgJqY-0002pf-GB
 for barebox@lists.infradead.org; Fri, 20 Jul 2018 01:04:41 +0000
Received: by mail-pl0-x22d.google.com with SMTP id m16-v6so4391455pls.11
 for <barebox@lists.infradead.org>; Thu, 19 Jul 2018 18:04:28 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 19 Jul 2018 18:03:54 -0700
Message-Id: <20180720010357.22822-10-andrew.smirnov@gmail.com>
In-Reply-To: <20180720010357.22822-1-andrew.smirnov@gmail.com>
References: <20180720010357.22822-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 09/12] ARM: nxp-imx8mq-evk: Add code to load ATF BL31 blob
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/boards/nxp-imx8mq-evk/lowlevel.c | 9 +++++++++
 arch/arm/mach-imx/Kconfig                 | 2 ++
 2 files changed, 11 insertions(+)

diff --git a/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c b/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c
index 1ed918ee0..db746bb94 100644
--- a/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c
+++ b/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c
@@ -23,6 +23,7 @@
 #include <asm/cache.h>
 #include <asm/sections.h>
 #include <asm/mmu.h>
+#include <mach/atf.h>
 
 #include "ddr.h"
 
@@ -75,6 +76,14 @@ ENTRY_FUNCTION(start_nxp_imx8mq_evk, r0, r1, r2)
 	if (get_pc() < MX8MQ_DDR_CSD1_BASE_ADDR)
 		nxp_imx8mq_evk_sram_setup();
 
+	if (current_el() == 3) {
+		const u8 *bl31;
+		size_t bl31_size;
+
+		get_builtin_firmware(imx_imx8m_bl31_bin, &bl31, &bl31_size);
+		imx8mq_atf_load_bl31(bl31, bl31_size);
+	}
+
 	barebox_arm_entry(MX8MQ_DDR_CSD1_BASE_ADDR,
 			  SZ_2G + SZ_1G, __dtb_imx8mq_evk_start);
 }
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 73b7ea1b6..7cb9138d2 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -461,6 +461,8 @@ config MACH_NXP_IMX8MQ_EVK
 	bool "NXP i.MX8MQ EVK Board"
 	select ARCH_IMX8MQ
 	select FIRMWARE_IMX_LPDDR4_PMU_TRAIN
+	select FIRMWARE_IMX8MQ_ATF
+	select ARM_SMCCC
 
 endif
 
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

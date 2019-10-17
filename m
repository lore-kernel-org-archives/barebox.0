Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL3D4-0002AY-98
 for barebox@lists.infradead.org; Thu, 17 Oct 2019 10:40:48 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <str@pengutronix.de>) id 1iL3D1-0006Cy-Cl
 for barebox@lists.infradead.org; Thu, 17 Oct 2019 12:40:43 +0200
Received: from str by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <str@pengutronix.de>) id 1iL3D1-0002lJ-4R
 for barebox@lists.infradead.org; Thu, 17 Oct 2019 12:40:43 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Thu, 17 Oct 2019 12:40:40 +0200
Message-Id: <20191017104041.31923-2-s.trumtrar@pengutronix.de>
In-Reply-To: <20191017104041.31923-1-s.trumtrar@pengutronix.de>
References: <20191017104041.31923-1-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/3] ARM: socfpga: cyclone5-system-manager.h: remove defines
To: Barebox List <barebox@lists.infradead.org>

These defines are common for arria10 and cyclone5.
Instead of having them here, they are moved to drivers/net/designware_socfpga.c.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 .../include/mach/cyclone5-system-manager.h            | 11 -----------
 1 file changed, 11 deletions(-)

diff --git a/arch/arm/mach-socfpga/include/mach/cyclone5-system-manager.h b/arch/arm/mach-socfpga/include/mach/cyclone5-system-manager.h
index 24f52effd886..7cec60937b84 100644
--- a/arch/arm/mach-socfpga/include/mach/cyclone5-system-manager.h
+++ b/arch/arm/mach-socfpga/include/mach/cyclone5-system-manager.h
@@ -57,15 +57,4 @@ void socfpga_sysmgr_pinmux_init(unsigned long *sys_mgr_init_table, int num);
 #define SYSMGR_FPGAINTF_NAND		(1<<4)
 #define SYSMGR_FPGAINTF_SDMMC		(1<<5)
 
-/* Enumeration: sysmgr::emacgrp::ctrl::physel::enum                        */
-#define SYSMGR_EMACGRP_CTRL_PHYSEL_ENUM_GMII_MII 0x0
-#define SYSMGR_EMACGRP_CTRL_PHYSEL_ENUM_RGMII 0x1
-#define SYSMGR_EMACGRP_CTRL_PHYSEL_ENUM_RMII 0x2
-#define SYSMGR_EMACGRP_CTRL_PHYSEL0_LSB 0
-#define SYSMGR_EMACGRP_CTRL_PHYSEL1_LSB 2
-#define SYSMGR_EMACGRP_CTRL_PHYSEL_MASK 0x00000003
-
-#define SYSMGR_FPGAGRP_MODULE  0x00000028
-#define SYSMGR_FPGAGRP_MODULE_EMAC 0x00000004
-
 #endif /* _SYSTEM_MANAGER_H_ */
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

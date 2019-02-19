Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gw95j-00011k-89
 for barebox@lists.infradead.org; Tue, 19 Feb 2019 17:22:05 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <afa@pengutronix.de>) id 1gw95h-0002U8-Qu
 for barebox@lists.infradead.org; Tue, 19 Feb 2019 18:21:57 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92-RC5)
 (envelope-from <afa@pengutronix.de>) id 1gw95c-000644-5z
 for barebox@lists.infradead.org; Tue, 19 Feb 2019 18:21:52 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 19 Feb 2019 18:21:46 +0100
Message-Id: <20190219172150.11901-13-a.fatoum@pengutronix.de>
In-Reply-To: <20190219172150.11901-1-a.fatoum@pengutronix.de>
References: <20190219172150.11901-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH v2 12/16] ARM: at91: microchip-ksz9477-evb: use compressed DTB
To: barebox@lists.infradead.org

This saves about 25K, which could be useful to fit
the incoming first stage board support into the SRAM's 64K.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boards/microchip-ksz9477-evb/lowlevel.c | 4 ++--
 arch/arm/mach-at91/Kconfig                       | 1 +
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/microchip-ksz9477-evb/lowlevel.c b/arch/arm/boards/microchip-ksz9477-evb/lowlevel.c
index 639958a459ad..4293f8aaa57d 100644
--- a/arch/arm/boards/microchip-ksz9477-evb/lowlevel.c
+++ b/arch/arm/boards/microchip-ksz9477-evb/lowlevel.c
@@ -12,7 +12,7 @@
 
 #include <mach/hardware.h>
 
-extern char __dtb_at91_microchip_ksz9477_evb_start[];
+extern char __dtb_z_at91_microchip_ksz9477_evb_start[];
 
 ENTRY_FUNCTION(start_sama5d3_xplained_ung8071, r0, r1, r2)
 {
@@ -22,7 +22,7 @@ ENTRY_FUNCTION(start_sama5d3_xplained_ung8071, r0, r1, r2)
 
 	arm_setup_stack(SAMA5D3_SRAM_BASE + SAMA5D3_SRAM_SIZE - 16);
 
-	fdt = __dtb_at91_microchip_ksz9477_evb_start + get_runtime_offset();
+	fdt = __dtb_z_at91_microchip_ksz9477_evb_start + get_runtime_offset();
 
 	barebox_arm_entry(SAMA5_DDRCS, SZ_256M, fdt);
 }
diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index 0c012daf424d..7b8c07c3ba97 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -555,6 +555,7 @@ config MACH_MICROCHIP_KSZ9477_EVB
 	depends on ARCH_SAMA5D3
 	select OFDEVICE
 	select COMMON_CLK_OF_PROVIDER
+	select ARM_USE_COMPRESSED_DTB
 	help
 	  Select this if you are using Microchip's EVB-KSZ9477 Evaluation Kit.
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

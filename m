Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hAu1R-0005N7-6j
 for barebox@lists.infradead.org; Mon, 01 Apr 2019 10:18:36 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  1 Apr 2019 12:18:19 +0200
Message-Id: <20190401101822.7392-12-a.fatoum@pengutronix.de>
In-Reply-To: <20190401101822.7392-1-a.fatoum@pengutronix.de>
References: <20190401101822.7392-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH v3 11/15] ARM: at91: microchip-ksz9477-evb: use compressed DTB
To: barebox@lists.infradead.org
Cc: sam@ravnborg.org

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
index 60f427d7d483..1401b8cfc9bb 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -547,6 +547,7 @@ config MACH_MICROCHIP_KSZ9477_EVB
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

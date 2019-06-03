Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXsHT-0004ye-0F
 for barebox@lists.infradead.org; Mon, 03 Jun 2019 19:06:05 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <afa@pengutronix.de>) id 1hXsHR-0007Cb-IO
 for barebox@lists.infradead.org; Mon, 03 Jun 2019 21:06:01 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1hXsHR-0004Vp-3C
 for barebox@lists.infradead.org; Mon, 03 Jun 2019 21:06:01 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  3 Jun 2019 21:05:58 +0200
Message-Id: <20190603190559.16715-6-a.fatoum@pengutronix.de>
In-Reply-To: <20190603190559.16715-1-a.fatoum@pengutronix.de>
References: <20190603190559.16715-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 6/7] ARM: stm32mp: stm32mp157c-dk2: compress the DTB
To: barebox@lists.infradead.org

This reduces saves 20K with my configuration (from 247K to 227K).

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boards/stm32mp157c-dk2/lowlevel.c | 4 ++--
 arch/arm/mach-stm32mp/Kconfig              | 1 +
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/stm32mp157c-dk2/lowlevel.c b/arch/arm/boards/stm32mp157c-dk2/lowlevel.c
index 7f66cbfa1224..73e1fa1cee3d 100644
--- a/arch/arm/boards/stm32mp157c-dk2/lowlevel.c
+++ b/arch/arm/boards/stm32mp157c-dk2/lowlevel.c
@@ -23,7 +23,7 @@ static inline void setup_uart(void)
 	putc_ll('>');
 }
 
-extern char __dtb_stm32mp157c_dk2_start[];
+extern char __dtb_z_stm32mp157c_dk2_start[];
 
 ENTRY_FUNCTION(start_stm32mp157c_dk2, r0, r1, r2)
 {
@@ -34,7 +34,7 @@ ENTRY_FUNCTION(start_stm32mp157c_dk2, r0, r1, r2)
 	if (IS_ENABLED(CONFIG_DEBUG_LL))
 		setup_uart();
 
-	fdt = __dtb_stm32mp157c_dk2_start + get_runtime_offset();
+	fdt = __dtb_z_stm32mp157c_dk2_start + get_runtime_offset();
 
 	barebox_arm_entry(STM32_DDR_BASE, SZ_512M, fdt);
 }
diff --git a/arch/arm/mach-stm32mp/Kconfig b/arch/arm/mach-stm32mp/Kconfig
index bcf7293c465b..be16294f5ad7 100644
--- a/arch/arm/mach-stm32mp/Kconfig
+++ b/arch/arm/mach-stm32mp/Kconfig
@@ -5,6 +5,7 @@ config ARCH_STM32MP1157
 
 config MACH_STM32MP157C_DK2
 	select ARCH_STM32MP1157
+	select ARM_USE_COMPRESSED_DTB
 	bool "STM32MP157C-DK2 board"
 
 endif
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

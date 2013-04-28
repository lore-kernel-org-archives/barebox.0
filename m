Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp2.mail.ru ([94.100.176.130])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UWJDM-00069J-5v
 for barebox@lists.infradead.org; Sun, 28 Apr 2013 04:27:55 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sun, 28 Apr 2013 08:27:27 +0400
Message-Id: <1367123249-24119-2-git-send-email-shc_work@mail.ru>
In-Reply-To: <1367123249-24119-1-git-send-email-shc_work@mail.ru>
References: <1367123249-24119-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 2/4] ARM: omap: Remove wrong OMAP_CLOCK_ALL symbol
To: barebox@lists.infradead.org

OMAP_CLOCK_ALL is missing in Kconfig, so remove the "select" statement
and all other references to this symbol.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/configs/phycard_a_l1_defconfig | 1 -
 arch/arm/mach-omap/Kconfig              | 2 --
 arch/arm/mach-omap/omap3_clock.c        | 6 ------
 3 files changed, 9 deletions(-)

diff --git a/arch/arm/configs/phycard_a_l1_defconfig b/arch/arm/configs/phycard_a_l1_defconfig
index d90a333..fabaa2d 100644
--- a/arch/arm/configs/phycard_a_l1_defconfig
+++ b/arch/arm/configs/phycard_a_l1_defconfig
@@ -7,7 +7,6 @@ CONFIG_CPU_V7=y
 CONFIG_CPU_32v7=y
 CONFIG_BOARDINFO="Phytec phyCARD-A-L1"
 CONFIG_ARCH_OMAP3=y
-CONFIG_OMAP_CLOCK_ALL=y
 CONFIG_OMAP_CLOCK_SOURCE_S32K=y
 CONFIG_OMAP3_CLOCK_CONFIG=y
 CONFIG_OMAP3_COPY_CLOCK_SRAM=n
diff --git a/arch/arm/mach-omap/Kconfig b/arch/arm/mach-omap/Kconfig
index 42e5f4a..0913d0e 100644
--- a/arch/arm/mach-omap/Kconfig
+++ b/arch/arm/mach-omap/Kconfig
@@ -134,7 +134,6 @@ config MACH_BEAGLE
 
 config MACH_BEAGLEBONE
 	bool "Texas Instrument's Beagle Bone"
-	select OMAP_CLOCK_ALL
 	depends on ARCH_AM33XX
 	  help
 	  Say Y here if you are using Beagle Bone
@@ -179,7 +178,6 @@ config MACH_PCAAXL2
 
 config MACH_PCM051
 	bool "Phytec phyCORE pcm051"
-	select OMAP_CLOCK_ALL
 	select HAVE_DEFAULT_ENVIRONMENT_NEW
 	depends on ARCH_AM33XX
 	help
diff --git a/arch/arm/mach-omap/omap3_clock.c b/arch/arm/mach-omap/omap3_clock.c
index bcde48f..03aca49 100644
--- a/arch/arm/mach-omap/omap3_clock.c
+++ b/arch/arm/mach-omap/omap3_clock.c
@@ -652,12 +652,6 @@ void prcm_init(void)
 /**
  * @brief Enable the clks & power for perifs
  *
- * GPT2 Sysclk, ICLK,FCLK, 32k Sync is enabled by default
- * Uses CONFIG_OMAP_CLOCK_UART to enable UART clocks
- * Uses CONFIG_OMAP_CLOCK_I2C to enable I2C clocks
- * Uses CONFIG_OMAP_CLOCK_ALL to enable All Clocks!
- *    - Not a wise idea in most cases
- *
  * @return void
  */
 static void per_clocks_enable(void)
-- 
1.8.1.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

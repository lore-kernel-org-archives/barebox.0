Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hAu1R-0005N5-6i
 for barebox@lists.infradead.org; Mon, 01 Apr 2019 10:18:34 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  1 Apr 2019 12:18:18 +0200
Message-Id: <20190401101822.7392-11-a.fatoum@pengutronix.de>
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
Subject: [PATCH v3 10/15] images: at91: differentiate between first and second
 stage images
To: barebox@lists.infradead.org
Cc: sam@ravnborg.org

Incoming microchip-ksz9477-evb first stage will add one more entry point
for the first stage. As there is a little reason to use the same piggy
data for both images (BOOT.BIN, the first stage, is limited to 64K), have
CONFIG_AT91_LOAD_BAREBOX_SRAM decide which stage should be built.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-at91/Kconfig |  2 +-
 images/Makefile.at91       | 12 +++++++++---
 2 files changed, 10 insertions(+), 4 deletions(-)

diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index 8e1bf0629ab7..60f427d7d483 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -615,7 +615,7 @@ config AT91_BOOTSTRAP
 	select BOOTSTRAP
 
 config AT91_LOAD_BAREBOX_SRAM
-	bool "at91 load barebox in sram"
+	bool "at91 barebox image will be loaded into SRAM"
 	depends on SHELL_NONE || HAVE_AT91_LOAD_BAREBOX_SRAM
 	default y if SHELL_NONE
 
diff --git a/images/Makefile.at91 b/images/Makefile.at91
index acdb591d2452..3f1dd57f6c58 100644
--- a/images/Makefile.at91
+++ b/images/Makefile.at91
@@ -4,12 +4,18 @@
 
 pblb-$(CONFIG_MACH_AT91SAM9X5EK) += start_at91sam9x5ek
 FILE_barebox-at91sam9x5ek.img = start_at91sam9x5ek.pblb
-image-$(CONFIG_MACH_AT91SAM9X5EK) += barebox-at91sam9x5ek.img
+at91-barebox-$(CONFIG_MACH_AT91SAM9X5EK) += barebox-at91sam9x5ek.img
 
 pblb-$(CONFIG_MACH_AT91SAM9263EK) += start_at91sam9263ek
 FILE_barebox-at91sam9263ek.img = start_at91sam9263ek.pblb
-image-$(CONFIG_MACH_AT91SAM9263EK) += barebox-at91sam9263ek.img
+at91-barebox-$(CONFIG_MACH_AT91SAM9263EK) += barebox-at91sam9263ek.img
 
 pblb-$(CONFIG_MACH_MICROCHIP_KSZ9477_EVB) += start_sama5d3_xplained_ung8071
 FILE_barebox-microchip-ksz9477-evb.img = start_sama5d3_xplained_ung8071.pblb
-image-$(CONFIG_MACH_MICROCHIP_KSZ9477_EVB) += barebox-microchip-ksz9477-evb.img
+at91-barebox-$(CONFIG_MACH_MICROCHIP_KSZ9477_EVB) += barebox-microchip-ksz9477-evb.img
+
+ifdef CONFIG_AT91_LOAD_BAREBOX_SRAM
+image-y += $(at91-boot-bin-y)
+else
+image-y += $(at91-barebox-y)
+endif
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gw95j-00011h-6f
 for barebox@lists.infradead.org; Tue, 19 Feb 2019 17:22:03 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <afa@pengutronix.de>) id 1gw95h-0002U6-Qh
 for barebox@lists.infradead.org; Tue, 19 Feb 2019 18:21:57 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92-RC5)
 (envelope-from <afa@pengutronix.de>) id 1gw95c-00063n-57
 for barebox@lists.infradead.org; Tue, 19 Feb 2019 18:21:52 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 19 Feb 2019 18:21:44 +0100
Message-Id: <20190219172150.11901-11-a.fatoum@pengutronix.de>
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
Subject: [PATCH v2 10/16] images: at91: differentiate between first and second
 stage images
To: barebox@lists.infradead.org

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
index 9d6033bc57fb..a5e55e3cc451 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -617,7 +617,7 @@ config AT91_BOOTSTRAP
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

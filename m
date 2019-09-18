Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAUnQ-00022S-TI
 for barebox@lists.infradead.org; Wed, 18 Sep 2019 07:54:42 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 18 Sep 2019 09:54:11 +0200
Message-Id: <20190918075421.20456-7-s.hauer@pengutronix.de>
In-Reply-To: <20190918075421.20456-1-s.hauer@pengutronix.de>
References: <20190918075421.20456-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 06/16] ARM: i.MX23 olinuxino: Check machine type in initcalls
To: Barebox List <barebox@lists.infradead.org>

Check for the right machine type in initcalls before executing them to
make the board multi image safe.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/imx233-olinuxino/imx23-olinuxino.c | 8 ++++++++
 arch/arm/boards/imx233-olinuxino/lowlevel.c        | 3 ++-
 2 files changed, 10 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boards/imx233-olinuxino/imx23-olinuxino.c b/arch/arm/boards/imx233-olinuxino/imx23-olinuxino.c
index c06779ddf6..af548b3c53 100644
--- a/arch/arm/boards/imx233-olinuxino/imx23-olinuxino.c
+++ b/arch/arm/boards/imx233-olinuxino/imx23-olinuxino.c
@@ -26,6 +26,7 @@
 #include <errno.h>
 #include <mci.h>
 #include <asm/armlinux.h>
+#include <asm/barebox-arm.h>
 #include <usb/ehci.h>
 #include <mach/usb.h>
 #include <generated/mach-types.h>
@@ -33,6 +34,7 @@
 #include <mach/clock.h>
 #include <mach/mci.h>
 #include <mach/iomux.h>
+#include <generated/mach-types.h>
 
 static struct mxs_mci_platform_data mci_pdata = {
 	.caps = MMC_CAP_4_BIT_DATA | MMC_CAP_SD_HIGHSPEED | MMC_CAP_MMC_HIGHSPEED,
@@ -56,6 +58,9 @@ static struct gpio_led led1 = {
 
 static int imx23_olinuxino_devices_init(void)
 {
+	if (barebox_arm_machine() != MACH_TYPE_IMX233_OLINUXINO)
+		return 0;
+
 	armlinux_set_architecture(MACH_TYPE_IMX233_OLINUXINO);
 	defaultenv_append_directory(defaultenv_imx233_olinuxino);
 
@@ -76,6 +81,9 @@ device_initcall(imx23_olinuxino_devices_init);
 
 static int imx23_olinuxino_console_init(void)
 {
+	if (barebox_arm_machine() != MACH_TYPE_IMX233_OLINUXINO)
+		return 0;
+
 	barebox_set_model("Olimex.ltd imx233-olinuxino");
 	barebox_set_hostname("imx233-olinuxino");
 
diff --git a/arch/arm/boards/imx233-olinuxino/lowlevel.c b/arch/arm/boards/imx233-olinuxino/lowlevel.c
index 07a2a0e293..253cf1257b 100644
--- a/arch/arm/boards/imx233-olinuxino/lowlevel.c
+++ b/arch/arm/boards/imx233-olinuxino/lowlevel.c
@@ -7,10 +7,11 @@
 #include <io.h>
 #include <debug_ll.h>
 #include <mach/iomux.h>
+#include <generated/mach-types.h>
 
 ENTRY_FUNCTION(start_barebox_olinuxino_imx23, r0, r1, r2)
 {
-	barebox_arm_entry(IMX_MEMORY_BASE, SZ_64M, NULL);
+	barebox_arm_entry(IMX_MEMORY_BASE, SZ_64M, (void *)MACH_TYPE_IMX233_OLINUXINO);
 }
 
 static const uint32_t pad_setup[] = {
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

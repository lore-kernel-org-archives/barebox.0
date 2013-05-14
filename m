Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.data-modul.de ([212.184.205.171]
 helo=mailgw1.data-modul.com)
 by merlin.infradead.org with smtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UcJOy-0005b6-Lv
 for barebox@lists.infradead.org; Tue, 14 May 2013 17:52:42 +0000
From: "Fricke, Silvio" <SFricke@data-modul.com>
Date: Tue, 14 May 2013 17:52:01 +0000
Message-ID: <CB1254936A837D40B8C8611AEC83D6910686D1BD@MS-DM-M01.DATA-MODUL.com>
Content-Language: de-DE
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
Subject: [PATCH] ARM i.MX6: set imx6 silicon revision
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

From: "S. Fricke" <sfricke@data-modul.com>

This is mainly a backport of the imx6_revision function of
arch/arm/mach-imx/mach-imx6q.c in the linux kernel sources.

Signed-off-by: S. Fricke <sfricke@data-modul.com>
---
 arch/arm/mach-imx/imx6.c | 26 ++++++++++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/arch/arm/mach-imx/imx6.c b/arch/arm/mach-imx/imx6.c
index 7a7ce15..9f67e19 100644
--- a/arch/arm/mach-imx/imx6.c
+++ b/arch/arm/mach-imx/imx6.c
@@ -17,6 +17,9 @@
 #include <sizes.h>
 #include <mach/generic.h>
 #include <mach/imx6-regs.h>
+#include <mach/revision.h>
+
+#define SI_REV 0x260

 void imx6_init_lowlevel(void)
 {
@@ -55,6 +58,9 @@ void imx6_init_lowlevel(void)

 static int imx6_init(void)
 {
+       u32 rev;
+       u32 mx6_silicon_revision;
+
        imx6_boot_save_loc((void *)MX6_SRC_BASE_ADDR);

        add_generic_device("imx-iomuxv3", 0, NULL, MX6_IOMUXC_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
@@ -70,6 +76,26 @@ static int imx6_init(void)
        add_generic_device("imx21-wdt", 0, NULL, MX6_WDOG1_BASE_ADDR, 0x4000, IORESOURCE_MEM, NULL);
        add_generic_device("imx6-usb-misc", 0, NULL, MX6_USBOH3_USB_BASE_ADDR + 0x800, 0x100, IORESOURCE_MEM, NULL);

+       rev = readl(MX6_ANATOP_BASE_ADDR + SI_REV);
+       switch (rev & 0xff) {
+       case 0x00:
+               mx6_silicon_revision = IMX_CHIP_REV_1_0;
+               break;
+
+       case 0x01:
+               mx6_silicon_revision = IMX_CHIP_REV_1_1;
+               break;
+
+       case 0x02:
+               mx6_silicon_revision = IMX_CHIP_REV_1_2;
+               break;
+
+       default:
+               mx6_silicon_revision = IMX_CHIP_REV_UNKNOWN;
+       }
+
+       imx_set_silicon_revision("i.MX6", mx6_silicon_revision);
+
        return 0;
 }
 postcore_initcall(imx6_init);
--
1.8.2.3
______________________________________________________________________________
Vertrauliche E-Mail von / Confidential e-mail from
Data Modul Aktiengesellschaft
Vorstand: Peter Hecktor (Vorsitzender), Walter King, Dr. Florian Pesahl
Vorsitzende des Aufsichtsrates: Victoria Hecktor
Sitz der Gesellschaft: Muenchen
Registergericht Muenchen - Handelsregister B 85 591


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-f177.google.com ([209.85.212.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TLMF1-0007Oe-EY
 for barebox@lists.infradead.org; Mon, 08 Oct 2012 22:56:05 +0000
Received: by mail-wi0-f177.google.com with SMTP id hj13so3126618wib.0
 for <barebox@lists.infradead.org>; Mon, 08 Oct 2012 15:56:03 -0700 (PDT)
From: Vicente <vicencb@gmail.com>
Date: Tue,  9 Oct 2012 00:55:23 +0200
Message-Id: <1349736924-24667-14-git-send-email-vicencb@gmail.com>
In-Reply-To: <1349736924-24667-1-git-send-email-vicencb@gmail.com>
References: <1349736924-24667-1-git-send-email-vicencb@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 13/14] omap4: add support for loading second stage from usb
To: barebox@lists.infradead.org
Cc: Vicente <vicencb@gmail.com>


Signed-off-by: Vicente <vicencb@gmail.com>
---
 arch/arm/mach-omap/xload.c | 26 ++++++++++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/arch/arm/mach-omap/xload.c b/arch/arm/mach-omap/xload.c
index 9fa8221..240d3ff 100644
--- a/arch/arm/mach-omap/xload.c
+++ b/arch/arm/mach-omap/xload.c
@@ -139,6 +139,24 @@ static void *omap_xload_boot_spi(int offset)
 	return to;
 }
 
+static void *omap4_xload_boot_usb(void){
+	int ret;
+	void *buf;
+	int len;
+
+	ret = mount("omap4_usbboot", "omap4_usbbootfs", "/");
+	if (ret) {
+		printf("Unable to mount omap4_usbbootfs (%d)\n", ret);
+		return NULL;
+	}
+
+	buf = read_file("/barebox.bin", &len);
+	if (!buf)
+		printf("could not read barebox.bin from omap4_usbbootfs\n");
+
+	return buf;
+}
+
 enum omap_boot_src omap_bootsrc(void)
 {
 #if defined(CONFIG_ARCH_OMAP3)
@@ -161,6 +179,14 @@ int run_shell(void)
 		printf("booting from MMC1\n");
 		func = omap_xload_boot_mmc();
 		break;
+	case OMAP_BOOTSRC_USB1:
+		if (IS_ENABLED(CONFIG_FS_OMAP4_USBBOOT)) {
+			printf("booting from USB1\n");
+			func = omap4_xload_boot_usb();
+			break;
+		} else {
+			printf("booting from usb1 not enabled\n");
+		}
 	case OMAP_BOOTSRC_UNKNOWN:
 		printf("unknown boot source. Fall back to nand\n");
 	case OMAP_BOOTSRC_NAND:
-- 
1.7.12.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

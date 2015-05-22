Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.x-arc.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Yvlo9-0004hH-Tc
 for barebox@lists.infradead.org; Fri, 22 May 2015 12:12:11 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id E65B2A00345
 for <barebox@lists.infradead.org>; Fri, 22 May 2015 14:13:10 +0200 (CEST)
From: Wadim Egorov <w.egorov@phytec.de>
Date: Fri, 22 May 2015 14:11:18 +0200
Message-Id: <1432296678-375-3-git-send-email-w.egorov@phytec.de>
In-Reply-To: <1432296678-375-1-git-send-email-w.egorov@phytec.de>
References: <1432296678-375-1-git-send-email-w.egorov@phytec.de>
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
Subject: [RFC 3/3] ARM: am33xx: Add network boot
To: barebox@lists.infradead.org

Signed-off-by: Wadim Egorov <w.egorov@phytec.de>
---
 arch/arm/mach-omap/Kconfig          |  9 +++++++
 arch/arm/mach-omap/am33xx_generic.c |  3 +++
 arch/arm/mach-omap/xload.c          | 52 ++++++++++++++++++++++++++++++++++++-
 3 files changed, 63 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-omap/Kconfig b/arch/arm/mach-omap/Kconfig
index 444ddf8..bc00d5b 100644
--- a/arch/arm/mach-omap/Kconfig
+++ b/arch/arm/mach-omap/Kconfig
@@ -110,6 +110,15 @@ config ARCH_TEXT_BASE
 	default 0x80e80000 if MACH_OMAP343xSDP
 	default 0x80e80000 if MACH_BEAGLE
 
+config AM33XX_NET_BOOT
+	bool "enable AM335x network boot"
+	select ENVIRONMENT_VARIABLES
+	select NET_DHCP
+	select FS_TFTP
+	select DRIVER_NET_CPSW
+	default n
+	depends on ARCH_AM33XX && NET
+
 config OMAP4_USBBOOT
 	bool "enable booting from USB"
 	default n
diff --git a/arch/arm/mach-omap/am33xx_generic.c b/arch/arm/mach-omap/am33xx_generic.c
index ee30351..7ce32f0 100644
--- a/arch/arm/mach-omap/am33xx_generic.c
+++ b/arch/arm/mach-omap/am33xx_generic.c
@@ -145,6 +145,9 @@ static int am33xx_bootsource(void)
 	case 0x44:
 		src = BOOTSOURCE_USB;
 		break;
+	case 0x46:
+		src = BOOTSOURCE_NET;
+		break;
 	default:
 		src = BOOTSOURCE_UNKNOWN;
 	}
diff --git a/arch/arm/mach-omap/xload.c b/arch/arm/mach-omap/xload.c
index 7c8c350..08490ce 100644
--- a/arch/arm/mach-omap/xload.c
+++ b/arch/arm/mach-omap/xload.c
@@ -13,6 +13,10 @@
 #include <filetype.h>
 #include <xymodem.h>
 #include <mach/generic.h>
+#include <mach/am33xx-generic.h>
+#include <net.h>
+#include <environment.h>
+#include <dhcp.h>
 
 struct omap_barebox_part *barebox_part;
 
@@ -126,7 +130,6 @@ static void *omap_xload_boot_mmc(void)
 		printf("could not read barebox.bin from sd card\n");
 		return NULL;
 	}
-
 	return buf;
 }
 
@@ -224,6 +227,45 @@ static void *omap_serial_boot(void){
 	return buf;
 }
 
+static void *am33xx_net_boot(void)
+{
+	void *buf = NULL;
+	int err;
+	int len;
+	struct dhcp_req_param dhcp_param;
+	const char *bootfile;
+
+	am33xx_register_ethaddr(0, 0);
+
+	memset(&dhcp_param, 0, sizeof(struct dhcp_req_param));
+	dhcp_param.vendor_id = "am335x barebox-mlo";
+	err = dhcp(20, &dhcp_param);
+	if (err) {
+		printf("dhcp failed\n");
+		return NULL;
+	}
+
+	err = mount(ip_to_string(net_get_serverip()), "tftp", "/", NULL);
+	if (err < 0) {
+		printf("Unable to mount.\n");
+		return NULL;
+	}
+
+	bootfile = getenv("bootfile");
+	if (!bootfile) {
+		printf("bootfile not found.\n");
+		return NULL;
+	}
+
+	buf = read_file(bootfile, &len);
+	if (!buf)
+		printf("could not read %s.\n", bootfile);
+
+	umount("/");
+
+	return buf;
+}
+
 /*
  * Replaces the default shell in xload configuration
  */
@@ -264,6 +306,14 @@ static __noreturn int omap_xload(void)
 			func = omap_serial_boot();
 			break;
 		}
+	case BOOTSOURCE_NET:
+		if (IS_ENABLED(CONFIG_AM33XX_NET_BOOT)) {
+			printf("booting from NET\n");
+			func = am33xx_net_boot();
+			break;
+		} else {
+			printf("booting from network not enabled\n");
+		}
 	default:
 		printf("unknown boot source. Fall back to nand\n");
 		func = omap_xload_boot_nand(barebox_part->nand_offset,
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycard.co.uk ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZC0Jv-0000RM-3c
 for barebox@lists.infradead.org; Mon, 06 Jul 2015 06:56:04 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 3D0C7A002F6
 for <barebox@lists.infradead.org>; Mon,  6 Jul 2015 08:57:12 +0200 (CEST)
From: Jan Remmet <j.remmet@phytec.de>
Date: Mon, 6 Jul 2015 08:55:26 +0200
Message-Id: <1436165726-33606-1-git-send-email-j.remmet@phytec.de>
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
Subject: [PATCH] ARM: am33xx: netboot use ramfs
To: barebox@lists.infradead.org

Older tftp server don't send the file size.
Then tftpfs needs temporary place to store the file.
mount ramfs and then tftpfs in a own mount point

Signed-off-by: Jan Remmet <j.remmet@phytec.de>
Tested-by: Wadim Egorov <w.egorov@phytec.de>
---
 arch/arm/mach-omap/Kconfig |  1 +
 arch/arm/mach-omap/xload.c | 30 ++++++++++++++++++++++++++----
 2 files changed, 27 insertions(+), 4 deletions(-)

diff --git a/arch/arm/mach-omap/Kconfig b/arch/arm/mach-omap/Kconfig
index af35975..aeed79f 100644
--- a/arch/arm/mach-omap/Kconfig
+++ b/arch/arm/mach-omap/Kconfig
@@ -106,6 +106,7 @@ config AM33XX_NET_BOOT
 	bool "enable AM335x network boot"
 	select ENVIRONMENT_VARIABLES
 	select NET_DHCP
+	select FS_RAMFS
 	select FS_TFTP
 	select DRIVER_NET_CPSW
 	default n
diff --git a/arch/arm/mach-omap/xload.c b/arch/arm/mach-omap/xload.c
index 4a0714e..b0ce1d6 100644
--- a/arch/arm/mach-omap/xload.c
+++ b/arch/arm/mach-omap/xload.c
@@ -229,13 +229,16 @@ static void *omap_serial_boot(void){
 	return buf;
 }
 
+#define TFTP_MOUNT "/.tftp"
+
 static void *am33xx_net_boot(void)
 {
 	void *buf = NULL;
 	int err;
 	int len;
 	struct dhcp_req_param dhcp_param;
-	const char *bootfile;
+	const char *bootfile, *ip;
+	char *file;
 
 	am33xx_register_ethaddr(0, 0);
 
@@ -247,7 +250,22 @@ static void *am33xx_net_boot(void)
 		return NULL;
 	}
 
-	err = mount(ip_to_string(net_get_serverip()), "tftp", "/", NULL);
+	/*
+	 * Older tftp server don't send the file size.
+	 * Then tftpfs needs temporary place to store the file.
+	 */
+	err = mount("none", "ramfs", "/", NULL);
+	if (err < 0) {
+		printf("failed to mount ramfs\n");
+		return NULL;
+	}
+
+	err = make_directory(TFTP_MOUNT);
+	if (err)
+		return NULL;
+
+	ip = ip_to_string(net_get_serverip());
+	err = mount(ip, "tftp", TFTP_MOUNT, NULL);
 	if (err < 0) {
 		printf("Unable to mount.\n");
 		return NULL;
@@ -259,11 +277,15 @@ static void *am33xx_net_boot(void)
 		return NULL;
 	}
 
-	buf = read_file(bootfile, &len);
+	file = asprintf("%s/%s", TFTP_MOUNT, bootfile);
+
+	buf = read_file(file, &len);
 	if (!buf)
 		printf("could not read %s.\n", bootfile);
 
-	umount("/");
+	free(file);
+
+	umount(TFTP_MOUNT);
 
 	return buf;
 }
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.visioncatalog.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.87 #1 (Red Hat Linux))
 id 1d6eVz-0005y5-V6
 for barebox@lists.infradead.org; Fri, 05 May 2017 14:47:30 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 720CEA00243
 for <barebox@lists.infradead.org>; Fri,  5 May 2017 16:47:47 +0200 (CEST)
From: Daniel Schultz <d.schultz@phytec.de>
Date: Fri, 5 May 2017 16:46:54 +0200
Message-Id: <1493995618-7289-1-git-send-email-d.schultz@phytec.de>
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
Subject: [PATCH v2 1/5] arm: mach-omap: Change mountpoint of boot partitions
To: barebox@lists.infradead.org

If using EMMC and SD as bootsources, mounting the boot partition of both
devices to /boot makes trouble. Either the correct device is mounted to
/boot or a remount of /boot has to be performed.

To ensure this problem each MMCn bootsource will be mounted to his own
path in /mnt/mmcN.0

Signed-off-by: Daniel Schultz <d.schultz@phytec.de>
---
 arch/arm/mach-omap/omap_generic.c | 31 ++++++++++++++++++++-----------
 1 file changed, 20 insertions(+), 11 deletions(-)

diff --git a/arch/arm/mach-omap/omap_generic.c b/arch/arm/mach-omap/omap_generic.c
index 1d03eac..aa7424d 100644
--- a/arch/arm/mach-omap/omap_generic.c
+++ b/arch/arm/mach-omap/omap_generic.c
@@ -113,12 +113,15 @@ const char *omap_get_bootmmc_devname(void)
 }
 
 #if defined(CONFIG_ENV_HANDLING)
-#define ENV_PATH "/boot/barebox.env"
+static char *envpath = "/mnt/mmc0.0/barebox.env";
+
 static int omap_env_init(void)
 {
-	char *partname;
-	const char *diskdev;
 	int ret;
+	const char *diskdev;
+	char *partname;
+	struct cdev *cdev;
+	const char *rootpath;
 
 	if (bootsource_get() != BOOTSOURCE_MMC)
 		return 0;
@@ -129,18 +132,24 @@ static int omap_env_init(void)
 		diskdev = "disk0";
 
 	device_detect_by_name(diskdev);
+	partname = basprintf("%s.0", diskdev);
+	cdev = cdev_by_name(partname);
+	if (cdev == NULL) {
+		pr_err("Failed to get device %s\n", partname);
+		goto out;
+	}
 
-	partname = basprintf("/dev/%s.0", diskdev);
-
-	mkdir("/boot", 0666);
-	ret = mount(partname, "fat", "/boot", NULL);
-	if (ret) {
-		pr_err("Failed to load environment: mount %s failed (%d)\n", partname, ret);
+	rootpath = cdev_mount_default(cdev, NULL);
+	if (IS_ERR(rootpath)) {
+		pr_err("Failed to load environment: mount %s failed (%d)\n",
+						cdev->name, IS_ERR(rootpath));
 		goto out;
 	}
+	envpath = basprintf("%s/barebox.env", rootpath);
 
-	pr_debug("Loading default env from %s on device %s\n", ENV_PATH, partname);
-	default_environment_path_set(ENV_PATH);
+	pr_debug("Loading default env from %s on device %s\n", envpath,
+								partname);
+	default_environment_path_set(envpath);
 
 out:
 	free(partname);
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

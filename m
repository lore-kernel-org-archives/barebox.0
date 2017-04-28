Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycard.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.87 #1 (Red Hat Linux))
 id 1d45IC-0008As-7m
 for barebox@lists.infradead.org; Fri, 28 Apr 2017 12:46:38 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 7A671A00422
 for <barebox@lists.infradead.org>; Fri, 28 Apr 2017 14:46:54 +0200 (CEST)
From: Daniel Schultz <d.schultz@phytec.de>
Date: Fri, 28 Apr 2017 14:46:04 +0200
Message-Id: <1493383568-27798-3-git-send-email-d.schultz@phytec.de>
In-Reply-To: <1493383568-27798-1-git-send-email-d.schultz@phytec.de>
References: <1493383568-27798-1-git-send-email-d.schultz@phytec.de>
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
Subject: [PATCH 3/7] arm: mach-omap: Change mountpoint of boot partitions
To: barebox@lists.infradead.org

If using EMMC and SD as bootsources, mounting the boot partition of both
devices to /boot makes trouble. Either the correct device is mounted to
/boot or a remount of /boot has to be performed.

To ensure this problem each MMCn bootsource will be mounted to his own
path in /mnt/{mmc,emmc}.

Signed-off-by: Daniel Schultz <d.schultz@phytec.de>
---
 arch/arm/mach-omap/omap_generic.c | 24 +++++++++++++++++++-----
 1 file changed, 19 insertions(+), 5 deletions(-)

diff --git a/arch/arm/mach-omap/omap_generic.c b/arch/arm/mach-omap/omap_generic.c
index 1d03eac..7c50806 100644
--- a/arch/arm/mach-omap/omap_generic.c
+++ b/arch/arm/mach-omap/omap_generic.c
@@ -113,10 +113,15 @@ const char *omap_get_bootmmc_devname(void)
 }
 
 #if defined(CONFIG_ENV_HANDLING)
-#define ENV_PATH "/boot/barebox.env"
+#define MMC_PATH "/mnt/mmc/"
+#define MMC_ENV_PATH MMC_PATH "barebox.env"
+#define EMMC_PATH "/mnt/emmc/"
+#define EMMC_ENV_PATH EMMC_PATH "barebox.env"
 static int omap_env_init(void)
 {
 	char *partname;
+	char *mntpath;
+	char *envpath;
 	const char *diskdev;
 	int ret;
 
@@ -132,15 +137,24 @@ static int omap_env_init(void)
 
 	partname = basprintf("/dev/%s.0", diskdev);
 
-	mkdir("/boot", 0666);
-	ret = mount(partname, "fat", "/boot", NULL);
+	if (bootsource_get_instance() == 1) {
+		mntpath = EMMC_PATH;
+		envpath = EMMC_ENV_PATH;
+	} else {
+		mntpath = MMC_PATH;
+		envpath = MMC_ENV_PATH;
+	}
+	mkdir("/mnt", 0666);
+	mkdir(MMC_PATH, 0666);
+	mkdir(EMMC_PATH, 0666);
+	ret = mount(partname, "fat", mntpath, NULL);
 	if (ret) {
 		pr_err("Failed to load environment: mount %s failed (%d)\n", partname, ret);
 		goto out;
 	}
 
-	pr_debug("Loading default env from %s on device %s\n", ENV_PATH, partname);
-	default_environment_path_set(ENV_PATH);
+	pr_debug("Loading default env from %s on device %s\n", envpath, partname);
+	default_environment_path_set(envpath);
 
 out:
 	free(partname);
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

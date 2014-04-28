Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WeiCY-0008Ha-HF
 for barebox@lists.infradead.org; Mon, 28 Apr 2014 09:50:19 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 28 Apr 2014 11:49:34 +0200
Message-Id: <1398678579-17491-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/6] environment: drop envfs_register_partition
To: barebox@lists.infradead.org

The purpose of envfs_register_partition is to print an error
message when the partition does not exist. Print an error message
from generic code instead and drop this function.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/chumby_falconwing/falconwing.c     |  4 +-
 arch/arm/boards/crystalfontz-cfa10036/cfa10036.c   |  5 +--
 arch/arm/boards/imx233-olinuxino/imx23-olinuxino.c |  5 +--
 common/environment.c                               | 50 ++--------------------
 include/envfs.h                                    |  2 -
 5 files changed, 6 insertions(+), 60 deletions(-)

diff --git a/arch/arm/boards/chumby_falconwing/falconwing.c b/arch/arm/boards/chumby_falconwing/falconwing.c
index 24dc6e3..669de95 100644
--- a/arch/arm/boards/chumby_falconwing/falconwing.c
+++ b/arch/arm/boards/chumby_falconwing/falconwing.c
@@ -299,9 +299,7 @@ static int falconwing_devices_init(void)
 
 	armlinux_set_architecture(MACH_TYPE_CHUMBY);
 
-	rc = envfs_register_partition("disk0", 1);
-	if (rc != 0)
-		printf("Cannot create the 'env0' persistent environment storage (%d)\n", rc);
+	default_environment_path_set("/dev/disk0.1");
 
 	return 0;
 }
diff --git a/arch/arm/boards/crystalfontz-cfa10036/cfa10036.c b/arch/arm/boards/crystalfontz-cfa10036/cfa10036.c
index 60f09d4..3374338 100644
--- a/arch/arm/boards/crystalfontz-cfa10036/cfa10036.c
+++ b/arch/arm/boards/crystalfontz-cfa10036/cfa10036.c
@@ -135,10 +135,7 @@ static int cfa10036_devices_init(void)
 
 	cfa10036_detect_hw();
 
-	ret = envfs_register_partition("disk0", 1);
-	if (ret != 0)
-		printf("Cannot create the 'env0' persistent "
-			 "environment storage (%d)\n", ret);
+	default_environment_path_set("/dev/disk0.1");
 
 	return 0;
 }
diff --git a/arch/arm/boards/imx233-olinuxino/imx23-olinuxino.c b/arch/arm/boards/imx233-olinuxino/imx23-olinuxino.c
index 1181612..3d46604 100644
--- a/arch/arm/boards/imx233-olinuxino/imx23-olinuxino.c
+++ b/arch/arm/boards/imx233-olinuxino/imx23-olinuxino.c
@@ -129,10 +129,7 @@ static int imx23_olinuxino_devices_init(void)
 
 	olinuxino_init_usb();
 
-	rc = envfs_register_partition("disk0", 1);
-	if (rc != 0)
-		printf("Cannot create the 'env0' persistent "
-			 "environment storage (%d)\n", rc);
+	default_environment_path_set("/dev/disk0.1");
 
 	return 0;
 }
diff --git a/common/environment.c b/common/environment.c
index f2ac17d..e55df40 100644
--- a/common/environment.c
+++ b/common/environment.c
@@ -395,7 +395,9 @@ int envfs_load(const char *filename, const char *dir, unsigned flags)
 
 	envfd = open(filename, O_RDONLY);
 	if (envfd < 0) {
-		printf("Open %s %s\n", filename, errno_str());
+		printf("environment load %s: %s\n", filename, errno_str());
+		if (errno == ENOENT)
+			printf("Maybe you have to create the partition.\n");
 		return -1;
 	}
 
@@ -451,49 +453,3 @@ out:
 
 	return ret;
 }
-
-#ifdef __BAREBOX__
-/**
- * Try to register an environment storage on a device's partition
- * @return 0 on success
- *
- * We rely on the existence of a usable storage device, already attached to
- * our system, to get something like a persistent memory for our environment.
- * We need to specify the partition number to use on this device.
- * @param[in] devname Name of the device
- * @param[in] partnr Partition number
- * @return 0 on success, anything else in case of failure
- */
-
-int envfs_register_partition(const char *devname, unsigned int partnr)
-{
-	struct cdev *cdev, *part;
-	char *partname;
-
-	if (!devname)
-		return -EINVAL;
-
-	cdev = cdev_by_name(devname);
-	if (cdev == NULL) {
-		pr_err("No %s present\n", devname);
-		return -ENODEV;
-	}
-	partname = asprintf("%s.%d", devname, partnr);
-	cdev = cdev_by_name(partname);
-	if (cdev == NULL) {
-		pr_err("No %s partition available\n", partname);
-		pr_info("Please create the partition %s to store the env\n", partname);
-		return -ENODEV;
-	}
-
-	part = devfs_add_partition(partname, 0, cdev->size,
-						DEVFS_PARTITION_FIXED, "env0");
-	if (part)
-		return 0;
-
-	free(partname);
-
-	return -EINVAL;
-}
-EXPORT_SYMBOL(envfs_register_partition);
-#endif
diff --git a/include/envfs.h b/include/envfs.h
index ae98808..9b86398 100644
--- a/include/envfs.h
+++ b/include/envfs.h
@@ -110,8 +110,6 @@ static inline char *default_environment_path_get(void)
 }
 #endif
 
-int envfs_register_partition(const char *devname, unsigned int partnr);
-
 #ifdef CONFIG_DEFAULT_ENVIRONMENT
 void defaultenv_append(void *buf, unsigned int size, const char *name);
 int defaultenv_load(const char *dir, unsigned flags);
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

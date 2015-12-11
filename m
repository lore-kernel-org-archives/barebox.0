Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.kymetacorp.com ([192.81.58.21])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a7DEH-0000Al-3L
 for barebox@lists.infradead.org; Fri, 11 Dec 2015 02:14:41 +0000
From: Trent Piepho <tpiepho@kymetacorp.com>
Date: Fri, 11 Dec 2015 02:13:21 +0000
Message-ID: <1449800007.26955.96.camel@rtred1test09.kymeta.local>
Content-Language: en-US
Content-ID: <FAE4A0DF525F9D4E8FEBADCC2C21509F@kymetacorp.com>
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
Subject: [PATCH] socfpga: Find partition with environment via device tree
To: barebox <barebox@lists.infradead.org>

socfpga loads the environment from a file named "barebox.env" located
on the device "/dev/mmc0.1".  Both those names are hard-coded in the
socfpga code and can't be changed.

Barebox supports selecting the location of the environment using a
"barebox,environment" node in device tree's "chosen" node.

Change socfpga to use this mechanism by looking for barebox.env in the
device or partition specified in the device tree.

The filename is still hard-coded.  Someone who wants to change it
could put that into the device tree too (new file-name property?  3rd
string in device-path?).

Remove the stat() call in socfpga_env_init(), as mount() already
checks if the device exists.  Also remove device_detect_by_name() call
as the barebox env device code now takes care of that for us.

Signed-off-by: Trent Piepho <tpiepho@kymetacorp.com>
---

OMAP could do the same thing...

 arch/arm/dts/socfpga.dtsi       |  7 +++++++
 arch/arm/mach-socfpga/generic.c | 37 +++++++++++++------------------------
 2 files changed, 20 insertions(+), 24 deletions(-)

diff --git a/arch/arm/dts/socfpga.dtsi b/arch/arm/dts/socfpga.dtsi
index d4d498b..1d0d6ff 100644
--- a/arch/arm/dts/socfpga.dtsi
+++ b/arch/arm/dts/socfpga.dtsi
@@ -1,4 +1,11 @@
 / {
+	chosen {
+                environment@0 {
+                        compatible = "barebox,environment";
+                        device-path = &mmc, "partname:1";
+                };
+	};
+
 	aliases {
 		mmc0 = &mmc;
 	};
diff --git a/arch/arm/mach-socfpga/generic.c b/arch/arm/mach-socfpga/generic.c
index 2d4afd0..46f9415 100644
--- a/arch/arm/mach-socfpga/generic.c
+++ b/arch/arm/mach-socfpga/generic.c
@@ -105,38 +105,27 @@ static int socfpga_init(void)
 core_initcall(socfpga_init);
 
 #if defined(CONFIG_ENV_HANDLING)
-#define ENV_PATH "/boot/barebox.env"
+#define ENV_PATH "/boot"		/* Where to mount env device */
+#define ENV_FILE "barebox.env"		/* File on device to use */
+
 static int socfpga_env_init(void)
 {
-	struct stat s;
-	char *diskdev, *partname;
+	const char *device;
 	int ret;
 
-	diskdev = "mmc0";
-
-	device_detect_by_name(diskdev);
-
-	partname = asprintf("/dev/%s.1", diskdev);
-
-	ret = stat(partname, &s);
-
-	if (ret) {
-		pr_err("Failed to load environment: no device '%s'\n", diskdev);
-		goto out_free;
-	}
-
-	mkdir("/boot", 0666);
-	ret = mount(partname, "fat", "/boot", NULL);
+	/* Get device env is on and mount it */
+	device = default_environment_path_get();
+	mkdir(ENV_PATH, 0777);
+	ret = mount(device, "fat", ENV_PATH, NULL);
 	if (ret) {
-		pr_err("Failed to load environment: mount %s failed (%d)\n", partname, ret);
-		goto out_free;
+		pr_err("Failed to load environment: mount %s failed (%d)\n", device, ret);
+		return ret;
 	}
 
-	pr_debug("Loading default env from %s on device %s\n", ENV_PATH, diskdev);
-	default_environment_path_set(ENV_PATH);
+	/* Change env to be in a file on the now mounted device */
+	pr_debug("Loading default env from %s on device %s\n", ENV_FILE, device);
+	default_environment_path_set(ENV_PATH "/" ENV_FILE);
 
-out_free:
-	free(partname);
 	return 0;
 }
 late_initcall(socfpga_env_init);
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

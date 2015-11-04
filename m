Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.kymetacorp.com ([192.81.58.21])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zu5KP-0002Za-Sf
 for barebox@lists.infradead.org; Wed, 04 Nov 2015 21:10:46 +0000
From: Trent Piepho <tpiepho@kymetacorp.com>
Date: Wed, 4 Nov 2015 21:10:20 +0000
Message-ID: <1446671421.4553.5.camel@rtred1test09.kymeta.local>
Content-Language: en-US
Content-ID: <98F4091FF903D542BE46D13A00626EBE@kymetacorp.com>
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
Subject: [PATCH] omap socfpga: Switch in flash env loading to use different
 config
To: barebox <barebox@lists.infradead.org>

On these systems, the base arch has code to load the in flash
environment from a file located in a FAT filesystem.  This was
controlled by the config option DEFAULT_ENVIRONMENT.  However, that
option turns on compiling the env into the barebox binary itself, as a
backup if the in flash env can't be loaded.

Most other boards have in flash env support unconditionally.  But omap
and socfpga also have xloader configurations, which aren't supposed to
have environment support, either in flash or compiled in.  If the in
flash env code were unconditional, then the xloaders would gain it.

So the code depends on ENV_HANDLING, which is only set on those boards
that are supposed to have an in flash env and not set on all the
boards that aren't supposed to have it.

If someone wanted to create a board that did have a saved env, but
used an alternate to this generic omap/socfpga file in FAT method,
then they'd probably want to create a new config option to control
this code and have it not be enabled for their board.

Signed-off-by: Trent Piepho <tpiepho@kymetacorp.com>
---

I tested all existing OMAP defconfigs, and omap_env_init's presence or
absence is unchanged after this patch.

 arch/arm/mach-omap/omap_generic.c | 10 ++++++----
 arch/arm/mach-socfpga/generic.c   | 10 ++++++----
 2 files changed, 12 insertions(+), 8 deletions(-)

diff --git a/arch/arm/mach-omap/omap_generic.c b/arch/arm/mach-omap/omap_generic.c
index 165487c..071a1bf 100644
--- a/arch/arm/mach-omap/omap_generic.c
+++ b/arch/arm/mach-omap/omap_generic.c
@@ -107,7 +107,8 @@ const char *omap_get_bootmmc_devname(void)
 	return omap_bootmmc_dev;
 }
 
-#if defined(CONFIG_DEFAULT_ENVIRONMENT)
+#if defined(CONFIG_ENV_HANDLING)
+#define ENV_PATH "/boot/barebox.env"
 static int omap_env_init(void)
 {
 	struct stat s;
@@ -132,18 +133,19 @@ static int omap_env_init(void)
 	free(partname);
 
 	if (ret) {
-		printf("no %s. using default env\n", diskdev);
+		pr_err("Failed to load environment: no device '%s'\n", diskdev);
 		return 0;
 	}
 
 	mkdir("/boot", 0666);
 	ret = mount(diskdev, "fat", "/boot", NULL);
 	if (ret) {
-		printf("failed to mount %s\n", diskdev);
+		pr_err("Failed to load environment: mount %s failed (%d)\n", diskdev, ret);
 		return 0;
 	}
 
-	default_environment_path_set("/boot/barebox.env");
+	pr_debug("Loading default env from %s on device %s\n", ENV_PATH, diskdev);
+	default_environment_path_set(ENV_PATH);
 
 	return 0;
 }
diff --git a/arch/arm/mach-socfpga/generic.c b/arch/arm/mach-socfpga/generic.c
index 6259354..234dc52 100644
--- a/arch/arm/mach-socfpga/generic.c
+++ b/arch/arm/mach-socfpga/generic.c
@@ -76,7 +76,8 @@ static int socfpga_init(void)
 }
 core_initcall(socfpga_init);
 
-#if defined(CONFIG_DEFAULT_ENVIRONMENT)
+#if defined(CONFIG_ENV_HANDLING)
+#define ENV_PATH "/boot/barebox.env"
 static int socfpga_env_init(void)
 {
 	struct stat s;
@@ -92,18 +93,19 @@ static int socfpga_env_init(void)
 	ret = stat(partname, &s);
 
 	if (ret) {
-		printf("no %s. using default env\n", diskdev);
+		pr_err("Failed to load environment: no device '%s'\n", diskdev);
 		goto out_free;
 	}
 
 	mkdir("/boot", 0666);
 	ret = mount(partname, "fat", "/boot", NULL);
 	if (ret) {
-		printf("failed to mount %s\n", diskdev);
+		pr_err("Failed to load environment: mount %s failed (%d)\n", partname, ret);
 		goto out_free;
 	}
 
-	default_environment_path_set("/boot/barebox.env");
+	pr_debug("Loading default env from %s on device %s\n", ENV_PATH, diskdev);
+	default_environment_path_set(ENV_PATH);
 
 out_free:
 	free(partname);
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

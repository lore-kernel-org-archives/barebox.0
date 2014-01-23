Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W6KL8-00014C-OU
 for barebox@lists.infradead.org; Thu, 23 Jan 2014 13:29:04 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 23 Jan 2014 14:28:35 +0100
Message-Id: <1390483717-7722-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1390483717-7722-1-git-send-email-s.hauer@pengutronix.de>
References: <1390483717-7722-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/3] environment: Use accessor functions for default
 environment path
To: barebox@lists.infradead.org

default_environment_path only exists when CONFIG_ENV_HANDLING is enabled.
Boards would have to #ifdef this if they wanted to use
default_environment_path. Use accessor functions instead which can
be ifdeffed on a single place.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/gk802/board.c      |  4 ++--
 arch/arm/boards/raspberry-pi/rpi.c |  2 +-
 arch/arm/boards/tqma6x/board.c     |  2 +-
 arch/arm/mach-omap/omap_generic.c  |  2 +-
 arch/arm/mach-socfpga/generic.c    |  2 +-
 commands/loadenv.c                 |  2 +-
 commands/saveenv.c                 |  2 +-
 common/environment.c               | 14 +++++++++++++-
 common/startup.c                   |  1 +
 drivers/of/barebox.c               |  2 +-
 include/envfs.h                    | 13 ++++++++++++-
 11 files changed, 35 insertions(+), 11 deletions(-)

diff --git a/arch/arm/boards/gk802/board.c b/arch/arm/boards/gk802/board.c
index a4be03f..facb923 100644
--- a/arch/arm/boards/gk802/board.c
+++ b/arch/arm/boards/gk802/board.c
@@ -53,13 +53,13 @@ static int gk802_env_init(void)
 		bootsource_name = "mmc2";
 		barebox_name = "mmc2.barebox";
 		default_environment_name = "mmc2.bareboxenv";
-		default_environment_path = "/dev/mmc2.bareboxenv";
+		default_environment_path_set("/dev/mmc2.bareboxenv");
 		break;
 	case 3:
 		bootsource_name = "mmc3";
 		barebox_name = "mmc3.barebox";
 		default_environment_name = "mmc3.bareboxenv";
-		default_environment_path = "/dev/mmc3.bareboxenv";
+		default_environment_path_set("/dev/mmc3.bareboxenv");
 		break;
 	default:
 		return 0;
diff --git a/arch/arm/boards/raspberry-pi/rpi.c b/arch/arm/boards/raspberry-pi/rpi.c
index d2f27a8..0997124 100644
--- a/arch/arm/boards/raspberry-pi/rpi.c
+++ b/arch/arm/boards/raspberry-pi/rpi.c
@@ -132,7 +132,7 @@ static int rpi_env_init(void)
 		return 0;
 	}
 
-	default_environment_path = "/boot/barebox.env";
+	default_environment_path_set("/boot/barebox.env");
 
 	return 0;
 }
diff --git a/arch/arm/boards/tqma6x/board.c b/arch/arm/boards/tqma6x/board.c
index a870bf2..30ebf34 100644
--- a/arch/arm/boards/tqma6x/board.c
+++ b/arch/arm/boards/tqma6x/board.c
@@ -129,7 +129,7 @@ static int tqma6x_env_init(void)
 
 	device_detect_by_name("mmc2");
 
-	default_environment_path = "/dev/mmc2.boot1";
+	default_environment_path_set("/dev/mmc2.boot1");
 
 	return 0;
 }
diff --git a/arch/arm/mach-omap/omap_generic.c b/arch/arm/mach-omap/omap_generic.c
index 3d302f3..bedb4d8 100644
--- a/arch/arm/mach-omap/omap_generic.c
+++ b/arch/arm/mach-omap/omap_generic.c
@@ -142,7 +142,7 @@ static int omap_env_init(void)
 		return 0;
 	}
 
-	default_environment_path = "/boot/barebox.env";
+	default_environment_path_set("/boot/barebox.env");
 
 	return 0;
 }
diff --git a/arch/arm/mach-socfpga/generic.c b/arch/arm/mach-socfpga/generic.c
index c166369..0d958d2 100644
--- a/arch/arm/mach-socfpga/generic.c
+++ b/arch/arm/mach-socfpga/generic.c
@@ -103,7 +103,7 @@ static int socfpga_env_init(void)
 		goto out_free;
 	}
 
-	default_environment_path = "/boot/barebox.env";
+	default_environment_path_set("/boot/barebox.env");
 
 out_free:
 	free(partname);
diff --git a/commands/loadenv.c b/commands/loadenv.c
index df0df27..bad8894 100644
--- a/commands/loadenv.c
+++ b/commands/loadenv.c
@@ -53,7 +53,7 @@ static int do_loadenv(int argc, char *argv[])
 		dirname = argv[optind + 1];
 
 	if (argc - optind < 1)
-		filename = default_environment_path;
+		filename = default_environment_path_get();
 	else
 		filename = argv[optind];
 
diff --git a/commands/saveenv.c b/commands/saveenv.c
index 7f371a8..8ead98d 100644
--- a/commands/saveenv.c
+++ b/commands/saveenv.c
@@ -38,7 +38,7 @@ static int do_saveenv(int argc, char *argv[])
 	else
 		dirname = argv[2];
 	if (argc < 2)
-		filename = default_environment_path;
+		filename = default_environment_path_get();
 	else
 		filename = argv[1];
 
diff --git a/common/environment.c b/common/environment.c
index 2448777..3f6f4b3 100644
--- a/common/environment.c
+++ b/common/environment.c
@@ -48,7 +48,19 @@ struct action_data {
 };
 #define PAD4(x) ((x + 3) & ~3)
 
-char *default_environment_path = "/dev/env0";
+#ifdef __BAREBOX__
+static char *default_environment_path = "/dev/env0";
+
+void default_environment_path_set(char *path)
+{
+	default_environment_path = path;
+}
+
+char *default_environment_path_get(void)
+{
+	return default_environment_path;
+}
+#endif
 
 static int file_size_action(const char *filename, struct stat *statbuf,
 			    void *userdata, int depth)
diff --git a/common/startup.c b/common/startup.c
index 74c7735..e8b9ea0 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -121,6 +121,7 @@ void __noreturn start_barebox(void)
 
 	if (IS_ENABLED(CONFIG_ENV_HANDLING)) {
 		int ret;
+		char *default_environment_path = default_environment_path_get();
 
 		ret = envfs_load(default_environment_path, "/env", 0);
 
diff --git a/drivers/of/barebox.c b/drivers/of/barebox.c
index 8977158..44ec820 100644
--- a/drivers/of/barebox.c
+++ b/drivers/of/barebox.c
@@ -59,7 +59,7 @@ static int environment_probe(struct device_d *dev)
 
 	dev_info(dev, "setting default environment path to %s\n", path);
 
-	default_environment_path = path;
+	default_environment_path_set(path);
 
 	return 0;
 }
diff --git a/include/envfs.h b/include/envfs.h
index e9372b3..33908aa 100644
--- a/include/envfs.h
+++ b/include/envfs.h
@@ -94,7 +94,18 @@ int envfs_load(char *filename, char *dirname, unsigned flags);
 int envfs_save(char *filename, char *dirname);
 
 /* defaults to /dev/env0 */
-extern char *default_environment_path;
+#ifdef CONFIG_ENV_HANDLING
+void default_environment_path_set(char *path);
+char *default_environment_path_get(void);
+#else
+static inline void default_environment_path_set(char *path)
+{
+}
+
+static inline void default_environment_path_get(char *path)
+{
+}
+#endif
 
 int envfs_register_partition(const char *devname, unsigned int partnr);
 
-- 
1.8.5.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

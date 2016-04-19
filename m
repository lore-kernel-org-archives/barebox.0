Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1asQDy-00033s-5V
 for barebox@lists.infradead.org; Tue, 19 Apr 2016 07:37:31 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 19 Apr 2016 09:36:50 +0200
Message-Id: <1461051412-25711-13-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1461051412-25711-1-git-send-email-s.hauer@pengutronix.de>
References: <1461051412-25711-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 12/14] stdio: replace fprintf(stderr,...) with eprintf
To: Barebox List <barebox@lists.infradead.org>

We have a shortcut for fprintf(stderr, so use it. This is done to
be able to remove fprintf in the next step.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/clk.c       | 2 +-
 commands/loadb.c     | 7 +++----
 commands/menu.c      | 4 ++--
 commands/miitool.c   | 2 +-
 common/imd.c         | 4 ++--
 include/mtd/utils.h  | 2 +-
 scripts/bareboximd.c | 2 ++
 7 files changed, 12 insertions(+), 11 deletions(-)

diff --git a/commands/clk.c b/commands/clk.c
index 65832d4..f862c45 100644
--- a/commands/clk.c
+++ b/commands/clk.c
@@ -97,7 +97,7 @@ static int do_clk_get_rate(int argc, char *argv[])
 	}
 
 	if (optind == argc) {
-		fprintf(stderr, "No clock name given\n");
+		eprintf("No clock name given\n");
 		return COMMAND_ERROR_USAGE;
 	}
 
diff --git a/commands/loadb.c b/commands/loadb.c
index 6223512..6180ce3 100644
--- a/commands/loadb.c
+++ b/commands/loadb.c
@@ -183,8 +183,7 @@ static int os_data_save(void)
 				ret = write(ofd, write_buffer,
 						MAX_WRITE_BUFFER);
 				if (ret < 0) {
-					fprintf(stderr,
-						"write to device failed\n");
+					eprintf("write to device failed\n");
 					return ret;
 				}
 				write_idx = 0;
@@ -563,7 +562,7 @@ static ulong load_serial_bin(void)
 	/* Try to allocate the buffer we shall write to files */
 	write_buffer = malloc(MAX_WRITE_BUFFER);
 	if (write_buffer == NULL) {
-		fprintf(stderr, "could not allocate file i/o buffer\n");
+		eprintf("could not allocate file i/o buffer\n");
 		return -ENOMEM;
 	}
 
@@ -585,7 +584,7 @@ static ulong load_serial_bin(void)
 	if (write_idx > 0) {
 		i = write(ofd, write_buffer, write_idx);
 		if (i < 0) {
-			fprintf(stderr, "write to device failed\n");
+			eprintf("write to device failed\n");
 			size = i;
 			goto err_quit;
 		}
diff --git a/commands/menu.c b/commands/menu.c
index 2008aa5..9ec2d57 100644
--- a/commands/menu.c
+++ b/commands/menu.c
@@ -160,8 +160,8 @@ static int do_menu_add(struct cmd_menu *cm)
 free:
 	eprintf("Menu '%s' add fail", cm->menu);
 	if (ret == -EEXIST)
-		eputs(" already exist");
-	eputs("\n");
+		eprintf(" already exist");
+	eprintf("\n");
 
 	menu_free(m);
 
diff --git a/commands/miitool.c b/commands/miitool.c
index ba6e604..07bce18 100644
--- a/commands/miitool.c
+++ b/commands/miitool.c
@@ -120,7 +120,7 @@ static int show_basic_mii(struct mii_bus *mii, struct phy_device *phydev,
 
 
 	if (mii_val[MII_BMCR] == 0xffff || mii_val[MII_BMSR] == 0x0000) {
-		fprintf(stderr, "  No MII transceiver present!.\n");
+		eprintf("  No MII transceiver present!.\n");
 		return -1;
 	}
 
diff --git a/common/imd.c b/common/imd.c
index 241ebbd..159b73a 100644
--- a/common/imd.c
+++ b/common/imd.c
@@ -306,7 +306,7 @@ int imd_command(int argc, char *argv[])
 		case 't':
 			type = imd_name_to_type(optarg);
 			if (type == IMD_TYPE_INVALID) {
-				fprintf(stderr, "no such type: %s\n", optarg);
+				eprintf("no such type: %s\n", optarg);
 				return -ENOSYS;
 			}
 			break;
@@ -325,7 +325,7 @@ int imd_command(int argc, char *argv[])
 	}
 
 	if (optind == argc) {
-		fprintf(stderr, "No image given\n");
+		eprintf("No image given\n");
 		return -ENOSYS;
 	}
 
diff --git a/include/mtd/utils.h b/include/mtd/utils.h
index fca64ab..58f89df 100644
--- a/include/mtd/utils.h
+++ b/include/mtd/utils.h
@@ -41,7 +41,7 @@
 #define sys_errmsg errmsg
 
 #define warnmsg(fmt, ...) do {                                                \
-	fprintf(stderr, "%s: warning!: " fmt "\n", PROGRAM_NAME, ##__VA_ARGS__); \
+	eprintf("%s: warning!: " fmt "\n", PROGRAM_NAME, ##__VA_ARGS__); \
 } while(0)
 
 #endif /* INCLUDE_MTD_UTILS_H */
diff --git a/scripts/bareboximd.c b/scripts/bareboximd.c
index d4da681..7d4cbeb 100644
--- a/scripts/bareboximd.c
+++ b/scripts/bareboximd.c
@@ -37,6 +37,8 @@
 
 #include "../include/image-metadata.h"
 
+#define eprintf(args...) fprintf(stderr, ## args)
+
 static void debug(const char *fmt, ...)
 {
 	va_list ap;
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

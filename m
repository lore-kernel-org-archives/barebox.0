Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x230.google.com ([2a00:1450:4010:c04::230])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vvj7V-0002Ab-Uw
 for barebox@lists.infradead.org; Wed, 25 Dec 2013 07:43:12 +0000
Received: by mail-lb0-f176.google.com with SMTP id l4so3134605lbv.21
 for <barebox@lists.infradead.org>; Tue, 24 Dec 2013 23:42:47 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed, 25 Dec 2013 11:50:01 +0400
Message-Id: <1387957805-1532-2-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1387957805-1532-1-git-send-email-antonynpavlov@gmail.com>
References: <1387957805-1532-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 1/5] miitool: change behaviour closer to linux' mii-tool
To: barebox@lists.infradead.org

miitool without arguments will try to show status for all phys.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 commands/miitool.c         | 86 +++++++++++++++++++++++++---------------------
 drivers/net/phy/mdio_bus.c | 10 +-----
 include/linux/phy.h        |  4 +--
 3 files changed, 49 insertions(+), 51 deletions(-)

diff --git a/commands/miitool.c b/commands/miitool.c
index a00514d..7666e8a 100644
--- a/commands/miitool.c
+++ b/commands/miitool.c
@@ -36,24 +36,11 @@
 #include <getopt.h>
 #include <linux/stat.h>
 #include <xfuncs.h>
+#include <net.h>
 #include <linux/mii.h>
 #include <linux/phy.h>
+#include <linux/err.h>
 
-static u16 mdio_read(int fd, int offset)
-{
-	int ret;
-	u16 buf;
-
-	ret = lseek(fd, offset << 1, SEEK_SET);
-	if (ret < 0)
-		return 0;
-
-	ret = read(fd, &buf, sizeof(u16));
-	if (ret < 0)
-		return 0;
-
-	return buf;
-}
 
 /* Table of known MII's */
 static const struct {
@@ -102,7 +89,8 @@ static char *media_list(int mask, int best)
 	return buf;
 }
 
-static int show_basic_mii(int fd, int verbose)
+static int show_basic_mii(struct mii_bus *mii, struct phy_device *phydev,
+	int verbose)
 {
 	char buf[100];
 	int i, mii_val[32];
@@ -110,15 +98,19 @@ static int show_basic_mii(int fd, int verbose)
 
 	/* Some bits in the BMSR are latched, but we can't rely on being
 	   the only reader, so only the current values are meaningful */
-	mdio_read(fd, MII_BMSR);
-	for (i = 0; i < ((verbose > 1) ? 32 : 8); i++)
-		mii_val[i] = mdio_read(fd, i);
+	mii->read(mii, phydev->addr, MII_BMSR);
+
+	for (i = 0; i < 32; i++)
+		mii_val[i] = mii->read(mii, phydev->addr, i);
 
 	if (mii_val[MII_BMCR] == 0xffff) {
 		fprintf(stderr, "  No MII transceiver present!.\n");
 		return -1;
 	}
 
+	printf("%s: %s%d: ", phydev->cdev.name,
+		mii->parent->name, mii->parent->id);
+
 	/* Descriptive rename. */
 	bmcr = mii_val[MII_BMCR];
 	bmsr = mii_val[MII_BMSR];
@@ -212,14 +204,39 @@ static int show_basic_mii(int fd, int verbose)
 	return 0;
 }
 
+static void mdiobus_show(struct device_d *dev, char *phydevname, int verbose)
+{
+	struct mii_bus *mii = to_mii_bus(dev);
+	int i, ret;
+
+	for (i = 0; i < PHY_MAX_ADDR; i++) {
+		struct phy_device *phydev;
+
+		phydev = mdiobus_scan(mii, i);
+		if (IS_ERR(phydev))
+			continue;
+		if (phydev->registered) {
+
+			show_basic_mii(mii, phydev, verbose);
+
+			if (phydevname &&
+				!strcmp(phydev->cdev.name, phydevname)) {
+				return;
+			}
+		}
+
+	}
+
+	return;
+}
+
 static int do_miitool(int argc, char *argv[])
 {
-	char *filename;
+	char *phydevname;
+	struct mii_bus *mii;
 	int opt;
 	int argc_min;
-	int fd;
 	int verbose;
-	int scan = 0;
 
 	verbose = 0;
 	while ((opt = getopt(argc, argv, "vs")) > 0) {
@@ -227,9 +244,6 @@ static int do_miitool(int argc, char *argv[])
 		case 'v':
 			verbose++;
 			break;
-		case 's':
-			scan = 1;
-			break;
 		default:
 			return COMMAND_ERROR_USAGE;
 		}
@@ -237,23 +251,15 @@ static int do_miitool(int argc, char *argv[])
 
 	argc_min = optind + 1;
 
-	if (scan)
-		mdiobus_detect_all();
-
-	if (argc < argc_min)
-		return scan ? 0 : COMMAND_ERROR_USAGE;
-
-	filename = argv[optind];
-
-	fd = open(filename, O_RDONLY);
-	if (fd < 0) {
-		printf("unable to read %s\n", filename);
-		return COMMAND_ERROR;
+	phydevname = NULL;
+	if (argc >= argc_min) {
+		phydevname = argv[optind];
 	}
 
-	show_basic_mii(fd, verbose);
-
-	close(fd);
+	for_each_mii_bus(mii) {
+		mdiobus_detect(&mii->dev);
+		mdiobus_show(&mii->dev, phydevname, verbose);
+	}
 
 	return COMMAND_SUCCESS;
 }
diff --git a/drivers/net/phy/mdio_bus.c b/drivers/net/phy/mdio_bus.c
index b29a980..895ead0 100644
--- a/drivers/net/phy/mdio_bus.c
+++ b/drivers/net/phy/mdio_bus.c
@@ -27,7 +27,7 @@
 
 LIST_HEAD(mii_bus_list);
 
-static int mdiobus_detect(struct device_d *dev)
+int mdiobus_detect(struct device_d *dev)
 {
 	struct mii_bus *mii = to_mii_bus(dev);
 	int i, ret;
@@ -49,14 +49,6 @@ static int mdiobus_detect(struct device_d *dev)
 	return 0;
 }
 
-void mdiobus_detect_all(void)
-{
-	struct mii_bus *mii;
-
-	for_each_mii_bus(mii)
-		mdiobus_detect(&mii->dev);
-}
-
 /**
  * mdiobus_register - bring up all the PHYs on a given bus and attach them to bus
  * @bus: target mii_bus
diff --git a/include/linux/phy.h b/include/linux/phy.h
index 6c9d090..9994e11 100644
--- a/include/linux/phy.h
+++ b/include/linux/phy.h
@@ -94,10 +94,10 @@ int mdiobus_register(struct mii_bus *bus);
 void mdiobus_unregister(struct mii_bus *bus);
 struct phy_device *mdiobus_scan(struct mii_bus *bus, int addr);
 
-void mdiobus_detect_all(void);
-
 extern struct list_head mii_bus_list;
 
+int mdiobus_detect(struct device_d *dev);
+
 #define for_each_mii_bus(mii) \
 	list_for_each_entry(mii, &mii_bus_list, list)
 
-- 
1.8.5.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

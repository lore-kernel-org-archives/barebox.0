Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U3PMA-00089o-KO
 for barebox@lists.infradead.org; Thu, 07 Feb 2013 11:09:31 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  7 Feb 2013 12:09:27 +0100
Message-Id: <1360235367-30530-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1360235367-30530-1-git-send-email-s.hauer@pengutronix.de>
References: <1360235367-30530-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/2] miitool: Add support for examing mdio bus
To: barebox@lists.infradead.org

Current miitool usage is limited to a single phy on a mdio bus.

For debugging purposes it is useful to be able to examine a mdio bus
instead of a single phy only.

This adds support for this to the miitool command.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/miitool.c |   94 +++++++++++++++++++++++++++++++++++++++++-----------
 1 file changed, 75 insertions(+), 19 deletions(-)

diff --git a/commands/miitool.c b/commands/miitool.c
index 3a9ac45..b9e2333 100644
--- a/commands/miitool.c
+++ b/commands/miitool.c
@@ -37,23 +37,36 @@
 #include <linux/stat.h>
 #include <xfuncs.h>
 #include <linux/mii.h>
+#include <linux/phy.h>
 
-static u16 mdio_read(int fd, int offset)
+static int phy_fd;
+
+static u16 mdio_file_read(int offset)
 {
 	int ret;
 	u16 buf;
 
-	ret = lseek(fd, offset << 1, SEEK_SET);
+	ret = lseek(phy_fd, offset << 1, SEEK_SET);
 	if (ret < 0)
 		return 0;
 
-	ret = read(fd, &buf, sizeof(u16));
+	ret = read(phy_fd, &buf, sizeof(u16));
 	if (ret < 0)
 		return 0;
 
 	return buf;
 }
 
+static struct mii_bus *mii_bus;
+static int mii_address;
+
+static u16 mdio_bus_read(int offset)
+{
+	return mdiobus_read(mii_bus, mii_address, offset);
+}
+
+static u16 (*mdio_read)(int offset);
+
 /* Table of known MII's */
 static const struct {
 	u_short	id1, id2;
@@ -101,7 +114,7 @@ static char *media_list(int mask, int best)
 	return buf;
 }
 
-static int show_basic_mii(int fd, int verbose)
+static int show_basic_mii(int verbose)
 {
 	char buf[100];
 	int i, mii_val[32];
@@ -109,9 +122,9 @@ static int show_basic_mii(int fd, int verbose)
 
 	/* Some bits in the BMSR are latched, but we can't rely on being
 	   the only reader, so only the current values are meaningful */
-	mdio_read(fd, MII_BMSR);
+	mdio_read(MII_BMSR);
 	for (i = 0; i < ((verbose > 1) ? 32 : 8); i++)
-		mii_val[i] = mdio_read(fd, i);
+		mii_val[i] = mdio_read(i);
 
 	if (mii_val[MII_BMCR] == 0xffff) {
 		fprintf(stderr, "  No MII transceiver present!.\n");
@@ -213,18 +226,25 @@ static int show_basic_mii(int fd, int verbose)
 
 static int do_miitool(int argc, char *argv[])
 {
-	char *filename;
+	char *filename = NULL;
+	char *devname = NULL;
 	int opt;
 	int argc_min;
-	int fd;
 	int verbose;
+	int address = -1;
 
 	verbose = 0;
-	while ((opt = getopt(argc, argv, "v")) > 0) {
+	while ((opt = getopt(argc, argv, "vd:a:")) > 0) {
 		switch (opt) {
 		case 'v':
 			verbose++;
 			break;
+		case 'd':
+			devname = optarg;
+			break;
+		case 'a':
+			address = simple_strtoul(optarg, NULL, 0);
+			break;
 		default:
 			return COMMAND_ERROR_USAGE;
 		}
@@ -232,27 +252,63 @@ static int do_miitool(int argc, char *argv[])
 
 	argc_min = optind + 1;
 
-	if (argc < argc_min)
+	if (argc >= argc_min)
+		filename = argv[optind];
+
+	if (filename && devname) {
+		printf("both filename and devicename given\n");
 		return COMMAND_ERROR_USAGE;
+	}
 
-	filename = argv[optind];
+	if (!filename && !devname) {
+		printf("no filename or devicename given\n");
+		return COMMAND_ERROR_USAGE;
+	}
+
+	if (filename) {
+		phy_fd = open(filename, O_RDONLY);
+		if (phy_fd < 0) {
+			printf("unable to read %s\n", filename);
+			return COMMAND_ERROR;
+		}
+
+		mdio_read = mdio_file_read;
+
+		show_basic_mii(verbose);
+	} else {
+		mii_bus = mdiobus_find(devname);
+
+		if (!mii_bus)
+			return -ENODEV;
 
-	fd = open(filename, O_RDONLY);
-	if (fd < 0) {
-		printf("unable to read %s\n", filename);
-		return COMMAND_ERROR;
+		mdio_read = mdio_bus_read;
+		if (address < 0) {
+			for (mii_address = 0; mii_address < PHY_MAX_ADDR; mii_address++) {
+				printf("`---- phyadr %d:\n",
+						mii_address);
+				show_basic_mii(verbose);
+			}
+		} else {
+			mii_address = address;
+			show_basic_mii(verbose);
+		}
 	}
 
-	show_basic_mii(fd, verbose);
 
-	close(fd);
+	if (filename)
+		close(phy_fd);
 
 	return COMMAND_SUCCESS;
 }
 
 BAREBOX_CMD_HELP_START(miitool)
-BAREBOX_CMD_HELP_USAGE("miitool [[[-v] -v] -v] <phy>\n")
-BAREBOX_CMD_HELP_SHORT("view status for MII <phy>.\n")
+BAREBOX_CMD_HELP_USAGE("miitool [OPTIONS] [phy]\n")
+BAREBOX_CMD_HELP_SHORT("view status mii phy device status\n")
+BAREBOX_CMD_HELP_SHORT("Use [phy] to view a phy connected to an ethernet device\n")
+BAREBOX_CMD_HELP_SHORT("or -d <devname> [-a <phyadr>] to examine a mii bus\n")
+BAREBOX_CMD_HELP_OPT("-v", "\tverbose, may be given multiple times\n")
+BAREBOX_CMD_HELP_OPT("-d <devname>", "work on miibus <devname>\n")
+BAREBOX_CMD_HELP_OPT("-a <phyadr>", "Use phy address <phyadr>, used together with -d\n")
 BAREBOX_CMD_HELP_END
 
 /**
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

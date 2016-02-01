Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-x241.google.com ([2607:f8b0:400e:c03::241])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aQ4tV-0007e3-8x
 for barebox@lists.infradead.org; Mon, 01 Feb 2016 03:11:16 +0000
Received: by mail-pa0-x241.google.com with SMTP id gi1so6592987pac.2
 for <barebox@lists.infradead.org>; Sun, 31 Jan 2016 19:10:53 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun, 31 Jan 2016 19:10:13 -0800
Message-Id: <1454296213-12734-9-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1454296213-12734-1-git-send-email-andrew.smirnov@gmail.com>
References: <1454296213-12734-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 8/8] miitool: Add code to register a PHY
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

This commit changes the behaviour of the 'miitool'. Now in order to show
PHY's link information 'miitool' should be invoked as such:

miitool -s [PHY]

Also, implment code to allow to register a dummy PHY device in order to
be able to perform raw MDIO bus access.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 commands/miitool.c    | 87 ++++++++++++++++++++++++++++++++++++++++-----------
 drivers/net/phy/phy.c |  9 ++++--
 include/linux/phy.h   |  1 +
 3 files changed, 77 insertions(+), 20 deletions(-)

diff --git a/commands/miitool.c b/commands/miitool.c
index 9ea5ab5..b61113c 100644
--- a/commands/miitool.c
+++ b/commands/miitool.c
@@ -260,53 +260,104 @@ static void mdiobus_show(struct device_d *dev, char *phydevname, int verbose)
 	return;
 }
 
+enum miitool_operations {
+	MIITOOL_NOOP,
+	MIITOOL_SHOW,
+	MIITOOL_REGISTER,
+};
+
 static int do_miitool(int argc, char *argv[])
 {
-	char *phydevname;
+	char *phydevname = NULL;
 	struct mii_bus *mii;
-	int opt;
-	int argc_min;
-	int verbose;
+	int opt, ret;
+	int verbose = 0;
+	struct phy_device *phydev;
+	enum miitool_operations action = MIITOOL_NOOP;
+	int addr = -1, bus = -1;
 
-	verbose = 0;
-	while ((opt = getopt(argc, argv, "v")) > 0) {
+	while ((opt = getopt(argc, argv, "vs:rb:a:")) > 0) {
 		switch (opt) {
+		case 'a':
+			addr = simple_strtol(optarg, NULL, 0);
+			break;
+		case 'b':
+			bus = simple_strtoul(optarg, NULL, 0);
+			break;
+		case 's':
+			action = MIITOOL_SHOW;
+			phydevname = xstrdup(optarg);
+			break;
+		case 'r':
+			action = MIITOOL_REGISTER;
+			break;
 		case 'v':
 			verbose++;
 			break;
 		default:
-			return COMMAND_ERROR_USAGE;
+			ret = COMMAND_ERROR_USAGE;
+			goto free_phydevname;
 		}
 	}
 
-	argc_min = optind + 1;
+	switch (action) {
+	case MIITOOL_REGISTER:
+		if (addr < 0 || bus < 0) {
+			ret = COMMAND_ERROR_USAGE;
+			goto free_phydevname;
+		}
 
-	phydevname = NULL;
-	if (argc >= argc_min) {
-		phydevname = argv[optind];
-	}
+		mii = mdiobus_get_bus(bus);
+		if (!mii) {
+			printf("Can't find MDIO bus #%d\n", bus);
+			ret = COMMAND_ERROR;
+			goto free_phydevname;
+		}
+
+		phydev = phy_device_create(mii, addr, -1);
+		ret = phy_register_device(phydev);
+		if (ret) {
+			dev_err(&mii->dev, "failed to register phy: %s\n",
+				strerror(-ret));
+			goto free_phydevname;
+		}
 
-	for_each_mii_bus(mii) {
-		mdiobus_detect(&mii->dev);
-		mdiobus_show(&mii->dev, phydevname, verbose);
+		break;
+	default:
+	case MIITOOL_SHOW:
+		for_each_mii_bus(mii) {
+			mdiobus_detect(&mii->dev);
+			mdiobus_show(&mii->dev, phydevname, verbose);
+		}
+		break;
 	}
 
-	return COMMAND_SUCCESS;
+	ret = COMMAND_SUCCESS;
+
+free_phydevname:
+	free(phydevname);
+	return ret;
 }
 
 BAREBOX_CMD_HELP_START(miitool)
 BAREBOX_CMD_HELP_TEXT("This utility checks or sets the status of a network interface's")
-BAREBOX_CMD_HELP_TEXT("Media Independent Interface (MII) unit. Most fast ethernet")
+BAREBOX_CMD_HELP_TEXT("Media Independent Interface (MII) unit as well as allowing to")
+BAREBOX_CMD_HELP_TEXT"register dummy PHY devices for raw MDIO access. Most fast ethernet")
 BAREBOX_CMD_HELP_TEXT("adapters use an MII to autonegotiate link speed and duplex setting.")
 BAREBOX_CMD_HELP_TEXT("")
 BAREBOX_CMD_HELP_TEXT("Options:")
 BAREBOX_CMD_HELP_OPT("-v", "increase verbosity")
+BAREBOX_CMD_HELP_OPT("-s", "show PHY's status (not prioviding PHY prints status of all)")
+BAREBOX_CMD_HELP_OPT("-r", "register a dummy PHY")
+BAREBOX_CMD_HELP_OPT("-b", "dummy PHY's bus")
+BAREBOX_CMD_HELP_OPT("-a", "dummy PHY's address")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(miitool)
 	.cmd		= do_miitool,
 	BAREBOX_CMD_DESC("view media-independent interface status")
-	BAREBOX_CMD_OPTS("[-v] PHY")
+	BAREBOX_CMD_OPTS("[-vs] PHY")
+	BAREBOX_CMD_OPTS("[-vrba]")
 	BAREBOX_CMD_GROUP(CMD_GRP_NET)
 	BAREBOX_CMD_HELP(cmd_miitool_help)
 BAREBOX_CMD_END
diff --git a/drivers/net/phy/phy.c b/drivers/net/phy/phy.c
index 25c999c..6ddf5d7 100644
--- a/drivers/net/phy/phy.c
+++ b/drivers/net/phy/phy.c
@@ -147,8 +147,13 @@ int phy_scan_fixups(struct phy_device *phydev)
 
 	return 0;
 }
-
-static struct phy_device *phy_device_create(struct mii_bus *bus, int addr, int phy_id)
+/**
+ * phy_device_create - creates a struct phy_device.
+ * @bus: the target MII bus
+ * @addr: PHY address on the MII bus
+ * @phy_id: PHY ID.
+ */
+struct phy_device *phy_device_create(struct mii_bus *bus, int addr, int phy_id)
 {
 	struct phy_device *phydev;
 
diff --git a/include/linux/phy.h b/include/linux/phy.h
index 4e88936..38b0670 100644
--- a/include/linux/phy.h
+++ b/include/linux/phy.h
@@ -271,6 +271,7 @@ struct phy_device *get_phy_device(struct mii_bus *bus, int addr);
 int phy_init(void);
 int phy_init_hw(struct phy_device *phydev);
 
+struct phy_device *phy_device_create(struct mii_bus *bus, int addr, int phy_id);
 int phy_register_device(struct phy_device* dev);
 void phy_unregister_device(struct phy_device *phydev);
 
-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

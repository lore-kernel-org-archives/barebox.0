Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X8Qkr-0003j4-Ao
 for barebox@lists.infradead.org; Sat, 19 Jul 2014 09:16:36 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sat, 19 Jul 2014 11:15:57 +0200
Message-Id: <1405761367-23724-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1405761367-23724-1-git-send-email-s.hauer@pengutronix.de>
References: <1405761367-23724-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 02/12] commands: usb: add tree view capability
To: barebox@lists.infradead.org

From: Antony Pavlov <antonynpavlov@gmail.com>

This patch adds U-Boot 'usb tree' command functionality to barebox.

Here is an example output:

  1 ID 0000:0000
  |  u-boot EHCI Host Controller
  |
  +-2 ID 05e3:0606
    |   USB2.0 Hub
    |
    +-3 ID 10c4:ea60
    |    Silicon Labs CP2102 USB to UART Bridge Contr P-00-00669
    |
    +-4 ID 05e3:0606
    | |   USB2.0 Hub
    | |
    | +-5 ID 05e3:0608
    | | |   USB2.0 Hub
    | | |
    | | +-6 ID 0d8c:000c
    | |       C-Media USB Headphone Set
    | |
    | +-7 ID 0d8c:000c
    |       C-Media USB Headphone Set
    |
    +-8 ID 0846:1040
         NETGEAR NETGEAR FA120 Adapter

The tree view is enabled with 'usb -t'

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/usb.c         | 105 +++++++++++++++++++++++++++++++++++++++++++++++--
 drivers/usb/core/usb.c |   2 +-
 include/usb/usb.h      |   3 ++
 3 files changed, 106 insertions(+), 4 deletions(-)

diff --git a/commands/usb.c b/commands/usb.c
index 073c79c..c158852 100644
--- a/commands/usb.c
+++ b/commands/usb.c
@@ -22,21 +22,118 @@
 #include <usb/usb.h>
 #include <getopt.h>
 
+/* shows the device tree recursively */
+static void usb_show_tree_graph(struct usb_device *dev, char *pre)
+{
+	int i, index;
+	int has_child, last_child;
+
+	index = strlen(pre);
+	printf(" %s", pre);
+	/* check if the device has connected children */
+	has_child = 0;
+
+	for (i = 0; i < dev->maxchild; i++) {
+		if (dev->children[i] != NULL)
+			has_child = 1;
+	}
+
+	/* check if we are the last one */
+	last_child = 1;
+
+	if (dev->parent) {
+		for (i = 0; i < dev->parent->maxchild; i++) {
+			if (dev->parent->children[i])
+				last_child = 0;
+
+			if (dev->parent->children[i] == dev)
+				last_child = 1;
+		} /* for all children of the parent */
+		printf("\b+-");
+
+		/* correct last child */
+		if (last_child)
+			pre[index - 1] = ' ';
+	} else {
+		/* if not root hub */
+		printf(" ");
+	}
+
+	printf("%d ", dev->devnum);
+
+	pre[index++] = ' ';
+	pre[index++] = has_child ? '|' : ' ';
+	pre[index] = 0;
+
+	printf("ID %04x:%04x\n", dev->descriptor->idVendor, dev->descriptor->idProduct);
+
+	if (strlen(dev->mf) || strlen(dev->prod) || strlen(dev->serial))
+		printf(" %s  %s %s %s\n", pre, dev->mf, dev->prod, dev->serial);
+
+	printf(" %s\n", pre);
+
+	if (dev->maxchild > 0) {
+		for (i = 0; i < dev->maxchild; i++) {
+			if (dev->children[i] != NULL) {
+				usb_show_tree_graph(dev->children[i], pre);
+				pre[index] = 0;
+			}
+		}
+	}
+}
+
+/* main routine for the tree command */
+static void usb_show_tree(struct usb_device *dev)
+{
+	char preamble[32];
+
+	memset(preamble, 0, 32);
+	usb_show_tree_graph(dev, &preamble[0]);
+}
+
+static void usb_show_devices(bool tree)
+{
+	struct usb_device *dev;
+
+	list_for_each_entry(dev, &usb_device_list, list) {
+		if (tree) {
+			if (dev->parent == NULL)
+				usb_show_tree(dev);
+		} else {
+			printf("Bus %03d Device %03d: ID %04x:%04x %s\n",
+				dev->host->busnum, dev->devnum,
+				dev->descriptor->idVendor,
+				dev->descriptor->idProduct,
+				dev->prod);
+		}
+	}
+}
+
 static int do_usb(int argc, char *argv[])
 {
 	int opt;
-	int force = 0;
+	int force = 0, tree = 0, show = 0;
 
-	while ((opt = getopt(argc, argv, "f")) > 0) {
+	while ((opt = getopt(argc, argv, "fts")) > 0) {
 		switch (opt) {
 		case 'f':
 			force = 1;
 			break;
+		case 't':
+			tree = 1;
+			show = 1;
+			break;
+		case 's':
+			show = 1;
+			break;
 		}
 	}
 
 	usb_rescan(force);
 
+	if (show)
+		usb_show_devices(tree);
+
 	return 0;
 }
 
@@ -45,12 +142,14 @@ BAREBOX_CMD_HELP_TEXT("Scan for USB devices.")
 BAREBOX_CMD_HELP_TEXT("")
 BAREBOX_CMD_HELP_TEXT("Options:")
 BAREBOX_CMD_HELP_OPT("-f", "force rescan")
+BAREBOX_CMD_HELP_OPT("-s", "show devices")
+BAREBOX_CMD_HELP_OPT("-t", "show USB tree")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(usb)
 	.cmd		= do_usb,
 	BAREBOX_CMD_DESC("(re-)detect USB devices")
-	BAREBOX_CMD_OPTS("[-f]")
+	BAREBOX_CMD_OPTS("[-fts]")
 	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
 	BAREBOX_CMD_HELP(cmd_usb_help)
 	BAREBOX_CMD_COMPLETE(empty_complete)
diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
index f572432..710f611 100644
--- a/drivers/usb/core/usb.c
+++ b/drivers/usb/core/usb.c
@@ -70,7 +70,7 @@ static int hub_port_reset(struct usb_device *dev, int port,
 			  unsigned short *portstat);
 
 static LIST_HEAD(host_list);
-static LIST_HEAD(usb_device_list);
+LIST_HEAD(usb_device_list);
 
 static void print_usb_device(struct usb_device *dev)
 {
diff --git a/include/usb/usb.h b/include/usb/usb.h
index ff5242b..34edbae 100644
--- a/include/usb/usb.h
+++ b/include/usb/usb.h
@@ -473,4 +473,7 @@ enum usb_phy_interface {
 	USBPHY_INTERFACE_MODE_SERIAL,
 	USBPHY_INTERFACE_MODE_HSIC,
 };
+
+extern struct list_head usb_device_list;
+
 #endif /*_USB_H_ */
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

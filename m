Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22e.google.com ([2a00:1450:4010:c03::22e])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Wn2Oq-0005Dk-Cf
 for barebox@lists.infradead.org; Wed, 21 May 2014 09:01:25 +0000
Received: by mail-la0-f46.google.com with SMTP id ec20so1336278lab.19
 for <barebox@lists.infradead.org>; Wed, 21 May 2014 02:01:00 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed, 21 May 2014 12:54:42 +0400
Message-Id: <1400662482-23560-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] [RFC] [WIP] commands: add tree view capable lsusb
To: barebox@lists.infradead.org

This patch adds U-Boot 'usb tree' command functionality to barebox.

Here is a sample 'lsusb -t' output on RC Module MB 77.07 board
with numerous USB devices attached:

MB 77.07: / lsusb -t
USB: scanning bus for devices...
0 USB Device(s) found
  1 ID 0000:0000
  |  u-boot EHCI Host Controller
  |
  +-2 ID 1a40:0101
    |   USB 2.0 Hub
    |
    +-3 ID 05e3:0660
    | |   USB2.0 Hub
    | |
    | +-4 ID 2001:3c05
    | |    D-Link Corporation DUB-E100 000001
    | |
    | +-5 ID 046d:0824
    | |      225ACF90
    | |
    | +-6 ID 05e3:0608
    | | |   USB2.0 Hub
    | | |
    | | +-7 ID 13fe:3e00
    | | |    UFD 2.0 Silicon-Power4G 201212SP0014070F2CB454C8B411
    | | |
    | | +-8 ID 04d9:1605
    | | |      USB Keyboard
    | | |
    | | +-9 ID 0424:7500
    | | |    SMSC LAN7500 00000001b
    | | |
    | | +-10 ID 067b:2303
    | |      Prolific Technology Inc. USB-Serial Controller
    | |
    | +-11 ID 1267:0201
    |       PS/2+USB Mouse
    |
    +-12 ID 067b:2305
    |    Prolific Technology Inc. IEEE-1284 Controller
    |
    +-13 ID 1005:b113
          USB FLASH DRIVE 070F29A906CF5145

Original 'usb tree' output contains addition information
on device type, bandwidth and consumption current.

Here is a U-Boot 'usb tree' output on the same board:

MBOOT # usb tree

Device Tree:
  1  Hub (480 Mb/s, 0mA)
  |  u-boot EHCI Host Controller
  |
  +-2  Hub (480 Mb/s, 100mA)
    |   USB 2.0 Hub
    |
    +-3  Hub (480 Mb/s, 100mA)
    | |   USB2.0 Hub
    | |
    | +-4  Vendor specific (480 Mb/s, 250mA)
    | |    D-Link Corporation DUB-E100 000001
    | |
    | +-5  See Interface (480 Mb/s, 500mA)
    | |      225ACF90
    | |
    | +-6  Hub (480 Mb/s, 100mA)
    | | |   USB2.0 Hub
    | | |
    | | +-7  Mass Storage (480 Mb/s, 200mA)
    | | |    UFD 2.0 Silicon-Power4G 201212SP0014070F2CB454C8B411
    | | |
    | | +-8  Human Interface (1.5 Mb/s, 100mA)
    | | |      USB Keyboard
    | | |
    | | +-9  Vendor specific (480 Mb/s, 320mA)
    | | |    SMSC LAN7500 00000001b
    | | |
    | | +-10  Vendor specific (12 Mb/s, 100mA)
    | |      Prolific Technology Inc. USB-Serial Controller
    | |
    | +-11  Human Interface (1.5 Mb/s, 100mA)
    |       PS/2+USB Mouse
    |
    +-12  Printer (12 Mb/s, 100mA)
    |    Prolific Technology Inc. IEEE-1284 Controller
    |
    +-13  Mass Storage (480 Mb/s, 200mA)
          USB FLASH DRIVE 070F29A906CF5145

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 commands/usb.c         | 118 +++++++++++++++++++++++++++++++++++++++++++++++++
 drivers/usb/core/usb.c |   2 +-
 include/usb/usb.h      |   3 ++
 3 files changed, 122 insertions(+), 1 deletion(-)

diff --git a/commands/usb.c b/commands/usb.c
index 073c79c..08cfa42 100644
--- a/commands/usb.c
+++ b/commands/usb.c
@@ -55,3 +55,121 @@ BAREBOX_CMD_START(usb)
 	BAREBOX_CMD_HELP(cmd_usb_help)
 	BAREBOX_CMD_COMPLETE(empty_complete)
 BAREBOX_CMD_END
+
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
+	for (i = 0; i < dev->maxchild; i++) {
+		if (dev->children[i] != NULL)
+			has_child = 1;
+	}
+	/* check if we are the last one */
+	last_child = 1;
+	if (dev->parent != NULL) {
+		for (i = 0; i < dev->parent->maxchild; i++) {
+			/* search for children */
+			if (dev->parent->children[i] == dev) {
+				/* found our pointer, see if we have a
+				 * little sister
+				 */
+				while (i++ < dev->parent->maxchild) {
+					if (dev->parent->children[i] != NULL) {
+						/* found a sister */
+						last_child = 0;
+						break;
+					} /* if */
+				} /* while */
+			} /* device found */
+		} /* for all children of the parent */
+		printf("\b+-");
+		/* correct last child */
+		if (last_child)
+			pre[index-1] = ' ';
+	} /* if not root hub */
+	else
+		printf(" ");
+	printf("%d ", dev->devnum);
+	pre[index++] = ' ';
+	pre[index++] = has_child ? '|' : ' ';
+	pre[index] = 0;
+	printf("ID %04x:%04x\n",
+		dev->descriptor->idVendor, dev->descriptor->idProduct);
+	if (strlen(dev->mf) || strlen(dev->prod) || strlen(dev->serial))
+		printf(" %s  %s %s %s\n", pre, dev->mf, dev->prod, dev->serial);
+	printf(" %s\n", pre);
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
+static int do_lsusb(int argc, char *argv[])
+{
+	int opt;
+	int tree = 0;
+	struct usb_device *dev;
+
+	while ((opt = getopt(argc, argv, "t")) > 0) {
+		switch (opt) {
+		case 't':
+			tree = 1;
+			break;
+		default:
+			return opt;
+		}
+	}
+
+	usb_rescan(0);
+
+	list_for_each_entry(dev, &usb_device_list, list) {
+
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
+
+	return 0;
+}
+
+BAREBOX_CMD_HELP_START(lsusb)
+BAREBOX_CMD_HELP_TEXT("list USB devices")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT("-t", "dump the physical USB device hierarchy as a tree")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(lsusb)
+	.cmd		= do_lsusb,
+	BAREBOX_CMD_DESC("list USB devices")
+	BAREBOX_CMD_OPTS("[-t]")
+	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
+	BAREBOX_CMD_HELP(cmd_lsusb_help)
+	BAREBOX_CMD_COMPLETE(empty_complete)
+BAREBOX_CMD_END
diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
index 9c1571d..32ea5ec 100644
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
index 821724e..9319f2e 100644
--- a/include/usb/usb.h
+++ b/include/usb/usb.h
@@ -544,4 +544,7 @@ enum usb_phy_interface {
 	USBPHY_INTERFACE_MODE_SERIAL,
 	USBPHY_INTERFACE_MODE_HSIC,
 };
+
+extern struct list_head usb_device_list;
+
 #endif /*_USB_H_ */
-- 
1.9.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

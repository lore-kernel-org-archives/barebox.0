Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-x231.google.com ([2a00:1450:4013:c01::231])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W8GUy-0000ls-AV
 for barebox@lists.infradead.org; Tue, 28 Jan 2014 21:47:12 +0000
Received: by mail-ea0-f177.google.com with SMTP id n15so516346ead.8
 for <barebox@lists.infradead.org>; Tue, 28 Jan 2014 13:46:49 -0800 (PST)
From: Philipp Zabel <philipp.zabel@gmail.com>
Date: Tue, 28 Jan 2014 22:46:46 +0100
Message-Id: <1390945606-8619-1-git-send-email-philipp.zabel@gmail.com>
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
Subject: [PATCH 3/4] net usb asix: read MAC from EEPROM on AX88772B
To: barebox@lists.infradead.org

Signed-off-by: Philipp Zabel <philipp.zabel@gmail.com>
---
 drivers/net/usb/asix.c | 18 +++++++++++++++---
 1 file changed, 15 insertions(+), 3 deletions(-)

diff --git a/drivers/net/usb/asix.c b/drivers/net/usb/asix.c
index 003ebba..085d728 100644
--- a/drivers/net/usb/asix.c
+++ b/drivers/net/usb/asix.c
@@ -132,6 +132,8 @@
 #define MARVELL_CTRL_TXDELAY	0x0002
 #define MARVELL_CTRL_RXDELAY	0x0080
 
+#define FLAG_EEPROM_MAC		(1UL << 0) /* init device MAC from eeprom */
+
 /* This structure cannot exceed sizeof(unsigned long [5]) AKA 20 bytes */
 struct asix_data {
 	u8 multi_filter[AX_MCAST_FILTER_SIZE];
@@ -364,11 +366,21 @@ static int asix_write_gpio(struct usbnet *dev, u16 value, int sleep)
 static int asix_get_ethaddr(struct eth_device *edev, unsigned char *adr)
 {
 	struct usbnet *udev = container_of(edev, struct usbnet, edev);
-	int ret;
+	int i, ret;
 
 	/* Get the MAC address */
-	if ((ret = asix_read_cmd(udev, AX_CMD_READ_NODE_ID,
-				0, 0, 6, adr)) < 0) {
+	if (udev->driver_info->data & FLAG_EEPROM_MAC) {
+		for (i = 0; i < (6 >> 1); i++) {
+			ret = asix_read_cmd(udev, AX_CMD_READ_EEPROM, 0x04 + i,
+					0, 2, adr + i * 2);
+			if (ret < 0)
+				break;
+		}
+	} else {
+		ret = asix_read_cmd(udev, AX_CMD_READ_NODE_ID, 0, 0, 6, adr);
+	}
+
+	if (ret < 0) {
 		debug("Failed to read MAC address: %d\n", ret);
 		return -1;
 	}
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

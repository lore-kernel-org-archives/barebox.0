Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-f50.google.com ([74.125.83.50])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U8YmT-0005Eo-Eg
 for barebox@lists.infradead.org; Thu, 21 Feb 2013 16:13:58 +0000
Received: by mail-ee0-f50.google.com with SMTP id e51so4801789eek.23
 for <barebox@lists.infradead.org>; Thu, 21 Feb 2013 08:13:55 -0800 (PST)
From: Hubert Feurstein <h.feurstein@gmail.com>
Date: Thu, 21 Feb 2013 17:13:39 +0100
Message-Id: <1361463220-30166-1-git-send-email-h.feurstein@gmail.com>
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
Subject: [PATCH 1/2] net: fec_imx: use dev_err and dev_warn instead of printf
To: barebox@lists.infradead.org

Signed-off-by: Hubert Feurstein <h.feurstein@gmail.com>
---
 drivers/net/fec_imx.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index 2cf5008..44a3112 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -86,7 +86,7 @@ static int fec_miibus_read(struct mii_bus *bus, int phyAddr, int regAddr)
 	start = get_time_ns();
 	while (!(readl(fec->regs + FEC_IEVENT) & FEC_IEVENT_MII)) {
 		if (is_timeout(start, MSECOND)) {
-			printf("Read MDIO failed...\n");
+			dev_err(&fec->edev.dev, "Read MDIO failed...\n");
 			return -1;
 		}
 	}
@@ -126,7 +126,7 @@ static int fec_miibus_write(struct mii_bus *bus, int phyAddr,
 	start = get_time_ns();
 	while (!(readl(fec->regs + FEC_IEVENT) & FEC_IEVENT_MII)) {
 		if (is_timeout(start, MSECOND)) {
-			printf("Write MDIO failed...\n");
+			dev_err(&fec->edev.dev, "Write MDIO failed...\n");
 			return -1;
 		}
 	}
@@ -468,12 +468,12 @@ static int fec_send(struct eth_device *dev, void *eth_data, int data_length)
 
 	/* Check for valid length of data. */
 	if ((data_length > 1500) || (data_length <= 0)) {
-		printf("Payload (%d) to large!\n", data_length);
+		dev_err(&dev->dev, "Payload (%d) to large!\n", data_length);
 		return -1;
 	}
 
 	if ((uint32_t)eth_data & (DB_DATA_ALIGNMENT-1))
-		printf("%s: Warning: Transmit data not aligned: %p!\n", __FUNCTION__, eth_data);
+		dev_warn(&dev->dev, "Transmit data not aligned: %p!\n", eth_data);
 
 	/*
 	 * Setup the transmit buffer
@@ -506,7 +506,7 @@ static int fec_send(struct eth_device *dev, void *eth_data, int data_length)
 	tmo = get_time_ns();
 	while (readw(&fec->tbd_base[fec->tbd_index].status) & FEC_TBD_READY) {
 		if (is_timeout(tmo, 1 * SECOND)) {
-			printf("transmission timeout\n");
+			dev_err(&dev->dev, "transmission timeout\n");
 			break;
 		}
 	}
@@ -544,7 +544,7 @@ static int fec_recv(struct eth_device *dev)
 		/* BABT, Rx/Tx FIFO errors */
 		fec_halt(dev);
 		fec_init(dev);
-		printf("some error: 0x%08x\n", ievent);
+		dev_err(&dev->dev, "some error: 0x%08x\n", ievent);
 		return 0;
 	}
 	if (!fec_is_imx28(fec)) {
@@ -587,7 +587,7 @@ static int fec_recv(struct eth_device *dev)
 			len = frame_length;
 		} else {
 			if (bd_status & FEC_RBD_ERR) {
-				printf("error frame: 0x%p 0x%08x\n", rbd, bd_status);
+				dev_warn(&dev->dev, "error frame: 0x%p 0x%08x\n", rbd, bd_status);
 			}
 		}
 		/*
-- 
1.8.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

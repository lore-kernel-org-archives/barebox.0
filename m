Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QmQqm-0004CY-RY
	for barebox@lists.infradead.org; Thu, 28 Jul 2011 13:42:15 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 28 Jul 2011 15:41:59 +0200
Message-Id: <1311860524-28566-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1311860524-28566-1-git-send-email-s.hauer@pengutronix.de>
References: <1311860524-28566-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 06/11] smc911x: use dev_* instead of printf
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/cs8900.c  |    2 +-
 drivers/net/smc911x.c |   22 +++++++++-------------
 2 files changed, 10 insertions(+), 14 deletions(-)

diff --git a/drivers/net/cs8900.c b/drivers/net/cs8900.c
index de6d038..d954e39 100644
--- a/drivers/net/cs8900.c
+++ b/drivers/net/cs8900.c
@@ -441,7 +441,7 @@ static int cs8900_probe(struct device_d *dev)
 	debug("cs8900_init()\n");
 
 	priv = (struct cs8900_priv *)xmalloc(sizeof(*priv));
-	priv->regs = (u16 *)dev->map_base;
+	priv->regs = dev_request_mem_region(dev, 0);
 	if (cs8900_check_id(priv)) {
 		free(priv);
 		return -1;
diff --git a/drivers/net/smc911x.c b/drivers/net/smc911x.c
index dc5477b..9d84be4 100644
--- a/drivers/net/smc911x.c
+++ b/drivers/net/smc911x.c
@@ -528,8 +528,8 @@ static void smc911x_reset(struct eth_device *edev)
 			if ((readl(priv->base + PMT_CTRL) & PMT_CTRL_READY))
 				break;
 			if (is_timeout(start, 100 * USECOND)) {
-				printf(DRIVERNAME
-					": timeout waiting for PM restore\n");
+				dev_err(&edev->dev,
+						"timeout waiting for PM restore\n");
 				return;
 			}
 		}
@@ -545,7 +545,7 @@ static void smc911x_reset(struct eth_device *edev)
 		if (!(readl(priv->base + E2P_CMD) & E2P_CMD_EPC_BUSY))
 			break;
 		if (is_timeout(start, 10 * MSECOND)) {
-			printf(DRIVERNAME ": reset timeout\n");
+			dev_err(&edev->dev, "reset timeout\n");
 			return;
 		}
 	}
@@ -610,7 +610,7 @@ static int smc911x_eth_send(struct eth_device *edev, void *packet, int length)
 					TX_FIFO_INF_TSUSED) >> 16)
 			break;
 		if (is_timeout(start, 100 * MSECOND)) {
-			printf("TX timeout\n");
+			dev_err(&edev->dev, "TX timeout\n");
 			return -1;
 		}
 	}
@@ -625,7 +625,7 @@ static int smc911x_eth_send(struct eth_device *edev, void *packet, int length)
 	if(!status)
 		return 0;
 
-	printf(DRIVERNAME ": failed to send packet: %s%s%s%s%s\n",
+	dev_err(&edev->dev, "failed to send packet: %s%s%s%s%s\n",
 		status & TX_STS_LOC ? "TX_STS_LOC " : "",
 		status & TX_STS_LATE_COLL ? "TX_STS_LATE_COLL " : "",
 		status & TX_STS_MANY_COLL ? "TX_STS_MANY_COLL " : "",
@@ -663,8 +663,7 @@ static int smc911x_eth_rx(struct eth_device *edev)
 			*data++ = readl(priv->base + RX_DATA_FIFO);
 
 		if(status & RX_STS_ES)
-			printf(DRIVERNAME
-				": dropped bad packet. Status: 0x%08x\n",
+			dev_err(&edev->dev, "dropped bad packet. Status: 0x%08x\n",
 				status);
 		else
 			net_receive(NetRxPackets[0], pktlen);
@@ -692,12 +691,9 @@ static int smc911x_probe(struct device_d *dev)
 	uint32_t val;
 	int i;
 
-	debug("smc911x_eth_init()\n");
-
 	val = readl(dev->map_base + BYTE_TEST);
 	if(val != 0x87654321) {
-		printf(DRIVERNAME
-			": no smc911x found on 0x%08x (byte_test=0x%08x)\n",
+		dev_err(dev, "no smc911x found on 0x%08x (byte_test=0x%08x)\n",
 			dev->map_base, val);
 		return -ENODEV;
 	}
@@ -707,11 +703,11 @@ static int smc911x_probe(struct device_d *dev)
 		if (chip_ids[i].id == val) break;
 	}
 	if (!chip_ids[i].id) {
-		printf(DRIVERNAME ": Unknown chip ID %04x\n", val);
+		dev_err(dev, "Unknown chip ID %04x\n", val);
 		return -ENODEV;
 	}
 
-	debug(DRIVERNAME ": detected %s controller\n", chip_ids[i].name);
+	dev_info(dev, "detected %s controller\n", chip_ids[i].name);
 
 	edev = xzalloc(sizeof(struct eth_device) +
 			sizeof(struct smc911x_priv));
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

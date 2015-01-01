Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp06.smtpout.orange.fr ([80.12.242.128]
 helo=smtp.smtpout.orange.fr)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Y6lzM-0004rm-CV
 for barebox@lists.infradead.org; Thu, 01 Jan 2015 20:04:57 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
Date: Thu,  1 Jan 2015 21:04:22 +0100
Message-Id: <1420142663-6243-2-git-send-email-robert.jarzmik@free.fr>
In-Reply-To: <1420142663-6243-1-git-send-email-robert.jarzmik@free.fr>
References: <1420142663-6243-1-git-send-email-robert.jarzmik@free.fr>
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
Subject: [PATCH] net: smc1111: fix memory congestions
To: barebox@lists.infradead.org

As the SMC1111 has a shared pool of 2k memory buckets for both
transmission and reception, and as there are variants which have as few
as 4 buckets in total, the memory pool can be hogged by unclaimed
receptions, and impeed any further transmission.

This happens on the zylonite pxa board, where 4 packets, most probably
icmp and arp, fill the 4 buckets, preventing any further ethernet
transmission, and stalling the driver.

The fix is rather rough : whenever all the buckets are filled by
reception packets, and if a transmission is required, the transmission
code path will empty up all received packets.

Signed-off-by: Robert Jarzmik <robert.jarzmik@free.fr>
---
 drivers/net/smc91111.c | 26 ++++++++++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/drivers/net/smc91111.c b/drivers/net/smc91111.c
index 55d9367..91bb845 100644
--- a/drivers/net/smc91111.c
+++ b/drivers/net/smc91111.c
@@ -152,6 +152,7 @@
 /* Memory Information Register */
 /* BANK 0  */
 #define MIR_REG		0x0008
+#define MIR_FREE_MASK	0xff00
 
 /* Receive/Phy Control Register */
 /* BANK 0  */
@@ -916,6 +917,30 @@ static int smc91c111_eth_open(struct eth_device *edev)
 	return 0;
 }
 
+static void smc91c111_ensure_freemem(struct eth_device *edev)
+{
+	struct smc91c111_priv *priv = (struct smc91c111_priv *)edev->priv;
+	u16 mir, rxfifo;
+
+	SMC_SELECT_BANK(priv, 0);
+	mir = SMC_inw(priv, MIR_REG);
+	SMC_SELECT_BANK(priv, 2);
+
+	if ((mir & MIR_FREE_MASK) == 0) {
+		do {
+			SMC_outw(priv, MC_RELEASE, MMU_CMD_REG);
+			smc_wait_mmu_release_complete(priv);
+
+			SMC_SELECT_BANK(priv, 0);
+			mir = SMC_inw(priv, MIR_REG);
+			SMC_SELECT_BANK(priv, 2);
+			rxfifo = SMC_inw(priv, RXFIFO_REG);
+			dev_dbg(&edev->dev, "%s: card memory saturated, tidying up (rx_tx_fifo=0x%04x mir=0x%04x)\n",
+				SMC_DEV_NAME, rxfifo, mir);
+		} while (!(rxfifo & RXFIFO_REMPTY));
+	}
+}
+
 static int smc91c111_eth_send(struct eth_device *edev, void *packet,
 				int packet_length)
 {
@@ -957,6 +982,7 @@ static int smc91c111_eth_send(struct eth_device *edev, void *packet,
 		return -EOVERFLOW;
 	}
 
+	smc91c111_ensure_freemem(edev);
 	/* now, try to allocate the memory */
 	SMC_SELECT_BANK(priv, 2);
 	SMC_outw(priv, MC_ALLOC | numPages, MMU_CMD_REG);
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

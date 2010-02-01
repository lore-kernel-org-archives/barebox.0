Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NbtYo-0003YY-Jl
	for barebox@lists.infradead.org; Mon, 01 Feb 2010 10:31:19 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Mon,  1 Feb 2010 11:31:02 +0100
Message-Id: <1265020263-21417-2-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1265020263-21417-1-git-send-email-mkl@pengutronix.de>
References: <1265020263-21417-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH 1/2] smc91111: fix odering of mac address read from EEPROM
To: barebox@lists.infradead.org
Cc: sha@pengutronix.de

On my little endian PXA270, the ethernet address is byte swapped:

correct ethernet address: 00:50:c2:80:a7:bd
broken  ethernet address: 50:00:80:c2:bd:a7

The correct value is what the sticker on the baoard and the linux driver
says. This patch fixes the problem by reading the ethaddr byte-wise from
the eeprom.

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 drivers/net/smc91111.c |   23 +++++++++--------------
 1 files changed, 9 insertions(+), 14 deletions(-)

diff --git a/drivers/net/smc91111.c b/drivers/net/smc91111.c
index 0df664a..9b41c67 100644
--- a/drivers/net/smc91111.c
+++ b/drivers/net/smc91111.c
@@ -1166,22 +1166,17 @@ static int smc91c111_eth_rx(struct eth_device *edev)
 static int smc91c111_get_ethaddr(struct eth_device *edev, unsigned char *m)
 {
 	struct smc91c111_priv *priv = (struct smc91c111_priv *)edev->priv;
-	unsigned address[3];
+	int valid = 0;
+	int i;
 
 	SMC_SELECT_BANK(priv, 1);
-	address[0] = SMC_inw(priv, ADDR0_REG);
-	address[1] = SMC_inw(priv, ADDR0_REG + 2);
-	address[2] = SMC_inw(priv, ADDR0_REG + 4);
-
-	if (address[0] + address[1] + address[2] == 0)
-		return -1;	/* no eeprom, no mac */
-
-	m[0] = address[0] >> 8;
-	m[1] = address[0];
-	m[2] = address[1] >> 8;
-	m[3] = address[1];
-	m[4] = address[2] >> 8;
-	m[5] = address[2];
+
+	for (i = 0; i < 6; ++i)
+		valid += m[i] = SMC_inb(priv, (ADDR0_REG + i));
+
+	/* no eeprom, no mac */
+	if (!valid)
+		return -1;
 
 	return 0;
 }
-- 
1.6.6.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

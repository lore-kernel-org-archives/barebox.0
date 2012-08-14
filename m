Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.mo4.mail-out.ovh.net ([178.33.253.54]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T1KyV-0004lm-KR
 for barebox@lists.infradead.org; Tue, 14 Aug 2012 17:32:16 +0000
Received: from mail628.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 10648105830D
 for <barebox@lists.infradead.org>; Tue, 14 Aug 2012 19:36:55 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 14 Aug 2012 19:32:18 +0200
Message-Id: <1344965540-31534-5-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1344965540-31534-1-git-send-email-plagnioj@jcrosoft.com>
References: <20120814172555.GP6271@game.jcrosoft.org>
 <1344965540-31534-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 5/7] smc911x: improve detection handle
To: barebox@lists.infradead.org

detect if the bus is swapped and report a 32bit drivers is used on a 16bit bus

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/net/smc911x.c |   20 +++++++++++++++++++-
 drivers/net/smc911x.h |    2 ++
 2 files changed, 21 insertions(+), 1 deletion(-)

diff --git a/drivers/net/smc911x.c b/drivers/net/smc911x.c
index de2f388..67d82df 100644
--- a/drivers/net/smc911x.c
+++ b/drivers/net/smc911x.c
@@ -450,9 +450,27 @@ static int smc911x_probe(struct device_d *dev)
 	}
 
 	val = smc911x_reg_read(priv, BYTE_TEST);
-	if(val != 0x87654321) {
+	if (val == 0x43218765) {
+		dev_info(dev, "BYTE_TEST looks swapped, "
+			   "applying WORD_SWAP");
+		smc911x_reg_write(priv, WORD_SWAP, 0xffffffff);
+
+		/* 1 dummy read of BYTE_TEST is needed after a write to
+		 * WORD_SWAP before its contents are valid */
+		val = smc911x_reg_read(priv, BYTE_TEST);
+
+		val = smc911x_reg_read(priv, BYTE_TEST);
+	}
+
+	if (val != 0x87654321) {
 		dev_err(dev, "no smc911x found on 0x%p (byte_test=0x%08x)\n",
 			priv->base, val);
+		if (((val >> 16) & 0xFFFF) == (val & 0xFFFF)) {
+			dev_err(dev, "top 16 bits equal to bottom 16 bits\n");
+			dev_err(dev,
+				   "This may mean the chip is set "
+				   "for 32 bit while the bus is reading 16 bit\n");
+		}
 		return -ENODEV;
 	}
 
diff --git a/drivers/net/smc911x.h b/drivers/net/smc911x.h
index baf3598..d409247 100644
--- a/drivers/net/smc911x.h
+++ b/drivers/net/smc911x.h
@@ -26,6 +26,8 @@
  * of the Lan911x memory space
  */
 
+#define WORD_SWAP		0x98
+
 #define RX_DATA_FIFO		 0x00
 
 #define TX_DATA_FIFO		 0x20
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

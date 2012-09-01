Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.mo2.mail-out.ovh.net ([188.165.48.182]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T7jRO-00069C-1g
 for barebox@lists.infradead.org; Sat, 01 Sep 2012 08:52:35 +0000
Received: from mail21.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id C222BDC6FC6
 for <barebox@lists.infradead.org>; Sat,  1 Sep 2012 10:57:42 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat,  1 Sep 2012 10:52:42 +0200
Message-Id: <1346489564-16176-5-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1346489564-16176-1-git-send-email-plagnioj@jcrosoft.com>
References: <20120901084728.GH18708@game.jcrosoft.org>
 <1346489564-16176-1-git-send-email-plagnioj@jcrosoft.com>
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
 drivers/net/smc911x.c |   21 ++++++++++++++++++++-
 drivers/net/smc911x.h |    2 ++
 2 files changed, 22 insertions(+), 1 deletion(-)

diff --git a/drivers/net/smc911x.c b/drivers/net/smc911x.c
index 75a332e..8528527 100644
--- a/drivers/net/smc911x.c
+++ b/drivers/net/smc911x.c
@@ -470,9 +470,28 @@ static int smc911x_probe(struct device_d *dev)
 	}
 
 	val = smc911x_reg_read(priv, BYTE_TEST);
-	if(val != 0x87654321) {
+	if (val == 0x43218765) {
+		dev_dbg(dev, "BYTE_TEST looks swapped, "
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
+			/*
+			 * This may mean the chip is set
+			 * for 32 bit while the bus is reading 16 bit
+			 */
+			dev_err(dev, "top 16 bits equal to bottom 16 bits\n");
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

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 9.mo1.mail-out.ovh.net ([178.32.108.172]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TUkkV-0005b3-2L
 for barebox@lists.infradead.org; Sat, 03 Nov 2012 20:55:24 +0000
Received: from mail635.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id ECFCDFFA617
 for <barebox@lists.infradead.org>; Sat,  3 Nov 2012 22:05:53 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat,  3 Nov 2012 21:53:07 +0100
Message-Id: <1351975989-8218-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20121103204613.GZ29599@game.jcrosoft.org>
References: <20121103204613.GZ29599@game.jcrosoft.org>
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
Subject: [PATCH 1/3] i2c: algo-bit add missing acknak
To: barebox@lists.infradead.org

This is need for sequential read/write.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/i2c/algos/i2c-algo-bit.c |   20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/drivers/i2c/algos/i2c-algo-bit.c b/drivers/i2c/algos/i2c-algo-bit.c
index 37af27c..dc43eb8 100644
--- a/drivers/i2c/algos/i2c-algo-bit.c
+++ b/drivers/i2c/algos/i2c-algo-bit.c
@@ -390,6 +390,22 @@ static int sendbytes(struct i2c_adapter *i2c_adap, struct i2c_msg *msg)
 	return wrcount;
 }
 
+static int acknak(struct i2c_adapter *i2c_adap, int is_ack)
+{
+	struct i2c_algo_bit_data *adap = i2c_adap->algo_data;
+
+	/* assert: sda is high */
+	if (is_ack)		/* send ack */
+		setsda(adap, 0);
+	udelay((adap->udelay + 1) / 2);
+	if (sclhi(adap) < 0) {	/* timeout */
+		dev_err(&i2c_adap->dev, "readbytes: ack/nak timeout\n");
+		return -ETIMEDOUT;
+	}
+	scllo(adap);
+	return 0;
+}
+
 static int readbytes(struct i2c_adapter *i2c_adap, struct i2c_msg *msg)
 {
 	int inval;
@@ -414,6 +430,10 @@ static int readbytes(struct i2c_adapter *i2c_adap, struct i2c_msg *msg)
 			(flags & I2C_M_NO_RD_ACK)
 				? "(no ack/nak)"
 				: (count ? "A" : "NA"));
+
+		inval = acknak(i2c_adap, count);
+		if (inval < 0)
+			return inval;
 	}
 	return rdcount;
 }
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

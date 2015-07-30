Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from proxima.lasnet.de ([78.47.171.185])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZKpCN-0005hJ-Hr
 for barebox@lists.infradead.org; Thu, 30 Jul 2015 14:52:45 +0000
Received: from polaris.fritz.box (f053152215.adsl.alicedsl.de [78.53.152.215])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: polaris@lasnet.de)
 by proxima.lasnet.de (Postfix) with ESMTPSA id AA8FFC35AC
 for <barebox@lists.infradead.org>; Thu, 30 Jul 2015 16:52:19 +0200 (CEST)
From: Jan Luebbe <jluebbe@debian.org>
Date: Thu, 30 Jul 2015 16:52:09 +0200
Message-Id: <1438267931-22374-5-git-send-email-jluebbe@debian.org>
In-Reply-To: <1438267931-22374-1-git-send-email-jluebbe@debian.org>
References: <1438267931-22374-1-git-send-email-jluebbe@debian.org>
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
Subject: [PATCH v2 4/6] i2c: algo-bit: fix debug code
To: barebox@lists.infradead.org

Replace jiffies from kernel code with get_time_ns. The flags variable
used in the readbytes debug output does not exist.

Signed-off-by: Jan Luebbe <jluebbe@debian.org>
---
 drivers/i2c/algos/i2c-algo-bit.c | 12 +++++-------
 1 file changed, 5 insertions(+), 7 deletions(-)

diff --git a/drivers/i2c/algos/i2c-algo-bit.c b/drivers/i2c/algos/i2c-algo-bit.c
index dc43eb8..62040cc 100644
--- a/drivers/i2c/algos/i2c-algo-bit.c
+++ b/drivers/i2c/algos/i2c-algo-bit.c
@@ -106,9 +106,10 @@ static int sclhi(struct i2c_algo_bit_data *adap)
 		}
 	}
 #ifdef DEBUG
-	if (jiffies != start && i2c_debug >= 3)
-		pr_debug("i2c-algo-bit: needed %ld jiffies for SCL to go "
-			 "high\n", jiffies - start);
+	if ((get_time_ns() - start) < 10000)
+		pr_debug("i2c-algo-bit: needed %u usecs for SCL to go "
+			 "high\n", (unsigned int)(get_time_ns() - start) /
+			 1000);
 #endif
 
 done:
@@ -426,10 +427,7 @@ static int readbytes(struct i2c_adapter *i2c_adap, struct i2c_msg *msg)
 		count--;
 
 		bit_dbg(2, &i2c_adap->dev, "readbytes: 0x%02x %s\n",
-			inval,
-			(flags & I2C_M_NO_RD_ACK)
-				? "(no ack/nak)"
-				: (count ? "A" : "NA"));
+			inval, count ? "A" : "NA");
 
 		inval = acknak(i2c_adap, count);
 		if (inval < 0)
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from proxima.lasnet.de ([2a01:198:210:70::2])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZKpCk-0005jh-6i
 for barebox@lists.infradead.org; Thu, 30 Jul 2015 14:53:06 +0000
Received: from polaris.fritz.box (f053152215.adsl.alicedsl.de [78.53.152.215])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: polaris@lasnet.de)
 by proxima.lasnet.de (Postfix) with ESMTPSA id 1AA3EC35AD
 for <barebox@lists.infradead.org>; Thu, 30 Jul 2015 16:52:20 +0200 (CEST)
From: Jan Luebbe <jluebbe@debian.org>
Date: Thu, 30 Jul 2015 16:52:10 +0200
Message-Id: <1438267931-22374-6-git-send-email-jluebbe@debian.org>
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
Subject: [PATCH v2 5/6] i2c: algo-bit: check if the bus is busy
To: barebox@lists.infradead.org

If we have a timeout while waiting, try to recover.

Signed-off-by: Jan Luebbe <jluebbe@debian.org>
---
 drivers/i2c/algos/i2c-algo-bit.c | 32 ++++++++++++++++++++++++++++++++
 1 file changed, 32 insertions(+)

diff --git a/drivers/i2c/algos/i2c-algo-bit.c b/drivers/i2c/algos/i2c-algo-bit.c
index 62040cc..2563c0d 100644
--- a/drivers/i2c/algos/i2c-algo-bit.c
+++ b/drivers/i2c/algos/i2c-algo-bit.c
@@ -117,6 +117,31 @@ done:
 	return 0;
 }
 
+static int wait_busy(struct i2c_algo_bit_data *adap)
+{
+	uint64_t start;
+
+	if (sclhi(adap) < 0)
+		return -ETIMEDOUT;
+
+	start = get_time_ns();
+	while (!getsda(adap)) {
+		if (is_timeout(start, adap->timeout_ms * MSECOND)) {
+			if (getsda(adap))
+				break;
+			return -ETIMEDOUT;
+		}
+	}
+#ifdef DEBUG
+	if ((get_time_ns() - start) < 10000)
+		pr_debug("i2c-algo-bit: needed %u usecs for SDA to go "
+			 "high\n", (unsigned int)(get_time_ns() - start) /
+			 1000);
+#endif
+
+	udelay(adap->udelay);
+	return 0;
+}
 
 /* --- other auxiliary functions --------------------------------------	*/
 static void i2c_start(struct i2c_algo_bit_data *adap)
@@ -512,6 +537,13 @@ static int bit_xfer(struct i2c_adapter *i2c_adap,
 			return ret;
 	}
 
+	if (wait_busy(adap) < 0) { /* timeout */
+		dev_warn(&i2c_adap->dev, "timeout waiting for bus ready\n");
+		ret = i2c_recover_bus(i2c_adap);
+		if (ret < 0)
+			return ret;
+	}
+
 	bit_dbg(3, &i2c_adap->dev, "emitting start condition\n");
 	i2c_start(adap);
 	for (i = 0; i < num; i++) {
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

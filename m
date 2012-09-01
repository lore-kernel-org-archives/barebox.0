Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.mo2.mail-out.ovh.net ([188.165.48.182]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T7jRO-00069k-IB
 for barebox@lists.infradead.org; Sat, 01 Sep 2012 08:52:37 +0000
Received: from mail21.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id D4CE8DC6FD2
 for <barebox@lists.infradead.org>; Sat,  1 Sep 2012 10:57:43 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat,  1 Sep 2012 10:52:44 +0200
Message-Id: <1346489564-16176-7-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 7/7] smc911x: check if the device is ready before using it
To: barebox@lists.infradead.org

poll the READY bit in PMT_CTRL. Any other access to the device is
forbidden while this bit isn't set. Try for 100ms

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/net/smc911x.c |   12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/drivers/net/smc911x.c b/drivers/net/smc911x.c
index 7639a92..3ccb0ef 100644
--- a/drivers/net/smc911x.c
+++ b/drivers/net/smc911x.c
@@ -420,7 +420,7 @@ static int smc911x_probe(struct device_d *dev)
 	struct eth_device *edev;
 	struct smc911x_priv *priv;
 	uint32_t val;
-	int is_32bit;
+	int is_32bit, ret;
 	struct smc911x_plat *pdata = dev->platform_data;
 
 	priv = xzalloc(sizeof(*priv));
@@ -452,6 +452,16 @@ static int smc911x_probe(struct device_d *dev)
 		}
 	}
 
+	/*
+	 * poll the READY bit in PMT_CTRL. Any other access to the device is
+	 * forbidden while this bit isn't set. Try for 100ms
+	 */
+	ret = wait_on_timeout(100 * MSECOND, smc911x_reg_read(priv, PMT_CTRL) & PMT_CTRL_READY);
+	if (!ret) {
+		dev_err(dev, "Device not READY in 100ms aborting\n");
+		return -ENODEV;
+	}
+
 	val = smc911x_reg_read(priv, BYTE_TEST);
 	if (val == 0x43218765) {
 		dev_dbg(dev, "BYTE_TEST looks swapped, "
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

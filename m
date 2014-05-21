Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Wn5V6-0007IL-Ou
 for barebox@lists.infradead.org; Wed, 21 May 2014 12:20:05 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 21 May 2014 14:19:37 +0200
Message-Id: <1400674777-7626-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1400674777-7626-1-git-send-email-s.hauer@pengutronix.de>
References: <1400674777-7626-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] net: fec_imx: check return value of registration functions
To: barebox@lists.infradead.org

We do not care about releasing the resources in the error
path, but at least check the return value of eth_register
and mdiobus_register.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/fec_imx.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index 714f8f2..808bf8f 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -732,9 +732,14 @@ static int fec_probe(struct device_d *dev)
 	fec->miibus.priv = fec;
 	fec->miibus.parent = dev;
 
-	mdiobus_register(&fec->miibus);
+	ret = mdiobus_register(&fec->miibus);
+	if (ret)
+		return ret;
+
+	ret = eth_register(edev);
+	if (ret)
+		return ret;
 
-	eth_register(edev);
 	return 0;
 
 err_free:
-- 
2.0.0.rc0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

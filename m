Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iahz9-0006k7-Tn
 for barebox@lists.infradead.org; Fri, 29 Nov 2019 15:15:14 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>) id 1iahz8-0006u0-CW
 for barebox@lists.infradead.org; Fri, 29 Nov 2019 16:15:06 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri, 29 Nov 2019 16:14:37 +0100
Message-Id: <20191129151505.23946-12-l.stach@pengutronix.de>
In-Reply-To: <20191129151505.23946-1-l.stach@pengutronix.de>
References: <20191129151505.23946-1-l.stach@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 11/39] mfd: superio: add missing semicolon after EXPORT_SYMBOL
To: barebox@lists.infradead.org

Fixes: efd517c35f12 (mfd: add basic Super I/O chip helpers)
Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/mfd/superio.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/mfd/superio.c b/drivers/mfd/superio.c
index 12d74b40f6f8..ab94a4fa8f75 100644
--- a/drivers/mfd/superio.c
+++ b/drivers/mfd/superio.c
@@ -24,7 +24,7 @@ struct device_d *superio_func_add(struct superio_chip *siochip, const char *name
 
 	return dev;
 }
-EXPORT_SYMBOL(superio_func_add)
+EXPORT_SYMBOL(superio_func_add);
 
 static int superio_reg_read(void *ctx, unsigned int reg, unsigned int *val)
 {
@@ -95,4 +95,4 @@ void superio_chip_add(struct superio_chip *siochip)
 		pr_warn("registering %s regmap cdev failed: %s\n",
 			chipname, strerror(-ret));
 }
-EXPORT_SYMBOL(superio_chip_add)
+EXPORT_SYMBOL(superio_chip_add);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

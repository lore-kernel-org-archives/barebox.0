Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYBdE-0002os-Cl
 for barebox@lists.infradead.org; Mon, 11 May 2020 16:50:21 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>) id 1jYBdD-00052q-6o
 for barebox@lists.infradead.org; Mon, 11 May 2020 18:50:19 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Mon, 11 May 2020 18:50:18 +0200
Message-Id: <20200511165019.22278-2-l.stach@pengutronix.de>
In-Reply-To: <20200511165019.22278-1-l.stach@pengutronix.de>
References: <20200511165019.22278-1-l.stach@pengutronix.de>
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
Subject: [PATCH 2/3] mfd: stpmic1: move to coredevice level
To: barebox@lists.infradead.org

The PMIC provides regulators, which are needed before other
devices can probe.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/mfd/stpmic1.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mfd/stpmic1.c b/drivers/mfd/stpmic1.c
index ab13ded0ecfe..d22758bd6105 100644
--- a/drivers/mfd/stpmic1.c
+++ b/drivers/mfd/stpmic1.c
@@ -94,4 +94,4 @@ static struct driver_d stpmic1_i2c_driver = {
 	.of_compatible	= DRV_OF_COMPAT(stpmic1_dt_ids),
 };
 
-device_i2c_driver(stpmic1_i2c_driver);
+coredevice_i2c_driver(stpmic1_i2c_driver);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

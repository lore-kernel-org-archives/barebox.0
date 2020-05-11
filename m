Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYBdE-0002ou-Gq
 for barebox@lists.infradead.org; Mon, 11 May 2020 16:50:21 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>) id 1jYBdD-00052q-7I
 for barebox@lists.infradead.org; Mon, 11 May 2020 18:50:19 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Mon, 11 May 2020 18:50:19 +0200
Message-Id: <20200511165019.22278-3-l.stach@pengutronix.de>
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
Subject: [PATCH 3/3] regulator: stpmic1: move to coredevice level
To: barebox@lists.infradead.org

Those regulators are needed by other devices. Probe them early.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/regulator/stpmic1_regulator.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/regulator/stpmic1_regulator.c b/drivers/regulator/stpmic1_regulator.c
index aaaba092c1a4..71a4ae80c392 100644
--- a/drivers/regulator/stpmic1_regulator.c
+++ b/drivers/regulator/stpmic1_regulator.c
@@ -433,4 +433,4 @@ static struct driver_d stpmic1_regulator_driver = {
 	.probe = stpmic1_regulator_probe,
 	.of_compatible = DRV_OF_COMPAT(stpmic1_regulator_of_match),
 };
-device_platform_driver(stpmic1_regulator_driver);
+coredevice_platform_driver(stpmic1_regulator_driver);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

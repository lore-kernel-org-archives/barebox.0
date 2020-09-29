Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kNAr3-0000tI-Fr
 for barebox@lists.infradead.org; Tue, 29 Sep 2020 08:19:22 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 29 Sep 2020 10:19:08 +0200
Message-Id: <20200929081909.30235-2-s.hauer@pengutronix.de>
In-Reply-To: <20200929081909.30235-1-s.hauer@pengutronix.de>
References: <20200929081909.30235-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/3] regulator: pfuze: Use device_i2c_driver() macro
To: Barebox List <barebox@lists.infradead.org>

Shorten driver registration by using the suitable macro.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/regulator/pfuze.c | 13 +------------
 1 file changed, 1 insertion(+), 12 deletions(-)

diff --git a/drivers/regulator/pfuze.c b/drivers/regulator/pfuze.c
index 91aaec0e7e..1983ec91f6 100644
--- a/drivers/regulator/pfuze.c
+++ b/drivers/regulator/pfuze.c
@@ -206,15 +206,4 @@ static struct driver_d pfuze_i2c_driver = {
 	.of_compatible	= DRV_OF_COMPAT(pfuze_dt_ids),
 };
 
-static int __init pfuze_init(void)
-{
-	int ret;
-
-	ret = i2c_driver_register(&pfuze_i2c_driver);
-	if (ret)
-		return ret;
-
-	return 0;
-
-}
-late_initcall(pfuze_init);
+device_i2c_driver(pfuze_i2c_driver);
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

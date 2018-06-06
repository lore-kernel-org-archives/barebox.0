Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x243.google.com ([2607:f8b0:400e:c05::243])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fQdRK-0000Sk-Ad
 for barebox@lists.infradead.org; Wed, 06 Jun 2018 18:45:46 +0000
Received: by mail-pg0-x243.google.com with SMTP id c9-v6so3437836pgf.5
 for <barebox@lists.infradead.org>; Wed, 06 Jun 2018 11:45:35 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed,  6 Jun 2018 11:44:23 -0700
Message-Id: <20180606184431.10348-31-andrew.smirnov@gmail.com>
In-Reply-To: <20180606184431.10348-1-andrew.smirnov@gmail.com>
References: <20180606184431.10348-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v3 30/38] clocksource: armv8-timer: Make use of
 postcore_platform_driver()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/clocksource/armv8-timer.c | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/clocksource/armv8-timer.c b/drivers/clocksource/armv8-timer.c
index 5e0b9ef3c..918232e0e 100644
--- a/drivers/clocksource/armv8-timer.c
+++ b/drivers/clocksource/armv8-timer.c
@@ -48,9 +48,5 @@ static struct driver_d armv8_timer_driver = {
 	.probe = armv8_timer_probe,
 	.of_compatible = DRV_OF_COMPAT(armv8_timer_dt_ids),
 };
+postcore_platform_driver(armv8_timer_driver);
 
-static int armv8_timer_init(void)
-{
-	return platform_driver_register(&armv8_timer_driver);
-}
-postcore_initcall(armv8_timer_init);
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

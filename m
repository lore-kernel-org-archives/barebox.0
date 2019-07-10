Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlHpL-0007XZ-O7
 for barebox@lists.infradead.org; Wed, 10 Jul 2019 19:00:32 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1hlHpG-0000EB-Su
 for barebox@lists.infradead.org; Wed, 10 Jul 2019 21:00:22 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1hlHpG-0001qg-Jo
 for barebox@lists.infradead.org; Wed, 10 Jul 2019 21:00:22 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 10 Jul 2019 21:00:11 +0200
Message-Id: <20190710190010.6105-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH] watchdog: stm32_iwdg: remove left-over comment
To: barebox@lists.infradead.org

The reset reason part of the code is based on the i.MX6's and duplicated
a comment from there, which isn't applicable to the STM32. Delete it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/watchdog/stm32_iwdg.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/watchdog/stm32_iwdg.c b/drivers/watchdog/stm32_iwdg.c
index 34912ae00eea..7c2dc077af5b 100644
--- a/drivers/watchdog/stm32_iwdg.c
+++ b/drivers/watchdog/stm32_iwdg.c
@@ -170,11 +170,6 @@ static int stm32_set_reset_reason(struct regmap *rcc)
 	int ret;
 	int i, instance = 0;
 
-	/*
-	 * SRSR register captures ALL reset event that occured since
-	 * POR, so we need to clear it to make sure we only caputre
-	 * the latest one.
-	 */
 	ret = regmap_read(rcc, RCC_MP_RSTSCLRR, &reg);
 	if (ret)
 		return ret;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlK8y-0005vP-1k
 for barebox@lists.infradead.org; Wed, 10 Jul 2019 21:28:53 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1hlK8s-0003tz-Sr
 for barebox@lists.infradead.org; Wed, 10 Jul 2019 23:28:46 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1hlK8j-0000Gt-9H
 for barebox@lists.infradead.org; Wed, 10 Jul 2019 23:28:37 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 10 Jul 2019 23:28:36 +0200
Message-Id: <20190710212836.887-1-a.fatoum@pengutronix.de>
In-Reply-To: <20190710201112.9086-4-a.fatoum@pengutronix.de>
References: <20190710201112.9086-4-a.fatoum@pengutronix.de>
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
Subject: [PATCH] fixup! reset: add reset controller driver for STM32 RCC
To: barebox@lists.infradead.org

This fixes some unfortunate last-moment refactoring.
With this change, the reset works correctly now.
---
 drivers/reset/reset-stm32.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/reset/reset-stm32.c b/drivers/reset/reset-stm32.c
index ff66fe310e1a..5689dfd4888a 100644
--- a/drivers/reset/reset-stm32.c
+++ b/drivers/reset/reset-stm32.c
@@ -26,8 +26,8 @@ static struct stm32_reset *to_stm32_reset(struct reset_controller_dev *rcdev)
 
 static void stm32mp_reset(void __iomem *reg, unsigned offset, bool assert)
 {
-	if (assert)
-		offset += RCC_CL;
+	if (!assert)
+		reg += RCC_CL;
 
 	writel(BIT(offset), reg);
 }
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

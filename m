Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izfGF-0005XY-Hs
 for barebox@lists.infradead.org; Thu, 06 Feb 2020 11:23:56 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  6 Feb 2020 12:23:27 +0100
Message-Id: <20200206112334.14314-2-a.fatoum@pengutronix.de>
In-Reply-To: <20200206112334.14314-1-a.fatoum@pengutronix.de>
References: <20200206112334.14314-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 1/8] PWM: pxa: remove unused struct members
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Both duty_ns and period_ns are stored to, but never read. Drop them.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/pwm/pxa_pwm.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/pwm/pxa_pwm.c b/drivers/pwm/pxa_pwm.c
index c7130c225ebe..90899fd3c985 100644
--- a/drivers/pwm/pxa_pwm.c
+++ b/drivers/pwm/pxa_pwm.c
@@ -34,8 +34,6 @@ struct pxa_pwm_chip {
 	struct pwm_chip chip;
 	void __iomem *iobase;
 	int id;
-	int duty_ns;
-	int period_ns;
 };
 
 static struct pxa_pwm_chip *to_pxa_pwm_chip(struct pwm_chip *chip)
@@ -72,9 +70,6 @@ static int pxa_pwm_config(struct pwm_chip *chip, int duty_ns, int period_ns)
 	else
 		dc = (pv + 1) * duty_ns / period_ns;
 
-	pxa_pwm->duty_ns = duty_ns;
-	pxa_pwm->period_ns = period_ns;
-
 	/* NOTE: the clock to PWM has to be enabled first
 	 * before writing to the registers
 	 */
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

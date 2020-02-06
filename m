Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izfGN-0005hD-RY
 for barebox@lists.infradead.org; Thu, 06 Feb 2020 11:24:06 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  6 Feb 2020 12:23:28 +0100
Message-Id: <20200206112334.14314-3-a.fatoum@pengutronix.de>
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
Subject: [PATCH 2/8] PWM: pxa: make MMIO writes always little endian
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Even when the processor runs in big-endian mode, the peripheral is
little-endian and is used as such in Linux. Do here likewise.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/pwm/pxa_pwm.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/pwm/pxa_pwm.c b/drivers/pwm/pxa_pwm.c
index 90899fd3c985..4575817e946c 100644
--- a/drivers/pwm/pxa_pwm.c
+++ b/drivers/pwm/pxa_pwm.c
@@ -73,9 +73,9 @@ static int pxa_pwm_config(struct pwm_chip *chip, int duty_ns, int period_ns)
 	/* NOTE: the clock to PWM has to be enabled first
 	 * before writing to the registers
 	 */
-	__raw_writel(prescale, pxa_pwm->iobase + PWMCR);
-	__raw_writel(dc, pxa_pwm->iobase + PWMDCR);
-	__raw_writel(pv, pxa_pwm->iobase + PWMPCR);
+	writel(prescale, pxa_pwm->iobase + PWMCR);
+	writel(dc, pxa_pwm->iobase + PWMDCR);
+	writel(pv, pxa_pwm->iobase + PWMPCR);
 
 	return 0;
 }
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WDt64-0000RY-Gg
 for barebox@lists.infradead.org; Thu, 13 Feb 2014 10:00:45 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 13 Feb 2014 11:00:18 +0100
Message-Id: <1392285621-17485-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1392285621-17485-1-git-send-email-s.hauer@pengutronix.de>
References: <1392285621-17485-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/5] PWM: pxa: use pwmx as devname
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/pwm/pxa_pwm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/pwm/pxa_pwm.c b/drivers/pwm/pxa_pwm.c
index 8e22d49..8b2ebe4 100644
--- a/drivers/pwm/pxa_pwm.c
+++ b/drivers/pwm/pxa_pwm.c
@@ -133,7 +133,7 @@ static int pxa_pwm_probe(struct device_d *dev)
 	struct pxa_pwm_chip *chip;
 
 	chip = xzalloc(sizeof(*chip));
-	chip->chip.devname = asprintf("%s", dev_name(dev));
+	chip->chip.devname = asprintf("pwm%d", dev->id);
 	chip->chip.ops = &pxa_pwm_ops;
 	chip->iobase = dev_request_mem_region(dev, 0);
 	chip->id = dev->id;
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-eopbgr700099.outbound.protection.outlook.com
 ([40.107.70.99] helo=NAM04-SN1-obe.outbound.protection.outlook.com)
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jyvb4-0000WL-HW
 for barebox@lists.infradead.org; Fri, 24 Jul 2020 11:10:39 +0000
From: Renaud Barbier <renaud.barbier@abaco.com>
Date: Fri, 24 Jul 2020 12:09:37 +0100
Message-Id: <1595588977-5147-1-git-send-email-renaud.barbier@abaco.com>
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
Subject: [PATCH] gpio: get function returns masked register value
To: barebox@lists.infradead.org
Cc: Renaud Barbier <renaud.barbier@abaco.com>

Unlike Linux the generic driver get function returns the masked register
content and not the 0 or 1 value. The consequence is that gpio_get_value
returns for instance 0x10 for bit 4 instead of 1.
Use the Linux normalized form instead.

Signed-off-by: Renaud Barbier <renaud.barbier@abaco.com>
---
 drivers/gpio/gpio-generic.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/drivers/gpio/gpio-generic.c b/drivers/gpio/gpio-generic.c
index e4c4f39..2e0dad9 100644
--- a/drivers/gpio/gpio-generic.c
+++ b/drivers/gpio/gpio-generic.c
@@ -62,7 +62,7 @@ static int bgpio_get(struct gpio_chip *gc, unsigned int gpio)
 {
 	struct bgpio_chip *bgc = to_bgpio_chip(gc);
 
-	return bgc->read_reg(bgc->reg_dat) & bgc->pin2mask(bgc, gpio);
+	return !!(bgc->read_reg(bgc->reg_dat) & bgc->pin2mask(bgc, gpio));
 }
 
 static void bgpio_set(struct gpio_chip *gc, unsigned int gpio, int val)
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

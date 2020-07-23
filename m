Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-dm6nam11on2091.outbound.protection.outlook.com
 ([40.107.223.91] helo=NAM11-DM6-obe.outbound.protection.outlook.com)
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jyhFS-000169-UP
 for barebox@lists.infradead.org; Thu, 23 Jul 2020 19:51:23 +0000
From: "Barbier, Renaud" <renaud.barbier@abaco.com>
Date: Thu, 23 Jul 2020 19:51:15 +0000
Message-ID: <MN2PR16MB313535B92C50776EC02EBD6191760@MN2PR16MB3135.namprd16.prod.outlook.com>
Content-Language: en-US
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
Subject: gpio generic driver
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Question regarding the function below:

static int bgpio_get(struct gpio_chip *gc, unsigned int gpio)
  {
          struct bgpio_chip *bgc = to_bgpio_chip(gc);

~         return bgc->read_reg(bgc->reg_dat) & bgc->pin2mask(bgc, gpio);
  }

This returns the value from the register i.e the value as in 0x01000000 for bit 3BE or 28LE. This is what I see using the drivers/gpio/gpio-mpc8xxx.c driver.

Is it not supposed to return just 0 or 1?

Linux has

return !!(gc->read_reg(gc->reg_dat) & bgpio_line2mask(gc, gpio));

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

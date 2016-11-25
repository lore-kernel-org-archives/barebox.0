Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x243.google.com ([2607:f8b0:400e:c05::243])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1cANir-00005O-Ka
 for barebox@lists.infradead.org; Fri, 25 Nov 2016 21:07:54 +0000
Received: by mail-pg0-x243.google.com with SMTP id p66so6347421pga.2
 for <barebox@lists.infradead.org>; Fri, 25 Nov 2016 13:07:32 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 25 Nov 2016 13:07:10 -0800
Message-Id: <1480108031-17889-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 1/2] fixup! gpio: Add GPIO driver for Vybrid
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

---

Sascha,

It looks like the two affected patches haven't hit 'master' yet, so I
am hoping these two fixups could be incorporated into 'next'.

First fixup removes unused constants (leftover from kernel code) and
second adda two lines to configure clock for ESDHC0 (original code
only configured ESDHC1)

If you want these as separate patches, let me know

Thanks,
Andrey

 drivers/gpio/gpio-vf610.c | 15 ---------------
 1 file changed, 15 deletions(-)

diff --git a/drivers/gpio/gpio-vf610.c b/drivers/gpio/gpio-vf610.c
index c82723f..7c8d1e4 100644
--- a/drivers/gpio/gpio-vf610.c
+++ b/drivers/gpio/gpio-vf610.c
@@ -39,21 +39,6 @@ struct vf610_gpio_port {
 #define GPIO_PTOR		0x0c
 #define GPIO_PDIR		0x10
 
-#define PORT_PCR(n)		((n) * 0x4)
-#define PORT_PCR_IRQC_OFFSET	16
-
-#define PORT_ISFR		0xa0
-#define PORT_DFER		0xc0
-#define PORT_DFCR		0xc4
-#define PORT_DFWR		0xc8
-
-#define PORT_INT_OFF		0x0
-#define PORT_INT_LOGIC_ZERO	0x8
-#define PORT_INT_RISING_EDGE	0x9
-#define PORT_INT_FALLING_EDGE	0xa
-#define PORT_INT_EITHER_EDGE	0xb
-#define PORT_INT_LOGIC_ONE	0xc
-
 static const struct of_device_id vf610_gpio_dt_ids[] = {
 	{ .compatible = "fsl,vf610-gpio" },
 	{ /* sentinel */ }
-- 
2.5.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

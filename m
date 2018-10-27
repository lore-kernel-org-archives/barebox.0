Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gGDSb-0000ms-9U
 for barebox@lists.infradead.org; Sat, 27 Oct 2018 01:32:37 +0000
Received: by mail-pg1-x543.google.com with SMTP id o14-v6so1293589pgv.7
 for <barebox@lists.infradead.org>; Fri, 26 Oct 2018 18:32:06 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 26 Oct 2018 18:31:47 -0700
Message-Id: <20181027013157.23135-2-andrew.smirnov@gmail.com>
In-Reply-To: <20181027013157.23135-1-andrew.smirnov@gmail.com>
References: <20181027013157.23135-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 01/11] gpio: VF610: Propagate error code of gpiochip_add() up
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Propagate error code of gpiochip_add() up the call chain. This won't
do any meaningful cleanup, but at least it will make problems
noticable.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/gpio/gpio-vf610.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/gpio/gpio-vf610.c b/drivers/gpio/gpio-vf610.c
index 2aff62be5..9ac838f3b 100644
--- a/drivers/gpio/gpio-vf610.c
+++ b/drivers/gpio/gpio-vf610.c
@@ -142,9 +142,8 @@ static int vf610_gpio_probe(struct device_d *dev)
 
 	port->chip.base *= VF610_GPIO_PER_PORT;
 	port->chip.dev = dev;
-	gpiochip_add(&port->chip);
 
-	return 0;
+	return gpiochip_add(&port->chip);
 
 free_port:
 	free(port);
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j43g7-0000oY-MU
 for barebox@lists.infradead.org; Tue, 18 Feb 2020 14:16:49 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 18 Feb 2020 15:16:34 +0100
Message-Id: <20200218141636.6486-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 1/3] gpiolib: use correct format specifier for ptrdiff_t
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

C99 specifies the 't' length modifier type for pointer difference.
barebox vsnprintf supports it, thus use it.

We are guaranteed sizeof(long) == sizeof(void *) in barebox, so this
doesn't make a difference in practice except that it silences
following GCC warning:

  ./drivers/gpio/gpiolib.c: In function 'gpioinfo_request':
  ./include/printk.h:77:43: warning: format '%ld' expects argument of
     type 'long int', but argument 3 has type 'int' [-Wformat=]
  ...
  ./barebox-stm32/drivers/gpio/gpiolib.c:89:3: note: in expansion of macro 'pr_err'
     89 |   pr_err("_gpio_request: gpio-%ld (%s) status %d\n",

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/gpio/gpiolib.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpio/gpiolib.c b/drivers/gpio/gpiolib.c
index cfa77360b3d2..27674af54caa 100644
--- a/drivers/gpio/gpiolib.c
+++ b/drivers/gpio/gpiolib.c
@@ -86,7 +86,7 @@ static int gpioinfo_request(struct gpio_info *gi, const char *label)
 
 done:
 	if (ret)
-		pr_err("_gpio_request: gpio-%ld (%s) status %d\n",
+		pr_err("_gpio_request: gpio-%td (%s) status %d\n",
 		       gi - gpio_desc, label ? : "?", ret);
 
 	return ret;
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

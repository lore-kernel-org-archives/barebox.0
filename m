Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x229.google.com ([2a00:1450:4013:c00::229])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vf8Wv-0000gM-8C
 for barebox@lists.infradead.org; Sat, 09 Nov 2013 13:24:50 +0000
Received: by mail-ee0-f41.google.com with SMTP id e53so1558733eek.28
 for <barebox@lists.infradead.org>; Sat, 09 Nov 2013 05:24:18 -0800 (PST)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Sat,  9 Nov 2013 14:24:08 +0100
Message-Id: <1384003450-21001-4-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1384003450-21001-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1384003450-21001-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 3/4] gpiolib: make gpiolib command more verbose
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

This adds some more printf information to gpiolib command, like the
gpiochip handling a specific gpio. Also, current direction and value
of the gpio are printed, if the gpiochip provides the corresponding
callbacks.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: barebox@lists.infradead.org
---
 drivers/gpio/gpiolib.c | 24 +++++++++++++++++++++---
 1 file changed, 21 insertions(+), 3 deletions(-)

diff --git a/drivers/gpio/gpiolib.c b/drivers/gpio/gpiolib.c
index ca6e8ad..c12ebe6 100644
--- a/drivers/gpio/gpiolib.c
+++ b/drivers/gpio/gpiolib.c
@@ -228,16 +228,34 @@ static int do_gpiolib(int argc, char *argv[])
 	int i;
 
 	printf("gpiolib: gpio lists\n");
-	printf("%*crequested  label\n", 11, ' ');
 
 	for (i = 0; i < ARCH_NR_GPIOS; i++) {
 		struct gpio_info *gi = &gpio_desc[i];
+		int val = -1, dir = -1;
 
 		if (!gi->chip)
 			continue;
 
-		printf("gpio %*d: %*s  %s\n", 4,
-			i, 9, gi->requested ? "true" : "false",
+		/* print chip information and header on first gpio */
+		if (gi->chip->base == i) {
+			printf("\ngpios %u-%u, chip %s:\n",
+				gi->chip->base,
+				gi->chip->base + gi->chip->ngpio,
+				gi->chip->dev->name);
+			printf("%*cdir val requested  label\n", 13, ' ');
+		}
+
+		if (gi->chip->ops->get_direction)
+			dir = gi->chip->ops->get_direction(gi->chip,
+						i - gi->chip->base);
+		if (gi->chip->ops->get)
+			val = gi->chip->ops->get(gi->chip,
+						i - gi->chip->base);
+
+		printf("  gpio %*d: %*s %*s %*s  %s\n", 4, i,
+			3, (dir < 0) ? "unk" : ((dir == GPIO_DIR_IN) ? "in" : "out"),
+			3, (val < 0) ? "unk" : ((val == 0) ? "lo" : "hi"),
+			9, gi->requested ? "true" : "false",
 			gi->label ? gi->label : "");
 	}
 
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

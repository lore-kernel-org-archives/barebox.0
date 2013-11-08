Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp33.i.mail.ru ([94.100.177.93])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VeqYm-000241-1K
 for barebox@lists.infradead.org; Fri, 08 Nov 2013 18:13:33 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Fri,  8 Nov 2013 22:12:52 +0400
Message-Id: <1383934379-27100-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 1/6] ARM: at91: Fix signed/unsigned arguments for printf
To: barebox@lists.infradead.org

"%d" in format string requires a signed integer.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/mach-at91/gpio.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-at91/gpio.c b/arch/arm/mach-at91/gpio.c
index b111373..91de85d 100644
--- a/arch/arm/mach-at91/gpio.c
+++ b/arch/arm/mach-at91/gpio.c
@@ -438,7 +438,7 @@ static void at91mux_dump_pio_config(unsigned bank, unsigned pin)
 	void __iomem *pio = at91_gpio->regbase;
 	u32 div;
 
-	printf("pio%c%d configuration\n\n", bank + 'A', pin);
+	printf("pio%c%u configuration\n\n", bank + 'A', pin);
 
 	at91mux_printf_mode(bank, pin);
 	printf("\n");
@@ -499,7 +499,7 @@ static int do_at91mux(int argc, char *argv[])
 	}
 
 	if (pin >= 32) {
-		printf("pin %d >= supported %d pins\n", pin, 32);
+		printf("pin %u >= supported %d pins\n", pin, 32);
 		return 1;
 	}
 
-- 
1.8.1.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

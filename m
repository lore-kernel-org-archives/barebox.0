Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from proxima.lasnet.de ([78.47.171.185])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YygLR-000889-Sp
 for barebox@lists.infradead.org; Sat, 30 May 2015 12:58:34 +0000
Received: from polaris.fritz.box (f053152068.adsl.alicedsl.de [78.53.152.68])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: polaris@lasnet.de)
 by proxima.lasnet.de (Postfix) with ESMTPSA id 9435AC188F
 for <barebox@lists.infradead.org>; Sat, 30 May 2015 14:58:03 +0200 (CEST)
From: Jan Luebbe <jluebbe@debian.org>
Date: Sat, 30 May 2015 14:57:49 +0200
Message-Id: <1432990669-20515-1-git-send-email-jluebbe@debian.org>
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
Subject: [PATCH] gpio-davinci: gpio get should return 0 or 1
To: barebox@lists.infradead.org

Returning other values causes problems for client code which wants to
perform calculations with the returned value.

Signed-off-by: Jan Luebbe <jluebbe@debian.org>
---
 drivers/gpio/gpio-davinci.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpio/gpio-davinci.c b/drivers/gpio/gpio-davinci.c
index 2b1d82b..61c6e7e 100644
--- a/drivers/gpio/gpio-davinci.c
+++ b/drivers/gpio/gpio-davinci.c
@@ -117,7 +117,7 @@ static int davinci_gpio_get(struct gpio_chip *chip, unsigned offset)
 	struct davinci_gpio_controller *d = chip2controller(chip);
 	struct davinci_gpio_regs __iomem *g = d->regs;
 
-	return (1 << offset) & readl_relaxed(&g->in_data);
+	return ((1 << offset) & readl_relaxed(&g->in_data)) ? 1 : 0;
 }
 
 /*
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

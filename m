Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp29.i.mail.ru ([94.100.177.89])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WX8ZU-0004yJ-Do
 for barebox@lists.infradead.org; Mon, 07 Apr 2014 12:22:41 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Mon,  7 Apr 2014 16:22:15 +0400
Message-Id: <1396873335-22946-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH] spi: i.MX: Fix direction for CS GPIOs
To: barebox@lists.infradead.org

Direction for CS GPIOs (for some targets) is undefined.
This patch fixes this issue.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 drivers/spi/imx_spi.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/spi/imx_spi.c b/drivers/spi/imx_spi.c
index 6675729..45461bd 100644
--- a/drivers/spi/imx_spi.c
+++ b/drivers/spi/imx_spi.c
@@ -167,7 +167,7 @@ static void cspi_0_0_chipselect(struct spi_device *spi, int is_active)
 
 	if (!is_active) {
 		if (gpio >= 0)
-			gpio_set_value(gpio, !cs);
+			gpio_direction_output(gpio, !cs);
 		return;
 	}
 
@@ -253,7 +253,7 @@ static void cspi_0_7_chipselect(struct spi_device *spi, int is_active)
 
 	if (!is_active) {
 		if (gpio >= 0)
-			gpio_set_value(gpio, !cs);
+			gpio_direction_output(gpio, !cs);
 		return;
 	}
 
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

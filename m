Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFBbL-0007pt-Ou
 for barebox@lists.infradead.org; Tue, 01 Oct 2019 06:25:37 +0000
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Tue,  1 Oct 2019 08:25:18 +0200
Message-Id: <20191001062518.1123-1-ahmad@a3f.at>
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
Subject: [PATCH] gpio: da9062: fix uninitialized variable read
To: barebox@lists.infradead.org
Cc: mfe@pengutronix.de

In cases where reg < 0x100, WARN_ON will evaluate the uninitialized
client variable. Fix this by initializing it to NULL.
This way, the function will always early-return if the reg is < 0x100.

Fixes: 17a43d293c ("gpio: add DA9062 MFD gpio support")
Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 drivers/gpio/gpio-da9062.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpio/gpio-da9062.c b/drivers/gpio/gpio-da9062.c
index 2f018166ccc5..2d4bde7508be 100644
--- a/drivers/gpio/gpio-da9062.c
+++ b/drivers/gpio/gpio-da9062.c
@@ -37,7 +37,7 @@ static inline struct da9062_gpio *to_da9062(struct gpio_chip *chip)
 static int gpio_da9062_reg_update(struct da9062_gpio *priv, unsigned int reg,
 				  uint8_t mask, uint8_t val)
 {
-	struct i2c_client *client;
+	struct i2c_client *client = NULL;
 	uint8_t tmp;
 	int ret;
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

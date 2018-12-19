Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp38.i.mail.ru ([94.100.177.98])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gZWq8-0004zX-12
 for barebox@lists.infradead.org; Wed, 19 Dec 2018 08:04:28 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Wed, 19 Dec 2018 11:03:56 +0300
Message-Id: <20181219080403.13737-3-shc_work@mail.ru>
In-Reply-To: <20181219080403.13737-1-shc_work@mail.ru>
References: <20181219080403.13737-1-shc_work@mail.ru>
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
Subject: [PATCH 03/10] serial: clps711x: Use DIV_ROUND_CLOSEST() for baudrate
 calculation
To: barebox@lists.infradead.org

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 drivers/serial/serial_clps711x.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/serial/serial_clps711x.c b/drivers/serial/serial_clps711x.c
index c21ca6510..863ba7dd3 100644
--- a/drivers/serial/serial_clps711x.c
+++ b/drivers/serial/serial_clps711x.c
@@ -46,7 +46,7 @@ static int clps711x_setbaudrate(struct console_device *cdev, int baudrate)
 	int divisor;
 	u32 tmp;
 
-	divisor = (clk_get_rate(s->uart_clk) / 16) / baudrate;
+	divisor = DIV_ROUND_CLOSEST(clk_get_rate(s->uart_clk), baudrate * 16);
 
 	tmp = readl(s->base + UBRLCR) & ~UBRLCR_BAUD_MASK;
 	tmp |= divisor - 1;
-- 
2.13.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

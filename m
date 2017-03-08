Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x241.google.com ([2607:f8b0:400e:c05::241])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cljmK-0006en-5X
 for barebox@lists.infradead.org; Wed, 08 Mar 2017 22:09:58 +0000
Received: by mail-pg0-x241.google.com with SMTP id g2so150623pge.2
 for <barebox@lists.infradead.org>; Wed, 08 Mar 2017 14:09:34 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed,  8 Mar 2017 14:08:59 -0800
Message-Id: <20170308220909.4560-11-andrew.smirnov@gmail.com>
In-Reply-To: <20170308220909.4560-1-andrew.smirnov@gmail.com>
References: <20170308220909.4560-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 10/20] serial: atmel: Check result of clk_get()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/serial/atmel.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/serial/atmel.c b/drivers/serial/atmel.c
index 4e4624e..ab94fd2 100644
--- a/drivers/serial/atmel.c
+++ b/drivers/serial/atmel.c
@@ -403,6 +403,11 @@ static int atmel_serial_init_port(struct console_device *cdev)
 		return -ENOENT;
 
 	uart->clk = clk_get(dev, "usart");
+	if (IS_ERR(uart->clk)) {
+		dev_err(dev, "Failed to get 'usart' clock\n");
+		return PTR_ERR(uart->clk);
+	}
+
 	clk_enable(uart->clk);
 	uart->uartclk = clk_get_rate(uart->clk);
 
-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

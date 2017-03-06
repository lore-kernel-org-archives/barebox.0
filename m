Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x243.google.com ([2607:f8b0:400e:c05::243])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cl1WW-0007am-9Z
 for barebox@lists.infradead.org; Mon, 06 Mar 2017 22:54:39 +0000
Received: by mail-pg0-x243.google.com with SMTP id 77so8239530pgc.0
 for <barebox@lists.infradead.org>; Mon, 06 Mar 2017 14:54:18 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon,  6 Mar 2017 14:53:18 -0800
Message-Id: <20170306225356.31475-8-andrew.smirnov@gmail.com>
In-Reply-To: <20170306225356.31475-1-andrew.smirnov@gmail.com>
References: <20170306225356.31475-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 07/45] serial: atmel: Check result of clk_get()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/serial/atmel.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/serial/atmel.c b/drivers/serial/atmel.c
index 4e4624e..d47b926 100644
--- a/drivers/serial/atmel.c
+++ b/drivers/serial/atmel.c
@@ -403,6 +403,11 @@ static int atmel_serial_init_port(struct console_device *cdev)
 		return -ENOENT;
 
 	uart->clk = clk_get(dev, "usart");
+	if (IS_ERR(uart->clk)) {
+		dev_err(dev, "Faield to get 'usart' clock\n");
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

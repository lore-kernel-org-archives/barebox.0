Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x242.google.com ([2607:f8b0:400e:c00::242])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cl1WZ-0007an-FR
 for barebox@lists.infradead.org; Mon, 06 Mar 2017 22:54:42 +0000
Received: by mail-pf0-x242.google.com with SMTP id v190so8047615pfb.0
 for <barebox@lists.infradead.org>; Mon, 06 Mar 2017 14:54:19 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon,  6 Mar 2017 14:53:19 -0800
Message-Id: <20170306225356.31475-9-andrew.smirnov@gmail.com>
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
Subject: [PATCH 08/45] serial: atmel: Add DT compatibility table
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/serial/atmel.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/serial/atmel.c b/drivers/serial/atmel.c
index d47b926..0c174cd 100644
--- a/drivers/serial/atmel.c
+++ b/drivers/serial/atmel.c
@@ -446,8 +446,15 @@ static int atmel_serial_probe(struct device_d *dev)
 	return 0;
 }
 
+static const struct of_device_id __maybe_unused atmel_serial_dt_ids[] = {
+	{ .compatible = "atmel,at91rm9200-usart" },
+	{ .compatible = "atmel,at91sam9260-usart" },
+	{ /* sentinel */ }
+};
+
 static struct driver_d atmel_serial_driver = {
         .name  = "atmel_usart",
         .probe = atmel_serial_probe,
+	.of_compatible = DRV_OF_COMPAT(atmel_serial_dt_ids),
 };
 console_platform_driver(atmel_serial_driver);
-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h3c6V-000216-Lv
 for barebox@lists.infradead.org; Tue, 12 Mar 2019 07:45:41 +0000
Received: by mail-pg1-x543.google.com with SMTP id v12so1203286pgq.1
 for <barebox@lists.infradead.org>; Tue, 12 Mar 2019 00:45:39 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 12 Mar 2019 00:45:25 -0700
Message-Id: <20190312074525.6153-4-andrew.smirnov@gmail.com>
In-Reply-To: <20190312074525.6153-1-andrew.smirnov@gmail.com>
References: <20190312074525.6153-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 3/3] serial: lpuart: Add code to export "earlycon" setting
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Add code to generate appropriate "earlycon" setting that can be passed
to Linux kernel.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/serial/serial_lpuart.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/serial/serial_lpuart.c b/drivers/serial/serial_lpuart.c
index 246fc3d3a..40789d720 100644
--- a/drivers/serial/serial_lpuart.c
+++ b/drivers/serial/serial_lpuart.c
@@ -172,6 +172,7 @@ static int lpuart_serial_probe(struct device_d *dev)
 	}
 
 	cdev->linux_console_name = "ttyLP";
+	cdev->linux_bootconsole_name = basprintf("lpuart,0x%p", lpuart->base);
 
 	lpuart_setup(lpuart->base, clk_get_rate(lpuart->clk));
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

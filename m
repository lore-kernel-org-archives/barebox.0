Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heBzc-0006s1-EW
 for barebox@lists.infradead.org; Fri, 21 Jun 2019 05:21:45 +0000
Received: by mail-lj1-x241.google.com with SMTP id 131so4821908ljf.4
 for <barebox@lists.infradead.org>; Thu, 20 Jun 2019 22:21:44 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri, 21 Jun 2019 08:21:37 +0300
Message-Id: <20190621052138.12246-4-antonynpavlov@gmail.com>
In-Reply-To: <20190621052138.12246-1-antonynpavlov@gmail.com>
References: <20190621052138.12246-1-antonynpavlov@gmail.com>
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
Subject: [PATCH 3/4] serial: ar933x: set linux_console_name
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/serial/serial_ar933x.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/serial/serial_ar933x.c b/drivers/serial/serial_ar933x.c
index 676b9fadf8..dda604652b 100644
--- a/drivers/serial/serial_ar933x.c
+++ b/drivers/serial/serial_ar933x.c
@@ -175,6 +175,7 @@ static int ar933x_serial_probe(struct device_d *dev)
 	cdev->putc = ar933x_serial_putc;
 	cdev->getc = ar933x_serial_getc;
 	cdev->setbrg = ar933x_serial_setbaudrate;
+	cdev->linux_console_name = "ttyATH";
 
 	priv->clk = clk_get(dev, NULL);
 	if (IS_ERR(priv->clk)) {
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

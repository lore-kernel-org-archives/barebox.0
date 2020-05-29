Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeeTi-0000x4-Ks
 for barebox@lists.infradead.org; Fri, 29 May 2020 12:51:16 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mgr@pengutronix.de>) id 1jeeTf-0000M9-6k
 for barebox@lists.infradead.org; Fri, 29 May 2020 14:51:11 +0200
Received: from mgr by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mgr@pengutronix.de>) id 1jeeTe-0002Ae-Ul
 for barebox@lists.infradead.org; Fri, 29 May 2020 14:51:10 +0200
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Date: Fri, 29 May 2020 14:51:02 +0200
Message-Id: <20200529125102.8070-1-m.grzeschik@pengutronix.de>
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
Subject: [PATCH] serial: amba-pl011: set linux_console_name
To: barebox@lists.infradead.org

We set the linux_console_name so for this uart the
linux.bootargs.console will be properly set.

Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
 drivers/serial/amba-pl011.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/serial/amba-pl011.c b/drivers/serial/amba-pl011.c
index 0751c52513..865ecdddb2 100644
--- a/drivers/serial/amba-pl011.c
+++ b/drivers/serial/amba-pl011.c
@@ -204,6 +204,7 @@ static int pl011_probe(struct amba_device *dev, const struct amba_id *id)
 	cdev->putc = pl011_putc;
 	cdev->getc = pl011_getc;
 	cdev->setbrg = pl011_setbaudrate;
+	cdev->linux_console_name = "ttyAMA";
 
 	pl011_init_port(cdev);
 
-- 
2.26.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

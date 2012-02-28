Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp6-g21.free.fr ([2a01:e0c:1:1599::15])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1S2N9a-00023t-C8
 for barebox@lists.infradead.org; Tue, 28 Feb 2012 13:31:44 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
Date: Tue, 28 Feb 2012 14:31:27 +0100
Message-Id: <1330435887-1556-1-git-send-email-robert.jarzmik@free.fr>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] drivers/serial: trivial regression fix
To: barebox@lists.infradead.org

Fix commit "serial pxa: fix unregister", which forgot a
semicolon, breaking serial_pxa compilation.

Signed-off-by: Robert Jarzmik <robert.jarzmik@free.fr>
---
 drivers/serial/serial_pxa.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/drivers/serial/serial_pxa.c b/drivers/serial/serial_pxa.c
index 1365413..adfbe82 100644
--- a/drivers/serial/serial_pxa.c
+++ b/drivers/serial/serial_pxa.c
@@ -168,7 +168,7 @@ static int pxa_serial_probe(struct device_d *dev)
 	cdev = &priv->cdev;
 	priv->regs = dev_request_mem_region(dev, 0);
 
-	dev->priv = priv
+	dev->priv = priv;
 	cdev->dev = dev;
 	cdev->f_caps = CONSOLE_STDIN | CONSOLE_STDOUT | CONSOLE_STDERR;
 	cdev->tstc = pxa_serial_tstc;
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

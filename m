Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x235.google.com ([2a00:1450:4010:c03::235])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V1efN-0006hs-Mq
 for barebox@lists.infradead.org; Tue, 23 Jul 2013 15:38:22 +0000
Received: by mail-la0-f53.google.com with SMTP id fj20so4630676lab.12
 for <barebox@lists.infradead.org>; Tue, 23 Jul 2013 08:37:59 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue, 23 Jul 2013 19:28:02 +0400
Message-Id: <1374593282-3320-3-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1374593282-3320-1-git-send-email-antonynpavlov@gmail.com>
References: <1374593282-3320-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC 2/2] serial: ns16550: fill cdev just-in-time
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/serial/serial_ns16550.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/serial/serial_ns16550.c b/drivers/serial/serial_ns16550.c
index 6a3c865..5899d57 100644
--- a/drivers/serial/serial_ns16550.c
+++ b/drivers/serial/serial_ns16550.c
@@ -266,8 +266,6 @@ static int ns16550_probe(struct device_d *dev)
 	else
 		ns16550_probe_dt(dev, priv);
 
-	cdev = &priv->cdev;
-
 	if (!plat || !plat->clock) {
 		priv->clk = clk_get(dev, NULL);
 		if (IS_ERR(priv->clk)) {
@@ -291,6 +289,7 @@ static int ns16550_probe(struct device_d *dev)
 
 	priv->access_width = dev->resource[0].flags & IORESOURCE_MEM_TYPE_MASK;
 
+	cdev = &priv->cdev;
 	cdev->dev = dev;
 	cdev->f_caps = CONSOLE_STDIN | CONSOLE_STDOUT | CONSOLE_STDERR;
 	cdev->tstc = ns16550_tstc;
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

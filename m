Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V1WGv-0008GD-KB
 for barebox@lists.infradead.org; Tue, 23 Jul 2013 06:40:34 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 23 Jul 2013 08:40:08 +0200
Message-Id: <1374561610-686-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1374561610-686-1-git-send-email-s.hauer@pengutronix.de>
References: <1374561610-686-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/6] serial: ns16550: remove f_caps from platform_data
To: barebox@lists.infradead.org

So far no user had the need to set the flags, so just remove them
from platform data.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/serial/serial_ns16550.c | 5 +----
 include/ns16550.h               | 4 ----
 2 files changed, 1 insertion(+), 8 deletions(-)

diff --git a/drivers/serial/serial_ns16550.c b/drivers/serial/serial_ns16550.c
index f9a17f4..dd50fc5 100644
--- a/drivers/serial/serial_ns16550.c
+++ b/drivers/serial/serial_ns16550.c
@@ -257,10 +257,7 @@ static int ns16550_probe(struct device_d *dev)
 	priv->access_width = dev->resource[0].flags & IORESOURCE_MEM_TYPE_MASK;
 
 	cdev->dev = dev;
-	if (plat->f_caps)
-		cdev->f_caps = plat->f_caps;
-	else
-		cdev->f_caps = CONSOLE_STDIN | CONSOLE_STDOUT | CONSOLE_STDERR;
+	cdev->f_caps = CONSOLE_STDIN | CONSOLE_STDOUT | CONSOLE_STDERR;
 	cdev->tstc = ns16550_tstc;
 	cdev->putc = ns16550_putc;
 	cdev->getc = ns16550_getc;
diff --git a/include/ns16550.h b/include/ns16550.h
index 27cb4cf..36aa5ff 100644
--- a/include/ns16550.h
+++ b/include/ns16550.h
@@ -33,10 +33,6 @@
 struct NS16550_plat {
 	/** Clock speed */
 	unsigned int clock;
-	/** Console capabilities:
-	 * CONSOLE_STDIN | CONSOLE_STDOUT | CONSOLE_STDERR @see console.h
-	 */
-	unsigned char f_caps;
 	/**
 	 * register read access capability
 	 */
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

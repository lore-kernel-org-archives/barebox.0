Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1S75lV-0001W7-4d
 for barebox@lists.infradead.org; Mon, 12 Mar 2012 13:58:22 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:6f8:1178:4:5054:ff:fe8d:eefb] helo=localhost)
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1S75lL-0007uE-V4
 for barebox@lists.infradead.org; Mon, 12 Mar 2012 14:58:12 +0100
From: Juergen Beisert <jbe@pengutronix.de>
Date: Mon, 12 Mar 2012 14:57:59 +0100
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201203121457.59975.jbe@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: serial S3: fix local structure malloc
To: barebox@lists.infradead.org

Patch 2c5404651091e985c9009aa417d80fdaf50d7a68 introduces a private structure
for the S3C based UARTs but still reserves the memory for the smaller
structure which fails at runtime.
    
Signed-off-by: Juergen Beisert <jbe@pengutronix.de>

diff --git a/drivers/serial/serial_s3c.c b/drivers/serial/serial_s3c.c
index a5fd4ee..2bdc1df 100644
--- a/drivers/serial/serial_s3c.c
+++ b/drivers/serial/serial_s3c.c
@@ -153,7 +153,7 @@ static int s3c_serial_probe(struct device_d *dev)
 	struct s3c_uart *priv;
 	struct console_device *cdev;
 
-	priv = xzalloc(sizeof(struct console_device));
+	priv = xzalloc(sizeof(struct s3c_uart));
 	cdev = &priv->cdev;
 	priv->regs = dev_request_mem_region(dev, 0);
 	dev->priv = priv;

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | Phone: +49-5121-206917-5128 |
Vertretung Sued/Muenchen, Germany             | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686              | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Pq1zF-0007tu-9K
	for barebox@lists.infradead.org; Thu, 17 Feb 2011 11:25:30 +0000
Received: from gallifrey.ext.pengutronix.de
	([2001:6f8:1178:4:5054:ff:fe8d:eefb] helo=localhost)
	by metis.ext.pengutronix.de with esmtp (Exim 4.72)
	(envelope-from <jbe@pengutronix.de>) id 1Pq1zD-0005qb-QG
	for barebox@lists.infradead.org; Thu, 17 Feb 2011 12:25:27 +0100
From: Juergen Beisert <jbe@pengutronix.de>
Date: Thu, 17 Feb 2011 12:23:24 +0100
References: <201102171140.26674.jbe@pengutronix.de>
In-Reply-To: <201102171140.26674.jbe@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201102171223.24921.jbe@pengutronix.de>
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
Subject: [PATCH v2]  Fix end of expression char (some lines forgotten in v1)
To: barebox@lists.infradead.org

Its not a bug fix, just a clean up.

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>

---
 drivers/net/fec_imx.c |   14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

Index: barebox-2011.02.0/drivers/net/fec_imx.c
===================================================================
--- barebox-2011.02.0.orig/drivers/net/fec_imx.c
+++ barebox-2011.02.0/drivers/net/fec_imx.c
@@ -605,13 +605,13 @@ static int fec_probe(struct device_d *de
 	dev->type_data = edev;
 	fec = (struct fec_priv *)xzalloc(sizeof(*fec));
 	edev->priv = fec;
-	edev->open = fec_open,
-	edev->init = fec_init,
-	edev->send = fec_send,
-	edev->recv = fec_recv,
-	edev->halt = fec_halt,
-	edev->get_ethaddr = fec_get_hwaddr,
-	edev->set_ethaddr = fec_set_hwaddr,
+	edev->open = fec_open;
+	edev->init = fec_init;
+	edev->send = fec_send;
+	edev->recv = fec_recv;
+	edev->halt = fec_halt;
+	edev->get_ethaddr = fec_get_hwaddr;
+	edev->set_ethaddr = fec_set_hwaddr;
 
 	fec->regs = (void *)dev->map_base;
 


-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | Phone: +49-8766-939 228     |
Vertretung Sued/Muenchen, Germany             | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686              | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

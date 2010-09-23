Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 70.mail-out.ovh.net ([91.121.185.63])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1Oys7I-0002nH-Ob
	for barebox@lists.infradead.org; Thu, 23 Sep 2010 20:10:05 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu, 23 Sep 2010 22:08:34 +0200
Message-Id: <1285272515-26680-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/2] netconsole: remove non-needed setbaudrate
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 net/netconsole.c |    6 ------
 1 files changed, 0 insertions(+), 6 deletions(-)

diff --git a/net/netconsole.c b/net/netconsole.c
index 07e6a6c..fda524e 100644
--- a/net/netconsole.c
+++ b/net/netconsole.c
@@ -124,11 +124,6 @@ static void nc_putc(struct console_device *cdev, char c)
 	priv->busy = 0;
 }
 
-static int nc_setbaudrate(struct console_device *cdev, int baudrate)
-{
-	return 0;
-}
-
 static int nc_port_set(struct device_d *dev, struct param_d *param,
 		const char *val)
 {
@@ -185,7 +180,6 @@ static int netconsole_init(void)
 	cdev->tstc = nc_tstc;
 	cdev->putc = nc_putc;
 	cdev->getc = nc_getc;
-	cdev->setbrg = nc_setbaudrate;
 
 	g_priv = priv;
 
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OzYTA-0002sC-RD
	for barebox@lists.infradead.org; Sat, 25 Sep 2010 17:23:29 +0000
Received: from gallifrey.ext.pengutronix.de
	([2001:6f8:1178:4:5054:ff:fe8d:eefb] helo=localhost)
	by metis.ext.pengutronix.de with esmtp (Exim 4.71)
	(envelope-from <jbe@pengutronix.de>) id 1OzYT4-0000b5-EH
	for barebox@lists.infradead.org; Sat, 25 Sep 2010 19:23:22 +0200
From: Juergen Beisert <jbe@pengutronix.de>
Date: Sat, 25 Sep 2010 19:21:59 +0200
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201009251921.59904.jbe@pengutronix.de>
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
Subject: [PATCH] Fix default baudrate setting
To: barebox@lists.infradead.org

commit 604c99039f873952e252a5933309fc8e59b603db
Author: Juergen Beisert <jbe@pengutronix.de>
Date:   Sat Sep 25 19:18:25 2010 +0200

    Fix default baudrate setting
    
    The menu entry to set the default baudrate (CONFIG_BAUDRATE) makes no sense,
    as long as its content is not used. This patch makes barebox using the setting
    again.
    
    Signed-off-by: Juergen Beisert <jbe@pengutronix.de>

diff --git a/common/console.c b/common/console.c
index 204a08c..71fa88f 100644
--- a/common/console.c
+++ b/common/console.c
@@ -140,9 +140,12 @@ int console_register(struct console_device *newcdev)
 	dev->type_data = newcdev;
 	register_device(dev);
 
+#define xstr(s) str(s)
+#define str(s) #s
+
 	if (newcdev->setbrg) {
 		dev_add_param(dev, "baudrate", console_baudrate_set, NULL, 0);
-		dev_set_param(dev, "baudrate", "115200");
+		dev_set_param(dev, "baudrate", xstr(CONFIG_BAUDRATE));
 	}
 
 	dev_add_param(dev, "active", console_std_set, NULL, 0);

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | Phone: +49-8766-939 228     |
Vertretung Sued/Muenchen, Germany             | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686              | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

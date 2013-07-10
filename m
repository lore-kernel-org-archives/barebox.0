Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x232.google.com ([2a00:1450:4010:c04::232])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UwrRA-0007gQ-9k
 for barebox@lists.infradead.org; Wed, 10 Jul 2013 10:15:52 +0000
Received: by mail-lb0-f178.google.com with SMTP id y6so5474819lbh.37
 for <barebox@lists.infradead.org>; Wed, 10 Jul 2013 03:15:30 -0700 (PDT)
From: Alexey Galakhov <agalakhov@gmail.com>
Date: Wed, 10 Jul 2013 16:15:10 +0600
Message-Id: <1373451310-8131-2-git-send-email-agalakhov@gmail.com>
In-Reply-To: <1373451310-8131-1-git-send-email-agalakhov@gmail.com>
References: <20130710090131.GE516@pengutronix.de>
 <1373451310-8131-1-git-send-email-agalakhov@gmail.com>
In-Reply-To: <20130710090131.GE516@pengutronix.de>
References: <20130710090131.GE516@pengutronix.de>
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
Subject: [PATCH 2/2] Force set console baudrate at enable time
To: barebox@lists.infradead.org
Cc: Alexey Galakhov <agalakhov@gmail.com>

Signed-off-by: Alexey Galakhov <agalakhov@gmail.com>
---
 common/console.c |   11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/common/console.c b/common/console.c
index a0a06f6..28941d6 100644
--- a/common/console.c
+++ b/common/console.c
@@ -80,6 +80,12 @@ static int console_std_set(struct device_d *dev, struct param_d *param,
 		flag |= CONSOLE_STDERR;
 	}
 
+	if (flag && !cdev->f_active) {
+		/* The device is being activated, set its baudrate */
+		if (cdev->setbrg)
+			cdev->setbrg(cdev, cdev->baudrate);
+	}
+
 	active[i] = 0;
 	cdev->f_active = flag;
 
@@ -104,6 +110,8 @@ static int console_baudrate_set(struct param_d *param, void *priv)
 	struct console_device *cdev = priv;
 	unsigned char c;
 
+	/* If the device is already active, change its baudrate.
+	The baudrate of an inactive device will be set at activation time. */
 	if (cdev->f_active) {
 		printf("## Switch baudrate to %d bps and press ENTER ...\n",
 			cdev->baudrate);
@@ -113,8 +121,7 @@ static int console_baudrate_set(struct param_d *param, void *priv)
 		do {
 			c = getc();
 		} while (c != '\r' && c != '\n');
-	} else
-		cdev->setbrg(cdev, cdev->baudrate);
+	}
 
 	return 0;
 }
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

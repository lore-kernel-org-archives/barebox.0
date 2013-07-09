Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x233.google.com ([2a00:1450:4010:c03::233])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UwZqN-000359-Hq
 for barebox@lists.infradead.org; Tue, 09 Jul 2013 15:28:44 +0000
Received: by mail-la0-f51.google.com with SMTP id fq12so4893635lab.10
 for <barebox@lists.infradead.org>; Tue, 09 Jul 2013 08:28:21 -0700 (PDT)
From: Alexey Galakhov <agalakhov@gmail.com>
Date: Tue,  9 Jul 2013 21:22:10 +0600
Message-Id: <1373383330-13126-1-git-send-email-agalakhov@gmail.com>
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
Subject: [PATCH] Force set console baudrate
To: barebox@lists.infradead.org
Cc: Alexey Galakhov <agalakhov@gmail.com>

Most serial drivers require setbrg() to be called at least once. Call them
just after the device has been added.

Signed-off-by: Alexey Galakhov <agalakhov@gmail.com>
---
 common/console.c |    1 +
 1 file changed, 1 insertion(+)

diff --git a/common/console.c b/common/console.c
index a0a06f6..abf5322 100644
--- a/common/console.c
+++ b/common/console.c
@@ -147,6 +147,7 @@ int console_register(struct console_device *newcdev)
 		newcdev->baudrate = CONFIG_BAUDRATE;
 		dev_add_param_int(dev, "baudrate", console_baudrate_set,
 			NULL, &newcdev->baudrate, "%u", newcdev);
+		newcdev->setbrg(newcdev, newcdev->baudrate);
 	}
 
 	dev_add_param(dev, "active", console_std_set, NULL, 0);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

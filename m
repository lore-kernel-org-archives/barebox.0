Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x234.google.com ([2a00:1450:4010:c03::234])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UwrR9-0007gI-9B
 for barebox@lists.infradead.org; Wed, 10 Jul 2013 10:15:51 +0000
Received: by mail-la0-f52.google.com with SMTP id fo12so5496300lab.25
 for <barebox@lists.infradead.org>; Wed, 10 Jul 2013 03:15:29 -0700 (PDT)
From: Alexey Galakhov <agalakhov@gmail.com>
Date: Wed, 10 Jul 2013 16:15:09 +0600
Message-Id: <1373451310-8131-1-git-send-email-agalakhov@gmail.com>
In-Reply-To: <20130710090131.GE516@pengutronix.de>
References: <20130710090131.GE516@pengutronix.de>
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
Subject: [PATCH 1/2] Revert "Force set console baudrate"
To: barebox@lists.infradead.org
Cc: Alexey Galakhov <agalakhov@gmail.com>

This reverts commit 564414b6db90fabb2c1f529454f153badd75d5d5.
---
 common/console.c |    1 -
 1 file changed, 1 deletion(-)

diff --git a/common/console.c b/common/console.c
index abf5322..a0a06f6 100644
--- a/common/console.c
+++ b/common/console.c
@@ -147,7 +147,6 @@ int console_register(struct console_device *newcdev)
 		newcdev->baudrate = CONFIG_BAUDRATE;
 		dev_add_param_int(dev, "baudrate", console_baudrate_set,
 			NULL, &newcdev->baudrate, "%u", newcdev);
-		newcdev->setbrg(newcdev, newcdev->baudrate);
 	}
 
 	dev_add_param(dev, "active", console_std_set, NULL, 0);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

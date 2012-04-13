Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SIhwH-0007Qh-K2
 for barebox@lists.infradead.org; Fri, 13 Apr 2012 14:57:30 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 13 Apr 2012 16:57:19 +0200
Message-Id: <1334329040-1718-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1334329040-1718-1-git-send-email-s.hauer@pengutronix.de>
References: <1334329040-1718-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] console simple: return with a proper error value
To: barebox@lists.infradead.org

There can be only one console for console_simple, so
return with -EBUSY when the second gets registered.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/console_simple.c |   14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/common/console_simple.c b/common/console_simple.c
index 49c5b33..7ad88d9 100644
--- a/common/console_simple.c
+++ b/common/console_simple.c
@@ -155,13 +155,15 @@ EXPORT_SYMBOL(ctrlc);
 
 int console_register(struct console_device *newcdev)
 {
-	if (!console) {
-		console = newcdev;
-		console_list.prev = console_list.next = &newcdev->list;
-		newcdev->list.prev = newcdev->list.next = &console_list;
+	if (console)
+		return -EBUSY;
+
+	console = newcdev;
+	console_list.prev = console_list.next = &newcdev->list;
+	newcdev->list.prev = newcdev->list.next = &console_list;
+
+	barebox_banner();
 
-		barebox_banner();
-	}
 	return 0;
 }
 
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

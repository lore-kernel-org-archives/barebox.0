Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1URm65-0007PI-6C
 for barebox@lists.infradead.org; Mon, 15 Apr 2013 16:17:37 +0000
From: Jan Luebbe <jlu@pengutronix.de>
Date: Mon, 15 Apr 2013 18:17:30 +0200
Message-Id: <1366042650-28468-1-git-send-email-jlu@pengutronix.de>
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
Subject: [PATCH 2/2] console: fix console without CONFIG_PARAMETER
To: barebox@lists.infradead.org

If CONFIG_PARAMETER is not set, dev_set_param() does not call the setter
function. Call it directly instead in this case.

Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
---
 common/console.c | 13 ++++++++++---
 1 file changed, 10 insertions(+), 3 deletions(-)

diff --git a/common/console.c b/common/console.c
index beb37bd..e4b0275 100644
--- a/common/console.c
+++ b/common/console.c
@@ -156,7 +156,10 @@ int console_register(struct console_device *newcdev)
 
 	if (newcdev->setbrg) {
 		dev_add_param(dev, "baudrate", console_baudrate_set, NULL, 0);
-		dev_set_param(dev, "baudrate", __stringify(CONFIG_BAUDRATE));
+		if (IS_ENABLED(CONFIG_PARAMETER))
+			dev_set_param(dev, "baudrate", __stringify(CONFIG_BAUDRATE));
+		else
+			console_baudrate_set(dev, NULL, __stringify(CONFIG_BAUDRATE));
 	}
 
 	dev_add_param(dev, "active", console_std_set, NULL, 0);
@@ -173,8 +176,12 @@ int console_register(struct console_device *newcdev)
 
 	list_add_tail(&newcdev->list, &console_list);
 
-	if (activate)
-		dev_set_param(dev, "active", "ioe");
+	if (activate) {
+		if (IS_ENABLED(CONFIG_PARAMETER))
+			dev_set_param(dev, "active", "ioe");
+		else
+			console_std_set(dev, NULL, "ioe");
+	}
 
 	return 0;
 }
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

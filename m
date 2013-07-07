Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp29.i.mail.ru ([94.100.177.89])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uvo4L-00068v-4d
 for barebox@lists.infradead.org; Sun, 07 Jul 2013 12:27:59 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sun,  7 Jul 2013 16:27:17 +0400
Message-Id: <1373200037-4008-3-git-send-email-shc_work@mail.ru>
In-Reply-To: <1373200037-4008-1-git-send-email-shc_work@mail.ru>
References: <1373200037-4008-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 3/3] common: console: Fix possible null pointer dereference
To: barebox@lists.infradead.org


Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 common/console.c | 30 +++++++++++++++---------------
 1 file changed, 15 insertions(+), 15 deletions(-)

diff --git a/common/console.c b/common/console.c
index a0a06f6..fc7b9ba 100644
--- a/common/console.c
+++ b/common/console.c
@@ -62,23 +62,23 @@ static int console_std_set(struct device_d *dev, struct param_d *param,
 	char active[4];
 	unsigned int flag = 0, i = 0;
 
-	if (!val)
-		dev_param_set_generic(dev, param, NULL);
-
-	if (strchr(val, 'i') && cdev->f_caps & CONSOLE_STDIN) {
-		active[i++] = 'i';
-		flag |= CONSOLE_STDIN;
-	}
+	if (val) {
+		if (strchr(val, 'i') && cdev->f_caps & CONSOLE_STDIN) {
+			active[i++] = 'i';
+			flag |= CONSOLE_STDIN;
+		}
 
-	if (strchr(val, 'o') && cdev->f_caps & CONSOLE_STDOUT) {
-		active[i++] = 'o';
-		flag |= CONSOLE_STDOUT;
-	}
+		if (strchr(val, 'o') && cdev->f_caps & CONSOLE_STDOUT) {
+			active[i++] = 'o';
+			flag |= CONSOLE_STDOUT;
+		}
 
-	if (strchr(val, 'e') && cdev->f_caps & CONSOLE_STDERR) {
-		active[i++] = 'e';
-		flag |= CONSOLE_STDERR;
-	}
+		if (strchr(val, 'e') && cdev->f_caps & CONSOLE_STDERR) {
+			active[i++] = 'e';
+			flag |= CONSOLE_STDERR;
+		}
+	} else
+		dev_param_set_generic(dev, param, NULL);
 
 	active[i] = 0;
 	cdev->f_active = flag;
-- 
1.8.1.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

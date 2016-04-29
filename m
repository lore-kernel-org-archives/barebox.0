Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aw564-0002GE-GQ
 for barebox@lists.infradead.org; Fri, 29 Apr 2016 09:52:29 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 29 Apr 2016 11:52:03 +0200
Message-Id: <1461923525-6356-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1461923525-6356-1-git-send-email-s.hauer@pengutronix.de>
References: <1461923525-6356-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/6] parameter: Use strtobool
To: Barebox List <barebox@lists.infradead.org>

Use strtobool to convert the input string to a boolean type.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 lib/parameter.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/lib/parameter.c b/lib/parameter.c
index fd05b49..7ceec0c 100644
--- a/lib/parameter.c
+++ b/lib/parameter.c
@@ -27,6 +27,7 @@
 #include <net.h>
 #include <malloc.h>
 #include <driver.h>
+#include <string.h>
 #include <linux/err.h>
 
 struct param_d *get_param_by_name(struct device_d *dev, const char *name)
@@ -314,10 +315,10 @@ static int param_int_set(struct device_d *dev, struct param_d *p, const char *va
 	if (!val)
 		return -EINVAL;
 
-	*pi->value = simple_strtol(val, NULL, 0);
-
 	if (pi->flags & PARAM_INT_FLAG_BOOL)
-		*pi->value = !!*pi->value;
+		return strtobool(val, pi->value);
+
+	*pi->value = simple_strtol(val, NULL, 0);
 
 	if (!pi->set)
 		return 0;
-- 
2.8.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

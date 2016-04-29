Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aw569-0002Hb-9A
 for barebox@lists.infradead.org; Fri, 29 Apr 2016 09:52:33 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 29 Apr 2016 11:52:02 +0200
Message-Id: <1461923525-6356-4-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/6] getenv_bool: use strtobool
To: Barebox List <barebox@lists.infradead.org>

We now have a library function to convert a string to a boolean type.
Use it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/env.c | 28 +++++++++++++++++-----------
 1 file changed, 17 insertions(+), 11 deletions(-)

diff --git a/common/env.c b/common/env.c
index c98ed73..d6cab52 100644
--- a/common/env.c
+++ b/common/env.c
@@ -28,6 +28,7 @@
 #include <xfuncs.h>
 #include <errno.h>
 #include <init.h>
+#include <string.h>
 #include <environment.h>
 
 static struct env_context root = {
@@ -323,20 +324,25 @@ int getenv_uint(const char *var , unsigned int *val)
 }
 EXPORT_SYMBOL(getenv_uint);
 
+/**
+ * getenv_bool - get a boolean value from an environment variable
+ * @var - Variable name
+ * @val - The boolean value returned.
+ *
+ * This function treats
+ * - any positive (nonzero) number as true
+ * - "0" as false
+ * - "true" (case insensitive) as true
+ * - "false" (case insensitive) as false
+ *
+ * Returns 0 for success or negative error code if the variable does
+ * not exist or contains something this function does not recognize
+ * as true or false.
+ */
 int getenv_bool(const char *var, int *val)
 {
 	const char *valstr = getenv(var);
 
-	if (!valstr || !*valstr)
-		return -EINVAL;
-
-	if (!*valstr)
-		*val = false;
-	else if (*valstr == '0')
-		*val = false;
-	else
-		*val = true;
-
-	return 0;
+	return strtobool(valstr, val);
 }
 EXPORT_SYMBOL(getenv_bool);
-- 
2.8.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

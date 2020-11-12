Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kdGK5-00077A-G6
 for barebox@lists.infradead.org; Thu, 12 Nov 2020 17:23:50 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 12 Nov 2020 18:23:47 +0100
Message-Id: <20201112172347.385-2-a.fatoum@pengutronix.de>
In-Reply-To: <20201112172347.385-1-a.fatoum@pengutronix.de>
References: <20201112172347.385-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/2] setenv: align with POSIX in handling of setenv(var, "")
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

setenv(var, "") to delete var is a barebox idiosyncrasy. Previous commit
added unsetenv and changed all users of setenv(var, ""), so lets set the
behavior of setenv to what's expected: set var to the empty string.

Previously, "" was turned into NULL, which meant it wasn't possible to
set variables to the empty string from the shell. This is now possible.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/env.c | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/common/env.c b/common/env.c
index fbaaac4f2f5c..2830551bc0a1 100644
--- a/common/env.c
+++ b/common/env.c
@@ -251,15 +251,21 @@ static int dev_setenv(const char *name, const char *val)
 	return -ENODEV;
 }
 
+/**
+ * setenv - set environment variables
+ * @_name - Variable name
+ * @value - the value to set, empty string not handled specially
+ *
+ * Returns 0 for success and a negative error code otherwise
+ * Use unsetenv() to unset.
+ */
+
 int setenv(const char *_name, const char *value)
 {
 	char *name = strdup(_name);
 	int ret = 0;
 	struct list_head *list;
 
-	if (value && !*value)
-		value = NULL;
-
 	if (strchr(name, '.')) {
 		ret = dev_setenv(name, value);
 		if (ret)
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

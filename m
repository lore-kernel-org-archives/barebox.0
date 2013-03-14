Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UGC7D-0003gW-HQ
 for barebox@lists.infradead.org; Thu, 14 Mar 2013 17:39:04 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Thu, 14 Mar 2013 18:38:46 +0100
Message-Id: <1363282729-18545-8-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1363282729-18545-1-git-send-email-mkl@pengutronix.de>
References: <1363282729-18545-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH 07/10] bootsource: use initcall to export bootsource location
 to environment
To: barebox@lists.infradead.org

This way the bootsource is exported to the environment, even if unknown.

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 common/bootsource.c | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/common/bootsource.c b/common/bootsource.c
index 2aa0ffa..ebe4407 100644
--- a/common/bootsource.c
+++ b/common/bootsource.c
@@ -19,6 +19,7 @@
 #include <bootsource.h>
 #include <environment.h>
 #include <magicvar.h>
+#include <init.h>
 
 static const char *bootsource_str[] = {
 	[BOOTSOURCE_UNKNOWN] = "unknown",
@@ -42,7 +43,6 @@ void bootsource_set(enum bootsource src)
 	bootsource = src;
 
 	setenv("barebox_loc", bootsource_str[src]);
-	export("barebox_loc");
 }
 
 enum bootsource bootsource_get(void)
@@ -51,3 +51,12 @@ enum bootsource bootsource_get(void)
 }
 
 BAREBOX_MAGICVAR(barebox_loc, "The source barebox has been booted from");
+
+static int bootsource_init(void)
+{
+	bootsource_set(bootsource);
+	export("barebox_loc");
+
+	return 0;
+}
+coredevice_initcall(bootsource_init);
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

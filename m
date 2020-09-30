Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kNbbX-0003gg-Mk
 for barebox@lists.infradead.org; Wed, 30 Sep 2020 12:53:08 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 30 Sep 2020 14:53:00 +0200
Message-Id: <20200930125303.14933-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 1/4] include: string: migrate barebox function from
 <linux/string.h>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

<linux/string.h> was imported from Linux. In order to keep changes
to a minimum, add prototypes for new barebox functions to <string.h>
instead.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/linux/string.h | 1 -
 include/string.h       | 1 +
 2 files changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/linux/string.h b/include/linux/string.h
index 2b699957e824..85c3eb1de340 100644
--- a/include/linux/string.h
+++ b/include/linux/string.h
@@ -10,7 +10,6 @@ extern "C" {
 
 extern char * strpbrk(const char *,const char *);
 extern char * strsep(char **,const char *);
-extern char * strsep_unescaped(char **,const char *);
 extern __kernel_size_t strspn(const char *,const char *);
 
 
diff --git a/include/string.h b/include/string.h
index 727bc51934bc..063e85f62cf8 100644
--- a/include/string.h
+++ b/include/string.h
@@ -5,6 +5,7 @@
 #include <linux/string.h>
 
 int strtobool(const char *str, int *val);
+char *strsep_unescaped(char **, const char *);
 
 void *__default_memset(void *, int, __kernel_size_t);
 void *__nokasan_default_memset(void *, int, __kernel_size_t);
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

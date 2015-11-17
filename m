Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x229.google.com ([2a00:1450:4010:c04::229])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZyfAa-00064P-BO
 for barebox@lists.infradead.org; Tue, 17 Nov 2015 12:15:32 +0000
Received: by lbblt2 with SMTP id lt2so4212001lbb.3
 for <barebox@lists.infradead.org>; Tue, 17 Nov 2015 04:15:10 -0800 (PST)
From: Sergey Koshechkin <serge.koshechkin@gmail.com>
Date: Tue, 17 Nov 2015 15:14:57 +0300
Message-Id: <1447762497-13485-1-git-send-email-serge.koshechkin@gmail.com>
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
Subject: [PATCH 2/3] make_directory: fix warning: no previous prototype
To: barebox@lists.infradead.org
Cc: Sergey Koshechkin <serge.koshechkin@gmail.com>

Signed-off-by: Sergey Koshechkin <serge.koshechkin@gmail.com>
---
 lib/make_directory.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/lib/make_directory.c b/lib/make_directory.c
index c14c86d..7432efc 100644
--- a/lib/make_directory.c
+++ b/lib/make_directory.c
@@ -5,9 +5,12 @@
 #include <fs.h>
 #include <malloc.h>
 #include <common.h>
+#define STATIC
+#else
+#define STATIC static inline
 #endif
 
-int make_directory(const char *dir)
+STATIC int make_directory(const char *dir)
 {
 	char *s = strdup(dir);
 	char *path = s;
-- 
2.6.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

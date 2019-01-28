Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1go572-0006AP-HY
 for barebox@lists.infradead.org; Mon, 28 Jan 2019 11:30:07 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Mon, 28 Jan 2019 12:29:55 +0100
Message-Id: <20190128112955.28979-1-o.rempel@pengutronix.de>
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
Subject: [PATCH] =?UTF-8?q?scripts:=20bareboxenv.c:=20fix=20warning:=20?=
 =?UTF-8?q?=E2=80=98xstrdup=E2=80=99=20defined=20but=20not=20used?=
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 scripts/bareboxenv.c | 10 ----------
 1 file changed, 10 deletions(-)

diff --git a/scripts/bareboxenv.c b/scripts/bareboxenv.c
index e95bdeaa5e..c512a105ef 100644
--- a/scripts/bareboxenv.c
+++ b/scripts/bareboxenv.c
@@ -97,16 +97,6 @@ static char *concat_subpath_file(const char *path, const char *f)
 	return concat_path_file(path, f);
 }
 
-static char *xstrdup(const char *s)
-{
-	int len = strlen(s) + 1;
-	char *d = xmalloc(len);
-
-	memcpy(d, s, len);
-
-	return d;
-}
-
 #include <linux/list.h>
 #include <linux/list_sort.h>
 #include "../lib/list_sort.c"
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

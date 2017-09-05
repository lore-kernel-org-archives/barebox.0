Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dp8mq-0000hm-Ky
 for barebox@lists.infradead.org; Tue, 05 Sep 2017 08:00:51 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  5 Sep 2017 10:00:20 +0200
Message-Id: <20170905080021.22248-2-s.hauer@pengutronix.de>
In-Reply-To: <20170905080021.22248-1-s.hauer@pengutronix.de>
References: <20170905080021.22248-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] fs: avoid pathes with '//' in __canonicalize_path()
To: Barebox List <barebox@lists.infradead.org>
Cc: Dennis Menschel <menschel-d@posteo.de>

In __canonicalize_path pathes beginning with '//' can occur. This
is normally not a problem since normalize_path() will clean this
up, but it means we cannot call get_fsdevice_by_path() on these
pathes in this function, as needed in the next patch.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/fs.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/fs/fs.c b/fs/fs.c
index c9226f9ba6..a5efdd1423 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -158,8 +158,8 @@ static char *__canonicalize_path(const char *_pathname, int level)
 
 	path = freep = xstrdup(_pathname);
 
-	if (*path == '/')
-		outpath = xstrdup("/");
+	if (*path == '/' || !strcmp(cwd, "/"))
+		outpath = xstrdup("");
 	else
 		outpath = __canonicalize_path(cwd, level + 1);
 
@@ -212,6 +212,11 @@ static char *__canonicalize_path(const char *_pathname, int level)
 out:
 	free(freep);
 
+	if (!*outpath) {
+		free(outpath);
+		outpath = xstrdup("/");
+	}
+
 	return outpath;
 }
 
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

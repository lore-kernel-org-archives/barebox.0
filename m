Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dPoID-0004lY-Pa
 for barebox@lists.infradead.org; Tue, 27 Jun 2017 11:04:27 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 27 Jun 2017 13:04:04 +0200
Message-Id: <20170627110404.16252-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] fs: Make locally used function canonicalize_dir() static
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/fs.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/fs.c b/fs/fs.c
index 0a5b61a2b0..c9226f9ba6 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -246,7 +246,7 @@ char *canonicalize_path(const char *pathname)
  *
  * Return: Path with links resolved. Allocated, must be freed after use.
  */
-char *canonicalize_dir(const char *pathname)
+static char *canonicalize_dir(const char *pathname)
 {
 	char *f, *d, *r, *ret, *p;
 	char *freep1, *freep2;
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

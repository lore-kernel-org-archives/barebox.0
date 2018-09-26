Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g5597-0002Ks-BA
 for barebox@lists.infradead.org; Wed, 26 Sep 2018 08:26:13 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 26 Sep 2018 10:25:34 +0200
Message-Id: <20180926082535.10118-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] fs: open: Do not forget to set errno
To: Barebox List <barebox@lists.infradead.org>
Cc: Ladislav Michl <ladis@linux-mips.org>

When the initial lookup fails in open we have to go to the error path
which sets errno correctly rather than returning directly.

Fixes: b3fbfad7ae ("fs: dentry cache implementation")

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/fs.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/fs.c b/fs/fs.c
index 41818ea811..d4ac37943e 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -2237,7 +2237,7 @@ int open(const char *pathname, int flags, ...)
 	putname(nd.name);
 
 	if (error)
-		return error;
+		goto out1;
 
 	if (d_is_negative(dentry)) {
 		if (flags & O_CREAT) {
-- 
2.19.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

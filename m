Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gPCJA-0002Oh-Tm
 for barebox@lists.infradead.org; Tue, 20 Nov 2018 20:07:43 +0000
From: Oleksij Rempel <linux@rempel-privat.de>
Date: Tue, 20 Nov 2018 21:07:08 +0100
Message-Id: <20181120200714.3692-4-linux@rempel-privat.de>
In-Reply-To: <20181120200714.3692-1-linux@rempel-privat.de>
References: <20181120200714.3692-1-linux@rempel-privat.de>
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
Subject: [PATCH v1 3/9] fs: closedir: remove uninitialized variable ret
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <linux@rempel-privat.de>

Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
---
 fs/fs.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/fs/fs.c b/fs/fs.c
index a30afa35f..42fd63ad0 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -2527,8 +2527,6 @@ EXPORT_SYMBOL(opendir);
 
 int closedir(DIR *dir)
 {
-	int ret;
-
 	if (!dir) {
 		errno = EBADF;
 		return -EBADF;
@@ -2536,7 +2534,7 @@ int closedir(DIR *dir)
 
 	release_dir(dir);
 
-	return ret;
+	return 0;
 }
 EXPORT_SYMBOL(closedir);
 
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

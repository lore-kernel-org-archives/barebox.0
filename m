Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp36.i.mail.ru ([94.100.177.96])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WYt2Z-00071o-Bz
 for barebox@lists.infradead.org; Sat, 12 Apr 2014 08:11:57 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sat, 12 Apr 2014 12:10:57 +0400
Message-Id: <1397290265-21273-4-git-send-email-shc_work@mail.ru>
In-Reply-To: <1397290265-21273-1-git-send-email-shc_work@mail.ru>
References: <1397290265-21273-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 04/12] ubifs: Remove unused variable
To: barebox@lists.infradead.org

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 fs/ubifs/ubifs.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/fs/ubifs/ubifs.c b/fs/ubifs/ubifs.c
index 35923a9..49d5583 100644
--- a/fs/ubifs/ubifs.c
+++ b/fs/ubifs/ubifs.c
@@ -240,8 +240,6 @@ static struct inode *ubifs_findfile(struct super_block *sb, const char *filename
 		return ubifs_iget(sb, 1);
 
 	for (;;) {
-		struct ubifs_inode *ui;
-
 		/* Extract the actual part from the pathname.  */
 		next = strchr(name, '/');
 		if (next) {
@@ -257,8 +255,6 @@ static struct inode *ubifs_findfile(struct super_block *sb, const char *filename
 		if (!inode)
 			break;
 
-		ui = ubifs_inode(inode);
-
 		/*
 		 * Check if directory with this name exists
 		 */
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkiCw-0007fx-6L
 for barebox@lists.infradead.org; Mon, 15 Jun 2020 06:03:01 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 15 Jun 2020 08:02:22 +0200
Message-Id: <20200615060229.7533-5-s.hauer@pengutronix.de>
In-Reply-To: <20200615060229.7533-1-s.hauer@pengutronix.de>
References: <20200615060229.7533-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 04/11] fs: free inodes we no longer need
To: Barebox List <barebox@lists.infradead.org>

So far we freed the no longer needed inodes only at unmount time.
Let's trust our reference counting a bit more and free them once
the reference counter hits zero.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/fs.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/fs/fs.c b/fs/fs.c
index cecb3d70e0..e04cadfe5d 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -1090,10 +1090,12 @@ void iput(struct inode *inode)
 	if (!inode)
 		return;
 
-	if (!inode->i_count)
-		return;
-
 	inode->i_count--;
+
+	if (!inode->i_count) {
+		list_del(&inode->i_sb_list);
+		destroy_inode(inode);
+	}
 }
 
 struct inode *iget(struct inode *inode)
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

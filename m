Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVx9L-0002cG-LL
 for barebox@lists.infradead.org; Tue, 05 May 2020 12:58:16 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  5 May 2020 14:58:12 +0200
Message-Id: <20200505125812.25419-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] fs: Fix inode size setting in ftruncate
To: Barebox List <barebox@lists.infradead.org>
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>

When changing a file size the size of the corresponding inode has to be
changed as well.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/fs.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/fs/fs.c b/fs/fs.c
index e00bbcd223..77e8f3a1e3 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -223,6 +223,7 @@ int ftruncate(int fd, loff_t length)
 	}
 
 	f->size = length;
+	f->f_inode->i_size = f->size;
 
 	return 0;
 }
-- 
2.26.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gyin3-0004Hj-De
 for barebox@lists.infradead.org; Tue, 26 Feb 2019 19:53:22 +0000
Received: by mail-pl1-x643.google.com with SMTP id y5so6730679plk.8
 for <barebox@lists.infradead.org>; Tue, 26 Feb 2019 11:53:21 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 26 Feb 2019 11:53:02 -0800
Message-Id: <20190226195303.24733-5-andrew.smirnov@gmail.com>
In-Reply-To: <20190226195303.24733-1-andrew.smirnov@gmail.com>
References: <20190226195303.24733-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 5/6] fs: Drop unused code in fstat()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 fs/fs.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/fs/fs.c b/fs/fs.c
index 65de82518..878a18e17 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -848,15 +848,12 @@ static void stat_inode(struct inode *inode, struct stat *s)
 int fstat(int fd, struct stat *s)
 {
 	FILE *f;
-	struct fs_device_d *fsdev;
 
 	if (check_fd(fd))
 		return -errno;
 
 	f = &files[fd];
 
-	fsdev = f->fsdev;
-
 	stat_inode(f->f_inode, s);
 
 	return 0;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

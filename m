Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x234.google.com ([2a00:1450:400c:c09::234])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fKjPC-0004Uu-EQ
 for barebox@lists.infradead.org; Mon, 21 May 2018 11:55:27 +0000
Received: by mail-wm0-x234.google.com with SMTP id o78-v6so26226076wmg.0
 for <barebox@lists.infradead.org>; Mon, 21 May 2018 04:54:59 -0700 (PDT)
From: Peter Mamonov <pmamonov@gmail.com>
Date: Mon, 21 May 2018 14:54:28 +0300
Message-Id: <20180521115438.26493-3-pmamonov@gmail.com>
In-Reply-To: <20180521115438.26493-1-pmamonov@gmail.com>
References: <20180521115438.26493-1-pmamonov@gmail.com>
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
Subject: [PATCH v2 02/12] fs: fix memory access for 64bit MIPS
To: barebox@lists.infradead.org
Cc: Peter Mamonov <pmamonov@gmail.com>

Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
---
 fs/fs.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/fs/fs.c b/fs/fs.c
index b66cc9b17..4322d307d 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -962,7 +962,7 @@ loff_t lseek(int fildes, loff_t offset, int whence)
 	case SEEK_SET:
 		if (f->size != FILE_SIZE_STREAM && offset > f->size)
 			goto out;
-		if (offset < 0)
+		if (IS_ERR(offset))
 			goto out;
 		pos = offset;
 		break;
@@ -981,7 +981,7 @@ loff_t lseek(int fildes, loff_t offset, int whence)
 	}
 
 	pos = fsdrv->lseek(&f->fsdev->dev, f, pos);
-	if (pos < 0) {
+	if (IS_ERR(pos)) {
 		errno = -pos;
 		return -1;
 	}
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

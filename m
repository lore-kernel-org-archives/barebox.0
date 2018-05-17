Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x231.google.com ([2a00:1450:400c:c09::231])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fJJRk-0002k6-IU
 for barebox@lists.infradead.org; Thu, 17 May 2018 13:59:58 +0000
Received: by mail-wm0-x231.google.com with SMTP id m129-v6so9267801wmb.3
 for <barebox@lists.infradead.org>; Thu, 17 May 2018 06:59:46 -0700 (PDT)
From: Peter Mamonov <pmamonov@gmail.com>
Date: Thu, 17 May 2018 16:58:56 +0300
Message-Id: <20180517135858.16202-14-pmamonov@gmail.com>
In-Reply-To: <20180517135858.16202-1-pmamonov@gmail.com>
References: <20180517135858.16202-1-pmamonov@gmail.com>
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
Subject: [RFC PATCH 13/15] FIXME: fs: fix memory access for 64bit MIPS
To: barebox@lists.infradead.org
Cc: Peter Mamonov <pmamonov@gmail.com>

Address 0xFFFFFFFFxxxxxxxx is a valid MIPS64 address.

Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
---
 fs/fs.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/fs/fs.c b/fs/fs.c
index b66cc9b17..d4965c85e 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -962,8 +962,6 @@ loff_t lseek(int fildes, loff_t offset, int whence)
 	case SEEK_SET:
 		if (f->size != FILE_SIZE_STREAM && offset > f->size)
 			goto out;
-		if (offset < 0)
-			goto out;
 		pos = offset;
 		break;
 	case SEEK_CUR:
@@ -981,10 +979,6 @@ loff_t lseek(int fildes, loff_t offset, int whence)
 	}
 
 	pos = fsdrv->lseek(&f->fsdev->dev, f, pos);
-	if (pos < 0) {
-		errno = -pos;
-		return -1;
-	}
 
 	return pos;
 
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-f66.google.com ([74.125.82.66])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fLqoX-00019o-ED
 for barebox@lists.infradead.org; Thu, 24 May 2018 14:02:28 +0000
Received: by mail-wm0-f66.google.com with SMTP id a8-v6so5429548wmg.5
 for <barebox@lists.infradead.org>; Thu, 24 May 2018 07:01:46 -0700 (PDT)
From: Peter Mamonov <pmamonov@gmail.com>
Date: Thu, 24 May 2018 17:01:33 +0300
Message-Id: <20180524140133.6124-1-pmamonov@gmail.com>
In-Reply-To: <20180524104745.3yk6uunekrjtl2cm@pengutronix.de>
References: <20180524104745.3yk6uunekrjtl2cm@pengutronix.de>
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
Subject: [PATCH v4] fs: fix memory access via /dev/mem for MIPS64
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org, Peter Mamonov <pmamonov@gmail.com>

lseek checks for non-negative in-memory offsets (addresses), failing otherwise.
However negative address 0xffffffffXXXXXXXX is a valid MIPS64 virtual address.
---
 fs/fs.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/fs/fs.c b/fs/fs.c
index b66cc9b17..8a49e32b5 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -962,7 +962,7 @@ loff_t lseek(int fildes, loff_t offset, int whence)
 	case SEEK_SET:
 		if (f->size != FILE_SIZE_STREAM && offset > f->size)
 			goto out;
-		if (offset < 0)
+		if (IS_ERR_VALUE(offset))
 			goto out;
 		pos = offset;
 		break;
@@ -981,7 +981,7 @@ loff_t lseek(int fildes, loff_t offset, int whence)
 	}
 
 	pos = fsdrv->lseek(&f->fsdev->dev, f, pos);
-	if (pos < 0) {
+	if (IS_ERR_VALUE(pos)) {
 		errno = -pos;
 		return -1;
 	}
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

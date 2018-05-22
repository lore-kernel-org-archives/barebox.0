Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x22e.google.com ([2a00:1450:400c:c09::22e])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fL9Ie-0003Fw-4f
 for barebox@lists.infradead.org; Tue, 22 May 2018 15:34:10 +0000
Received: by mail-wm0-x22e.google.com with SMTP id j5-v6so916560wme.5
 for <barebox@lists.infradead.org>; Tue, 22 May 2018 08:33:57 -0700 (PDT)
From: Peter Mamonov <pmamonov@gmail.com>
Date: Tue, 22 May 2018 18:33:32 +0300
Message-Id: <20180522153342.24933-3-pmamonov@gmail.com>
In-Reply-To: <20180522153342.24933-1-pmamonov@gmail.com>
References: <20180522153342.24933-1-pmamonov@gmail.com>
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
Subject: [PATCH v3 02/12] fs: fix memory access via /dev/mem for MIPS64
To: barebox@lists.infradead.org
Cc: Peter Mamonov <pmamonov@gmail.com>

lseek checks for non-negative in-memory offsets (addresses), failing otherwise.
However negative address 0xffffffffXXXXXXXX is a valid MIPS64 virtual address.

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

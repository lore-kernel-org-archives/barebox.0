Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1goNJs-0005Ae-8q
 for barebox@lists.infradead.org; Tue, 29 Jan 2019 06:56:36 +0000
Received: by mail-pg1-x542.google.com with SMTP id w6so8355419pgl.6
 for <barebox@lists.infradead.org>; Mon, 28 Jan 2019 22:56:28 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 28 Jan 2019 22:55:42 -0800
Message-Id: <20190129065549.29161-13-andrew.smirnov@gmail.com>
In-Reply-To: <20190129065549.29161-1-andrew.smirnov@gmail.com>
References: <20190129065549.29161-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 12/19] fs: Simplify new position calculation in lseek()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

All these checks are really testing is that resulting position is
within [0; f->size] interval. Convert all of the custom checks into a
signle one done after the switch statement to simplify the code.

Note this change also disables the validity check for f->size ==
FILE_SIZE_STREAM and whence == SEEK_END, but lseek(stream_fd, offset,
SEEK_END) wasn't a meaningful operation to begin with, so this
shouldn't be a problem.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 fs/fs.c | 19 ++++++++-----------
 1 file changed, 8 insertions(+), 11 deletions(-)

diff --git a/fs/fs.c b/fs/fs.c
index 2638e7458..d785c0c3a 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -418,26 +418,23 @@ loff_t lseek(int fildes, loff_t offset, int whence)
 
 	switch (whence) {
 	case SEEK_SET:
-		if (f->size != FILE_SIZE_STREAM && offset > f->size)
-			goto out;
-		if (offset < 0)
-			goto out;
-		pos = offset;
+		pos = 0;
 		break;
 	case SEEK_CUR:
-		if (f->size != FILE_SIZE_STREAM && offset + f->pos > f->size)
-			goto out;
-		pos = f->pos + offset;
+		pos = f->pos;
 		break;
 	case SEEK_END:
-		if (offset > 0)
-			goto out;
-		pos = f->size + offset;
+		pos = f->size;
 		break;
 	default:
 		goto out;
 	}
 
+	pos += offset;
+
+	if (f->size != FILE_SIZE_STREAM && (pos < 0 || pos > f->size))
+		goto out;
+
 	if (fsdrv->lseek) {
 		ret = fsdrv->lseek(&f->fsdev->dev, f, pos);
 		if (ret < 0)
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

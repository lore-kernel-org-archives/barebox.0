Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gm777-0007V0-NP
 for barebox@lists.infradead.org; Wed, 23 Jan 2019 01:14:00 +0000
Received: by mail-pl1-x641.google.com with SMTP id e5so256927plb.5
 for <barebox@lists.infradead.org>; Tue, 22 Jan 2019 17:13:57 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 22 Jan 2019 17:13:36 -0800
Message-Id: <20190123011338.32517-6-andrew.smirnov@gmail.com>
In-Reply-To: <20190123011338.32517-1-andrew.smirnov@gmail.com>
References: <20190123011338.32517-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 5/7] fs: Calculate new position before validtiy check in
 lseek()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Calculate new position before validtiy check in lseek() to simplify
code a bit as well as make following commit simpler. This should be
harmless thing to do, since we don't actually use calculated value
unless it passes the validity check.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 fs/fs.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/fs/fs.c b/fs/fs.c
index 6a62fb98b..9372b9981 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -421,21 +421,21 @@ loff_t lseek(int fildes, loff_t offset, int whence)
 
 	switch (whence) {
 	case SEEK_SET:
+		pos = offset;
 		if (f->size != FILE_SIZE_STREAM && offset > f->size)
 			goto out;
 		if (IS_ERR_VALUE(offset))
 			goto out;
-		pos = offset;
 		break;
 	case SEEK_CUR:
-		if (f->size != FILE_SIZE_STREAM && offset + f->pos > f->size)
-			goto out;
 		pos = f->pos + offset;
+		if (f->size != FILE_SIZE_STREAM && pos > f->size)
+			goto out;
 		break;
 	case SEEK_END:
+		pos = f->size + offset;
 		if (offset > 0)
 			goto out;
-		pos = f->size + offset;
 		break;
 	default:
 		goto out;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

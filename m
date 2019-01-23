Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gm776-0007Tr-Ap
 for barebox@lists.infradead.org; Wed, 23 Jan 2019 01:14:00 +0000
Received: by mail-pl1-x644.google.com with SMTP id e11so242210plt.11
 for <barebox@lists.infradead.org>; Tue, 22 Jan 2019 17:13:56 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 22 Jan 2019 17:13:35 -0800
Message-Id: <20190123011338.32517-5-andrew.smirnov@gmail.com>
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
Subject: [PATCH 4/7] fs: Change error checking logic for fsdrv->lseek() call
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

On 32-bit systems, cheking for IS_ERR_VALUE(pos) is not
correct. Expanding that code we get (loff_t cast is added for clarity):

 (loff_t)pos >= (unsigned long)-MAX_ERRNO

given that loff_t is a 64-bit signed value, any perfectly valid seek
offset that is greater than 0xffffc000 will result in false
positive. Change the logic to check if position returned by
fsdrv->lseek() is what's been requested. If it is, we can assume that
operation was succesfull. If not, that's likely means failure and
return value is a negative error code.

This should accomodate both 32-bit systems, where we /dev/mem doesn't
present any range problems, as well as 64-bit systems where both file
offset and size of /dev/mem couldn't really be correctly captured by
loff_t and we have to rely on 2's complement and overflow.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 fs/fs.c | 13 +++++--------
 1 file changed, 5 insertions(+), 8 deletions(-)

diff --git a/fs/fs.c b/fs/fs.c
index a304bf186..6a62fb98b 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -405,8 +405,7 @@ loff_t lseek(int fildes, loff_t offset, int whence)
 {
 	struct fs_driver_d *fsdrv;
 	FILE *f;
-	loff_t pos;
-	int ret;
+	loff_t pos, ret;
 
 	if (check_fd(fildes))
 		return -1;
@@ -442,13 +441,11 @@ loff_t lseek(int fildes, loff_t offset, int whence)
 		goto out;
 	}
 
-	pos = fsdrv->lseek(&f->fsdev->dev, f, pos);
-	if (IS_ERR_VALUE(pos)) {
-		errno = -pos;
-		return -1;
-	}
+	ret = fsdrv->lseek(&f->fsdev->dev, f, pos);
+	if (ret != pos)
+		goto out;
 
-	return pos;
+	return ret;
 
 out:
 	if (ret)
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1goNJr-00059V-5y
 for barebox@lists.infradead.org; Tue, 29 Jan 2019 06:56:35 +0000
Received: by mail-pg1-x542.google.com with SMTP id v28so8353605pgk.10
 for <barebox@lists.infradead.org>; Mon, 28 Jan 2019 22:56:26 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 28 Jan 2019 22:55:41 -0800
Message-Id: <20190129065549.29161-12-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 11/19] fs: Do not use IS_ERR_VALUE() to validate offset in
 lseek()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

On 32-bit systems, checking for IS_ERR_VALUE(pos) is not
correct. Expanding that code we get (loff_t cast is added for clarity):

 (loff_t)pos >= (unsigned long)-MAX_ERRNO

given that loff_t is a 64-bit signed value, any perfectly valid seek
offset that is greater than 0xffffc000 will result in false positive.

Moreso, as a part of fix introduced in e10efc5080 ("fs: fix memory
access via /dev/mem for MIPS64") it doesn't really solve the problem
completely on on 64-bit platforms, becuase it still leaves out a
number of perfectly valid offsets (e.g. "md 0xffffffffffffff00"
doesn't work)

Undo the original change and convert the check to simply test if
offset is negative.

Changes neccessary to alllow access to end of 64-bit address space
will be implemented in the follow-up patch.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 fs/fs.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/fs.c b/fs/fs.c
index 7e62b89e4..2638e7458 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -420,7 +420,7 @@ loff_t lseek(int fildes, loff_t offset, int whence)
 	case SEEK_SET:
 		if (f->size != FILE_SIZE_STREAM && offset > f->size)
 			goto out;
-		if (IS_ERR_VALUE(offset))
+		if (offset < 0)
 			goto out;
 		pos = offset;
 		break;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

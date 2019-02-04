Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gqfWG-0001Fq-Cq
 for barebox@lists.infradead.org; Mon, 04 Feb 2019 14:46:45 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Feb 2019 15:46:39 +0100
Message-Id: <20190204144641.19600-4-s.hauer@pengutronix.de>
In-Reply-To: <20190204144641.19600-1-s.hauer@pengutronix.de>
References: <20190204144641.19600-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/5] fs: do not call truncate for FILE_SIZE_STREAM sized files
To: Barebox List <barebox@lists.infradead.org>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

open_and_lseek() increases the file size when the file is opened in
write mode and scrolled past the files end. This fails badly on /dev/mem
because loff_t which we use for the file size is signed variable, which
is used as an unsigned variable in /dev/mem. To catch this case do not
try to truncate FILE_SIZE_STREAM sized files.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/fs.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/fs/fs.c b/fs/fs.c
index c5b17e158a..1374286e62 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -213,6 +213,9 @@ int ftruncate(int fd, loff_t length)
 
 	f = &files[fd];
 
+	if (f->size == FILE_SIZE_STREAM)
+		return 0;
+
 	fsdrv = f->fsdev->driver;
 
 	ret = fsdrv->truncate(&f->fsdev->dev, f, length);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

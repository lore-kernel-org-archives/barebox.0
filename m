Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gqfWd-0001Z0-U0
 for barebox@lists.infradead.org; Mon, 04 Feb 2019 14:47:10 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Feb 2019 15:46:38 +0100
Message-Id: <20190204144641.19600-3-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/5] fs: set errno in ftruncate()
To: Barebox List <barebox@lists.infradead.org>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

ftruncate needs to set errno correctly on error.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/fs.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/fs/fs.c b/fs/fs.c
index 4ec9c7a842..c5b17e158a 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -216,8 +216,10 @@ int ftruncate(int fd, loff_t length)
 	fsdrv = f->fsdev->driver;
 
 	ret = fsdrv->truncate(&f->fsdev->dev, f, length);
-	if (ret)
+	if (ret) {
+		errno = -ret;
 		return ret;
+	}
 
 	f->size = length;
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

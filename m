Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x430.google.com ([2607:f8b0:4864:20::430])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h1nmj-00052n-A0
 for barebox@lists.infradead.org; Thu, 07 Mar 2019 07:49:48 +0000
Received: by mail-pf1-x430.google.com with SMTP id n74so10803182pfi.9
 for <barebox@lists.infradead.org>; Wed, 06 Mar 2019 23:49:44 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed,  6 Mar 2019 23:49:18 -0800
Message-Id: <20190307074926.20539-10-andrew.smirnov@gmail.com>
In-Reply-To: <20190307074926.20539-1-andrew.smirnov@gmail.com>
References: <20190307074926.20539-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 09/17] uimage: Fix lseek error check in uimage_verify()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Don't use 'int' to store lseek()'s return value to avoid problems with
large seek offsets. While at it, make sure to populate return error
code from 'errno'.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 common/uimage.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/common/uimage.c b/common/uimage.c
index 3273bc187..72b668e89 100644
--- a/common/uimage.c
+++ b/common/uimage.c
@@ -265,11 +265,12 @@ int uimage_verify(struct uimage_handle *handle)
 {
 	u32 crc = 0;
 	int len, ret;
+	loff_t off;
 	void *buf;
 
-	ret = lseek(handle->fd, sizeof(struct image_header), SEEK_SET);
-	if (ret < 0)
-		return ret;
+	off = sizeof(struct image_header);
+	if (lseek(handle->fd, off, SEEK_SET) != off)
+		return -errno;
 
 	buf = xmalloc(PAGE_SIZE);
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1goNJu-0005DX-VX
 for barebox@lists.infradead.org; Tue, 29 Jan 2019 06:56:38 +0000
Received: by mail-pf1-x442.google.com with SMTP id c123so9261739pfb.0
 for <barebox@lists.infradead.org>; Mon, 28 Jan 2019 22:56:30 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 28 Jan 2019 22:55:44 -0800
Message-Id: <20190129065549.29161-15-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 14/19] fs: Avoid division in mem_copy()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Instead of dividing count by rwsize, use ALIGN_DOWN() and change the
loop to decrement by "rwsize" bytes.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 fs/devfs-core.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/fs/devfs-core.c b/fs/devfs-core.c
index 37c4bd0ad..8d5ff71d6 100644
--- a/fs/devfs-core.c
+++ b/fs/devfs-core.c
@@ -548,9 +548,9 @@ static ssize_t mem_copy(struct device_d *dev, void *dst, const void *src,
 
 	rwsize = rwsize >> O_RWSIZE_SHIFT;
 
-	count /= rwsize;
+	count = ALIGN_DOWN(count, rwsize);
 
-	while (count-- > 0) {
+	while (count) {
 		switch (rwsize) {
 		case 1:
 			*((u8 *)dst) = *((u8 *)src);
@@ -567,6 +567,7 @@ static ssize_t mem_copy(struct device_d *dev, void *dst, const void *src,
 		}
 		dst += rwsize;
 		src += rwsize;
+		count -= rwsize;
 	}
 out:
 	return size;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

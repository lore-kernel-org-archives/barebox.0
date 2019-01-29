Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1goNJv-0005F0-Op
 for barebox@lists.infradead.org; Tue, 29 Jan 2019 06:56:40 +0000
Received: by mail-pg1-x544.google.com with SMTP id v28so8353682pgk.10
 for <barebox@lists.infradead.org>; Mon, 28 Jan 2019 22:56:31 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 28 Jan 2019 22:55:45 -0800
Message-Id: <20190129065549.29161-16-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 15/19] fs: Report actual data processed by mem_copy()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

If we are asked to copy amount of data that is not a multiple of
"rwsize", we won't process all "count" bytes, so we should reflect
that in the value we return.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 fs/devfs-core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/devfs-core.c b/fs/devfs-core.c
index 8d5ff71d6..b2f66578d 100644
--- a/fs/devfs-core.c
+++ b/fs/devfs-core.c
@@ -548,7 +548,7 @@ static ssize_t mem_copy(struct device_d *dev, void *dst, const void *src,
 
 	rwsize = rwsize >> O_RWSIZE_SHIFT;
 
-	count = ALIGN_DOWN(count, rwsize);
+	count = size = ALIGN_DOWN(count, rwsize);
 
 	while (count) {
 		switch (rwsize) {
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

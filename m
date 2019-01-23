Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gm77A-0007Xj-20
 for barebox@lists.infradead.org; Wed, 23 Jan 2019 01:14:01 +0000
Received: by mail-pf1-x441.google.com with SMTP id g62so261236pfd.12
 for <barebox@lists.infradead.org>; Tue, 22 Jan 2019 17:13:59 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 22 Jan 2019 17:13:38 -0800
Message-Id: <20190123011338.32517-8-andrew.smirnov@gmail.com>
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
Subject: [PATCH 7/7] misc: mem: Set correct size for /dev/mem
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

On 64-bit platfoms /dev/mem should have the size of 2^64 bytes, not
2^63 which would result from using S64_MAX. This also has a side
effect of setting "size" in FILE to FILE_SIZE_STREAM, disabling a
number of codepaths that are not applicable to /dev/mem anyway (see
__read() and __write()).

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/misc/mem.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/misc/mem.c b/drivers/misc/mem.c
index b27865b9e..89ec920b2 100644
--- a/drivers/misc/mem.c
+++ b/drivers/misc/mem.c
@@ -23,8 +23,7 @@ static int mem_probe(struct device_d *dev)
 
 	cdev->flags = DEVFS_UNBOUNDED;
 	cdev->name = (char*)dev->resource[0].name;
-	cdev->size = min_t(unsigned long long, resource_size(&dev->resource[0]),
-			   S64_MAX);
+	cdev->size = resource_size(&dev->resource[0]);
 	cdev->ops = &memops;
 	cdev->dev = dev;
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

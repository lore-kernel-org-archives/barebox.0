Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gyj0L-0001UG-AO
 for barebox@lists.infradead.org; Tue, 26 Feb 2019 20:07:06 +0000
Received: by mail-pg1-x542.google.com with SMTP id q206so6721889pgq.4
 for <barebox@lists.infradead.org>; Tue, 26 Feb 2019 12:07:05 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 26 Feb 2019 12:06:57 -0800
Message-Id: <20190226200657.2722-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH] include: Drop mem_memmap()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Drop what looks like a leftover function prototype.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 include/driver.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/include/driver.h b/include/driver.h
index 731116d8f..0ed830d29 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -352,7 +352,6 @@ struct cdev;
 /* These are used by drivers which work with direct memory accesses */
 ssize_t mem_read(struct cdev *cdev, void *buf, size_t count, loff_t offset, ulong flags);
 ssize_t mem_write(struct cdev *cdev, const void *buf, size_t count, loff_t offset, ulong flags);
-int mem_memmap(struct cdev *cdev, void **map, int flags);
 
 /* Use this if you have nothing to do in your drivers probe function */
 int dummy_probe(struct device_d *);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

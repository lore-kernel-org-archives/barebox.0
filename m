Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1Qj5qb-0006l0-U1
	for barebox@lists.infradead.org; Tue, 19 Jul 2011 08:40:17 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 19 Jul 2011 10:39:49 +0200
Message-Id: <1311064803-6305-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1311064803-6305-1-git-send-email-s.hauer@pengutronix.de>
References: <1311064803-6305-1-git-send-email-s.hauer@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 05/19] mem_read/write: use resources
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/fs.c |    5 ++---
 1 files changed, 2 insertions(+), 3 deletions(-)

diff --git a/fs/fs.c b/fs/fs.c
index e71d5a2..bcc6ff4 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -1048,8 +1048,7 @@ ssize_t mem_read(struct cdev *cdev, void *buf, size_t count, ulong offset, ulong
 	dev = cdev->dev;
 
 	size = min((ulong)count, dev->size - offset);
-	debug("mem_read: dev->map_base: %p size: %d offset: %d\n",dev->map_base, size, offset);
-	memcpy_sz(buf, (void *)(dev->map_base + offset), size, flags & O_RWSIZE_MASK);
+	memcpy_sz(buf, dev_get_mem_region(dev, 0) + offset, size, flags & O_RWSIZE_MASK);
 	return size;
 }
 EXPORT_SYMBOL(mem_read);
@@ -1064,7 +1063,7 @@ ssize_t mem_write(struct cdev *cdev, const void *buf, size_t count, ulong offset
 	dev = cdev->dev;
 
 	size = min((ulong)count, dev->size - offset);
-	memcpy_sz((void *)(dev->map_base + offset), buf, size, flags & O_RWSIZE_MASK);
+	memcpy_sz(dev_get_mem_region(dev, 0) + offset, buf, size, flags & O_RWSIZE_MASK);
 	return size;
 }
 EXPORT_SYMBOL(mem_write);
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

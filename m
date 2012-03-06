Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.cvg.de ([62.153.82.30])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1S4zF3-0005UH-4Q
 for barebox@lists.infradead.org; Tue, 06 Mar 2012 18:36:09 +0000
From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Date: Tue,  6 Mar 2012 19:36:26 +0100
Message-Id: <1331058986-9169-1-git-send-email-enrico.scholz@sigma-chemnitz.de>
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
Subject: [PATCH] fs: flush device on close
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>

When working with DMA backed devices (e.g. framebuffers), writes are
delayed so that 'mw -d /dev/fb0' might not have an immediate effect.

Behavior after this patch resembles POSIX close(2) functionality which
flushes (blocking) streams on close.

Drivers which provide 'memmap()' can/should implement a 'flush()' method
which works similarly msync(2) so that buffers can be synchronized on
demand (without low level dma_*_range() operations). Closing such
devices (e.g. when 'mw' or 'bmp' exits) will flush modified memory
content automatically without the need to touch the 'mw', 'bmp' or ...
code.

Signed-off-by: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
---
 fs/fs.c         |    5 +++++
 include/fcntl.h |    1 +
 2 files changed, 6 insertions(+), 0 deletions(-)

diff --git a/fs/fs.c b/fs/fs.c
index 13df71c..6ba1da6 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -714,6 +714,11 @@ int close(int fd)
 	dev = f->dev;
 
 	fsdrv = (struct fs_driver_d *)dev->driver->type_data;
+
+	if (!(f->flags & O_NONBLOCK) && fsdrv->flush)
+		/* no way to deal with errors here... */
+		fsdrv->flush(dev, f);
+
 	errno = fsdrv->close(dev, f);
 
 	put_file(f);
diff --git a/include/fcntl.h b/include/fcntl.h
index aed741e..ffe2f5f 100644
--- a/include/fcntl.h
+++ b/include/fcntl.h
@@ -13,6 +13,7 @@
 #define O_EXCL		00000200	/* not fcntl */
 #define O_TRUNC		00001000	/* not fcntl */
 #define O_APPEND	00002000
+#define O_NONBLOCK	00004000
 #define O_DIRECTORY	00200000	/* must be a directory */
 #define O_NOFOLLOW	00400000	/* don't follow links */
 
-- 
1.7.7.6


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

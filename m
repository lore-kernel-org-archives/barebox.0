Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-f177.google.com ([74.125.82.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TKyv7-0006RO-SG
 for barebox@lists.infradead.org; Sun, 07 Oct 2012 22:01:58 +0000
Received: by mail-we0-f177.google.com with SMTP id u50so2294765wey.36
 for <barebox@lists.infradead.org>; Sun, 07 Oct 2012 15:01:57 -0700 (PDT)
From: Vicente <vicencb@gmail.com>
Date: Mon,  8 Oct 2012 00:01:22 +0200
Message-Id: <1349647287-28224-9-git-send-email-vicencb@gmail.com>
In-Reply-To: <1349647287-28224-1-git-send-email-vicencb@gmail.com>
References: <1349647287-28224-1-git-send-email-vicencb@gmail.com>
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
Subject: [PATCH 08/13] fs: improve robustness
To: barebox@lists.infradead.org
Cc: Vicente <vicencb@gmail.com>


Signed-off-by: Vicente <vicencb@gmail.com>
---
 fs/fs.c | 27 ++++++++++++++++++---------
 1 file changed, 18 insertions(+), 9 deletions(-)

diff --git a/fs/fs.c b/fs/fs.c
index b9a1f17..dc3a6e3 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -715,12 +715,13 @@ int ioctl(int fd, int request, void *buf)
 {
 	struct device_d *dev;
 	struct fs_driver_d *fsdrv;
-	FILE *f = &files[fd];
+	FILE *f;
 	int ret;
 
 	if (check_fd(fd))
 		return -errno;
 
+	f = &files[fd];
 	dev = f->dev;
 
 	fsdrv = dev_to_fs_driver(dev);
@@ -738,12 +739,13 @@ int read(int fd, void *buf, size_t count)
 {
 	struct device_d *dev;
 	struct fs_driver_d *fsdrv;
-	FILE *f = &files[fd];
+	FILE *f;
 	int ret;
 
 	if (check_fd(fd))
 		return -errno;
 
+	f = &files[fd];
 	dev = f->dev;
 
 	fsdrv = dev_to_fs_driver(dev);
@@ -768,12 +770,13 @@ ssize_t write(int fd, const void *buf, size_t count)
 {
 	struct device_d *dev;
 	struct fs_driver_d *fsdrv;
-	FILE *f = &files[fd];
+	FILE *f;
 	int ret;
 
 	if (check_fd(fd))
 		return -errno;
 
+	f = &files[fd];
 	dev = f->dev;
 
 	fsdrv = dev_to_fs_driver(dev);
@@ -803,12 +806,13 @@ int flush(int fd)
 {
 	struct device_d *dev;
 	struct fs_driver_d *fsdrv;
-	FILE *f = &files[fd];
+	FILE *f;
 	int ret;
 
 	if (check_fd(fd))
 		return -errno;
 
+	f = &files[fd];
 	dev = f->dev;
 
 	fsdrv = dev_to_fs_driver(dev);
@@ -827,13 +831,14 @@ loff_t lseek(int fildes, loff_t offset, int whence)
 {
 	struct device_d *dev;
 	struct fs_driver_d *fsdrv;
-	FILE *f = &files[fildes];
+	FILE *f;
 	loff_t pos;
 	int ret;
 
 	if (check_fd(fildes))
 		return -1;
 
+	f = &files[fildes];
 	dev = f->dev;
 	fsdrv = dev_to_fs_driver(dev);
 	if (!fsdrv->lseek) {
@@ -877,11 +882,12 @@ int erase(int fd, size_t count, unsigned long offset)
 {
 	struct device_d *dev;
 	struct fs_driver_d *fsdrv;
-	FILE *f = &files[fd];
+	FILE *f;
 	int ret;
 
 	if (check_fd(fd))
 		return -errno;
+	f = &files[fd];
 	if (offset >= f->size)
 		return 0;
 	if (count > f->size - offset)
@@ -905,11 +911,12 @@ int protect(int fd, size_t count, unsigned long offset, int prot)
 {
 	struct device_d *dev;
 	struct fs_driver_d *fsdrv;
-	FILE *f = &files[fd];
+	FILE *f;
 	int ret;
 
 	if (check_fd(fd))
 		return -errno;
+	f = &files[fd];
 	if (offset >= f->size)
 		return 0;
 	if (count > f->size - offset)
@@ -948,13 +955,14 @@ void *memmap(int fd, int flags)
 {
 	struct device_d *dev;
 	struct fs_driver_d *fsdrv;
-	FILE *f = &files[fd];
+	FILE *f;
 	void *retp = (void *)-1;
 	int ret;
 
 	if (check_fd(fd))
 		return retp;
 
+	f = &files[fd];
 	dev = f->dev;
 
 	fsdrv = dev_to_fs_driver(dev);
@@ -975,12 +983,13 @@ int close(int fd)
 {
 	struct device_d *dev;
 	struct fs_driver_d *fsdrv;
-	FILE *f = &files[fd];
+	FILE *f;
 	int ret;
 
 	if (check_fd(fd))
 		return -errno;
 
+	f = &files[fd];
 	dev = f->dev;
 
 	fsdrv = dev_to_fs_driver(dev);
-- 
1.7.12.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from tango.tkos.co.il ([62.219.50.35])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OdzBi-0002nN-7k
	for barebox@lists.infradead.org; Wed, 28 Jul 2010 05:28:20 +0000
From: Baruch Siach <baruch@tkos.co.il>
Date: Wed, 28 Jul 2010 08:27:50 +0300
Message-Id: <49e9491258248a4f8aed0d8edf2ddac82d8328b5.1280294782.git.baruch@tkos.co.il>
In-Reply-To: <20100727133407.GH10913@game.jcrosoft.org>
References: <20100727133407.GH10913@game.jcrosoft.org>
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
Subject: [PATCHv2] fs: add basic sanity check before accessing the files array
To: barebox@lists.infradead.org

This patch adds some basic file descriptor sanity checks to the file access
routines. Check whether the given file descriptor is in the files array range,
and whether the file entry is valid.

Signed-off-by: Baruch Siach <baruch@tkos.co.il>
---
 fs/fs.c |   34 ++++++++++++++++++++++++++++++++++
 1 files changed, 34 insertions(+), 0 deletions(-)

diff --git a/fs/fs.c b/fs/fs.c
index 8417067..3b5f284 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -229,6 +229,16 @@ static void put_file(FILE *f)
 	files[f->no].in_use = 0;
 }
 
+static int check_fd(int fd)
+{
+	if (fd < 0 || fd >= MAX_FILES || !files[fd].in_use) {
+		errno = -EBADF;
+		return errno;
+	}
+
+	return 0;
+}
+
 static struct device_d *get_fs_device_by_path(char **path)
 {
 	struct device_d *dev;
@@ -457,6 +467,9 @@ int ioctl(int fd, int request, void *buf)
 	struct fs_driver_d *fsdrv;
 	FILE *f = &files[fd];
 
+	if (check_fd(fd))
+		return errno;
+
 	dev = f->dev;
 
 	fsdrv = (struct fs_driver_d *)dev->driver->type_data;
@@ -474,6 +487,9 @@ int read(int fd, void *buf, size_t count)
 	struct fs_driver_d *fsdrv;
 	FILE *f = &files[fd];
 
+	if (check_fd(fd))
+		return errno;
+
 	dev = f->dev;
 
 	fsdrv = (struct fs_driver_d *)dev->driver->type_data;
@@ -494,6 +510,9 @@ ssize_t write(int fd, const void *buf, size_t count)
 	struct fs_driver_d *fsdrv;
 	FILE *f = &files[fd];
 
+	if (check_fd(fd))
+		return errno;
+
 	dev = f->dev;
 
 	fsdrv = (struct fs_driver_d *)dev->driver->type_data;
@@ -524,6 +543,9 @@ off_t lseek(int fildes, off_t offset, int whence)
 	FILE *f = &files[fildes];
 	off_t pos;
 
+	if (check_fd(fildes))
+		return -1;
+
 	errno = 0;
 
 	dev = f->dev;
@@ -567,6 +589,9 @@ int erase(int fd, size_t count, unsigned long offset)
 	struct fs_driver_d *fsdrv;
 	FILE *f = &files[fd];
 
+	if (check_fd(fd))
+		return errno;
+
 	dev = f->dev;
 
 	fsdrv = (struct fs_driver_d *)dev->driver->type_data;
@@ -589,6 +614,9 @@ int protect(int fd, size_t count, unsigned long offset, int prot)
 	struct fs_driver_d *fsdrv;
 	FILE *f = &files[fd];
 
+	if (check_fd(fd))
+		return errno;
+
 	dev = f->dev;
 
 	fsdrv = (struct fs_driver_d *)dev->driver->type_data;
@@ -627,6 +655,9 @@ void *memmap(int fd, int flags)
 	FILE *f = &files[fd];
 	void *ret = (void *)-1;
 
+	if (check_fd(fd))
+		return ret;
+
 	dev = f->dev;
 
 	fsdrv = (struct fs_driver_d *)dev->driver->type_data;
@@ -646,6 +677,9 @@ int close(int fd)
 	struct fs_driver_d *fsdrv;
 	FILE *f = &files[fd];
 
+	if (check_fd(fd))
+		return errno;
+
 	dev = f->dev;
 
 	fsdrv = (struct fs_driver_d *)dev->driver->type_data;
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

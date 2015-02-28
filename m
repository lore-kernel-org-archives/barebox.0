Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YRp7w-0003pD-Eb
 for barebox@lists.infradead.org; Sat, 28 Feb 2015 21:40:51 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Sat, 28 Feb 2015 22:40:07 +0100
Message-Id: <1425159621-22805-3-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1425159621-22805-1-git-send-email-mkl@pengutronix.de>
References: <1425159621-22805-1-git-send-email-mkl@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 02/16] fs: make "offset" parameter of erase() and protect() 64
 bit safe
To: barebox@lists.infradead.org

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 fs/fs.c      | 4 ++--
 include/fs.h | 4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/fs/fs.c b/fs/fs.c
index ffdfa2c0ff39..779f2641b200 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -923,7 +923,7 @@ out:
 }
 EXPORT_SYMBOL(lseek);
 
-int erase(int fd, size_t count, unsigned long offset)
+int erase(int fd, size_t count, loff_t offset)
 {
 	struct fs_driver_d *fsdrv;
 	FILE *f;
@@ -950,7 +950,7 @@ int erase(int fd, size_t count, unsigned long offset)
 }
 EXPORT_SYMBOL(erase);
 
-int protect(int fd, size_t count, unsigned long offset, int prot)
+int protect(int fd, size_t count, loff_t offset, int prot)
 {
 	struct fs_driver_d *fsdrv;
 	FILE *f;
diff --git a/include/fs.h b/include/fs.h
index 63e35ca815f5..b8a95a20a793 100644
--- a/include/fs.h
+++ b/include/fs.h
@@ -147,8 +147,8 @@ int mount (const char *device, const char *fsname, const char *path,
 int umount(const char *pathname);
 
 /* not-so-standard functions */
-int erase(int fd, size_t count, unsigned long offset);
-int protect(int fd, size_t count, unsigned long offset, int prot);
+int erase(int fd, size_t count, loff_t offset);
+int protect(int fd, size_t count, loff_t offset, int prot);
 int protect_file(const char *file, int prot);
 void *memmap(int fd, int flags);
 
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

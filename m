Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-f42.google.com ([209.85.214.42])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U7BPF-0006Di-Pr
 for barebox@lists.infradead.org; Sun, 17 Feb 2013 21:04:18 +0000
Received: by mail-bk0-f42.google.com with SMTP id jk7so2248731bkc.15
 for <barebox@lists.infradead.org>; Sun, 17 Feb 2013 13:04:16 -0800 (PST)
From: Alexander Aring <alex.aring@gmail.com>
Date: Sun, 17 Feb 2013 22:05:00 +0100
Message-Id: <1361135101-994-2-git-send-email-alex.aring@gmail.com>
In-Reply-To: <1361135101-994-1-git-send-email-alex.aring@gmail.com>
References: <1361135101-994-1-git-send-email-alex.aring@gmail.com>
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
Subject: [PATCH 1/2] fs: fix return type of read
To: barebox@lists.infradead.org

Signed-off-by: Alexander Aring <alex.aring@gmail.com>
---
 fs/fs.c      | 2 +-
 include/fs.h | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/fs/fs.c b/fs/fs.c
index f840516..48d1c89 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -754,7 +754,7 @@ int ioctl(int fd, int request, void *buf)
 	return ret;
 }
 
-int read(int fd, void *buf, size_t count)
+ssize_t read(int fd, void *buf, size_t count)
 {
 	struct device_d *dev;
 	struct fs_driver_d *fsdrv;
diff --git a/include/fs.h b/include/fs.h
index 919daab..d6b22f7 100644
--- a/include/fs.h
+++ b/include/fs.h
@@ -113,7 +113,7 @@ int close(int fd);
 int flush(int fd);
 int lstat(const char *filename, struct stat *s);
 int stat(const char *filename, struct stat *s);
-int read(int fd, void *buf, size_t count);
+ssize_t read(int fd, void *buf, size_t count);
 int ioctl(int fd, int request, void *buf);
 ssize_t write(int fd, const void *buf, size_t count);
 
-- 
1.8.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

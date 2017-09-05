Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dp8mq-0000hn-Kx
 for barebox@lists.infradead.org; Tue, 05 Sep 2017 08:00:53 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  5 Sep 2017 10:00:21 +0200
Message-Id: <20170905080021.22248-3-s.hauer@pengutronix.de>
In-Reply-To: <20170905080021.22248-1-s.hauer@pengutronix.de>
References: <20170905080021.22248-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] fs: Don't bother filesystems without link support with
 additional stat() calls
To: Barebox List <barebox@lists.infradead.org>
Cc: Dennis Menschel <menschel-d@posteo.de>

In __canonicalize_path() we only call stat() to know if the path
is a link or not. When the filesystem doesn't support links we
already know that it's not a link, so we do not need to call stat().
This helps the tftp filesystem since the parent directories of
a file to be opened won't be stat()ed anymore, something tftp
does not support.

Fixes: a602bebc fs: Implement links to directories

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/fs.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/fs/fs.c b/fs/fs.c
index a5efdd1423..f61ee091b5 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -145,6 +145,7 @@ char *normalise_path(const char *pathname)
 EXPORT_SYMBOL(normalise_path);
 
 static int __lstat(const char *filename, struct stat *s);
+static struct fs_device_d *get_fsdevice_by_path(const char *path);
 
 static char *__canonicalize_path(const char *_pathname, int level)
 {
@@ -167,6 +168,7 @@ static char *__canonicalize_path(const char *_pathname, int level)
 		char *p = strsep(&path, "/");
 		char *tmp;
 		char link[PATH_MAX] = {};
+		struct fs_device_d *fsdev;
 
 		if (!p)
 			break;
@@ -185,6 +187,14 @@ static char *__canonicalize_path(const char *_pathname, int level)
 		free(outpath);
 		outpath = tmp;
 
+		/*
+		 * Don't bother filesystems without link support
+		 * with an additional stat() call.
+		 */
+		fsdev = get_fsdevice_by_path(outpath);
+		if (!fsdev->driver->readlink)
+			continue;
+
 		ret = __lstat(outpath, &s);
 		if (ret)
 			goto out;
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YxDBY-0006GV-Q3
 for barebox@lists.infradead.org; Tue, 26 May 2015 11:38:22 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Tue, 26 May 2015 13:37:50 +0200
Message-Id: <1432640273-3895-7-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1432640273-3895-1-git-send-email-mkl@pengutronix.de>
References: <1432640273-3895-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH 6/9] state: backend_raw: factor out
 state_backend_raw_file_get_size() into separate function
To: barebox@lists.infradead.org

This patch factors out the state_backend_raw_file_get_size() into a separate
function and adds some ifdefs to make this code work under Linux aswell.

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 common/state.c | 73 ++++++++++++++++++++++++++++++++++++++++++++++++++--------
 1 file changed, 64 insertions(+), 9 deletions(-)

diff --git a/common/state.c b/common/state.c
index 7e5a31ae00a5..749c8e906851 100644
--- a/common/state.c
+++ b/common/state.c
@@ -1216,6 +1216,60 @@ out_free:
 	return ret;
 }
 
+#ifdef __BAREBOX__
+#define STAT_GIVES_SIZE(s) (S_ISREG(s.st_mode) || S_ISCHR(s.st_mode))
+#define BLKGET_GIVES_SIZE(s) 0
+#ifndef BLKGETSIZE64
+#define BLKGETSIZE64 -1
+#endif
+#else
+#define STAT_GIVES_SIZE(s) (S_ISREG(s.st_mode))
+#define BLKGET_GIVES_SIZE(s) (S_ISBLK(s.st_mode))
+#endif
+
+static int state_backend_raw_file_get_size(const char *path, size_t *out_size)
+{
+	struct mtd_info_user meminfo;
+	struct stat s;
+	int ret;
+
+	ret = stat(path, &s);
+	if (ret)
+		return -errno;
+
+	/*
+	 * under Linux, stat() gives the size only on regular files
+	 * under barebox, it works on char dev, too
+	 */
+	if (STAT_GIVES_SIZE(s)) {
+		*out_size = s.st_size;
+		return 0;
+	}
+
+	/* this works under Linux on block devs */
+	if (BLKGET_GIVES_SIZE(s)) {
+		int fd;
+
+		fd = open(path, O_RDONLY);
+		if (fd < 0)
+			return -errno;
+
+		ret = ioctl(fd, BLKGETSIZE64, out_size);
+		close(fd);
+		if (!ret)
+			return 0;
+	}
+
+	/* try mtd next */
+	ret = mtd_get_meminfo(path, &meminfo);
+	if (!ret) {
+		*out_size = meminfo.size;
+		return 0;
+	}
+
+	return ret;
+}
+
 /*
  * state_backend_raw_file - create a raw file backend store for a state instance
  *
@@ -1239,20 +1293,21 @@ int state_backend_raw_file(struct state *state, const char *of_path,
 	struct state_backend_raw *backend_raw;
 	struct state_backend *backend;
 	struct state_variable *sv;
-	int ret;
-	struct stat s;
 	struct mtd_info_user meminfo;
+	size_t path_size = 0;
+	int ret;
 
 	if (state->backend)
 		return -EBUSY;
 
-	ret = stat(path, &s);
-	if (!ret && S_ISCHR(s.st_mode)) {
-		if (size == 0)
-			size = s.st_size;
-		else if (offset + size > s.st_size)
-			return -EINVAL;
-	}
+	ret = state_backend_raw_file_get_size(path, &path_size);
+	if (ret)
+		return ret;
+
+	if (size == 0)
+		size = path_size;
+	else if (offset + size > path_size)
+		return -EINVAL;
 
 	backend_raw = xzalloc(sizeof(*backend_raw));
 	backend = &backend_raw->backend;
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

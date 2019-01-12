Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1giEbN-00027w-KL
 for barebox@lists.infradead.org; Sat, 12 Jan 2019 08:25:11 +0000
Received: by mail-pf1-x442.google.com with SMTP id b85so8054257pfc.3
 for <barebox@lists.infradead.org>; Sat, 12 Jan 2019 00:25:09 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sat, 12 Jan 2019 00:24:51 -0800
Message-Id: <20190112082456.7441-2-andrew.smirnov@gmail.com>
In-Reply-To: <20190112082456.7441-1-andrew.smirnov@gmail.com>
References: <20190112082456.7441-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 1/6] treewide: Introduce MAP_FAILED and replace ad-hoc
 constants with it
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 commands/go.c    | 2 +-
 commands/md.c    | 2 +-
 common/ratp/md.c | 2 +-
 crypto/digest.c  | 2 +-
 fs/fs.c          | 2 +-
 include/fs.h     | 2 ++
 6 files changed, 7 insertions(+), 5 deletions(-)

diff --git a/commands/go.c b/commands/go.c
index fb319b320c..ecc2ceb6e4 100644
--- a/commands/go.c
+++ b/commands/go.c
@@ -45,7 +45,7 @@ static int do_go(int argc, char *argv[])
 		}
 
 		addr = memmap(fd, PROT_READ);
-		if (addr == (void *)-1) {
+		if (addr == MAP_FAILED) {
 			perror("memmap");
 			goto out;
 		}
diff --git a/commands/md.c b/commands/md.c
index 3e83c723a3..a495fc8b41 100644
--- a/commands/md.c
+++ b/commands/md.c
@@ -68,7 +68,7 @@ static int do_mem_md(int argc, char *argv[])
 		return 1;
 
 	map = memmap(fd, PROT_READ);
-	if (map != (void *)-1) {
+	if (map != MAP_FAILED) {
 		ret = memory_display(map + start, start, size,
 				mode >> O_RWSIZE_SHIFT, swab);
 		goto out;
diff --git a/common/ratp/md.c b/common/ratp/md.c
index 9ce7e99dfd..ce343d7c7b 100644
--- a/common/ratp/md.c
+++ b/common/ratp/md.c
@@ -76,7 +76,7 @@ static int do_ratp_mem_md(const char *filename,
 		return -errno;
 
 	map = memmap(fd, PROT_READ);
-	if (map != (void *)-1) {
+	if (map != MAP_FAILED) {
 		memcpy(output, (uint8_t *)(map + start), size);
 		goto out;
 	}
diff --git a/crypto/digest.c b/crypto/digest.c
index bc6de0b98f..b653fbb032 100644
--- a/crypto/digest.c
+++ b/crypto/digest.c
@@ -232,7 +232,7 @@ int digest_file_window(struct digest *d, const char *filename,
 	}
 
 	buf = memmap(fd, PROT_READ);
-	if (buf == (void *)-1) {
+	if (buf == MAP_FAILED) {
 		buf = xmalloc(4096);
 		flags = 1;
 	}
diff --git a/fs/fs.c b/fs/fs.c
index 625ed10b70..a304bf1863 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -533,7 +533,7 @@ void *memmap(int fd, int flags)
 {
 	struct fs_driver_d *fsdrv;
 	FILE *f;
-	void *retp = (void *)-1;
+	void *retp = MAP_FAILED;
 	int ret;
 
 	if (check_fd(fd))
diff --git a/include/fs.h b/include/fs.h
index 181318f404..f1514afa92 100644
--- a/include/fs.h
+++ b/include/fs.h
@@ -130,6 +130,8 @@ int protect(int fd, size_t count, loff_t offset, int prot);
 int protect_file(const char *file, int prot);
 void *memmap(int fd, int flags);
 
+#define MAP_FAILED ((void *)-1)
+
 #define FILESIZE_MAX	((loff_t)-1)
 
 #define PROT_READ	1
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

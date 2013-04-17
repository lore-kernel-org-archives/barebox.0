Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1USQhk-0002KR-1l
 for barebox@lists.infradead.org; Wed, 17 Apr 2013 11:39:19 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 17 Apr 2013 13:39:06 +0200
Message-Id: <1366198748-22717-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1366198748-22717-1-git-send-email-s.hauer@pengutronix.de>
References: <1366198748-22717-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/7] memory commands: make rw_buf global
To: barebox@lists.infradead.org

The rw_buf is used by several memory commands. Make it global since
we want to split the memory commands into separate files. Also rename
it to mem_rw_buf.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/mem.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/commands/mem.c b/commands/mem.c
index 5bef3f7..a531bd5 100644
--- a/commands/mem.c
+++ b/commands/mem.c
@@ -39,7 +39,7 @@
 #define PRINTF(fmt,args...)
 #endif
 
-static char *rw_buf;
+char *mem_rw_buf;
 
 static char *DEVMEM = "/dev/mem";
 
@@ -135,7 +135,7 @@ static int do_mem_md(int argc, char *argv[])
 
 	do {
 		now = min(size, (loff_t)RW_BUF_SIZE);
-		r = read(fd, rw_buf, now);
+		r = read(fd, mem_rw_buf, now);
 		if (r < 0) {
 			perror("read");
 			goto out;
@@ -143,7 +143,7 @@ static int do_mem_md(int argc, char *argv[])
 		if (!r)
 			goto out;
 
-		if ((ret = memory_display(rw_buf, start, r,
+		if ((ret = memory_display(mem_rw_buf, start, r,
 				mode >> O_RWSIZE_SHIFT, swab)))
 			goto out;
 
@@ -306,7 +306,7 @@ static int do_mem_cmp(int argc, char *argv[])
 
 		now = min((loff_t)RW_BUF_SIZE, count);
 
-		r1 = read(sourcefd, rw_buf,  now);
+		r1 = read(sourcefd, mem_rw_buf,  now);
 		if (r1 < 0) {
 			perror("read");
 			goto out;
@@ -324,7 +324,7 @@ static int do_mem_cmp(int argc, char *argv[])
 		}
 
 		for (i = 0; i < now; i++) {
-			if (rw_buf[i] != rw_buf1[i]) {
+			if (mem_rw_buf[i] != rw_buf1[i]) {
 				printf("files differ at offset %d\n", offset);
 				goto out;
 			}
@@ -412,7 +412,7 @@ static int do_mem_cp(int argc, char *argv[])
 
 		now = min((loff_t)RW_BUF_SIZE, count);
 
-		r = read(sourcefd, rw_buf, now);
+		r = read(sourcefd, mem_rw_buf, now);
 		if (r < 0) {
 			perror("read");
 			goto out;
@@ -424,7 +424,7 @@ static int do_mem_cp(int argc, char *argv[])
 		tmp = 0;
 		now = r;
 		while (now) {
-			w = write(destfd, rw_buf + tmp, now);
+			w = write(destfd, mem_rw_buf + tmp, now);
 			if (w < 0) {
 				perror("write");
 				goto out;
@@ -566,8 +566,8 @@ static struct driver_d mem_drv = {
 
 static int mem_init(void)
 {
-	rw_buf = malloc(RW_BUF_SIZE);
-	if(!rw_buf)
+	mem_rw_buf = malloc(RW_BUF_SIZE);
+	if(!mem_rw_buf)
 		return -ENOMEM;
 
 	add_mem_device("mem", 0, ~0, IORESOURCE_MEM_WRITEABLE);
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

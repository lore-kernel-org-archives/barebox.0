Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YSljS-0001gd-G3
 for barebox@lists.infradead.org; Tue, 03 Mar 2015 12:15:31 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Tue,  3 Mar 2015 13:14:56 +0100
Message-Id: <1425384899-18809-11-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1425384899-18809-1-git-send-email-mkl@pengutronix.de>
References: <1425384899-18809-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH v3 10/13] sandbox: hostfile: is always mmpad'ed
To: barebox@lists.infradead.org

...so remove conditional code.

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 arch/sandbox/os/common.c | 16 ++++++----------
 1 file changed, 6 insertions(+), 10 deletions(-)

diff --git a/arch/sandbox/os/common.c b/arch/sandbox/os/common.c
index e2023165d542..3fa0370dfba3 100644
--- a/arch/sandbox/os/common.c
+++ b/arch/sandbox/os/common.c
@@ -209,7 +209,7 @@ extern void mem_malloc_init(void *start, void *end);
 static int add_image(char *str, char *devname)
 {
 	char *filename;
-	int readonly = 0, map = 1;
+	int readonly = 0;
 	struct stat s;
 	char *opt;
 	int fd, ret;
@@ -222,8 +222,6 @@ static int add_image(char *str, char *devname)
 	while ((opt = strtok(NULL, ","))) {
 		if (!strcmp(opt, "ro"))
 			readonly = 1;
-		if (!strcmp(opt, "map"))
-			map = 1;
 	}
 
 	printf("add file %s(%s)\n", filename, readonly ? "ro" : "");
@@ -245,13 +243,11 @@ static int add_image(char *str, char *devname)
 	hf->size = s.st_size;
 	hf->devname = strdup(devname);
 
-	if (map) {
-		hf->base = (unsigned long)mmap(NULL, hf->size,
-				PROT_READ | (readonly ? 0 : PROT_WRITE),
-				MAP_SHARED, fd, 0);
-		if ((void *)hf->base == MAP_FAILED)
-			printf("warning: mmapping %s failed\n", filename);
-	}
+	hf->base = (unsigned long)mmap(NULL, hf->size,
+			PROT_READ | (readonly ? 0 : PROT_WRITE),
+			MAP_SHARED, fd, 0);
+	if ((void *)hf->base == MAP_FAILED)
+		printf("warning: mmapping %s failed\n", filename);
 
 	ret = barebox_register_filedev(hf);
 	if (ret)
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

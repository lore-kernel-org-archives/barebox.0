Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YSljR-0001Cv-N0
 for barebox@lists.infradead.org; Tue, 03 Mar 2015 12:15:29 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Tue,  3 Mar 2015 13:14:50 +0100
Message-Id: <1425384899-18809-5-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH v3 04/13] sandbox: hostfile: clarify variable names
To: barebox@lists.infradead.org

Use "filename" for the name of the file in the host system, while "devname" for
the device in the sandbox.

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 arch/sandbox/board/hostfile.c                     |  2 +-
 arch/sandbox/mach-sandbox/include/mach/hostfile.h |  2 +-
 arch/sandbox/os/common.c                          | 16 ++++++++--------
 3 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/arch/sandbox/board/hostfile.c b/arch/sandbox/board/hostfile.c
index ac29cfa47a7d..5324da6f4802 100644
--- a/arch/sandbox/board/hostfile.c
+++ b/arch/sandbox/board/hostfile.c
@@ -73,7 +73,7 @@ static int hf_probe(struct device_d *dev)
 
 	priv->pdata = hf;
 
-	priv->cdev.name = hf->name;
+	priv->cdev.name = hf->devname;
 	priv->cdev.size = hf->size;
 	priv->cdev.ops = &hf_fops;
 	priv->cdev.priv = hf;
diff --git a/arch/sandbox/mach-sandbox/include/mach/hostfile.h b/arch/sandbox/mach-sandbox/include/mach/hostfile.h
index 7c4e67cf6847..747063182cf3 100644
--- a/arch/sandbox/mach-sandbox/include/mach/hostfile.h
+++ b/arch/sandbox/mach-sandbox/include/mach/hostfile.h
@@ -6,7 +6,7 @@ struct hf_platform_data {
 	size_t size;
 	unsigned long base;
 	char *filename;
-	char *name;
+	char *devname;
 };
 
 int barebox_register_filedev(struct hf_platform_data *hf);
diff --git a/arch/sandbox/os/common.c b/arch/sandbox/os/common.c
index cfb261acf2b5..e2023165d542 100644
--- a/arch/sandbox/os/common.c
+++ b/arch/sandbox/os/common.c
@@ -206,9 +206,9 @@ int linux_execve(const char * filename, char *const argv[], char *const envp[])
 extern void start_barebox(void);
 extern void mem_malloc_init(void *start, void *end);
 
-static int add_image(char *str, char *name)
+static int add_image(char *str, char *devname)
 {
-	char *file;
+	char *filename;
 	int readonly = 0, map = 1;
 	struct stat s;
 	char *opt;
@@ -218,7 +218,7 @@ static int add_image(char *str, char *name)
 	if (!hf)
 		return -1;
 
-	file = strtok(str, ",");
+	filename = strtok(str, ",");
 	while ((opt = strtok(NULL, ","))) {
 		if (!strcmp(opt, "ro"))
 			readonly = 1;
@@ -226,11 +226,11 @@ static int add_image(char *str, char *name)
 			map = 1;
 	}
 
-	printf("add file %s(%s)\n", file, readonly ? "ro" : "");
+	printf("add file %s(%s)\n", filename, readonly ? "ro" : "");
 
-	fd = open(file, readonly ? O_RDONLY : O_RDWR);
+	fd = open(filename, readonly ? O_RDONLY : O_RDWR);
 	hf->fd = fd;
-	hf->filename = file;
+	hf->filename = filename;
 
 	if (fd < 0) {
 		perror("open");
@@ -243,14 +243,14 @@ static int add_image(char *str, char *name)
 	}
 
 	hf->size = s.st_size;
-	hf->name = strdup(name);
+	hf->devname = strdup(devname);
 
 	if (map) {
 		hf->base = (unsigned long)mmap(NULL, hf->size,
 				PROT_READ | (readonly ? 0 : PROT_WRITE),
 				MAP_SHARED, fd, 0);
 		if ((void *)hf->base == MAP_FAILED)
-			printf("warning: mmapping %s failed\n", file);
+			printf("warning: mmapping %s failed\n", filename);
 	}
 
 	ret = barebox_register_filedev(hf);
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

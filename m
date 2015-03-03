Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YSljT-0001lk-0N
 for barebox@lists.infradead.org; Tue, 03 Mar 2015 12:15:32 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Tue,  3 Mar 2015 13:14:57 +0100
Message-Id: <1425384899-18809-12-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH v3 11/13] sandbox: move device name generation for image/env
 into add_image()
To: barebox@lists.infradead.org

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 arch/sandbox/os/common.c | 21 +++++++++++----------
 1 file changed, 11 insertions(+), 10 deletions(-)

diff --git a/arch/sandbox/os/common.c b/arch/sandbox/os/common.c
index 3fa0370dfba3..64a4b26ea6fd 100644
--- a/arch/sandbox/os/common.c
+++ b/arch/sandbox/os/common.c
@@ -206,9 +206,10 @@ int linux_execve(const char * filename, char *const argv[], char *const envp[])
 extern void start_barebox(void);
 extern void mem_malloc_init(void *start, void *end);
 
-static int add_image(char *str, char *devname)
+static int add_image(char *str, char *devname_template, int *devname_number)
 {
-	char *filename;
+	char *filename, *devname;
+	char tmp[16];
 	int readonly = 0;
 	struct stat s;
 	char *opt;
@@ -224,7 +225,12 @@ static int add_image(char *str, char *devname)
 			readonly = 1;
 	}
 
-	printf("add file %s(%s)\n", filename, readonly ? "ro" : "");
+	snprintf(tmp, sizeof(tmp),
+		 devname_template, (*devname_number)++);
+	devname = strdup(tmp);
+
+	printf("add %s backed by file %s%s\n", devname,
+	       filename, readonly ? "(ro)" : "");
 
 	fd = open(filename, readonly ? O_RDONLY : O_RDWR);
 	hf->fd = fd;
@@ -319,7 +325,6 @@ int main(int argc, char *argv[])
 	void *ram;
 	int opt, ret, fd;
 	int malloc_size = CONFIG_MALLOC_SIZE;
-	char str[6];
 	int fdno = 0, envno = 0, option_index = 0;
 
 	while (1) {
@@ -401,18 +406,14 @@ int main(int argc, char *argv[])
 
 		switch (opt) {
 		case 'i':
-			sprintf(str, "fd%d", fdno);
-			ret = add_image(optarg, str);
+			ret = add_image(optarg, "fd%d", &fdno);
 			if (ret)
 				exit(1);
-			fdno++;
 			break;
 		case 'e':
-			sprintf(str, "env%d", envno);
-			ret = add_image(optarg, str);
+			ret = add_image(optarg, "env%d", &envno);
 			if (ret)
 				exit(1);
-			envno++;
 			break;
 		default:
 			break;
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

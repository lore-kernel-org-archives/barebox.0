Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YSljT-0001o9-PK
 for barebox@lists.infradead.org; Tue, 03 Mar 2015 12:15:32 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Tue,  3 Mar 2015 13:14:58 +0100
Message-Id: <1425384899-18809-13-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH v3 12/13] sandbox: hostfile: improve --image parameter to
 support "dev=file"
To: barebox@lists.infradead.org

This patch makes it possible to specify the device name of a file added to the
sandbox via the --image paramter, e.g.:

    barebox --image foo=bar.image

This means the file "bar.image" is added as "/dev/foo" to the sandbox.

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 arch/sandbox/os/common.c | 15 ++++++++++++---
 1 file changed, 12 insertions(+), 3 deletions(-)

diff --git a/arch/sandbox/os/common.c b/arch/sandbox/os/common.c
index 64a4b26ea6fd..7aa0f5d3f2e0 100644
--- a/arch/sandbox/os/common.c
+++ b/arch/sandbox/os/common.c
@@ -225,9 +225,15 @@ static int add_image(char *str, char *devname_template, int *devname_number)
 			readonly = 1;
 	}
 
-	snprintf(tmp, sizeof(tmp),
-		 devname_template, (*devname_number)++);
-	devname = strdup(tmp);
+	/* parses: "devname=filename" */
+	devname = strtok(filename, "=");
+	filename = strtok(NULL, "=");
+	if (!filename) {
+		filename = devname;
+		snprintf(tmp, sizeof(tmp),
+			 devname_template, (*devname_number)++);
+		devname = strdup(tmp);
+	}
 
 	printf("add %s backed by file %s%s\n", devname,
 	       filename, readonly ? "(ro)" : "");
@@ -444,6 +450,9 @@ static void print_usage(const char *prgname)
 "  -i, --image=<file>   Map an image file to barebox. This option can be given\n"
 "                       multiple times. The files will show up as\n"
 "                       /dev/fd0 ... /dev/fdx under barebox.\n"
+"  -i, --image=<dev>=<file>\n"
+"                       Same as above, the files will show up as\n"
+"                       /dev/<dev>\n"
 "  -e, --env=<file>     Map a file with an environment to barebox. With this \n"
 "                       option, files are mapped as /dev/env0 ... /dev/envx\n"
 "                       and thus are used as the default environment.\n"
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

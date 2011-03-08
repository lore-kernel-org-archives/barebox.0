Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PwyD6-0003NT-9I
	for barebox@lists.infradead.org; Tue, 08 Mar 2011 14:48:31 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.72)
	(envelope-from <jbe@pengutronix.de>) id 1PwyD4-0007pL-0L
	for barebox@lists.infradead.org; Tue, 08 Mar 2011 15:48:26 +0100
Received: from jbe by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <jbe@pengutronix.de>) id 1PwyD3-0003Fx-Sx
	for barebox@lists.infradead.org; Tue, 08 Mar 2011 15:48:25 +0100
From: Juergen Beisert <jbe@pengutronix.de>
Date: Tue,  8 Mar 2011 15:48:22 +0100
Message-Id: <1299595704-11733-9-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1299595704-11733-1-git-send-email-jbe@pengutronix.de>
References: <1299595704-11733-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 08/10] Change 'linux16' command to use getopt()
To: barebox@lists.infradead.org

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 commands/linux16.c |   16 ++++++++++++----
 1 files changed, 12 insertions(+), 4 deletions(-)

diff --git a/commands/linux16.c b/commands/linux16.c
index 5f412e2..87245d4 100644
--- a/commands/linux16.c
+++ b/commands/linux16.c
@@ -28,6 +28,7 @@
 #include <environment.h>
 #include <fs.h>
 #include <errno.h>
+#include <getopt.h>
 #include <malloc.h>
 #include <asm/syslib.h>
 
@@ -153,18 +154,25 @@ struct linux_kernel_header {
 static int do_linux16(struct command *cmdtp, int argc, char *argv[])
 {
 	struct linux_kernel_header *lh = NULL;
-	int rc;
+	int rc, opt;
 	unsigned setup_sects;
 	unsigned real_mode_size;
 	size_t image_size;
 	const char *cmdline = getenv("bootargs");
+	const char *kernel_file;
 
-	if (argc < 2) {
-		perror("linux16");
+	while((opt = getopt(argc, argv, "")) > 0) {
+		switch(opt) {
+		}
+	}
+
+	if (optind == argc) {
+		printf("No kernel filename given\n");
 		return 1;
 	}
+	kernel_file = argv[optind];
 
-	lh = read_file(argv[1], &image_size);
+	lh = read_file(kernel_file, &image_size);
 	if (lh == NULL) {
 		printf("Cannot read file '%s'\n", argv[1]);
 		return 1;
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

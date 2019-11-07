Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSp4U-00020p-5E
 for barebox@lists.infradead.org; Thu, 07 Nov 2019 21:12:03 +0000
Received: from astat.fritz.box (a89-183-53-44.net-htp.de [89.183.53.44])
 by lynxeye.de (Postfix) with ESMTPA id F2D20E74240
 for <barebox@lists.infradead.org>; Thu,  7 Nov 2019 22:11:24 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Thu,  7 Nov 2019 22:11:04 +0100
Message-Id: <20191107211119.68064-4-dev@lynxeye.de>
In-Reply-To: <20191107211119.68064-1-dev@lynxeye.de>
References: <20191107211119.68064-1-dev@lynxeye.de>
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
Subject: [PATCH 03/18] ARM: zynq: use getopt in zynq_mkimage
To: barebox@lists.infradead.org

Makes extending the command line much easier.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 images/Makefile.zynq   |  4 +++-
 scripts/zynq_mkimage.c | 43 +++++++++++++++++++++++++++++++++---------
 2 files changed, 37 insertions(+), 10 deletions(-)

diff --git a/images/Makefile.zynq b/images/Makefile.zynq
index e162aafae336..cc0cf6d2dfa0 100644
--- a/images/Makefile.zynq
+++ b/images/Makefile.zynq
@@ -2,7 +2,9 @@
 # barebox image generation Makefile for Xilinx Zynq images
 #
 quiet_cmd_zynq_image = ZYNQIMG  $@
-      cmd_zynq_image = $(objtree)/scripts/zynq_mkimage $(subst .zynqimg,,$@) $@
+      cmd_zynq_image = \
+         $(objtree)/scripts/zynq_mkimage -f $(subst .zynqimg,,$@) -o $@
+
 $(obj)/%.zynqimg: $(obj)/% FORCE
 	$(call if_changed,zynq_image)
 
diff --git a/scripts/zynq_mkimage.c b/scripts/zynq_mkimage.c
index a096b834d156..905d6fc69a54 100644
--- a/scripts/zynq_mkimage.c
+++ b/scripts/zynq_mkimage.c
@@ -14,33 +14,58 @@
 
 #include <endian.h>
 #include <errno.h>
+#include <getopt.h>
 #include <malloc.h>
 #include <stdio.h>
 #include <stdlib.h>
 #include <sys/stat.h>
 
+static char *prgname;
+
 static void usage(char *name)
 {
-	printf("Usage: %s barebox-flash-image <outfile>\n", name);
+	fprintf(stderr, "usage: %s [OPTIONS]\n\n"
+			"-f <input>   input image file\n"
+			"-o <output>  output file\n"
+			"-h           this help\n", prgname);
+		exit(1);
 }
 
 int main(int argc, char *argv[])
 {
 	FILE *ifile, *ofile;
 	unsigned int *buf;
-	const char *infile;
-	const char *outfile;
+	const char *infile = NULL, *outfile = NULL;
 	struct stat st;
-	unsigned int i;
-	unsigned long sum = 0;
+	unsigned int i,sum = 0;
+	int opt;
 
-	if (argc != 3) {
-		usage(argv[0]);
+	prgname = argv[0];
+
+	while ((opt = getopt(argc, argv, "f:ho:")) != -1) {
+		switch (opt) {
+		case 'f':
+			infile = optarg;
+			break;
+		case 'o':
+			outfile = optarg;
+			break;
+		case 'h':
+			usage(argv[0]);
+		default:
+			exit(1);
+		}
+	}
+
+	if (!infile) {
+		fprintf(stderr, "input file not given\n");
 		exit(1);
 	}
 
-	infile = argv[1];
-	outfile = argv[2];
+	if (!outfile) {
+		fprintf(stderr, "output file not given\n");
+		exit(1);
+	}
 
 	if (stat(infile, &st) == -1) {
 		perror("stat");
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VPYon-0005pL-Ir
 for barebox@lists.infradead.org; Fri, 27 Sep 2013 14:14:54 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 27 Sep 2013 16:14:26 +0200
Message-Id: <1380291266-1261-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] scripts/omap_signGP: add getopt
To: barebox@lists.infradead.org

Instead of using positional arguments add proper getopt support.
This also adds a help text.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Makefile     |  3 +--
 scripts/omap_signGP.c | 59 +++++++++++++++++++++++++++++++++++++--------------
 2 files changed, 44 insertions(+), 18 deletions(-)

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 590a0d8..7787cfe 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -142,8 +142,7 @@ KBUILD_IMAGE := barebox.s5p
 endif
 
 quiet_cmd_mlo ?= IFT     $@
-	cmd_mlo ?= scripts/omap_signGP $< $(TEXT_BASE) 1; \
-		     test -e $<.ift && mv $<.ift MLO
+	cmd_mlo ?= scripts/omap_signGP -o MLO -l $(TEXT_BASE) -c $<
 
 MLO: $(KBUILD_BINARY)
 	$(call if_changed,mlo)
diff --git a/scripts/omap_signGP.c b/scripts/omap_signGP.c
index 633bcf5..482cfac 100644
--- a/scripts/omap_signGP.c
+++ b/scripts/omap_signGP.c
@@ -25,6 +25,7 @@
 #include <sys/stat.h>
 #include <string.h>
 #include <malloc.h>
+#include <getopt.h>
 #include <linux/types.h>
 
 #undef CH_WITH_CHRAM
@@ -233,6 +234,18 @@ static struct ch_chsettings_nochram config_header
 };
 #endif
 
+static void usage(const char *prgname)
+{
+	fprintf(stderr,
+"usage: %s [OPTIONS] <infile>\n"
+"\n"
+"Options:\n"
+"-o <outfile>     output to <outfile>\n"
+"-l <loadaddr>    specify load address\n"
+"-c               Add config header\n"
+"-h               This help\n"
+	, prgname);
+}
 
 #define err(...) do { int save_errno = errno; \
                       fprintf(stderr, __VA_ARGS__); \
@@ -243,29 +256,43 @@ static struct ch_chsettings_nochram config_header
 int main(int argc, char *argv[])
 {
 	int	i;
-	char	ifname[FILENAME_MAX], ofname[FILENAME_MAX], ch;
+	char	*ifname, *ofname = NULL, ch;
 	FILE	*ifile, *ofile;
-	unsigned long	loadaddr, len;
+	unsigned long	loadaddr = ~0, len;
 	struct stat	sinfo;
 	int ch_add = 0;
+	int opt;
 
+	while ((opt = getopt(argc, argv, "o:hl:c")) != -1) {
+		switch (opt) {
+		case 'h':
+			usage(argv[0]);
+			exit(0);
+		case 'o':
+			ofname = optarg;
+			break;
+		case 'l':
+			loadaddr = strtoul(optarg, NULL, 0);
+			break;
+		case 'c':
+			ch_add = 1;
+			break;
+		default:
+			exit(1);
+		}
+	}
 
-	/* Default to x-load.bin and 0x40200800. */
-	strcpy(ifname, "x-load.bin");
-	loadaddr = 0x40200800;
-
-	if ((argc == 2) || (argc == 3) || (argc == 4))
-		strcpy(ifname, argv[1]);
-
-	if ((argc == 3) || (argc == 4))
-		loadaddr = strtoul(argv[2], NULL, 16);
+	if (loadaddr == ~0) {
+		fprintf(stderr, "no loadaddr given\n");
+		exit(1);
+	}
 
-	if (argc == 4)
-		ch_add = strtoul(argv[3], NULL, 16);
+	if (optind == argc || !ofname) {
+		usage(argv[0]);
+		exit(1);
+	}
 
-	/* Form the output file name. */
-	strcpy(ofname, ifname);
-	strcat(ofname, ".ift");
+	ifname = argv[optind];
 
 	/* Open the input file. */
 	ifile = fopen(ifname, "rb");
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Pb7n9-0006cE-39
	for barebox@lists.infradead.org; Fri, 07 Jan 2011 08:35:28 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.72)
	(envelope-from <jbe@pengutronix.de>) id 1Pb7n5-0001hl-D2
	for barebox@lists.infradead.org; Fri, 07 Jan 2011 09:35:19 +0100
Received: from jbe by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <jbe@pengutronix.de>) id 1Pb7n5-0001uT-9B
	for barebox@lists.infradead.org; Fri, 07 Jan 2011 09:35:19 +0100
From: Juergen Beisert <jbe@pengutronix.de>
Date: Fri,  7 Jan 2011 09:35:15 +0100
Message-Id: <1294389316-6569-10-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1294389316-6569-1-git-send-email-jbe@pengutronix.de>
References: <1294389316-6569-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 09/10] LINUX16: Add selection of the VESA video mode
To: barebox@lists.infradead.org

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 commands/linux16.c |   35 ++++++++++++++++++++++++++++++++---
 1 files changed, 32 insertions(+), 3 deletions(-)

diff --git a/commands/linux16.c b/commands/linux16.c
index 87245d4..ba8db7c 100644
--- a/commands/linux16.c
+++ b/commands/linux16.c
@@ -141,6 +141,10 @@ struct linux_kernel_header {
 #endif
 } __attribute__ ((packed));
 
+/* This is -1. Keep this value in sync with the kernel */
+#define NORMAL_VGA	0xffff		/* 80x25 mode */
+#define ASK_VGA		0xfffd		/* ask for it at bootup */
+
 /**
  * Load an x86 Linux kernel bzImage and start it
  * @param cmdtp FIXME
@@ -157,12 +161,24 @@ static int do_linux16(struct command *cmdtp, int argc, char *argv[])
 	int rc, opt;
 	unsigned setup_sects;
 	unsigned real_mode_size;
+	int vid_mode = NORMAL_VGA;
 	size_t image_size;
 	const char *cmdline = getenv("bootargs");
 	const char *kernel_file;
 
-	while((opt = getopt(argc, argv, "")) > 0) {
+	while((opt = getopt(argc, argv, "v:")) > 0) {
 		switch(opt) {
+		case 'v':
+			vid_mode = simple_strtoul(optarg, NULL, 0);
+			if (vid_mode == 0) {
+				if (!strcmp(optarg, "ask"))
+					vid_mode = ASK_VGA;
+				else {
+					printf("Unknown video mode: %s\n", optarg);
+					return 1;
+				}
+			}
+			break;
 		}
 	}
 
@@ -227,6 +243,14 @@ static int do_linux16(struct command *cmdtp, int argc, char *argv[])
 		goto on_error;
 	}
 
+	/*
+	 * The kernel does not check for the "vga=<val>" kernel command line
+	 * parameter anymore. It expects this kind of information in the
+	 * boot parameters instead.
+	 */
+	if (vid_mode != NORMAL_VGA)
+		lh->vid_mode = vid_mode;
+
 	/* If SETUP_SECTS is not set, set it to the default.  */
 	if (setup_sects == 0) {
 		printf("Fixing setup sector count\n");
@@ -297,8 +321,9 @@ on_error:
 }
 
 BAREBOX_CMD_HELP_START(linux16)
-BAREBOX_CMD_HELP_USAGE("linux16 <file>\n")
-BAREBOX_CMD_HELP_SHORT("Boot a kernel on x86 via real mode code.\n")
+BAREBOX_CMD_HELP_USAGE("linux16 <file> [-v <mode>]\n")
+BAREBOX_CMD_HELP_SHORT("Boot a kernel <file> on x86 via real mode code.\n")
+BAREBOX_CMD_HELP_OPT  ("-v <mode>",   "VESA video mode number or 'ask'\n")
 BAREBOX_CMD_HELP_END
 
 /**
@@ -307,6 +332,10 @@ BAREBOX_CMD_HELP_END
 <p> Only kernel images in bzImage format are supported by now. See \ref
 x86_boot_preparation for more info about how to use this command.</p>
 
+<p> For the video mode refer the Linux kernel documentation
+'Documentation/fb/vesafb.txt' for correct VESA mode numbers. If the keyword
+'ask' instead of a number is given, the starting kernel will ask for a number.
+
  */
 
 BAREBOX_CMD_START(linux16)
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

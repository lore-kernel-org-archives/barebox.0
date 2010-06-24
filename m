Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1ORiu1-00043I-FM
	for barebox@lists.infradead.org; Thu, 24 Jun 2010 09:39:23 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 24 Jun 2010 11:39:10 +0200
Message-Id: <1277372356-32370-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1277372356-32370-1-git-send-email-s.hauer@pengutronix.de>
References: <1277372356-32370-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 05/11] armlinux: reorder tag setup
To: barebox@lists.infradead.org

We call the individual setup_*_tag functions from three different
boot commands. Waste less space by calling a single setup_tags function
instead.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/lib/armlinux.c |   51 ++++++++++++++++++++--------------------------
 1 files changed, 22 insertions(+), 29 deletions(-)

diff --git a/arch/arm/lib/armlinux.c b/arch/arm/lib/armlinux.c
index a38c6bf..89d989a 100644
--- a/arch/arm/lib/armlinux.c
+++ b/arch/arm/lib/armlinux.c
@@ -142,6 +142,25 @@ static void setup_end_tag (void)
 	params->hdr.size = 0;
 }
 
+static void setup_tags(void)
+{
+	const char *commandline = getenv("bootargs");
+
+	setup_start_tag();
+	setup_memory_tags();
+	setup_commandline_tag(commandline);
+#if 0
+	if (initrd_start && initrd_end)
+		setup_initrd_tag (initrd_start, initrd_end);
+#endif
+	setup_revision_tag();
+	setup_end_tag();
+
+	printf("commandline: %s\n"
+	       "arch_number: %d\n", commandline, armlinux_architecture);
+
+}
+
 void armlinux_set_bootparams(void *params)
 {
 	armlinux_bootparams = params;
@@ -172,7 +191,6 @@ int do_bootm_linux(struct image_data *data)
 {
 	void (*theKernel)(int zero, int arch, void *params);
 	image_header_t *os_header = &data->os->header;
-	const char *commandline = getenv("bootargs");
 
 	if (os_header->ih_type == IH_TYPE_MULTI) {
 		printf("Multifile images not handled at the moment\n");
@@ -189,23 +207,12 @@ int do_bootm_linux(struct image_data *data)
 		return -1;
 	}
 
-	printf("commandline: %s\n"
-	       "arch_number: %d\n", commandline, armlinux_architecture);
-
 	theKernel = (void *)ntohl(os_header->ih_ep);
 
 	debug("## Transferring control to Linux (at address 0x%p) ...\n",
 	       theKernel);
 
-	setup_start_tag();
-	setup_memory_tags();
-	setup_commandline_tag(commandline);
-#if 0
-	if (initrd_start && initrd_end)
-		setup_initrd_tag (initrd_start, initrd_end);
-#endif
-	setup_revision_tag();
-	setup_end_tag();
+	setup_tags();
 
 	if (relocate_image(data->os, (void *)ntohl(os_header->ih_load)))
 		return -1;
@@ -259,7 +266,6 @@ struct zimage_header {
 static int do_bootz(struct command *cmdtp, int argc, char *argv[])
 {
 	void (*theKernel)(int zero, int arch, void *params);
-	const char *commandline = getenv("bootargs");
 	int fd, ret;
 	struct zimage_header header;
 	void *zimage;
@@ -295,15 +301,7 @@ static int do_bootz(struct command *cmdtp, int argc, char *argv[])
 
 	printf("loaded zImage from %s with size %d\n", argv[1], header.end);
 
-	setup_start_tag();
-	setup_memory_tags();
-	setup_commandline_tag(commandline);
-#if 0
-	if (initrd_start && initrd_end)
-		setup_initrd_tag (initrd_start, initrd_end);
-#endif
-	setup_revision_tag();
-	setup_end_tag();
+	setup_tags();
 
 	shutdown_barebox();
 	theKernel(0, armlinux_architecture, armlinux_bootparams);
@@ -333,7 +331,6 @@ BAREBOX_CMD_END
 static int do_bootu(struct command *cmdtp, int argc, char *argv[])
 {
 	void (*theKernel)(int zero, int arch, void *params) = NULL;
-	const char *commandline = getenv("bootargs");
 	int fd;
 
 	if (argc != 2) {
@@ -348,11 +345,7 @@ static int do_bootu(struct command *cmdtp, int argc, char *argv[])
 	if (!theKernel)
 		theKernel = (void *)simple_strtoul(argv[1], NULL, 0);
 
-	setup_start_tag();
-	setup_memory_tags();
-	setup_commandline_tag(commandline);
-	setup_revision_tag();
-	setup_end_tag();
+	setup_tags();
 
 	shutdown_barebox();
 	theKernel(0, armlinux_architecture, armlinux_bootparams);
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

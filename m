Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [2001:6f8:1178:4:290:27ff:fe1d:cc33]
 (helo=metis.ext.pengutronix.de)
 by casper.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YdLI0-0000qy-1x
 for barebox@lists.infradead.org; Wed, 01 Apr 2015 16:14:48 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Wed,  1 Apr 2015 18:14:13 +0200
Message-Id: <1427904855-32548-9-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1427904855-32548-1-git-send-email-mkl@pengutronix.de>
References: <1427904855-32548-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH 08/10] imx-image: add option to prepare image for HAB signing
To: barebox@lists.infradead.org
Cc: sha@pengutronix.de

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 scripts/imx/imx-image.c | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/scripts/imx/imx-image.c b/scripts/imx/imx-image.c
index 1c032a3cb142..b3c77927b555 100644
--- a/scripts/imx/imx-image.c
+++ b/scripts/imx/imx-image.c
@@ -34,6 +34,7 @@
 
 #define MAX_DCD 1024
 #define HEADER_LEN 0x1000	/* length of the blank area + IVT + DCD */
+#define CSF_LEN 0x2000		/* length of the CSF (needed for HAB) */
 
 static uint32_t image_load_addr;
 static uint32_t image_dcd_offset;
@@ -42,6 +43,7 @@ static int curdcd;
 static int header_version;
 static int cpu_type;
 static int add_barebox_header;
+static int prepare_sign;
 
 /*
  * ============================================================================
@@ -195,6 +197,11 @@ static int add_header_v2(void *buf, int offset, uint32_t loadaddr, uint32_t imag
 	hdr->boot_data.start	= loadaddr;
 	hdr->boot_data.size	= imagesize;
 
+	if (prepare_sign) {
+		hdr->csf = loadaddr + imagesize;
+		hdr->boot_data.size += CSF_LEN;
+	}
+
 	hdr->dcd_header.tag	= TAG_DCD_HEADER;
 	hdr->dcd_header.length	= htobe16(sizeof(uint32_t) + dcdsize);
 	hdr->dcd_header.version	= DCD_VERSION;
@@ -215,6 +222,7 @@ static void usage(const char *prgname)
 		"-b           add barebox header to image. If used, barebox recognizes\n"
 		"             the image as regular barebox image which can be used as\n"
 		"             second stage image\n"
+		"-p           prepare image for signing\n"
 		"-h           this help\n", prgname);
 	exit(1);
 }
@@ -656,7 +664,7 @@ int main(int argc, char *argv[])
 	int dcd_only = 0;
 	int now = 0;
 
-	while ((opt = getopt(argc, argv, "c:hf:o:bd")) != -1) {
+	while ((opt = getopt(argc, argv, "c:hf:o:bdp")) != -1) {
 		switch (opt) {
 		case 'c':
 			configfile = optarg;
@@ -673,6 +681,9 @@ int main(int argc, char *argv[])
 		case 'd':
 			dcd_only = 1;
 			break;
+		case 'p':
+			prepare_sign = 1;
+			break;
 		case 'h':
 			usage(argv[0]);
 		default:
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

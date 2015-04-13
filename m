Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YhdSd-0004mq-2j
 for barebox@lists.infradead.org; Mon, 13 Apr 2015 12:27:32 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Mon, 13 Apr 2015 14:27:01 +0200
Message-Id: <1428928023-13401-2-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1428928023-13401-1-git-send-email-mkl@pengutronix.de>
References: <1428928023-13401-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH v3 1/3] imx-image: add option to prepare image for HAB signing
To: barebox@lists.infradead.org

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 scripts/imx/imx-image.c | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/scripts/imx/imx-image.c b/scripts/imx/imx-image.c
index cff1997573ac..25ea4d8d1b94 100644
--- a/scripts/imx/imx-image.c
+++ b/scripts/imx/imx-image.c
@@ -33,6 +33,7 @@
 
 #define MAX_DCD 1024
 #define HEADER_LEN 0x1000	/* length of the blank area + IVT + DCD */
+#define CSF_LEN 0x2000		/* length of the CSF (needed for HAB) */
 
 static uint32_t image_load_addr;
 static uint32_t image_dcd_offset;
@@ -41,6 +42,7 @@ static int curdcd;
 static int header_version;
 static int cpu_type;
 static int add_barebox_header;
+static int prepare_sign;
 
 /*
  * ============================================================================
@@ -194,6 +196,11 @@ static int add_header_v2(void *buf, int offset, uint32_t loadaddr, uint32_t imag
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
@@ -214,6 +221,7 @@ static void usage(const char *prgname)
 		"-b           add barebox header to image. If used, barebox recognizes\n"
 		"             the image as regular barebox image which can be used as\n"
 		"             second stage image\n"
+		"-p           prepare image for signing\n"
 		"-h           this help\n", prgname);
 	exit(1);
 }
@@ -655,7 +663,7 @@ int main(int argc, char *argv[])
 	int dcd_only = 0;
 	int now = 0;
 
-	while ((opt = getopt(argc, argv, "c:hf:o:bd")) != -1) {
+	while ((opt = getopt(argc, argv, "c:hf:o:bdp")) != -1) {
 		switch (opt) {
 		case 'c':
 			configfile = optarg;
@@ -672,6 +680,9 @@ int main(int argc, char *argv[])
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

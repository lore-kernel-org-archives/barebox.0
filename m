Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fkS9F-00084x-5t
 for barebox@lists.infradead.org; Tue, 31 Jul 2018 10:45:08 +0000
Received: from unicorn.hi.pengutronix.de
 ([2001:67c:670:100:a61f:72ff:fe69:16d] helo=unicorn)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <str@pengutronix.de>) id 1fkS91-0001CY-VP
 for barebox@lists.infradead.org; Tue, 31 Jul 2018 12:44:47 +0200
Received: from str by unicorn with local (Exim 4.89)
 (envelope-from <str@pengutronix.de>) id 1fkS99-0000ev-6G
 for barebox@lists.infradead.org; Tue, 31 Jul 2018 12:44:55 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Tue, 31 Jul 2018 12:44:37 +0200
Message-Id: <20180731104442.2451-15-s.trumtrar@pengutronix.de>
In-Reply-To: <20180731104442.2451-1-s.trumtrar@pengutronix.de>
References: <20180731104442.2451-1-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 14/19] scripts: socfpga_mkimage: add size feature for PBL
 barebox
To: Barebox List <barebox@lists.infradead.org>

Add the switch 's' to fixup the image size into the barebox header.
This is used by the Arria10 PBL code to know the complete image size.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 scripts/socfpga_mkimage.c | 25 +++++++++++++++++++++++--
 1 file changed, 23 insertions(+), 2 deletions(-)

diff --git a/scripts/socfpga_mkimage.c b/scripts/socfpga_mkimage.c
index d7fe1b1b69f7..fedcfb5b6f28 100644
--- a/scripts/socfpga_mkimage.c
+++ b/scripts/socfpga_mkimage.c
@@ -256,7 +256,7 @@ static int add_socfpga_header(void *buf, size_t size, unsigned start_addr, unsig
 
 static void usage(const char *prgname)
 {
-	fprintf(stderr, "usage: %s [-hb] [-v version] <infile> -o <outfile>\n", prgname);
+	fprintf(stderr, "usage: %s [-hbs] [-v version] <infile> -o <outfile>\n", prgname);
 }
 
 int main(int argc, char *argv[])
@@ -268,9 +268,11 @@ int main(int argc, char *argv[])
 	int fd;
 	int max_image_size, min_image_size = 80;
 	int addsize = 0, pad;
+	int fixup_size = 0;
 	unsigned int version = 0;
+	int fixed_size = 0;
 
-	while ((opt = getopt(argc, argv, "o:hbv:")) != -1) {
+	while ((opt = getopt(argc, argv, "o:hbsv:")) != -1) {
 		switch (opt) {
 		case 'v':
 			version = atoi(optarg);
@@ -285,6 +287,9 @@ int main(int argc, char *argv[])
 			min_image_size = 0;
 			addsize = 512;
 			break;
+		case 's':
+			fixup_size = 1;
+			break;
 		case 'h':
 			usage(argv[0]);
 			exit(0);
@@ -349,10 +354,26 @@ int main(int argc, char *argv[])
 		exit(1);
 	}
 
+	fixed_size = s.st_size;
+
 	close(fd);
 
 	if (add_barebox_header) {
+		int barebox_size = 0;
+		int *image_size = buf + 0x2c;
+
 		memcpy(buf, bb_header, sizeof(bb_header));
+
+		if (fixup_size) {
+			fixed_size = htole32(fixed_size);
+
+			barebox_size = *((uint32_t *)buf + (fixed_size + addsize + pad) / 4 - 1);
+
+			/* size of barebox+pbl, header, size */
+			fixed_size += (barebox_size + addsize + 4);
+
+			*image_size = fixed_size;
+		}
 	}
 
 	ret = add_socfpga_header(buf, s.st_size + 4 + addsize + pad, addsize,
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

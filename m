Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x22c.google.com ([2607:f8b0:400e:c00::22c])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fSYXg-0007Uj-Nw
 for barebox@lists.infradead.org; Tue, 12 Jun 2018 01:56:18 +0000
Received: by mail-pf0-x22c.google.com with SMTP id q1-v6so11210863pff.13
 for <barebox@lists.infradead.org>; Mon, 11 Jun 2018 18:56:06 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 11 Jun 2018 18:53:21 -0700
Message-Id: <20180612015326.26192-50-andrew.smirnov@gmail.com>
In-Reply-To: <20180612015326.26192-1-andrew.smirnov@gmail.com>
References: <20180612015326.26192-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v4 49/54] scripts: imx-image: Limit v2 header size to
 HEADER_LEN
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Given the following:

 1. Assembly code, namely "b 0x1000" instruction, in bb_header[]
    assumes that i.MX image header occupies first HEADER_LEN bytes and
    bootloader executable is located right after.

 2. Code in imx_image_size() assumes that i.MX image header is
    HEADER_LEN bytes

 3. Original code handling v2 header allocated more than HEADER_LEN
    buffer to store IVT + boot data + DCD. However, the code writing
    that buffer to disk is only set up to use first HEADER_LEN bytes
    and to silently discard the rest as a side effect.

Let's be conservative and limit total size of v2 header to not exceed
Inital Load Region (4K or HEADER_LEN) to match what's being done for
v1.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 scripts/imx/imx-image.c | 31 +++++++++++++++++++------------
 1 file changed, 19 insertions(+), 12 deletions(-)

diff --git a/scripts/imx/imx-image.c b/scripts/imx/imx-image.c
index a8a26e0ee..294f51a90 100644
--- a/scripts/imx/imx-image.c
+++ b/scripts/imx/imx-image.c
@@ -35,7 +35,13 @@
 
 #include <include/filetype.h>
 
-#define MAX_DCD 1024
+#define FLASH_HEADER_OFFSET 0x400
+
+/*
+ * Conservative DCD element limit set to restriction v2 header size to
+ * HEADER_SIZE
+ */
+#define MAX_DCD ((HEADER_LEN - FLASH_HEADER_OFFSET - sizeof(struct imx_flash_header_v2)) / sizeof(u32))
 #define CSF_LEN 0x2000		/* length of the CSF (needed for HAB) */
 
 static uint32_t dcdtable[MAX_DCD];
@@ -50,7 +56,6 @@ static char *prgname;
  * ============================================================================
  */
 
-#define FLASH_HEADER_OFFSET 0x400
 
 static uint32_t bb_header[] = {
 	0xea0003fe,	/* b 0x1000 */
@@ -261,7 +266,7 @@ static int write_mem_v1(uint32_t addr, uint32_t val, int width, int set_bits, in
 	}
 
 	if (curdcd > MAX_DCD - 3) {
-		fprintf(stderr, "At maximum %d dcd entried are allowed\n", MAX_DCD);
+		fprintf(stderr, "At maximum %d dcd entried are allowed\n", (int)MAX_DCD);
 		return -ENOMEM;
 	}
 
@@ -383,7 +388,7 @@ static int write_mem_v2(uint32_t addr, uint32_t val, int width, int set_bits, in
 		cmd |= 1 << 3;
 
 	if (curdcd > MAX_DCD - 3) {
-		fprintf(stderr, "At maximum %d dcd entried are allowed\n", MAX_DCD);
+		fprintf(stderr, "At maximum %d dcd entried are allowed\n", (int)MAX_DCD);
 		return -ENOMEM;
 	}
 
@@ -454,7 +459,7 @@ static int check(const struct config_data *data, uint32_t cmd, uint32_t addr,
 		return -EINVAL;
 	}
 	if (curdcd > MAX_DCD - 3) {
-		fprintf(stderr, "At maximum %d dcd entried are allowed\n", MAX_DCD);
+		fprintf(stderr, "At maximum %d dcd entried are allowed\n", (int)MAX_DCD);
 		return -ENOMEM;
 	}
 
@@ -495,7 +500,7 @@ static int nop(const struct config_data *data)
 	case 2:
 		if (curdcd > MAX_DCD - 1) {
 			fprintf(stderr, "At maximum %d DCD entries allowed\n",
-				MAX_DCD);
+				(int)MAX_DCD);
 			return -ENOMEM;
 		}
 
@@ -780,12 +785,12 @@ int main(int argc, char *argv[])
 		exit(0);
 	}
 
+	buf = calloc(1, HEADER_LEN);
+	if (!buf)
+		exit(1);
+
 	switch (data.header_version) {
 	case 1:
-		buf = calloc(1, HEADER_LEN);
-		if (!buf)
-			exit(1);
-
 		add_header_v1(&data, buf);
 		if (data.srkfile) {
 			ret = add_srk(buf, data.image_dcd_offset, data.image_load_addr,
@@ -795,9 +800,11 @@ int main(int argc, char *argv[])
 		}
 		break;
 	case 2:
-		buf = calloc(1, data.image_dcd_offset + sizeof(struct imx_flash_header_v2) + MAX_DCD * sizeof(u32));
-		if (!buf)
+		if (data.image_dcd_offset + sizeof(struct imx_flash_header_v2) +
+		    MAX_DCD * sizeof(u32) > HEADER_LEN) {
+			fprintf(stderr, "i.MX v2 header exceeds SW limit set by imx-image\n");
 			exit(1);
+		}
 
 		add_header_v2(&data, buf);
 		break;
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

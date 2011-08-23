Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1Qvshz-0004oJ-Hv
	for barebox@lists.infradead.org; Tue, 23 Aug 2011 15:16:09 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 23 Aug 2011 17:16:02 +0200
Message-Id: <1314112562-26525-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1314112562-26525-1-git-send-email-s.hauer@pengutronix.de>
References: <1314112562-26525-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM linux: support Linux images with CONFIG_AUTO_ZRELADDR
To: barebox@lists.infradead.org

These images have to be located in the first 128MB of SDRAM, so
use the following strategy:

- first try to map the image. If the pointer is within the first
  128MB of sdram everything is fine.
- if we can't map the image, check for SDRAM being smaller than
  128MB we can use malloc for allocating space for the image.
- As a last fallback we simply put the image to 8MB into SDRAM.
  This is not very clean. We try our best by checking that we
  won't overwrite the malloc space.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/lib/bootz.c |   59 +++++++++++++++++++++++++++++++++++++------------
 1 files changed, 44 insertions(+), 15 deletions(-)

diff --git a/arch/arm/lib/bootz.c b/arch/arm/lib/bootz.c
index cd8f495..13bed25 100644
--- a/arch/arm/lib/bootz.c
+++ b/arch/arm/lib/bootz.c
@@ -4,9 +4,11 @@
 #include <fcntl.h>
 #include <errno.h>
 #include <malloc.h>
+#include <sizes.h>
 #include <asm/byteorder.h>
 #include <asm/armlinux.h>
 #include <asm/system.h>
+#include <asm-generic/memory_layout.h>
 
 struct zimage_header {
 	u32	unused[9];
@@ -20,9 +22,11 @@ struct zimage_header {
 static int do_bootz(struct command *cmdtp, int argc, char *argv[])
 {
 	int fd, ret, swap = 0;
-	struct zimage_header header;
+	struct zimage_header __header, *header;
 	void *zimage;
 	u32 end;
+	int usemap = 0;
+	struct arm_memory *mem = list_first_entry(&memory_list, struct arm_memory, list);
 
 	if (argc != 2) {
 		barebox_cmd_usage(cmdtp);
@@ -35,13 +39,27 @@ static int do_bootz(struct command *cmdtp, int argc, char *argv[])
 		return 1;
 	}
 
-	ret = read(fd, &header, sizeof(header));
-	if (ret < sizeof(header)) {
-		printf("could not read %s\n", argv[1]);
-		goto err_out;
+	/*
+	 * We can save the memcpy of the zImage if it already is in
+	 * the first 128MB of SDRAM.
+	 */
+	zimage = memmap(fd, PROT_READ);
+	if (zimage && (unsigned long)zimage  >= mem->start &&
+			(unsigned long)zimage < mem->start + SZ_128M) {
+		usemap = 1;
+		header = zimage;
+	}
+
+	if (!usemap) {
+		header = &__header;
+		ret = read(fd, header, sizeof(header));
+		if (ret < sizeof(*header)) {
+			printf("could not read %s\n", argv[1]);
+			goto err_out;
+		}
 	}
 
-	switch (header.magic) {
+	switch (header->magic) {
 #ifdef CONFIG_BOOT_ENDIANNESS_SWITCH
 	case swab32(ZIMAGE_MAGIC):
 		swap = 1;
@@ -50,22 +68,33 @@ static int do_bootz(struct command *cmdtp, int argc, char *argv[])
 	case ZIMAGE_MAGIC:
 		break;
 	default:
-		printf("invalid magic 0x%08x\n", header.magic);
+		printf("invalid magic 0x%08x\n", header->magic);
 		goto err_out;
 	}
 
-	end = header.end;
+	end = header->end;
 
 	if (swap)
 		end = swab32(end);
 
-	zimage = xmalloc(end);
-	memcpy(zimage, &header, sizeof(header));
-
-	ret = read(fd, zimage + sizeof(header), end - sizeof(header));
-	if (ret < end - sizeof(header)) {
-		printf("could not read %s\n", argv[1]);
-		goto err_out1;
+	if (!usemap) {
+		if (mem->size <= SZ_128M) {
+			zimage = xmalloc(end);
+		} else {
+			zimage = (void *)mem->start + SZ_8M;
+			if (mem->start + SZ_8M + end >= MALLOC_BASE) {
+				printf("won't overwrite malloc space with image\n");
+				goto err_out1;
+			}
+		}
+
+		memcpy(zimage, &header, sizeof(header));
+
+		ret = read(fd, zimage + sizeof(header), end - sizeof(header));
+		if (ret < end - sizeof(header)) {
+			printf("could not read %s\n", argv[1]);
+			goto err_out1;
+		}
 	}
 
 	if (swap) {
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

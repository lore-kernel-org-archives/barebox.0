Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pd0-x236.google.com ([2607:f8b0:400e:c02::236])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Yq544-0007qC-Bf
 for barebox@lists.infradead.org; Wed, 06 May 2015 19:33:07 +0000
Received: by pdbnk13 with SMTP id nk13so18662970pdb.0
 for <barebox@lists.infradead.org>; Wed, 06 May 2015 12:32:43 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed,  6 May 2015 12:32:06 -0700
Message-Id: <1430940733-4415-12-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1430940733-4415-1-git-send-email-andrew.smirnov@gmail.com>
References: <1430940733-4415-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH v3 11/18] imx-image: Correctly fill image size in prepended
 header
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

If called with '-b' option 'imx-image' tool prepends barebox header to
the image, but the tool does not fill the data at image size offset
correctly. Fix that.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 scripts/imx/Makefile    |  2 ++
 scripts/imx/imx-image.c | 11 ++++++++++-
 2 files changed, 12 insertions(+), 1 deletion(-)

diff --git a/scripts/imx/Makefile b/scripts/imx/Makefile
index be0b490..ee0acc1 100644
--- a/scripts/imx/Makefile
+++ b/scripts/imx/Makefile
@@ -6,5 +6,7 @@ always          := $(hostprogs-y)
 HOSTCFLAGS_imx-usb-loader.o = `pkg-config --cflags libusb-1.0`
 HOSTLOADLIBES_imx-usb-loader  = `pkg-config --libs libusb-1.0`
 
+HOSTCFLAGS_imx-image.o = -I$(srctree)
+
 imx-usb-loader-objs := imx-usb-loader.o
 imx-image-objs := imx-image.o
diff --git a/scripts/imx/imx-image.c b/scripts/imx/imx-image.c
index 25ea4d8..e765c1d 100644
--- a/scripts/imx/imx-image.c
+++ b/scripts/imx/imx-image.c
@@ -27,6 +27,8 @@
 #include <fcntl.h>
 #include <endian.h>
 
+#include <include/filetype.h>
+
 #define ARRAY_SIZE(arr) (sizeof(arr) / sizeof((arr)[0]))
 #define offsetof(TYPE, MEMBER) __builtin_offsetof(TYPE, MEMBER)
 #define roundup(x, y) ((((x) + ((y) - 1)) / (y)) * (y))
@@ -91,9 +93,12 @@ static int add_header_v1(void *buf, int offset, uint32_t loadaddr, uint32_t imag
 {
 	struct imx_flash_header *hdr;
 	int dcdsize = curdcd * sizeof(uint32_t);
+	uint32_t *psize = buf + ARM_HEAD_SIZE_OFFSET;
 
-	if (add_barebox_header)
+	if (add_barebox_header) {
 		memcpy(buf, bb_header, sizeof(bb_header));
+		*psize = imagesize;
+	}
 
 	buf += offset;
 	hdr = buf;
@@ -177,6 +182,7 @@ static int add_header_v2(void *buf, int offset, uint32_t loadaddr, uint32_t imag
 {
 	struct imx_flash_header_v2 *hdr;
 	int dcdsize = curdcd * sizeof(uint32_t);
+	uint32_t *psize = buf + ARM_HEAD_SIZE_OFFSET;
 
 	if (add_barebox_header)
 		memcpy(buf, bb_header, sizeof(bb_header));
@@ -201,6 +207,9 @@ static int add_header_v2(void *buf, int offset, uint32_t loadaddr, uint32_t imag
 		hdr->boot_data.size += CSF_LEN;
 	}
 
+	if (add_barebox_header)
+		*psize = hdr->boot_data.size;
+
 	hdr->dcd_header.tag	= TAG_DCD_HEADER;
 	hdr->dcd_header.length	= htobe16(sizeof(uint32_t) + dcdsize);
 	hdr->dcd_header.version	= DCD_VERSION;
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

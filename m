Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aYv6e-0000Yl-Iu
 for barebox@lists.infradead.Org; Thu, 25 Feb 2016 12:33:21 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 25 Feb 2016 13:32:57 +0100
Message-Id: <1456403577-24700-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] bootm: Fix booting uImages
To: Barebox List <barebox@lists.infradead.org>

This fixes:
0a37e22d (bootm: use names instead of numbers for image parts)

This commit switches to strings for the image numbers for better FIT
image support (which uses names instead of numbers). These strings
may be NULL when no image number is given. They are used uninitialzed
in several places. Introduce a wrapper function to convert the string
into a number. Check for NULL here in which case we return 0 which
is the correct value.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/bootm.c | 18 ++++++++++++------
 1 file changed, 12 insertions(+), 6 deletions(-)

diff --git a/common/bootm.c b/common/bootm.c
index 7d00f8e..6d22aab 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -75,6 +75,13 @@ static const char * const bootm_verify_names[] = {
 	[BOOTM_VERIFY_SIGNATURE] = "signature",
 };
 
+static int uimage_part_num(const char *partname)
+{
+	if (!partname)
+		return 0;
+	return simple_strtoul(partname, NULL, 0);
+}
+
 /*
  * bootm_load_os() - load OS to RAM
  *
@@ -109,7 +116,7 @@ int bootm_load_os(struct image_data *data, unsigned long load_address)
 	if (data->os) {
 		int num;
 
-		num = simple_strtoul(data->os_part, NULL, 0);
+		num = uimage_part_num(data->os_part);
 
 		data->os_res = uimage_load_to_sdram(data->os,
 			num, load_address);
@@ -224,7 +231,7 @@ int bootm_load_initrd(struct image_data *data, unsigned long load_address)
 			return ret;
 		}
 
-		num = simple_strtoul(data->initrd_part, NULL, 0);
+		num = uimage_part_num(data->initrd_part);
 
 		data->initrd_res = uimage_load_to_sdram(data->initrd,
 			num, load_address);
@@ -258,7 +265,7 @@ static int bootm_open_oftree_uimage(struct image_data *data, size_t *size,
 {
 	enum filetype ft;
 	const char *oftree = data->oftree_file;
-	int num = simple_strtoul(data->oftree_part, NULL, 0);
+	int num = uimage_part_num(data->oftree_part);
 	struct uimage_handle *of_handle;
 	int release = 0;
 
@@ -407,8 +414,7 @@ int bootm_get_os_size(struct image_data *data)
 	int ret;
 
 	if (data->os)
-		return uimage_get_size(data->os,
-				       simple_strtoul(data->os_part, NULL, 0));
+		return uimage_get_size(data->os, uimage_part_num(data->os_part));
 	if (data->os_fit)
 		return data->os_fit->kernel_size;
 
@@ -574,7 +580,7 @@ int bootm_boot(struct bootm_data *bootm_data)
 			data->os_file);
 	if (os_type == filetype_uimage &&
 			data->os->header.ih_type == IH_TYPE_MULTI)
-		printf(", multifile image %s", data->os_part);
+		printf(", multifile image %d", uimage_part_num(data->os_part));
 	printf("\n");
 
 	if (data->os_address == UIMAGE_SOME_ADDRESS)
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

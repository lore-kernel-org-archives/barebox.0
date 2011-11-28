Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RUwAd-0000aC-Q2
 for barebox@lists.infradead.org; Mon, 28 Nov 2011 08:02:39 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 28 Nov 2011 09:02:20 +0100
Message-Id: <1322467340-10596-15-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1322467340-10596-1-git-send-email-s.hauer@pengutronix.de>
References: <1322467340-10596-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 14/14] bootm: use initrd_address and initrd_size
To: barebox@lists.infradead.org

Make these fields in struct image_data the reference for image handlers

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/lib/armlinux.c |   10 +++++-----
 commands/bootm.c        |   11 ++++++-----
 include/boot.h          |    1 +
 3 files changed, 12 insertions(+), 10 deletions(-)

diff --git a/arch/arm/lib/armlinux.c b/arch/arm/lib/armlinux.c
index ebe4137..6c001e7 100644
--- a/arch/arm/lib/armlinux.c
+++ b/arch/arm/lib/armlinux.c
@@ -200,7 +200,7 @@ static void setup_serial_tag(void)
 	}
 }
 
-static void setup_initrd_tag(image_header_t *header)
+static void setup_initrd_tag(unsigned long start, unsigned long size)
 {
 	/* an ATAG_INITRD node tells the kernel where the compressed
 	 * ramdisk can be found. ATAG_RDIMG is a better name, actually.
@@ -208,8 +208,8 @@ static void setup_initrd_tag(image_header_t *header)
 	params->hdr.tag = ATAG_INITRD2;
 	params->hdr.size = tag_size(tag_initrd);
 
-	params->u.initrd.start = image_get_load(header);
-	params->u.initrd.size = image_get_data_size(header);
+	params->u.initrd.start = start;
+	params->u.initrd.size = size;
 
 	params = tag_next(params);
 }
@@ -228,8 +228,8 @@ static void setup_tags(struct image_data *data, int swap)
 	setup_memory_tags();
 	setup_commandline_tag(commandline, swap);
 
-	if (data && data->initrd)
-		setup_initrd_tag (&data->initrd->header);
+	if (data && (data->initrd_size > 0))
+		setup_initrd_tag(data->initrd_address, data->initrd_size);
 
 	setup_revision_tag();
 	setup_serial_tag();
diff --git a/commands/bootm.c b/commands/bootm.c
index 027dd37..b9f85a8 100644
--- a/commands/bootm.c
+++ b/commands/bootm.c
@@ -178,9 +178,6 @@ static int do_bootm(struct command *cmdtp, int argc, char *argv[])
 		}
 	}
 
-	if (data.initrd && data.initrd_address != ~0)
-		data.initrd->header.ih_load = cpu_to_uimage(data.initrd_address);
-
 	if (optind == argc) {
 		ret = COMMAND_ERROR_USAGE;
 		goto err_out;
@@ -218,8 +215,12 @@ static int do_bootm(struct command *cmdtp, int argc, char *argv[])
 		goto err_out;
 
 	if (data.initrd) {
-		ret = relocate_image(data.initrd,
-				(void *)image_get_load(&data.initrd->header));
+		if (data.initrd && data.initrd_address == ~0)
+			data.initrd_address = uimage_to_cpu(data.initrd->header.ih_load);
+
+		data.initrd_size = image_get_data_size(&data.initrd->header);
+
+		ret = relocate_image(data.initrd, (void *)data.initrd_address);
 		if (ret)
 			goto err_out;
 	}
diff --git a/include/boot.h b/include/boot.h
index b22514b..b67e034 100644
--- a/include/boot.h
+++ b/include/boot.h
@@ -10,6 +10,7 @@ struct image_data {
 	const char *oftree;
 	int verify;
 	unsigned long initrd_address;
+	unsigned long initrd_size;
 };
 
 struct image_handler {
-- 
1.7.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

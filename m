Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X9E0i-0003V5-UY
 for barebox@lists.infradead.org; Mon, 21 Jul 2014 13:52:13 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 21 Jul 2014 15:51:54 +0200
Message-Id: <1405950714-23212-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM: Android image boot: automatically assign space for kernel
To: barebox@lists.infradead.org

The Android image format makes the same mistake as the U-Boot uImage
format: It makes the load address mandatory. In a way it is even worse
since the 'fastboot' host tool thinks that 0x10000000 is a good default
when no address has been specified on the command line.
Instead of only relying on the Kernel load address in the image try
to automatically find a good base address when requesting the addresses
from the image failed.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/lib/bootm.c | 18 ++++++++++++++++--
 1 file changed, 16 insertions(+), 2 deletions(-)

diff --git a/arch/arm/lib/bootm.c b/arch/arm/lib/bootm.c
index 4896d01..c4f094c 100644
--- a/arch/arm/lib/bootm.c
+++ b/arch/arm/lib/bootm.c
@@ -414,6 +414,11 @@ static int do_bootm_aimage(struct image_data *data)
 	int to_read;
 	struct android_header_comp *cmp;
 	unsigned long mem_free;
+	unsigned long mem_start, mem_size;
+
+	ret = sdram_start_and_size(&mem_start, &mem_size);
+	if (ret)
+		return ret;
 
 	fd = open(data->os_file, O_RDONLY);
 	if (fd < 0) {
@@ -447,8 +452,17 @@ static int do_bootm_aimage(struct image_data *data)
 	cmp = &header->kernel;
 	data->os_res = request_sdram_region("akernel", cmp->load_addr, cmp->size);
 	if (!data->os_res) {
-		ret = -ENOMEM;
-		goto err_out;
+		pr_err("Cannot request region 0x%08x - 0x%08x, using default load address\n",
+				cmp->load_addr, cmp->size);
+
+		data->os_address = mem_start + PAGE_ALIGN(cmp->size * 4);
+		data->os_res = request_sdram_region("akernel", data->os_address, cmp->size);
+		if (!data->os_res) {
+			pr_err("Cannot request region 0x%08x - 0x%08x\n",
+					cmp->load_addr, cmp->size);
+			ret = -ENOMEM;
+			goto err_out;
+		}
 	}
 
 	ret = aimage_load_resource(fd, data->os_res, buf, header->page_size);
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

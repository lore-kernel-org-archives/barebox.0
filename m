Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WfykM-0006Cg-2x
 for barebox@lists.infradead.org; Thu, 01 May 2014 21:42:27 +0000
Received: from dude.hi.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de)
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <l.stach@pengutronix.de>) id 1Wfyjx-0005gz-9v
 for barebox@lists.infradead.org; Thu, 01 May 2014 23:42:01 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Thu,  1 May 2014 23:42:03 +0200
Message-Id: <1398980524-19937-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 1/2] ARM: bootm: be more clever while deciding where to put
 zImage
To: barebox@lists.infradead.org

For small systems we would put the zImage at 8MiB after
the start of memory, and put the DT a bit after the zImage.
When we encounter an image which is bigger than 8MiB
uncompressed, the kernel would try to relocate itself
and overwrite the DT.

Try to be more clever at zImage placement to avoid
triggering the kernel relocation.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/lib/bootm.c | 57 ++++++++++++++++++++++++++--------------------------
 1 file changed, 29 insertions(+), 28 deletions(-)

diff --git a/arch/arm/lib/bootm.c b/arch/arm/lib/bootm.c
index c63cbc02e35f..dc7d2d9dfbae 100644
--- a/arch/arm/lib/bootm.c
+++ b/arch/arm/lib/bootm.c
@@ -237,7 +237,8 @@ static int do_bootz_linux(struct image_data *data)
 	int fd, ret, swap = 0;
 	struct zimage_header __header, *header;
 	void *zimage;
-	u32 end;
+	u32 end, start;
+	size_t image_size;
 	unsigned long load_address = data->os_address;
 	unsigned long mem_start, mem_size, mem_free;
 
@@ -245,23 +246,6 @@ static int do_bootz_linux(struct image_data *data)
 	if (ret)
 		return ret;
 
-	if (load_address == UIMAGE_INVALID_ADDRESS) {
-		/*
-		 * The kernel should stay in the first 128MiB of RAM, recommended
-		 * is 32MiB into RAM so that relocation prior to decompression
-		 * can be avoided.
-		 */
-		if (mem_size > SZ_64M)
-			data->os_address = mem_start + SZ_32M;
-		else
-			data->os_address = mem_start + SZ_8M;
-
-		load_address = data->os_address;
-		if (bootm_verbose(data))
-			printf("no os load address, defaulting to 0x%08lx\n",
-				load_address);
-	}
-
 	fd = open(data->os_file, O_RDONLY);
 	if (fd < 0) {
 		perror("open");
@@ -288,14 +272,33 @@ static int do_bootz_linux(struct image_data *data)
 	}
 
 	end = header->end;
+	start = header->start;
 
-	if (swap)
+	if (swap) {
 		end = swab32(end);
+		start = swab32(start);
+	}
+
+	image_size = end - start;
+
+	if (load_address == UIMAGE_INVALID_ADDRESS) {
+		/*
+		 * Just use a conservative default of 4 times the size of the
+		 * compressed image, to avoid the need for the kernel to
+		 * relocate itself before decompression.
+		 */
+		data->os_address = mem_start + PAGE_ALIGN(image_size * 4);
 
-	data->os_res = request_sdram_region("zimage", load_address, end);
+		load_address = data->os_address;
+		if (bootm_verbose(data))
+			printf("no os load address, defaulting to 0x%08lx\n",
+				load_address);
+	}
+
+	data->os_res = request_sdram_region("zimage", load_address, image_size);
 	if (!data->os_res) {
 		pr_err("bootm/zImage: failed to request memory at 0x%lx to 0x%lx (%d).\n",
-		       load_address, load_address + end, end);
+		       load_address, load_address + image_size, image_size);
 		ret = -ENOMEM;
 		goto err_out;
 	}
@@ -304,7 +307,8 @@ static int do_bootz_linux(struct image_data *data)
 
 	memcpy(zimage, header, sizeof(*header));
 
-	ret = read_full(fd, zimage + sizeof(*header), end - sizeof(*header));
+	ret = read_full(fd, zimage + sizeof(*header),
+			image_size - sizeof(*header));
 	if (ret < 0)
 		goto err_out;
 	if (ret < end - sizeof(*header)) {
@@ -326,13 +330,10 @@ static int do_bootz_linux(struct image_data *data)
 	close(fd);
 
 	/*
-	 * Put devicetree/initrd at maximum to 128MiB into RAM to not
-	 * risk to put it outside of lowmem.
+	 * put oftree/initrd close behind compressed kernel image to avoid
+	 * placing it outside of the kernels lowmem.
 	 */
-	if (mem_size > SZ_256M)
-		mem_free = mem_start + SZ_128M;
-	else
-		mem_free = PAGE_ALIGN(data->os_res->end + SZ_1M);
+	mem_free = PAGE_ALIGN(data->os_res->end + SZ_1M);
 
 	return __do_bootm_linux(data, mem_free, swap);
 
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

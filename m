Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aZO1A-0003ON-IL
 for barebox@lists.infradead.org; Fri, 26 Feb 2016 19:25:38 +0000
From: Lucas Stach <dev@lynxeye.de>
Date: Fri, 26 Feb 2016 20:12:38 +0100
Message-Id: <1456513959-26781-2-git-send-email-dev@lynxeye.de>
In-Reply-To: <1456513959-26781-1-git-send-email-dev@lynxeye.de>
References: <1456513959-26781-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 2/3] arm: bootm: unify kernel load address calculation
To: barebox@lists.infradead.org

From: Lucas Stach <l.stach@pengutronix.de>

Instead of having the same logic for uImage and zImage types duplicated
in the code, split it out into a separate function. This does not change
the behavior of the calculation.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/lib/bootm.c | 74 ++++++++++++++++++++++++++--------------------------
 1 file changed, 37 insertions(+), 37 deletions(-)

diff --git a/arch/arm/lib/bootm.c b/arch/arm/lib/bootm.c
index 1913d5f..a18d149 100644
--- a/arch/arm/lib/bootm.c
+++ b/arch/arm/lib/bootm.c
@@ -67,6 +67,34 @@ static int sdram_start_and_size(unsigned long *start, unsigned long *size)
 	return 0;
 }
 
+static void get_kernel_addresses(unsigned long mem_start, size_t image_size,
+				 int verbose, unsigned long *load_address,
+				 unsigned long *spacing)
+{
+	/*
+	 * We don't know the exact decompressed size so just use a conservative
+	 * default of 4 times the size of the compressed image.
+	 */
+	size_t image_decomp_size = PAGE_ALIGN(image_size * 4);
+
+	/*
+	 * By default put oftree/initrd close behind compressed kernel image to
+	 * avoid placing it outside of the kernels lowmem region.
+	 */
+	*spacing = SZ_1M;
+
+	if (*load_address == UIMAGE_INVALID_ADDRESS) {
+		/*
+		 * Place the kernel at an address where it does not need to
+		 * relocate itself before decompression.
+		 */
+		*load_address = mem_start + image_decomp_size;
+		if (verbose)
+			printf("no OS load address, defaulting to 0x%08lx\n",
+				*load_address);
+	}
+}
+
 static int __do_bootm_linux(struct image_data *data, unsigned long free_mem, int swap)
 {
 	unsigned long kernel;
@@ -124,7 +152,7 @@ static int __do_bootm_linux(struct image_data *data, unsigned long free_mem, int
 
 static int do_bootm_linux(struct image_data *data)
 {
-	unsigned long load_address, mem_start, mem_size, mem_free;
+	unsigned long load_address, mem_start, mem_size, mem_free, spacing;
 	int ret;
 
 	ret = sdram_start_and_size(&mem_start, &mem_size);
@@ -133,28 +161,14 @@ static int do_bootm_linux(struct image_data *data)
 
 	load_address = data->os_address;
 
-	if (load_address == UIMAGE_INVALID_ADDRESS) {
-		/*
-		 * Just use a conservative default of 4 times the size of the
-		 * compressed image, to avoid the need for the kernel to
-		 * relocate itself before decompression.
-		 */
-		load_address = mem_start + PAGE_ALIGN(
-		               bootm_get_os_size(data) * 4);
-		if (bootm_verbose(data))
-			printf("no OS load address, defaulting to 0x%08lx\n",
-				load_address);
-	}
+	get_kernel_addresses(mem_start, bootm_get_os_size(data),
+			     bootm_verbose(data), &load_address, &spacing);
 
 	ret = bootm_load_os(data, load_address);
 	if (ret)
 		return ret;
 
-	/*
-	 * put oftree/initrd close behind compressed kernel image to avoid
-	 * placing it outside of the kernels lowmem.
-	 */
-	mem_free = PAGE_ALIGN(data->os_res->end + SZ_1M);
+	mem_free = PAGE_ALIGN(data->os_res->end + spacing);
 
 	return __do_bootm_linux(data, mem_free, 0);
 }
@@ -251,7 +265,7 @@ static int do_bootz_linux(struct image_data *data)
 	u32 end, start;
 	size_t image_size;
 	unsigned long load_address = data->os_address;
-	unsigned long mem_start, mem_size, mem_free;
+	unsigned long mem_start, mem_size, mem_free, spacing;
 
 	ret = sdram_start_and_size(&mem_start, &mem_size);
 	if (ret)
@@ -291,20 +305,10 @@ static int do_bootz_linux(struct image_data *data)
 	}
 
 	image_size = end - start;
+	load_address = data->os_address;
 
-	if (load_address == UIMAGE_INVALID_ADDRESS) {
-		/*
-		 * Just use a conservative default of 4 times the size of the
-		 * compressed image, to avoid the need for the kernel to
-		 * relocate itself before decompression.
-		 */
-		data->os_address = mem_start + PAGE_ALIGN(image_size * 4);
-
-		load_address = data->os_address;
-		if (bootm_verbose(data))
-			printf("no OS load address, defaulting to 0x%08lx\n",
-				load_address);
-	}
+	get_kernel_addresses(mem_start, image_size, bootm_verbose(data),
+			     &load_address, &spacing);
 
 	data->os_res = request_sdram_region("zimage", load_address, image_size);
 	if (!data->os_res) {
@@ -340,11 +344,7 @@ static int do_bootz_linux(struct image_data *data)
 
 	close(fd);
 
-	/*
-	 * put oftree/initrd close behind compressed kernel image to avoid
-	 * placing it outside of the kernels lowmem.
-	 */
-	mem_free = PAGE_ALIGN(data->os_res->end + SZ_1M);
+	mem_free = PAGE_ALIGN(data->os_res->end + spacing);
 
 	return __do_bootm_linux(data, mem_free, swap);
 
-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

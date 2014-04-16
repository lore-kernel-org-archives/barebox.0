Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WaRtd-0003gz-7s
 for barebox@lists.infradead.org; Wed, 16 Apr 2014 15:37:10 +0000
Message-ID: <1397662552.5070.12.camel@weser.hi.pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Wed, 16 Apr 2014 17:35:52 +0200
In-Reply-To: <832723417.563292.1397561282646.open-xchange@email.1und1.de>
References: <832723417.563292.1397561282646.open-xchange@email.1und1.de>
Mime-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Beaglebone white: Kernel doesn't start with barebox-2014.03.0
To: Rolf Evers-Fischer <embedded24@evers-fischer.de>
Cc: barebox@lists.infradead.org

Hi Rolf,

Am Dienstag, den 15.04.2014, 13:28 +0200 schrieb Rolf Evers-Fischer:
> Dear all,
> after update to barebox-2014.03.0, the kernel on my beaglebone-white doesn't
> start anymore.
> The last line, which appears, is "booting kernel with devicetree".
> I discovered that the problem is caused by the commit [1]. When I revert this
> commit, everything works fine.
> 
> Here is some more info, which I gathered with additional printfs:
> Without this commit, the '__do_bootm_linux()' function is called with
>  data->initrd_address = 0xffffffff
>  data->os_res->start = 0x80008000
>  data->os_entry = 0
>  swap = 0
> Finally it invokes the 'start_linux()' function with
>  kernel = 0x80008000
>  swap = 0
>  initrd_start = 0x80808000
>  initrd_size = 0
>  data->oftree = 0x8b1e0000
> 
> With this commit (i.e. when the kernel doesn't start), the '__do_bootm_linux()'
> function is called with the same parameters as above plus
>  free_mem = 0x8041f000
> It invokes the 'start_linux()' function with
>  kernel = 0x80008000
>  swap = 0
>  initrd_start = 0x8041f000
>  initrd_size = 0
>  data->oftree = 0x8041f000
> 
> Do you have any idea, how to fix this problem? For now I will continue using
> barebox-2014.03.0 without the problematic commit.
> 
> [1] http://www.spinics.net/lists/u-boot-v2/msg17345.html
>     "ARM: bootm: pass free memory to __do_bootm_linux"

I think you are trying to boot a uImage. Is this right?

Could you please test with a zImage? If it still fails, can you try the
following patch?

--------------------------------->8------------------------------------------
From 6e51388bda025508b28d723960055656fa50784d Mon Sep 17 00:00:00 2001
From: Lucas Stach <l.stach@pengutronix.de>
Date: Wed, 16 Apr 2014 17:23:33 +0200
Subject: [PATCH] ARM: bootm: be more clever while deciding where to put zImage

For small systems we would put the zImage at 8MiB after
the start of memory, and put the DT a bit after the zImage.
When we encounter an image which is bigger than 8MiB
uncompressed, the kernel would try to relocate itself
and overwrite the DT.

Try to be more clever at zImage placement to avoid
triggering the kernel relocation.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/lib/bootm.c | 31 ++++++++++++++-----------------
 1 file changed, 14 insertions(+), 17 deletions(-)

diff --git a/arch/arm/lib/bootm.c b/arch/arm/lib/bootm.c
index c63cbc02e35f..2d4b18b7f794 100644
--- a/arch/arm/lib/bootm.c
+++ b/arch/arm/lib/bootm.c
@@ -245,23 +245,6 @@ static int do_bootz_linux(struct image_data *data)
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
@@ -292,6 +275,20 @@ static int do_bootz_linux(struct image_data *data)
 	if (swap)
 		end = swab32(end);
 
+	if (load_address == UIMAGE_INVALID_ADDRESS) {
+		/*
+		 * Just use a conservative default of 4 times the size of the
+		 * compressed image, to avoid the need for the kernel to reocate itself
+		 * before decompression.
+		 */
+		data->os_address = mem_start + PAGE_ALIGN(end * 4);
+
+		load_address = data->os_address;
+		if (bootm_verbose(data))
+			printf("no os load address, defaulting to 0x%08lx\n",
+				load_address);
+	}
+
 	data->os_res = request_sdram_region("zimage", load_address, end);
 	if (!data->os_res) {
 		pr_err("bootm/zImage: failed to request memory at 0x%lx to 0x%lx (%d).\n",
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGITO-00068g-O3
 for barebox@lists.infradead.org; Mon, 23 Mar 2020 08:30:16 +0000
Date: Mon, 23 Mar 2020 09:30:12 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200323083012.GP3335@pengutronix.de>
References: <CAGm1_kssX7T6KHNp7pp2dbfSUXSH4_RtOB3jo+6Ldwi11rB5YA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAGm1_kssX7T6KHNp7pp2dbfSUXSH4_RtOB3jo+6Ldwi11rB5YA@mail.gmail.com>
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
Subject: Re: am335x: load a kernel with integrated initramfs
To: Yegor Yefremov <yegorslists@googlemail.com>
Cc: barebox <barebox@lists.infradead.org>, Lucas Stach <lst@pengutronix.de>

Hi Yegor,

On Fri, Mar 20, 2020 at 09:29:04AM +0100, Yegor Yefremov wrote:
> I get an "handler failed with: Out of memory" message when trying to
> load my 22MB large kernel-fit.itb. Below you can see the related log:
> 
> mounted /dev/nand0.UBI.ubi.kernel on /mnt/nand0.UBI.ubi.kernel
> YY: bootm_boot
> YY: read file 0, size 22661672, PAGE_SIZE 4096
> YY: fit_open
> FIT: Opened FIT image: Simple image with single Linux kernel and FDT blob
> FIT: configuration 'conf221@1': Boot Linux kernel with FDT blob (221)
> FIT: image 'kernel@1': 'Vanilla Linux kernel'
> FIT: /images/kernel@1/hash@1: hash OK
> 
> Loading open firmware Device Tree flattened Binary
> '/mnt/nand0.UBI.ubi.kernel/kernel-fit.itb'
> OS image not yet relocated
> Passing control to FIT image handler
> YY: do_bootm_linux
> YY: before bootm_load_os
> YY: bootm_load_os
> YY: kernel size 22484352
> YY: for each memory bank: size 22484352
> __request_region: 0x86b37000:0x880a857f conflicts with 0x87efe860:0x8fdfd0bf

So your kernel has a size of 22484352 bytes. We want to places the
kernel at a place where we do not risk that it overwrites itself during
decompression. We assume that the kernel gets five times bigger during
decompression. So we put it at 0x80000000 + 22484352 * 5. Here the image
takes 22484352 bytes, so ends at 0x80000000 + 22484352 * (5 + 1) which
is already inside the malloc area.

Try the attached patch, it should solve that issue.

Besides this obvious bug you can also adjust the sime of the malloc
area. By default roughly half of the available RAM is used for malloc,
but in Kconfig you can adjust it to a smaller size which gives you more
place for the kernel.

Sascha

--------------------------------------8<-------------------------------

From ca440da09c3cdb83e17a6f0a99f24f69300c0ba3 Mon Sep 17 00:00:00 2001
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 23 Mar 2020 09:17:36 +0100
Subject: [PATCH] ARM: bootm: make sure we place the kernel in free memory

When placing the kernel image in memory make sure we do not
place it too high, outside of the available memory, outside of the
available memory.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/lib32/bootm.c | 15 ++++++++++++++-
 1 file changed, 14 insertions(+), 1 deletion(-)

diff --git a/arch/arm/lib32/bootm.c b/arch/arm/lib32/bootm.c
index d64e705c40..971ebee8ac 100644
--- a/arch/arm/lib32/bootm.c
+++ b/arch/arm/lib32/bootm.c
@@ -104,11 +104,24 @@ static int get_kernel_addresses(size_t image_size,
 	spacing = SZ_1M;
 
 	if (*load_address == UIMAGE_INVALID_ADDRESS) {
+		unsigned long mem_end = mem_start + mem_size - 1;
+		unsigned long kaddr;
+
 		/*
 		 * Place the kernel at an address where it does not need to
 		 * relocate itself before decompression.
 		 */
-		*load_address = mem_start + image_decomp_size;
+		kaddr = mem_start + image_decomp_size;
+
+		/*
+		 * Make sure we do not place the image past the end of the
+		 * available memory.
+		 */
+		if (kaddr + image_size + spacing >= mem_end)
+			kaddr = mem_end - image_size - spacing;
+
+		*load_address = PAGE_ALIGN_DOWN(kaddr);
+
 		if (verbose)
 			printf("no OS load address, defaulting to 0x%08lx\n",
 				*load_address);
-- 
2.25.1


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

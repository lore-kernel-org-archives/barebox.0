Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gH69O-0008Pz-EU
 for barebox@lists.infradead.org; Mon, 29 Oct 2018 11:56:08 +0000
Date: Mon, 29 Oct 2018 12:55:53 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181029115553.uyz3u7cpaxgczguz@pengutronix.de>
References: <20181028142451.23205-1-p@yai.se>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181028142451.23205-1-p@yai.se>
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
Subject: Re: [PATCH] bootm: abort if kernel is outside the first 128MB
To: Patrick Boettcher <p@yai.se>
Cc: barebox@lists.infradead.org, lst@pengutronix.de

On Sun, Oct 28, 2018 at 03:24:51PM +0100, Patrick Boettcher wrote:
> Huge images and the pessimistic approach of barebox to put the
> kernel-image at five times its size may lead to it being
> positioned not in the first 128MiB of RAM. This is however
> required for it to be boot. (Referring to
> 
>   https://www.kernel.org/doc/Documentation/arm/Booting
> 
> "Calling the kernel image")
> 
> This commit aborts the boot and displays a message if the
> image is located outside the first 128MB.
> 
> Signed-off-by: Patrick Boettcher <p@yai.se>
> ---
>  arch/arm/lib32/bootm.c | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/arch/arm/lib32/bootm.c b/arch/arm/lib32/bootm.c
> index 4cf570e57..42febdc71 100644
> --- a/arch/arm/lib32/bootm.c
> +++ b/arch/arm/lib32/bootm.c
> @@ -121,6 +121,12 @@ static int get_kernel_addresses(size_t image_size,
>  		spacing += image_decomp_size;
>  	}
>  
> +	if ((*load_address - mem_start) > SZ_128M) {
> +		printf("boot aborted: kernel address outside 128MiB "
> +		       "(0x%08lx)\n", *load_address);
> +		return -ENOMEM;
> +	}

This is a bit harsh. The 128MiB problem only exists with CONFIG_AUTO_ZRELADDR
enabled in the kernel, otherwise it's fine to put the kernel above that
limit.

We only put the kernel above the 128MiB limit because we want to find a
place where the kernel doesn't have to move itself around in order to
not overwrite itself during decompression.

Could we instead just use 128MiB as an upper limit to put the kernel to?

Sascha

--------------------------------8<----------------------------

From 25479ebf25de6464b51cdfc103cf4639b142d70c Mon Sep 17 00:00:00 2001
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 29 Oct 2018 12:55:20 +0100
Subject: [PATCH] ARM: bootm: Make sure the kernel is in the first 128MiB of
 memory

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/lib32/bootm.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm/lib32/bootm.c b/arch/arm/lib32/bootm.c
index 4cf570e577..7e00fe922e 100644
--- a/arch/arm/lib32/bootm.c
+++ b/arch/arm/lib32/bootm.c
@@ -96,6 +96,14 @@ static int get_kernel_addresses(size_t image_size,
 	if (mem_size >= SZ_64M)
 		image_decomp_size = max_t(size_t, image_decomp_size, SZ_32M);
 
+	/*
+	 * with CONFIG_AUTO_ZRELADDR the Kernel calculates the memory base
+	 * address by masking the current instruction counter with 0xf8000000,
+	 * so make sure we do not put the kernel outside this limit.
+	 */
+	if (image_decomp_size >= SZ_128M)
+		image_decomp_size = SZ_128M - 16;
+
 	/*
 	 * By default put oftree/initrd close behind compressed kernel image to
 	 * avoid placing it outside of the kernels lowmem region.
-- 
2.19.0


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdBvS-0001wZ-Fn
 for barebox@lists.infradead.org; Tue, 18 Jun 2019 11:05:20 +0000
References: <20190618093833.2005-1-antonynpavlov@gmail.com>
 <20190618093833.2005-3-antonynpavlov@gmail.com>
From: Oleksij Rempel <linux@rempel-privat.de>
Message-ID: <408c4d4f-154c-f6e8-83b1-ad19d3f01319@rempel-privat.de>
Date: Tue, 18 Jun 2019 13:05:06 +0200
MIME-Version: 1.0
In-Reply-To: <20190618093833.2005-3-antonynpavlov@gmail.com>
Content-Language: en-US
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [RFC 2/2] MIPS: relocate_code: fix barebox image memcpy() size
To: Antony Pavlov <antonynpavlov@gmail.com>, barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

Am 18.06.19 um 11:38 schrieb Antony Pavlov:
> In this relocate_code() piece 'length' is greater than 'barebox_image_size':
>
>      #define MAX_BSS_SIZE SZ_1M
>      ...
>      length = barebox_image_size + MAX_BSS_SIZE;
>      relocaddr = ALIGN_DOWN(ram_size - barebox_image_size, SZ_64K);
>      ...
>      memcpy((void *)relocaddr, __image_start, length);
>
> so 'ram_size' overflow occurs during memcpy().
>
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>

Thenk you!

This patch is fixing relocatable barebox for malta-qemu and ihas no regressions on ar9331 DPT-Module!

Tested-by: Oleksij Rempel <o.rempel@pengutronix.de>

> ---
>   arch/mips/lib/reloc.c | 11 +++++------
>   1 file changed, 5 insertions(+), 6 deletions(-)
>
> diff --git a/arch/mips/lib/reloc.c b/arch/mips/lib/reloc.c
> index 9756d61666..14ba6167dd 100644
> --- a/arch/mips/lib/reloc.c
> +++ b/arch/mips/lib/reloc.c
> @@ -40,8 +40,6 @@
>   #include <linux/sizes.h>
>   #include <asm-generic/memory_layout.h>
>
> -#define MAX_BSS_SIZE SZ_1M
> -
>   void main_entry(void *fdt, u32 fdt_size);
>   void relocate_code(void *fdt, u32 fdt_size, u32 relocaddr);
>
> @@ -127,8 +125,10 @@ void relocate_code(void *fdt, u32 fdt_size, u32 ram_size)
>   	unsigned int type;
>   	long off;
>
> -	length = barebox_image_size + MAX_BSS_SIZE;
> -	relocaddr = ALIGN_DOWN(ram_size - barebox_image_size, SZ_64K);
> +	bss_len = (unsigned long)&__bss_stop - (unsigned long)__bss_start;
> +
> +	length = barebox_image_size + bss_len;
> +	relocaddr = ALIGN_DOWN(ram_size - length, SZ_64K);
>   	relocaddr = KSEG0ADDR(relocaddr);
>   	new_stack = relocaddr - MALLOC_SIZE - 16;
>
> @@ -143,7 +143,7 @@ void relocate_code(void *fdt, u32 fdt_size, u32 ram_size)
>   		panic("Mis-aligned relocation\n");
>
>   	/* Copy Barebox to RAM */
> -	memcpy((void *)relocaddr, __image_start, length);
> +	memcpy((void *)relocaddr, __image_start, barebox_image_size);
>
>   	/* Now apply relocations to the copy in RAM */
>   	buf = __rel_start;
> @@ -162,7 +162,6 @@ void relocate_code(void *fdt, u32 fdt_size, u32 ram_size)
>
>   	/* Clear the .bss section */
>   	bss_start = (uint8_t *)((unsigned long)__bss_start + off);
> -	bss_len = (unsigned long)&__bss_stop - (unsigned long)__bss_start;
>   	memset(bss_start, 0, bss_len);
>
>   	 __asm__ __volatile__ (
>


--
Regards,
Oleksij

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

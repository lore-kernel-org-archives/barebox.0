Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1StCEo-00025C-9S
 for barebox@lists.infradead.org; Mon, 23 Jul 2012 06:35:27 +0000
Date: Mon, 23 Jul 2012 08:35:23 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120723063523.GV30009@pengutronix.de>
References: <20120723042052.GK22657@game.jcrosoft.org>
 <1343017563-27932-1-git-send-email-plagnioj@jcrosoft.com>
 <1343017563-27932-6-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1343017563-27932-6-git-send-email-plagnioj@jcrosoft.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 6/7] compressed: rename barebox target to zbarebox and
 zbarebox.bin
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Mon, Jul 23, 2012 at 06:26:02AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Today we link to whole barebox and rely on gcc to cleanup via it's garbage
> collector.
> Now we specify only what is needed and introduce a new directory with source
> only related to the compressed target.
> 
> Build it in arch/<arm>/compressed
> Rebuild all the needed object.
> 
> Keep the previous target untouched.
> This fix the modules support and allow custom flags for each file.
> 
> Import string functions from linux 3.4 (arch/arm/boot/compressed/string.c) and
> implement a dummy panic.

This does not work on all targets having a lowlevel init:

arch/arm/compressed/start.o: In function `reset':
start.c:(.text_bare_init.text+0x28): undefined reference to `board_init_lowlevel'

Why don't we simply do this:


diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 647c536..12869b3 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -150,11 +150,9 @@ TEXT_BASE = $(CONFIG_TEXT_BASE)
 
 CPPFLAGS += -DTEXT_BASE=$(TEXT_BASE)
 
-ifndef CONFIG_MODULES
 # Add cleanup flags
 CPPFLAGS += -fdata-sections -ffunction-sections
 LDFLAGS_barebox += -static --gc-sections
-endif
 
 barebox.netx: barebox.bin
 	$(Q)scripts/gen_netx_image -i barebox.bin -o barebox.netx		\

>  
> +void barebox_decompress(uint32_t offset)
> +{
> +	uint32_t compressed_start, compressed_end, len;
> +	void (*uncompress)(void *compressed_start, unsigned int len);
> +
> +	compressed_start = (uint32_t)&input_data - offset;
> +	compressed_end = (uint32_t)&input_data_end - offset;
> +	len = compressed_end - compressed_start;
> +
> +	uncompress = barebox_uncompress;
> +
> +	/* call barebox_uncompress with its absolute address */
> +	__asm__ __volatile__(
> +		"mov r0, %1\n"
> +		"mov r1, %2\n"
> +		"mov pc, %0\n"
> +		:
> +		: "r"(uncompress), "r"(compressed_start), "r"(len)
> +		: "r0", "r1");
> +}
> +#else
> +void barebox_decompress(uint32_t offset) {}
> +#endif
>  
>  /*
>   * Board code can jump here by either returning from board_init_lowlevel
> @@ -137,8 +161,6 @@ void barebox_uncompress(void *compressed_start, unsigned int len)
>  void __naked __section(.text_ll_return) board_init_lowlevel_return(void)
>  {
>  	uint32_t r, addr, offset;
> -	uint32_t compressed_start, compressed_end, len;
> -	void (*uncompress)(void *compressed_start, unsigned int len);
>  
>  	/*
>  	 * Get runtime address of this function. Do not
> @@ -169,20 +191,7 @@ void __naked __section(.text_ll_return) board_init_lowlevel_return(void)
>  	__asm__ __volatile__("mcr p15, 0, %0, c7, c5, 0" : : "r" (0));
>  
>  	if (IS_ENABLED(CONFIG_IMAGE_COMPRESSION)) {
> -		compressed_start = (uint32_t)&input_data - offset;
> -		compressed_end = (uint32_t)&input_data_end - offset;
> -		len = compressed_end - compressed_start;
> -
> -		uncompress = barebox_uncompress;
> -
> -		/* call barebox_uncompress with its absolute address */
> -		__asm__ __volatile__(
> -			"mov r0, %1\n"
> -			"mov r1, %2\n"
> -			"mov pc, %0\n"
> -			:
> -			: "r"(uncompress), "r"(compressed_start), "r"(len)
> -			: "r0", "r1");
> +		barebox_decompress(offset);

With this you don't call the decompressor with it's absolute address
anymore, which means that the decompressor won't run at the address it's
linked at.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

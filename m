Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bpANU-0006l5-43
 for barebox@lists.infradead.org; Wed, 28 Sep 2016 08:38:09 +0000
Date: Wed, 28 Sep 2016 10:37:44 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160928083744.fw3w3rxtk7f7ydjz@pengutronix.de>
References: <1473841313-4204-1-git-send-email-s.hauer@pengutronix.de>
 <1473841313-4204-2-git-send-email-s.hauer@pengutronix.de>
 <1473877833.4359.15.camel@rtred1test09.kymeta.local>
 <20160915071008.tbpw5d222h2chd5w@pengutronix.de>
 <1474504514.22305.66.camel@rtred1test09.kymeta.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1474504514.22305.66.camel@rtred1test09.kymeta.local>
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
Subject: Re: [PATCH 2/2] ARM: Fix calling of arm_mem_barebox_image()
To: Trent Piepho <tpiepho@kymetacorp.com>
Cc: Barebox List <barebox@lists.infradead.org>

On Thu, Sep 22, 2016 at 12:35:14AM +0000, Trent Piepho wrote:
> On Thu, 2016-09-15 at 09:10 +0200, Sascha Hauer wrote:
> > On Wed, Sep 14, 2016 at 06:27:04PM +0000, Trent Piepho wrote:
> > > On Wed, 2016-09-14 at 10:21 +0200, Sascha Hauer wrote:
> > > > arm_mem_barebox_image() is used to pick a suitable place where to
> > > > put the final image to. This is called from both the PBL uncompression
> > > > code and also from the final image. To make it work properly it is
> > > > crucial that it's called with the same arguments both times. Currently
> > > 
> > > This code has changed since I was working with it, but wouldn't
> > > arm_mem_barebox_image() returning a different value from when the PBL
> > > code calls it versus barebox_non_pbl_start() just result in an
> > > unnecessary relocation of the uncompressed barebox from the PBL's choice
> > > to the main barebox choice?
> > 
> > That may work when both regions do not overlap.
> 
> Ah, good point.  I suppose barebox could check that it doesn't try to
> relocate on top of itself while running.
> 
> 
> > I already tried. Somehow I didn't like the result that much, see the
> > patch below. The patch also still misses the single pbl handling.
> 
> Here's what I was thinking.  multi and single pbl should work, getting
> the size (data+bss) from the compressed data's size word.  Non-pbl and
> PBL main barebox know the data via the linker symbols.

The single pbl does not work with this patch. It only adds the size to
barebox.z, but that files is only generated and used for the multi pbl
case.

Generally we can go in this direction, but the single pbl case must
work, or alternatively, the multi pbl and single pbl case should be
unified.

>  void __noreturn barebox_multi_pbl_start(unsigned long membase,
>  		unsigned long memsize, void *boarddata)
>  {
> -	uint32_t pg_len;
> +	uint32_t pg_len, barebox_mem_len;
>  	void __noreturn (*barebox)(unsigned long, unsigned long, void *);
>  	uint32_t endmem = membase + memsize;
>  	unsigned long barebox_base;
> @@ -69,13 +70,16 @@ void __noreturn barebox_multi_pbl_start(unsigned long membase,
>  	/*
>  	 * image_end is the first location after the executable. It contains
>  	 * the size of the appended compressed binary followed by the binary.
> +	 * The final word of the compressed binary is the space (uncompressed
> +	 * image plus bss room) needed by barebox.
>  	 */
>  	pg_start = image_end + 1;
>  	pg_len = *(image_end);

I believe we must substract 4 from pg_len here as pg_len now includes
the additional size including bss value. pbl_barebox_uncompress() needs
the real size of the compressed binary. I don't know how tolerant the
different decompression algorithms are against additional garbage at the
end. I think this should be:

-	pg_len = *(image_end);
+	pg_len = *(image_end) - sizeof(uint32_t);
+	barebox_mem_len = get_unaligned_le32((void *)(pg_start + pg_len));

> +	barebox_mem_len = get_unaligned((const u32 *)(pg_start + pg_len - 4));
>  
>  	if (IS_ENABLED(CONFIG_RELOCATABLE))
>  		barebox_base = arm_mem_barebox_image(membase, endmem,
> -						     pg_len);
> +						     barebox_mem_len);
>  	else
>  		barebox_base = TEXT_BASE;
>  
> diff --git a/images/Makefile b/images/Makefile
> index da9cc8d..cc76958 100644
> --- a/images/Makefile
> +++ b/images/Makefile
> @@ -89,8 +89,12 @@ suffix_$(CONFIG_IMAGE_COMPRESSION_NONE) = shipped
>  
>  # barebox.z - compressed barebox binary
>  # ----------------------------------------------------------------
> +quiet_cmd_sizebss = SIZEBSS $@
> +cmd_sizebss = $(call size_append, $<, $(obj)/../barebox) >> $@
> +
>  $(obj)/barebox.z: $(obj)/../barebox.bin FORCE
>  	$(call if_changed,$(suffix_y))
> +	$(call if_changed,sizebss)
>  
>  # %.img - create a copy from another file
>  # ----------------------------------------------------------------
> diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
> index e55bc27..5b9d172 100644
> --- a/scripts/Makefile.lib
> +++ b/scripts/Makefile.lib
> @@ -299,20 +299,17 @@ cmd_env=$(srctree)/scripts/genenv $(srctree) $(objtree) $@ $<
>  
>  # Bzip2 and LZMA do not include size in file... so we have to fake that;
>  # append the size as a 32-bit littleendian number as gzip does.
> -size_append = printf $(shell						\
> -dec_size=0;								\
> -for F in $1; do								\
> -	fsize=$$(stat -c "%s" $$F);					\
> -	dec_size=$$(expr $$dec_size + $$fsize);				\
> +# If a second argument is supplied, include the BSS space it uses, as
> +# this gives the memory needs to load a compressed binary.
> +size_append = size=0;							\
> +[ -n "$2" ] && size=`size -A $2 | awk '$$1==".bss"{print $$2}'`;	\
> +for F in $1; do 							\
> +	fsize=`stat -c %s $$F`;						\
> +	size=$$((size + fsize));					\
>  done;									\
> -printf "%08x\n" $$dec_size |						\
> -	sed 's/\(..\)/\1 /g' | {					\
> -		read ch0 ch1 ch2 ch3;					\
> -		for ch in $$ch3 $$ch2 $$ch1 $$ch0; do			\
> -			printf '%s%03o' '\\' $$((0x$$ch)); 		\
> -		done;							\
> -	}								\
> -)
> +printf `printf '\\\\%03o\\\\%03o\\\\%03o\\\\%03o' 			\
> +	$$((size&0xff)) $$((size>>8&0xff)) 				\
> +	$$((size>>16&0xff)) $$((size>>24&0xff))`

This last change that changes the way the size is converted to binary is
not necessary, right?

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

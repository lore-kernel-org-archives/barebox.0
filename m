Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1StC4U-0001NT-Bt
 for barebox@lists.infradead.org; Mon, 23 Jul 2012 06:24:48 +0000
Date: Mon, 23 Jul 2012 08:24:40 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120723062440.GT30009@pengutronix.de>
References: <1342985496-18182-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1342985496-18182-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/1] compressed: rename barebox target to zbarebox and
 zbarebox.bin
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

Hi Jean-Christophe,

On Sun, Jul 22, 2012 at 09:31:36PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Keep the previous target untouched.
> This will allow to do not brake the modules support.

This breaks images which use barebox.bin as an input for their SoC
specific image, like MLO (Omap xload), barebox.netx, barebox.s5p

Sascha

> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
> This patch apply over my previous patch series that add gzip support
> 
> Best Regards,
> J.
>  Makefile     |   49 ++++++++++++++++++++++++++-----------------------
>  piggy.gzip.S |    2 +-
>  piggy.lzo.S  |    2 +-
>  3 files changed, 28 insertions(+), 25 deletions(-)
> 
> diff --git a/Makefile b/Makefile
> index 1003786..16a81d3 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -300,6 +300,7 @@ CFLAGS          := -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs \
>  AFLAGS          := -D__ASSEMBLY__
>  
>  LDFLAGS_barebox	:= -Map barebox.map
> +LDFLAGS_zbarebox	:= -Map zbarebox.map
>  
>  # Read KERNELRELEASE from include/config/kernel.release (if it exists)
>  KERNELRELEASE = $(shell cat include/config/kernel.release 2> /dev/null)
> @@ -441,7 +442,10 @@ endif # $(dot-config)
>  # command line.
>  # This allow a user to issue only 'make' to build a kernel
>  # Defaults barebox but it is usually overridden in the arch makefile
> -all: barebox.bin
> +
> +zbarebox.bin-$(CONFIG_IMAGE_COMPRESSION) := zbarebox.bin
> +
> +all: barebox.bin $(zbarebox.bin-y)
>  
>  include $(srctree)/arch/$(ARCH)/Makefile
>  
> @@ -672,11 +676,13 @@ quiet_cmd_objcopy = OBJCOPY $@
>        cmd_objcopy = $(OBJCOPY) $(OBJCOPYFLAGS) $(OBJCOPYFLAGS_$(@F)) $< $@
>  
>  OBJCOPYFLAGS_barebox.bin = -O binary
> -OBJCOPYFLAGS_barebox-uncompressed.bin = -O binary
> +OBJCOPYFLAGS_zbarebox.bin = -O binary
>  
>  barebox.bin: barebox FORCE
>  	$(call if_changed,objcopy)
> +ifndef CONFIG_IMAGE_COMPRESSION
>  	$(call cmd,check_file_size,$(CONFIG_BAREBOX_MAX_IMAGE_SIZE))
> +endif
>  
>  ifdef CONFIG_X86
>  barebox.S: barebox
> @@ -706,46 +712,43 @@ quiet_cmd_disasm = DISASM  $@
>  
>  barebox.S: barebox FORCE
>  	$(call if_changed,disasm)
> -barebox-uncompressed.S: barebox-uncompressed FORCE
> +zbarebox.S: zbarebox FORCE
>  	$(call if_changed,disasm)
>  endif
>  
>  # barebox image
> -barebox-uncompressed: $(barebox-lds) $(barebox-head) $(barebox-common) $(kallsyms.o)
> +barebox: $(barebox-lds) $(barebox-head) $(barebox-common) $(kallsyms.o) FORCE
>  	$(call barebox-modpost)
>  	$(call if_changed_rule,barebox__)
>  	$(Q)rm -f .old_version
>  
> -barebox-uncompressed.bin: barebox-uncompressed
> -	$(call if_changed,objcopy)
> -
>  suffix_$(CONFIG_IMAGE_COMPRESSION_GZIP) = gzip
>  suffix_$(CONFIG_IMAGE_COMPRESSION_LZO)	= lzo
>  
> -barebox-uncompressed.bin.gzip: barebox-uncompressed.bin
> +barebox.bin.gzip: barebox.bin
>  	@echo "  GZIP   " $@
> -	$(Q)gzip -n -9 -c barebox-uncompressed.bin > $@
> +	$(Q)gzip -n -9 -c barebox.bin > $@
>  
> -barebox-uncompressed.bin.lzo: barebox-uncompressed.bin
> +barebox.bin.lzo: barebox.bin
>  	@echo "  LZO    " $@
> -	$(Q)lzop -f -9 -o $@ barebox-uncompressed.bin
> +	$(Q)lzop -f -9 -o $@ barebox.bin
>  
> -piggy.$(suffix_y).o: barebox-uncompressed.bin.$(suffix_y) $(src)/piggy.$(suffix_y).S
> +piggy.$(suffix_y).o:  barebox.bin.$(suffix_y) FORCE
>  	@echo "  CC     " $@
>  	$(Q)$(CC) $(CFLAGS) $(CPPFLAGS) -c $(src)/piggy.$(suffix_y).S -o $@
>  
> -ifdef CONFIG_IMAGE_COMPRESSION
> -barebox: piggy.$(suffix_y).o $(barebox-comp)
> +zbarebox: piggy.$(suffix_y).o $(barebox-comp) FORCE
>  	@echo "  LD     " $@ $(barebox-comp)
> -	$(Q)$(LD) $(LDFLAGS) $(LDFLAGS_barebox) -o $@ \
> +	$(Q)$(LD) $(LDFLAGS) $(LDFLAGS_zbarebox) -o $@ \
>  		-T $(barebox-compressed-lds) \
>  		--start-group $(barebox-comp) $(comp-arch-y) piggy.$(suffix_y).o --end-group
> -else
> -barebox: $(barebox-lds) $(barebox-head) $(barebox-common) $(kallsyms.o) FORCE
> -	$(call barebox-modpost)
> -	$(call if_changed_rule,barebox__)
> -	$(Q)rm -f .old_version
> -endif
> +
> +zbarebox.bin: zbarebox 
> +	$(call if_changed,objcopy)
> +	$(call cmd,check_file_size,$(CONFIG_BAREBOX_MAX_IMAGE_SIZE))
> +
> +zbarebox.srec: zbarebox
> +	$(OBJCOPY) -O srec $< $@
>  
>  barebox.srec: barebox
>  	$(OBJCOPY) -O srec $< $@
> @@ -1040,11 +1043,11 @@ endif # CONFIG_MODULES
>  # Directories & files removed with 'make clean'
>  CLEAN_DIRS  += $(MODVERDIR)
>  CLEAN_FILES +=	barebox System.map include/generated/barebox_default_env.h \
> -                .tmp_version .tmp_barebox* barebox.bin barebox.map barebox.S \
> +                .tmp_version .tmp_barebox* barebox.* \
>  		.tmp_kallsyms* barebox_default_env* barebox.ldr \
>  		scripts/bareboxenv-target \
>  		Doxyfile.version barebox.srec barebox.s5p \
> -		barebox-uncompressed barebox-uncompressed.bin*
> +		zbarebox*
>  
>  # Directories & files removed with 'make mrproper'
>  MRPROPER_DIRS  += include/config include2 usr/include
> diff --git a/piggy.gzip.S b/piggy.gzip.S
> index 2ca7d78..ffd85cb 100644
> --- a/piggy.gzip.S
> +++ b/piggy.gzip.S
> @@ -1,6 +1,6 @@
>  	.section .piggydata,#alloc
>  	.globl  input_data
>  input_data:
> -	.incbin "barebox-uncompressed.bin.gzip"
> +	.incbin "barebox.bin.gzip"
>  	.globl  input_data_end
>  input_data_end:
> diff --git a/piggy.lzo.S b/piggy.lzo.S
> index 6cc618d..ae5b2db 100644
> --- a/piggy.lzo.S
> +++ b/piggy.lzo.S
> @@ -1,6 +1,6 @@
>  	.section .piggydata,#alloc
>  	.globl  input_data
>  input_data:
> -	.incbin "barebox-uncompressed.bin.lzo"
> +	.incbin "barebox.bin.lzo"
>  	.globl  input_data_end
>  input_data_end:
> -- 
> 1.7.10
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

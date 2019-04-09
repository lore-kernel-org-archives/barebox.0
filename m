Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hDpEl-00072p-Dr
 for barebox@lists.infradead.org; Tue, 09 Apr 2019 11:48:24 +0000
Date: Tue, 9 Apr 2019 13:48:20 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190409114820.mkpjspph4pati5zi@pengutronix.de>
References: <20190308105854.10089-1-o.rempel@pengutronix.de>
 <20190308105854.10089-3-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190308105854.10089-3-o.rempel@pengutronix.de>
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
Subject: Re: [PATCH v2 2/4] MIPS: relocation: add relocation support
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org, Oleksij Rempel <linux@rempel-privat.de>

On Fri, Mar 08, 2019 at 11:58:52AM +0100, Oleksij Rempel wrote:
> From: Oleksij Rempel <linux@rempel-privat.de>
> 
> this patch i a port of following patch from u-boot with some additional
> integration changes and fixes of original code:
> | Subject: [PATCH] MIPS: Stop building position independent code
> |
> | U-Boot has up until now built with -fpic for the MIPS architecture,
> | producing position independent code which uses indirection through a
> | global offset table, making relocation fairly straightforward as it
> | simply involves patching up GOT entries.
> |
> | Using -fpic does however have some downsides. The biggest of these is
> | that generated code is bloated in various ways. For example, function
> | calls are indirected through the GOT & the t9 register:
> |
> |   8f998064   lw     t9,-32668(gp)
> |   0320f809   jalr   t9
> |
> | Without -fpic the call is simply:
> |
> |   0f803f01   jal    be00fc04 <puts>
> |
> | This is more compact & faster (due to the lack of the load & the
> | dependency the jump has on its result). It is also easier to read &
> | debug because the disassembly shows what function is being called,
> | rather than just an offset from gp which would then have to be looked up
> | in the ELF to discover the target function.
> |
> | Another disadvantage of -fpic is that each function begins with a
> | sequence to calculate the value of the gp register, for example:
> |
> |   3c1c0004   lui    gp,0x4
> |   279c3384   addiu  gp,gp,13188
> |   0399e021   addu   gp,gp,t9
> |
> | Without using -fpic this sequence no longer appears at the start of each
> | function, reducing code size considerably.
> |
> | This patch switches U-Boot from building with -fpic to building with
> | -fno-pic, in order to gain the benefits described above. The cost of
> | this is an extra step during the build process to extract relocation
> | data from the ELF & write it into a new .rel section in a compact
> | format, plus the added complexity of dealing with multiple types of
> | relocation rather than the single type that applied to the GOT. The
> | benefit is smaller, cleaner, more debuggable code. The relocate_code()
> | function is reimplemented in C to handle the new relocation scheme,
> | which also makes it easier to read & debug.
> |
> | Taking maltael_defconfig as an example the size of u-boot.bin built
> | using the Codescape MIPS 2016.05-06 toolchain (gcc 4.9.2, binutils
> | 2.24.90) shrinks from 254KiB to 224KiB.
> |
> | Signed-off-by: Paul Burton <paul.burton@imgtec.com>
> 
> Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
> ---
>  arch/mips/Kconfig                |  18 ++
>  arch/mips/Makefile               |   9 +-
>  arch/mips/boot/main_entry-pbl.c  |   4 +-
>  arch/mips/boot/start.S           |   4 +-
>  arch/mips/include/asm/relocs.h   |  23 ++
>  arch/mips/include/asm/sections.h |  14 +
>  arch/mips/lib/Makefile           |   2 +
>  arch/mips/lib/barebox.lds.S      |  27 +-
>  arch/mips/lib/reloc.c            | 182 +++++++++++++
>  arch/mips/lib/sections.c         |   9 +
>  scripts/Makefile                 |   1 +
>  scripts/mips-relocs.c            | 426 +++++++++++++++++++++++++++++++
>  12 files changed, 712 insertions(+), 7 deletions(-)
>  create mode 100644 arch/mips/include/asm/relocs.h
>  create mode 100644 arch/mips/lib/reloc.c
>  create mode 100644 arch/mips/lib/sections.c
>  create mode 100644 scripts/mips-relocs.c
> 
> diff --git a/arch/mips/Kconfig b/arch/mips/Kconfig
> index eab9452de9..49f238df58 100644
> --- a/arch/mips/Kconfig
> +++ b/arch/mips/Kconfig
> @@ -32,6 +32,24 @@ config PHYS_ADDR_T_64BIT
>  
>  menu "Machine selection"
>  
> +config MIPS_RELOCATION_TABLE_SIZE
> +	hex "Relocation table size"
> +	range 0x100 0x10000
> +	default "0x8000"
> +	---help---
> +	  A table of relocation data will be appended to the Barebox binary
> +	  and parsed in relocate_code() to fix up all offsets in the relocated
> +	  Barebox.
> +
> +	  This option allows the amount of space reserved for the table to be
> +	  adjusted in a range from 256 up to 64k. The default is 32k and should
> +	  be ok in most cases. Reduce this value to shrink the size of U-Boot
> +	  binary.
> +
> +	  The build will fail and a valid size suggested if this is too small.
> +
> +	  If unsure, leave at the default value.
> +
>  config BUILTIN_DTB
>  	bool "link a DTB into the barebox image"
>  	depends on OFTREE
> diff --git a/arch/mips/Makefile b/arch/mips/Makefile
> index 5fbd51ceee..7830f44be4 100644
> --- a/arch/mips/Makefile
> +++ b/arch/mips/Makefile
> @@ -59,7 +59,7 @@ CPPFLAGS += -DTEXT_BASE=$(CONFIG_TEXT_BASE)
>  ifndef CONFIG_MODULES
>  # Add cleanup flags
>  CPPFLAGS += -fdata-sections -ffunction-sections
> -LDFLAGS_barebox += -static --gc-sections
> +LDFLAGS_barebox += -static --gc-sections --emit-relocs
>  endif
>  
>  ifdef CONFIG_IMAGE_COMPRESSION
> @@ -116,6 +116,13 @@ CFLAGS += $(cflags-y)
>  
>  lds-$(CONFIG_GENERIC_LINKER_SCRIPT)   := arch/mips/lib/barebox.lds
>  
> +cmd_barebox__ ?= $(LD) $(LDFLAGS) $(LDFLAGS_barebox) -o $@ \
> +      -T $(barebox-lds)                         \
> +      --start-group $(barebox-common) --end-group                  \
> +      $(filter-out $(barebox-lds) $(barebox-common) FORCE ,$^);	\
> +	$(srctree)/scripts/mips-relocs $@

This should be $(objtree), otherwise it breaks out of tree build.

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

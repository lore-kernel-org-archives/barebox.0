Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cs3Ze-0005Mv-AU
 for barebox@lists.infradead.org; Sun, 26 Mar 2017 08:30:56 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.84_2)
 (envelope-from <mol@pengutronix.de>) id 1cs3ZI-00086F-OU
 for barebox@lists.infradead.org; Sun, 26 Mar 2017 10:30:32 +0200
Received: from mol by pty.hi.pengutronix.de with local (Exim 4.84_2)
 (envelope-from <mol@pengutronix.de>) id 1cs3ZH-0004cR-IV
 for barebox@lists.infradead.org; Sun, 26 Mar 2017 10:30:31 +0200
Date: Sun, 26 Mar 2017 10:30:31 +0200
From: Michael Olbrich <m.olbrich@pengutronix.de>
Message-ID: <20170326083031.kuumcd6dfrtzenj6@pengutronix.de>
References: <20170325083155.GA14076@mail.ovh.net>
 <1490496304-30850-1-git-send-email-plagnioj@jcrosoft.com>
 <1490496304-30850-11-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1490496304-30850-11-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 11/13] efi: fix lds for secure boot support
To: barebox@lists.infradead.org

On Sun, Mar 26, 2017 at 04:45:02AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> everythink need to be aligned to 4096

As Lucas noted the last time, this deserves a comment why this is needed.
Just a reference to the EFI spec (I think?) or something like that.

> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  arch/x86/mach-efi/elf_ia32_efi.lds.S         | 10 +++++++---
>  arch/x86/mach-efi/elf_x86_64_efi.lds.S       | 10 ++++++----
>  arch/x86/mach-efi/include/mach/barebox.lds.h | 14 +++++++++++++-
>  include/asm-generic/barebox.lds.h            |  8 +++++---
>  4 files changed, 31 insertions(+), 11 deletions(-)
> 
> diff --git a/arch/x86/mach-efi/elf_ia32_efi.lds.S b/arch/x86/mach-efi/elf_ia32_efi.lds.S
> index 69f43f554..6d9cb973c 100644
> --- a/arch/x86/mach-efi/elf_ia32_efi.lds.S
> +++ b/arch/x86/mach-efi/elf_ia32_efi.lds.S
> @@ -50,22 +50,23 @@ SECTIONS
>  		*(COMMON)
>  	}
>  
> -	. = ALIGN(64);
> +	. = ALIGN(4096);
>  
>  	__barebox_initcalls_start = .;
>  	__barebox_initcalls : { INITCALLS }
>  	__barebox_initcalls_end = .;
> +	. = ALIGN(4096);
>  
>  	__barebox_exitcalls_start = .;
>  	__barebox_exitcalls : { EXITCALLS }
>  	__barebox_exitcalls_end = .;
>  
> -	. = ALIGN(64);
> +	. = ALIGN(4096);
>  	__barebox_magicvar_start = .;
>  	.barebox_magicvar : { BAREBOX_MAGICVARS }
>  	__barebox_magicvar_end = .;
>  
> -	. = ALIGN(64);
> +	. = ALIGN(4096);
>  	__barebox_cmd_start = .;
>  	__barebox_cmd : { BAREBOX_CMDS }
>  	__barebox_cmd_end = .;
> @@ -76,6 +77,9 @@ SECTIONS
>  	.rel : {
>  		*(.rel.data)
>  		*(.rel.data.*)
> +		*(.rela.barebox*)
> +		*(.rela.initcall*)
> +		*(.rela.exitcall*)

This is unrelated and should be a different patch.

>  		*(.rel.got)
>  		*(.rel.stab)
>  		*(.data.rel.ro.local)
> diff --git a/arch/x86/mach-efi/elf_x86_64_efi.lds.S b/arch/x86/mach-efi/elf_x86_64_efi.lds.S
> index 93d34d17a..8216d1d70 100644
> --- a/arch/x86/mach-efi/elf_x86_64_efi.lds.S
> +++ b/arch/x86/mach-efi/elf_x86_64_efi.lds.S
> @@ -23,6 +23,7 @@ SECTIONS
>  		*(.text)
>  		*(.text.*)
>  		*(.gnu.linkonce.t.*)
> +		. = ALIGN(16);

Why 16 here?

Regards,
Michael

>  	}
>  
>  	_etext = .;
> @@ -33,8 +34,8 @@ SECTIONS
>  		*(.reloc)
>  	}
>  
> -	. = ALIGN(4096);
>  	_sdata = .;
> +	. = ALIGN(4096);
>  
>  	.data : {
>  		*(.rodata*)
> @@ -52,22 +53,23 @@ SECTIONS
>  		*(.rel.local)
>  	}
>  
> -	. = ALIGN(64);
> +	. = ALIGN(4096);
>  
>  	__barebox_initcalls_start = .;
>  	__barebox_initcalls : { INITCALLS }
>  	__barebox_initcalls_end = .;
> +	. = ALIGN(4096);
>  
>  	__barebox_exitcalls_start = .;
>  	__barebox_exitcalls : { EXITCALLS }
>  	__barebox_exitcalls_end = .;
>  
> -	. = ALIGN(64);
> +	. = ALIGN(4096);
>  	__barebox_magicvar_start = .;
>  	.barebox_magicvar : { BAREBOX_MAGICVARS }
>  	__barebox_magicvar_end = .;
>  
> -	. = ALIGN(64);
> +	. = ALIGN(4096);
>  	__barebox_cmd_start = .;
>  	__barebox_cmd : { BAREBOX_CMDS }
>  	__barebox_cmd_end = .;
> diff --git a/arch/x86/mach-efi/include/mach/barebox.lds.h b/arch/x86/mach-efi/include/mach/barebox.lds.h
> index 40a8c178f..e7a3bb9cd 100644
> --- a/arch/x86/mach-efi/include/mach/barebox.lds.h
> +++ b/arch/x86/mach-efi/include/mach/barebox.lds.h
> @@ -1 +1,13 @@
> -/* empty */
> +/*
> + * Copyright (C) 2017 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
> + *
> + * Under GPL v2
> + */
> +
> +#ifndef __EFI_MACH_BAREBOX_LDS_H__
> +#define __EFI_MACH_BAREBOX_LDS_H__
> +
> +/* For secure boot we need all the section to be 4096 alligned */
> +#define STRUCT_ALIGNMENT 4096
> +
> +#endif /* __EFI_MACH_BAREBOX_LDS_H__ */
> diff --git a/include/asm-generic/barebox.lds.h b/include/asm-generic/barebox.lds.h
> index c8a919b92..6c37751b3 100644
> --- a/include/asm-generic/barebox.lds.h
> +++ b/include/asm-generic/barebox.lds.h
> @@ -3,15 +3,17 @@
>   * Align to a 32 byte boundary equal to the
>   * alignment gcc 4.5 uses for a struct
>   */
> -#define STRUCT_ALIGNMENT 32
> -#define STRUCT_ALIGN() . = ALIGN(STRUCT_ALIGNMENT)
> -
>  #if defined CONFIG_X86 || \
>  	defined CONFIG_ARCH_EP93XX || \
>  	defined CONFIG_ARCH_ZYNQ
>  #include <mach/barebox.lds.h>
>  #endif
>  
> +#ifndef STRUCT_ALIGNMENT
> +#define STRUCT_ALIGNMENT 32
> +#endif
> +#define STRUCT_ALIGN() . = ALIGN(STRUCT_ALIGNMENT)
> +
>  #ifndef PRE_IMAGE
>  #define PRE_IMAGE
>  #endif
> -- 
> 2.11.0
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

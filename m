Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TlxQB-0006j4-G4
 for barebox@lists.infradead.org; Fri, 21 Dec 2012 07:53:32 +0000
Date: Fri, 21 Dec 2012 08:53:28 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121221075328.GM26326@pengutronix.de>
References: <1355952595-1432-1-git-send-email-antonynpavlov@gmail.com>
 <1355952595-1432-4-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1355952595-1432-4-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [RFC 3/5] MIPS: add ELF support
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Dec 20, 2012 at 01:29:53AM +0400, Antony Pavlov wrote:
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  arch/mips/Kconfig               |    1 +
>  arch/mips/include/asm/elf.h     |    8 ++-
>  arch/mips/include/asm/io.h      |   18 ++++++
>  arch/mips/lib/Makefile          |    3 +
>  arch/mips/lib/kexec-elf-mips.c  |   83 +++++++++++++++++++++++++
>  arch/mips/lib/kexec-mips.c      |  130 +++++++++++++++++++++++++++++++++++++++
>  arch/mips/lib/kexec-mips.h      |   24 ++++++++
>  arch/mips/lib/relocate_kernel.S |   77 +++++++++++++++++++++++
>  8 files changed, 343 insertions(+), 1 deletion(-)
>  create mode 100644 arch/mips/lib/kexec-elf-mips.c
>  create mode 100644 arch/mips/lib/kexec-mips.c
>  create mode 100644 arch/mips/lib/kexec-mips.h
>  create mode 100644 arch/mips/lib/relocate_kernel.S
> 
> diff --git a/arch/mips/Kconfig b/arch/mips/Kconfig
> index 947edcf..3a7f775 100644
> --- a/arch/mips/Kconfig
> +++ b/arch/mips/Kconfig
> @@ -6,6 +6,7 @@ config MIPS
>  	select HAS_KALLSYMS
>  	select HAVE_CONFIGURABLE_MEMORY_LAYOUT
>  	select HAVE_CONFIGURABLE_TEXT_BASE
> +	select HAS_KEXEC
>  	default y
>  
>  config SYS_SUPPORTS_BIG_ENDIAN
> diff --git a/arch/mips/include/asm/elf.h b/arch/mips/include/asm/elf.h
> index b8b8219..bf974f5 100644
> --- a/arch/mips/include/asm/elf.h
> +++ b/arch/mips/include/asm/elf.h
> @@ -17,12 +17,18 @@
>  
>  #ifndef ELF_ARCH
>  
> +/* Legal values for e_machine (architecture).  */
> +
> +#define EM_MIPS		 8		/* MIPS R3000 big-endian */
> +#define EM_MIPS_RS4_BE	10		/* MIPS R4000 big-endian */
> +
>  #ifdef CONFIG_32BIT
>  
>  /*
>   * This is used to ensure we don't load something for the wrong architecture.
>   */
> -#define elf_check_arch(hdr)						\
> +#define elf_check_arch(x) ((x)->e_machine == EM_MIPS)
> +
>  /*
>   * These are used to set parameters in the core dumps.
>   */
> diff --git a/arch/mips/include/asm/io.h b/arch/mips/include/asm/io.h
> index 4100e1e..f22ef6f 100644
> --- a/arch/mips/include/asm/io.h
> +++ b/arch/mips/include/asm/io.h
> @@ -14,6 +14,24 @@
>  #include <asm/types.h>
>  #include <asm/byteorder.h>
>  
> +/*
> + *     virt_to_phys    -       map virtual addresses to physical
> + *     @address: address to remap
> + *
> + *     The returned physical address is the physical (CPU) mapping for
> + *     the memory address given. It is only valid to use this function on
> + *     addresses directly mapped or allocated via kmalloc.
> + *
> + *     This function does not give bus mappings for DMA transfers. In
> + *     almost all conceivable cases a device driver should not be using
> + *     this function
> + */
> +static inline unsigned long virt_to_phys(volatile const void *address)
> +{
> +	//return (unsigned long)address - PAGE_OFFSET + PHYS_OFFSET;
> +	return (unsigned long)address & 0x1fffffff;

Why this? I would assume that you have a 1:1 mapping on Mips?

> +
> +#define _GNU_SOURCE
> +#include <stdio.h>
> +#include <string.h>
> +#include <stdlib.h>
> +#include <errno.h>
> +#include <asm/io.h>
> +#include <linux/types.h>
> +#include <fcntl.h>
> +#include <elf.h>
> +#include "../../../lib/kexec/kexec.h"
> +#include "../../../lib/kexec/kexec-elf.h"

So the they should be better in include/kexec/

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

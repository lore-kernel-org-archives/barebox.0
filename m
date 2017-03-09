Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1clriH-00074t-9w
 for barebox@lists.infradead.org; Thu, 09 Mar 2017 06:38:15 +0000
Date: Thu, 9 Mar 2017 07:37:51 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170309063751.ip46i6y3o542nh7u@pengutronix.de>
References: <20170227075044.egcbyi4cfrlmijbk@pengutronix.de>
 <20170307083147.2471-1-m.olbrich@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170307083147.2471-1-m.olbrich@pengutronix.de>
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
Subject: Re: [PATCH] fixup! efi: move x86 efi boot support to x86 arch
To: Michael Olbrich <m.olbrich@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Mar 07, 2017 at 09:31:47AM +0100, Michael Olbrich wrote:
> As I noted in my other mail, this got lost during the move.
> 
> Regards,
> Michael

Fixed this up.

Sascha

> 
> ---
>  arch/x86/Makefile                      | 4 ++--
>  arch/x86/mach-efi/elf_x86_64_efi.lds.S | 1 +
>  2 files changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/x86/Makefile b/arch/x86/Makefile
> index e837a2df972c..c36104c2c07f 100644
> --- a/arch/x86/Makefile
> +++ b/arch/x86/Makefile
> @@ -84,8 +84,8 @@ cmd_barebox__ ?= $(LD) $(LDFLAGS) $(LDFLAGS_barebox) -o $@	\
>  quiet_cmd_efi_image = EFI-IMG $@
>        cmd_efi_image = $(OBJCOPY) -j .text -j .sdata -j .data -j .dynamic \
>  		      -j .dynsym -j .rel -j .rela -j .reloc -j __barebox_initcalls \
> -		      -j __barebox_cmd -j .barebox_magicvar -j .bbenv.* \
> -		      --target=$(TARGET) $< $@
> +		      -j __barebox_exitcalls -j __barebox_cmd -j .barebox_magicvar \
> +		      -j .bbenv.* --target=$(TARGET) $< $@
>  
>  KBUILD_BINARY := barebox
>  
> diff --git a/arch/x86/mach-efi/elf_x86_64_efi.lds.S b/arch/x86/mach-efi/elf_x86_64_efi.lds.S
> index e1bc2120fabc..93d34d17ab1f 100644
> --- a/arch/x86/mach-efi/elf_x86_64_efi.lds.S
> +++ b/arch/x86/mach-efi/elf_x86_64_efi.lds.S
> @@ -80,6 +80,7 @@ SECTIONS
>  		*(.rela.data*)
>  		*(.rela.barebox*)
>  		*(.rela.initcall*)
> +		*(.rela.exitcall*)
>  		*(.rela.got)
>  		*(.rela.stab)
>  	}
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

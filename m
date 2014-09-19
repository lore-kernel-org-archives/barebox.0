Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XV2aL-0004gh-PF
 for barebox@lists.infradead.org; Fri, 19 Sep 2014 18:07:10 +0000
Date: Fri, 19 Sep 2014 20:06:44 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140919180644.GI4992@pengutronix.de>
References: <1411037069-1483-1-git-send-email-m.olbrich@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1411037069-1483-1-git-send-email-m.olbrich@pengutronix.de>
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
Subject: Re: [PATCH] efi: use objcopy with CROSS_COMPILE prefix
To: Michael Olbrich <m.olbrich@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Sep 18, 2014 at 12:44:29PM +0200, Michael Olbrich wrote:
> Signed-off-by: Michael Olbrich <m.olbrich@pengutronix.de>
> ---
>  arch/efi/Makefile | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/efi/Makefile b/arch/efi/Makefile
> index af28085..85cb655 100644
> --- a/arch/efi/Makefile
> +++ b/arch/efi/Makefile
> @@ -24,7 +24,7 @@ cmd_barebox__ ?= $(LD) $(LDFLAGS) $(LDFLAGS_barebox) -o $@	\
>  		$(filter-out $(barebox-lds) $(barebox-common) FORCE ,$^)
>  
>  quiet_cmd_efi_image = EFI-IMG $@
> -      cmd_efi_image = objcopy -j .text -j .sdata -j .data -j .dynamic \
> +      cmd_efi_image = $(OBJCOPY) -j .text -j .sdata -j .data -j .dynamic \
>  		      -j .dynsym -j .rel -j .rela -j .reloc -j __barebox_initcalls \
>  		      -j __barebox_cmd -j .barebox_magicvar -j .bbenv.* \
>  		      --target=$(TARGET) $< $@
> -- 
> 2.1.0
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

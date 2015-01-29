Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YGj1U-0004MZ-I6
 for barebox@lists.infradead.org; Thu, 29 Jan 2015 06:56:17 +0000
Date: Thu, 29 Jan 2015 07:55:47 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150129065547.GM12209@pengutronix.de>
References: <1422437828-2106-1-git-send-email-yamada.m@jp.panasonic.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1422437828-2106-1-git-send-email-yamada.m@jp.panasonic.com>
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
Subject: Re: [PATCH] ARM: fix a wrong comment about relocate_to_adr
To: Masahiro Yamada <yamada.m@jp.panasonic.com>
Cc: barebox@lists.infradead.org

On Wed, Jan 28, 2015 at 06:37:08PM +0900, Masahiro Yamada wrote:
> The relocated_to_adr does not clear the .bss section.
> It is done by the setup_c routine.
> 
> Signed-off-by: Masahiro Yamada <yamada.m@jp.panasonic.com>
> ---
> 
>  arch/arm/cpu/setupc.S | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/cpu/setupc.S b/arch/arm/cpu/setupc.S
> index 2df2683..c232b08 100644
> --- a/arch/arm/cpu/setupc.S
> +++ b/arch/arm/cpu/setupc.S
> @@ -40,7 +40,7 @@ ENDPROC(setup_c)
>  /*
>   * void relocate_to_adr(unsigned long targetadr)
>   *
> - * Copy binary to targetadr, relocate code, clear bss and continue
> + * Copy binary to targetadr, relocate code and continue
>   * executing at new address.
>   */
>  .section .text.relocate_to_adr
> -- 
> 1.9.1
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

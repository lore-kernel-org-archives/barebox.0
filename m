Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRY9h-0006Rj-DU
 for barebox@lists.infradead.org; Mon, 04 Nov 2019 08:56:10 +0000
Date: Mon, 4 Nov 2019 09:56:07 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20191104085607.wscy4t6vdo63set2@pengutronix.de>
References: <20191101195338.7597-1-dev@lynxeye.de>
 <20191101195338.7597-2-dev@lynxeye.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191101195338.7597-2-dev@lynxeye.de>
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
Subject: Re: [PATCH 2/2] ARM: force TEXT_BASE to zero only for relocatable
 build
To: Lucas Stach <dev@lynxeye.de>
Cc: barebox@lists.infradead.org

On Fri, Nov 01, 2019 at 08:53:38PM +0100, Lucas Stach wrote:
> Commit 2a94e821ba2e (ARM: For relocatable image force TEXT_BASE 0x0)
> intended to force the TEXT_BASE to zero for relocatable images, but
> the change added the Kconfig symbol overriding the TEXT_BASE
> unconditionally. This breaks non-relocatable images.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  arch/arm/Kconfig | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> index 652ac24ce3fa..f4e943a8fd8a 100644
> --- a/arch/arm/Kconfig
> +++ b/arch/arm/Kconfig
> @@ -19,9 +19,11 @@ config ARM_USE_COMPRESSED_DTB
>  	select UNCOMPRESS
>  	select LZO_DECOMPRESS
>  
> +if RELOCATABLE
>  config TEXT_BASE
>  	hex
>  	default 0x0
> +endif

Does this really fix something? For example in the
freescale-mx21-ads_defconfig we have CONFIG_TEXT_BASE=0xc3000000 which
is still shown in Kconfig and barebox is correctly built with that TEXT_BASE.
Yes, without this patch we have a duplicate symbol in Kconfig with
concurrent default values, but the files seem to be sourced in the right
order.

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

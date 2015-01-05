Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Y853P-000050-55
 for barebox@lists.infradead.org; Mon, 05 Jan 2015 10:38:32 +0000
Date: Mon, 5 Jan 2015 11:38:09 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150105103809.GL30369@pengutronix.de>
References: <20141223170709.GA15818@ns203013.ovh.net>
 <1419358918-25569-1-git-send-email-plagnioj@jcrosoft.com>
 <1419358918-25569-4-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1419358918-25569-4-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 4/9] versatilepb: move barebox to 32 MiB and use zImage
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Tue, Dec 23, 2014 at 07:21:53PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  arch/arm/boards/versatile/env/config | 4 ++--
>  arch/arm/mach-versatile/Kconfig      | 3 +++
>  2 files changed, 5 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/boards/versatile/env/config b/arch/arm/boards/versatile/env/config
> index 667dce3..1bc575b 100644
> --- a/arch/arm/boards/versatile/env/config
> +++ b/arch/arm/boards/versatile/env/config
> @@ -19,8 +19,8 @@ rootfs_loc=initrd
>  rootfs_type=ubifs
>  rootfsimage=root.$rootfs_type
>  
> -#kernelimage=zImage
> -kernelimage=uImage
> +kernelimage=zImage
> +#kernelimage=uImage
>  #kernelimage=Image
>  #kernelimage=Image.lzo
>  
> diff --git a/arch/arm/mach-versatile/Kconfig b/arch/arm/mach-versatile/Kconfig
> index 9a1bf95..9ad1869 100644
> --- a/arch/arm/mach-versatile/Kconfig
> +++ b/arch/arm/mach-versatile/Kconfig
> @@ -1,6 +1,9 @@
>  
>  if ARCH_VERSATILE
>  
> +config ARCH_TEXT_BASE
> +	default 0x02000000
> +
>  choice
>  	prompt "ARM Board type"
>  
> -- 
> 2.1.3
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

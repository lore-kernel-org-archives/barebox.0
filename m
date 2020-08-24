Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([85.220.165.71])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kA6WV-00029H-9c
 for barebox@lists.infradead.org; Mon, 24 Aug 2020 07:04:08 +0000
Date: Mon, 24 Aug 2020 09:04:05 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200824070405.GJ13023@pengutronix.de>
References: <20200820130731.1211839-1-lapeddk@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200820130731.1211839-1-lapeddk@gmail.com>
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
Subject: Re: [PATCH v2] arm: imx: Select RELOCATABLE on IMX_MULTI_BOARDS
To: Lars Pedersen <lapeddk@gmail.com>
Cc: barebox@lists.infradead.org, a.fatoum@pengutronix.de

On Thu, Aug 20, 2020 at 03:07:31PM +0200, Lars Pedersen wrote:
> Depend on RELOCATABLE when compiling for multiple i.MX boards,
> since setting a suitable TEXT_BASE value across multiple boards is impossible.
> 
> Signed-off-by: Lars Pedersen <lapeddk@gmail.com>
> ---
>  arch/arm/mach-imx/Kconfig | 1 +
>  1 file changed, 1 insertion(+)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
> index 2e8d2bd56..0fffde46e 100644
> --- a/arch/arm/mach-imx/Kconfig
> +++ b/arch/arm/mach-imx/Kconfig
> @@ -215,6 +215,7 @@ config ARCH_VF610
>  config IMX_MULTI_BOARDS
>  	bool "Allow multiple boards to be selected"
>  	select HAVE_PBL_MULTI_IMAGES
> +	select RELOCATABLE
>  
>  if IMX_MULTI_BOARDS
>  
> -- 
> 2.26.2
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1S7QyD-0006Qe-Ue
 for barebox@lists.infradead.org; Tue, 13 Mar 2012 12:36:54 +0000
Date: Tue, 13 Mar 2012 13:36:49 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120313123649.GC3852@pengutronix.de>
References: <1331285456-12277-1-git-send-email-j.weitzel@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1331285456-12277-1-git-send-email-j.weitzel@phytec.de>
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
Subject: Re: [PATCH] ENV: remove kernelimage_type from env/config
To: Jan Weitzel <j.weitzel@phytec.de>
Cc: barebox@lists.infradead.org

On Fri, Mar 09, 2012 at 10:30:56AM +0100, Jan Weitzel wrote:
> drop kernelimage_type bootm now boots all of them.
> 
> Signed-off-by: Jan Weitzel <j.weitzel@phytec.de>

Applied, thanks

Sascha

> ---
>  arch/arm/boards/at91sam9260ek/env/config |    5 -----
>  arch/openrisc/boards/generic/env/config  |    1 -
>  2 files changed, 0 insertions(+), 6 deletions(-)
> 
> diff --git a/arch/arm/boards/at91sam9260ek/env/config b/arch/arm/boards/at91sam9260ek/env/config
> index ba14c2b..8db18ef 100644
> --- a/arch/arm/boards/at91sam9260ek/env/config
> +++ b/arch/arm/boards/at91sam9260ek/env/config
> @@ -19,14 +19,9 @@ rootfs_loc=net
>  rootfs_type=ubifs
>  rootfsimage=root.$rootfs_type
>  
> -# The image type of the kernel. Can be uimage, zimage, raw, or raw_lzo
> -#kernelimage_type=zimage
>  #kernelimage=zImage
> -kernelimage_type=uimage
>  kernelimage=uImage
> -#kernelimage_type=raw
>  #kernelimage=Image
> -#kernelimage_type=raw_lzo
>  #kernelimage=Image.lzo
>  
>  nand_device=atmel_nand
> diff --git a/arch/openrisc/boards/generic/env/config b/arch/openrisc/boards/generic/env/config
> index 9dee8d9..4027f27 100644
> --- a/arch/openrisc/boards/generic/env/config
> +++ b/arch/openrisc/boards/generic/env/config
> @@ -5,7 +5,6 @@ kernel=flash
>  root=flash
>  
>  kernel_loc=nor
> -kernelimage_type=uimage
>  
>  # use 'dhcp' todo dhcp in barebox and in kernel
>  ip=none
> -- 
> 1.7.0.4
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

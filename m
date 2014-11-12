Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XoTCr-0005gl-Dg
 for barebox@lists.infradead.org; Wed, 12 Nov 2014 08:23:14 +0000
Date: Wed, 12 Nov 2014 09:22:51 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20141112082251.GK30369@pengutronix.de>
References: <1415779086-44323-1-git-send-email-c.hemp@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1415779086-44323-1-git-send-email-c.hemp@phytec.de>
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
Subject: Re: [PATCH 1/2] am335x:phyflex: Remove phy fixup from board file
To: Christian Hemp <c.hemp@phytec.de>
Cc: barebox@lists.infradead.org

On Wed, Nov 12, 2014 at 08:58:05AM +0100, Christian Hemp wrote:
> The ethernet timings are set by the devicetree. They are no longer required in the
> board file.
> 
> Signed-off-by: Christian Hemp <c.hemp@phytec.de>

Applied both, thanks

Sascha

> ---
>  arch/arm/boards/phytec-phyflex-am335x/board.c | 10 ----------
>  1 file changed, 10 deletions(-)
> 
> diff --git a/arch/arm/boards/phytec-phyflex-am335x/board.c b/arch/arm/boards/phytec-phyflex-am335x/board.c
> index cf7dd2e..f265e52 100644
> --- a/arch/arm/boards/phytec-phyflex-am335x/board.c
> +++ b/arch/arm/boards/phytec-phyflex-am335x/board.c
> @@ -32,21 +32,11 @@
>  #include <mach/am33xx-silicon.h>
>  #include <mach/bbu.h>
>  
> -static int ksz9031rn_phy_fixup(struct phy_device *dev)
> -{
> -	phy_write_mmd_indirect(dev, 6, 2, 0);
> -	phy_write_mmd_indirect(dev, 8, 2, 0x003ff);
> -
> -	return 0;
> -}
> -
>  static int pfla03_coredevice_init(void)
>  {
>  	if (!of_machine_is_compatible("phytec,phyflex-am335x-som"))
>  		return 0;
>  
> -	phy_register_fixup_for_uid(PHY_ID_KSZ9031, MICREL_PHY_ID_MASK,
> -					ksz9031rn_phy_fixup);
>  	am33xx_register_ethaddr(0, 0);
>  	am33xx_register_ethaddr(1, 1);
>  
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

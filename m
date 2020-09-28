Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kMvg6-0003eg-Ot
 for barebox@lists.infradead.org; Mon, 28 Sep 2020 16:07:04 +0000
References: <20200928155041.32649-1-m.felsch@pengutronix.de>
 <20200928155041.32649-5-m.felsch@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <ae1a4707-d410-6c63-b18c-3233d6383109@pengutronix.de>
Date: Mon, 28 Sep 2020 18:07:01 +0200
MIME-Version: 1.0
In-Reply-To: <20200928155041.32649-5-m.felsch@pengutronix.de>
Content-Language: en-US
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
Subject: Re: [PATCH 04/18] ARM: mx6-sabrelite: remove obsolete
 sabrelite_mem_init()
To: Marco Felsch <m.felsch@pengutronix.de>, barebox@lists.infradead.org



On 9/28/20 5:50 PM, Marco Felsch wrote:
> The memory init is done by of_probe_memory() first which is part of the
> core_initcall's because the device tree has an valid memory node.
> Otherwise the memory-controller driver (esdctl) would add it by reading
> the information from the controller which are set by the DCD data.
> Therefore we can drop it from the local board file.

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
>  arch/arm/boards/freescale-mx6-sabrelite/board.c | 12 ------------
>  1 file changed, 12 deletions(-)
> 
> diff --git a/arch/arm/boards/freescale-mx6-sabrelite/board.c b/arch/arm/boards/freescale-mx6-sabrelite/board.c
> index 020a44297a..1b39ef82c6 100644
> --- a/arch/arm/boards/freescale-mx6-sabrelite/board.c
> +++ b/arch/arm/boards/freescale-mx6-sabrelite/board.c
> @@ -39,18 +39,6 @@ static iomux_v3_cfg_t sabrelite_enet_gpio_pads[] = {
>  	MX6Q_PAD_RGMII_RX_CTL__GPIO_6_24,
>  };
>  
> -static int sabrelite_mem_init(void)
> -{
> -	if (!of_machine_is_compatible("fsl,imx6q-sabrelite") &&
> -	    !of_machine_is_compatible("fsl,imx6dl-sabrelite"))
> -		return 0;
> -
> -	arm_add_mem_device("ram0", 0x10000000, SZ_1G);
> -
> -	return 0;
> -}
> -mem_initcall(sabrelite_mem_init);
> -
>  static int ksz9021rn_phy_fixup(struct phy_device *dev)
>  {
>  	phy_write(dev, 0x09, 0x0f00);
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

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from eusmtp01.atmel.com ([212.144.249.243])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U3l81-0002lU-Hr
 for barebox@lists.infradead.org; Fri, 08 Feb 2013 10:24:22 +0000
Message-ID: <5114D248.5030208@atmel.com>
Date: Fri, 8 Feb 2013 11:24:08 +0100
From: Nicolas Ferre <nicolas.ferre@atmel.com>
MIME-Version: 1.0
References: <20130208092544.GQ19322@game.jcrosoft.org>
 <1360315724-24736-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1360315724-24736-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [For master PATCH 1/1] sama5de3k: add gmacb support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On 02/08/2013 10:28 AM, Jean-Christophe PLAGNIOL-VILLARD :
> Cc: Nicolas Ferre <nicolas.ferre@atmel.com>

Tested-by: Nicolas Ferre <nicolas.ferre@atmel.com>

> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  arch/arm/boards/sama5d3xek/init.c |   31 +++++++++++++++++++++++++++++++
>  1 file changed, 31 insertions(+)
> 
> diff --git a/arch/arm/boards/sama5d3xek/init.c b/arch/arm/boards/sama5d3xek/init.c
> index 110a83f..d17e4c2 100644
> --- a/arch/arm/boards/sama5d3xek/init.c
> +++ b/arch/arm/boards/sama5d3xek/init.c
> @@ -110,6 +110,11 @@ static void ek_add_device_nand(void) {}
>  #endif
>  
>  #if defined(CONFIG_DRIVER_NET_MACB)
> +static struct at91_ether_platform_data gmac_pdata = {
> +	.phy_interface = PHY_INTERFACE_MODE_RGMII,
> +	.phy_addr = 7,
> +};
> +
>  static struct at91_ether_platform_data macb_pdata = {
>  	.phy_interface = PHY_INTERFACE_MODE_RMII,
>  	.phy_addr = 0,
> @@ -138,6 +143,28 @@ static int ek_register_mac_address_43(int id)
>  	return w1_local_mac_address_register(id, "tml", "w1-43-0");
>  }
>  
> +static int ksz9021rn_phy_fixup(struct phy_device *phy)
> +{
> +	int value;
> +
> +#define GMII_RCCPSR	260
> +#define GMII_RRDPSR	261
> +#define GMII_ERCR	11
> +#define GMII_ERDWR	12
> +
> +	/* Set delay values */
> +	value = GMII_RCCPSR | 0x8000;
> +	phy_write(phy, GMII_ERCR, value);
> +	value = 0xF2F4;
> +	phy_write(phy, GMII_ERDWR, value);
> +	value = GMII_RRDPSR | 0x8000;
> +	phy_write(phy, GMII_ERCR, value);
> +	value = 0x2222;
> +	phy_write(phy, GMII_ERDWR, value);
> +
> +	return 0;
> +}
> +
>  static void ek_add_device_eth(void)
>  {
>  	if (w1_local_mac_address_register(0, "tml", "w1-2d-0"))
> @@ -147,6 +174,10 @@ static void ek_add_device_eth(void)
>  	if (ek_register_mac_address_23(1))
>  		ek_register_mac_address_43(1);
>  
> +	phy_register_fixup_for_uid(PHY_ID_KSZ9021, MICREL_PHY_ID_MASK,
> +					   ksz9021rn_phy_fixup);
> +
> +	at91_add_device_eth(0, &gmac_pdata);
>  	at91_add_device_eth(1, &macb_pdata);
>  }
>  #else
> 


-- 
Nicolas Ferre

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

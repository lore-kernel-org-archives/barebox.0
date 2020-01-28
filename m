Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwMXT-0003OF-5t
 for barebox@lists.infradead.org; Tue, 28 Jan 2020 08:48:04 +0000
Date: Tue, 28 Jan 2020 09:48:01 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200128084801.zwo52vabfuzeuopb@pengutronix.de>
References: <20200127155013.4388-1-m.grzeschik@pengutronix.de>
 <20200127155013.4388-4-m.grzeschik@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200127155013.4388-4-m.grzeschik@pengutronix.de>
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
Subject: Re: [PATCH 4/4] ARM: phyCORE-i.MX8M SOM: add pmic initialisation for
 power good
To: Michael Grzeschik <m.grzeschik@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Jan 27, 2020 at 04:50:13PM +0100, Michael Grzeschik wrote:
> This patch is adding the same PMIC handling as the u-boot spl does for
> this Board. It ensures sane defaults.
> 
> Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
> ---
>  arch/arm/boards/phytec-som-imx8mq/board.c | 38 +++++++++++++++++++++++
>  1 file changed, 38 insertions(+)
> 
> diff --git a/arch/arm/boards/phytec-som-imx8mq/board.c b/arch/arm/boards/phytec-som-imx8mq/board.c
> index 4fd098c5f6..7df53a7cfb 100644
> --- a/arch/arm/boards/phytec-som-imx8mq/board.c
> +++ b/arch/arm/boards/phytec-som-imx8mq/board.c
> @@ -10,9 +10,45 @@
>  #include <init.h>
>  #include <linux/sizes.h>
>  #include <mach/bbu.h>
> +#include <mfd/pfuze.h>
>  
>  #include <envfs.h>
>  
> +#define PFUZE100_DEVICEID	0x0
> +#define PFUZE100_REVID		0x3
> +
> +#define PFUZE100_SW1ABMODE	0x23
> +#define PFUZE100_SW2MODE	0x38
> +#define PFUZE100_SW1CMODE	0x31
> +#define PFUZE100_SW3AVOL	0x3c
> +
> +#define APS_PFM			0xc
> +
> +static void imx8mq_setup_pmic_voltages(struct regmap *map)
> +{
> +	int offset = PFUZE100_SW1CMODE;
> +	int switch_num = 6;
> +	int val, i;
> +
> +	regmap_read(map, PFUZE100_SW3AVOL, &val);
> +
> +	/* ensure the correct VDD_DRAM_0V9 output voltage */
> +	regmap_write_bits(map, PFUZE100_SW3AVOL, 0x3f, 0x18);
> +
> +	/* pfuze200 */
> +	regmap_read(map, PFUZE100_DEVICEID, &val);
> +	if (val & 0xf) {
> +		offset = PFUZE100_SW2MODE;
> +		switch_num = 4;
> +	}
> +
> +	/* set all switches APS in normal and PFM mode in standby */
> +	regmap_write(map, PFUZE100_SW1ABMODE, APS_PFM);
> +
> +	for (i = 0; i < switch_num - 1; i++)
> +		regmap_write(map, offset + i * 7, APS_PFM);
> +}
> +
>  static int physom_imx8mq_devices_init(void)
>  {
>  	int flag_emmc = 0;
> @@ -23,6 +59,8 @@ static int physom_imx8mq_devices_init(void)
>  
>  	barebox_set_hostname("phycore-imx8mq");
>  
> +	pfuze_register_init_callback(imx8mq_setup_pmic_voltages);

Yes, providing a static inline wrapper function for this is a good idea.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

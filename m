Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.27.mail-out.ovh.net ([46.105.44.170] helo=27.mail-out.ovh.net)
	by canuck.infradead.org with smtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QVNX3-0006U3-ON
	for barebox@lists.infradead.org; Sat, 11 Jun 2011 12:43:18 +0000
Date: Fri, 10 Jun 2011 13:29:48 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20110610112948.GC3037@game.jcrosoft.org>
References: <1307695034-11536-1-git-send-email-h.feurstein@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1307695034-11536-1-git-send-email-h.feurstein@gmail.com>
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
Subject: Re: [PATCH] at91sam9m10g45ek: add mci0 support
To: Hubert Feurstein <h.feurstein@gmail.com>
Cc: barebox@lists.infradead.org

On 10:37 Fri 10 Jun     , Hubert Feurstein wrote:
> and enable fat support
> 
> Signed-off-by: Hubert Feurstein <h.feurstein@gmail.com>
> Cc: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  arch/arm/boards/at91sam9m10g45ek/init.c     |    8 ++++++++
>  arch/arm/configs/at91sam9m10g45ek_defconfig |    5 +++++
>  2 files changed, 13 insertions(+), 0 deletions(-)
> 
> diff --git a/arch/arm/boards/at91sam9m10g45ek/init.c b/arch/arm/boards/at91sam9m10g45ek/init.c
> index 77d51b7..4f79e42 100644
> --- a/arch/arm/boards/at91sam9m10g45ek/init.c
> +++ b/arch/arm/boards/at91sam9m10g45ek/init.c
> @@ -22,6 +22,7 @@
> 
>  #include <common.h>
>  #include <net.h>
> +#include <mci.h>
>  #include <init.h>
>  #include <environment.h>
>  #include <asm/armlinux.h>
> @@ -110,11 +111,18 @@ static struct at91_ether_platform_data macb_pdata = {
>  	.phy_addr = 0,
>  };
> 
> +static struct atmel_mci_platform_data mci0_pdata = {
> +	.bus_width	= 4,
> +	.host_caps	= MMC_MODE_HS,
> +	.detect_pin	= AT91_PIN_PD10,
> +};
> +
>  static int at91sam9m10g45ek_devices_init(void)
>  {
>  	at91_add_device_sdram(128 * 1024 * 1024);
>  	ek_add_device_nand();
>  	at91_add_device_eth(&macb_pdata);
> +	at91_add_device_mci(0, &mci0_pdata);
please do the same as I did on 9263ek

only add the device if the driver is enable

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

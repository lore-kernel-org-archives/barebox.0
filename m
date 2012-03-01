Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo2.mail-out.ovh.net ([178.32.228.2])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1S39dw-0001Al-2O
 for barebox@lists.infradead.org; Thu, 01 Mar 2012 17:18:17 +0000
Received: from mail621.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 3B00FDC3151
 for <barebox@lists.infradead.org>; Thu,  1 Mar 2012 18:21:07 +0100 (CET)
Date: Thu, 1 Mar 2012 18:08:44 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120301170844.GS12248@game.jcrosoft.org>
References: <1330618889-11482-1-git-send-email-dimov@ronetix.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1330618889-11482-1-git-send-email-dimov@ronetix.at>
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
Subject: Re: [PATCH 1/3] pm9g45: fix Ethernet
To: Asen Chavdarov Dimov <dimov@ronetix.at>
Cc: barebox@lists.infradead.org

On 18:21 Thu 01 Mar     , Asen Chavdarov Dimov wrote:
> Enable PHY, MACB and PIOs clocks.
> 
> Signed-off-by: Asen Chavdarov Dimov <dimov@ronetix.at>
> ---
>  arch/arm/boards/pm9g45/init.c |   31 +++++++++++++++++++++++++++++++
>  1 files changed, 31 insertions(+), 0 deletions(-)
> 
> diff --git a/arch/arm/boards/pm9g45/init.c b/arch/arm/boards/pm9g45/init.c
> index 480c751..9eba12a 100644
> --- a/arch/arm/boards/pm9g45/init.c
> +++ b/arch/arm/boards/pm9g45/init.c
> @@ -82,6 +82,19 @@ static struct at91_ether_platform_data macb_pdata = {
>  	.phy_addr = 0,
>  };
>  
> +static int phy_init(void)
please keep the function name with pm9g45_xx
> +{
> +	/*
> +	 * PD2 enables the 50MHz oscillator for Ethernet PHY
> +	 * 1 - enable
> +	 * 0 - disable
> +	 */
> +	at91_set_gpio_output(AT91_PIN_PD2, 1);
> +	at91_set_gpio_value(AT91_PIN_PD2, 1);
> +
> +	return 0;
you do not check the return so drop it
> +}
> +
>  static int pm9g45_mem_init(void)
>  {
>  	at91_add_device_sdram(128 * 1024 * 1024);
> @@ -90,9 +103,27 @@ static int pm9g45_mem_init(void)
>  }
>  mem_initcall(pm9g45_mem_init);
>  
> +static const char *periph_clocks[] __initdata = {
> +	"pioA_clk",
> +	"pioB_clk",
> +	"pioC_clk",
> +	"pioDE_clk",
> +	"macb_clk"
> +};
> +
>  static int pm9g45_devices_init(void)
>  {
> +	struct clk *clk;
> +	int i;
> +
> +	for (i = 0; i < ARRAY_SIZE(periph_clocks); i++) {
> +		clk = clk_get(NULL, periph_clocks[i]);
> +		clk_enable(clk);
> +	}
no need this done automaticaly

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

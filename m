Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eebnK-0007ti-0u
 for barebox@lists.infradead.org; Thu, 25 Jan 2018 07:17:59 +0000
Date: Thu, 25 Jan 2018 08:17:45 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180125071745.mv5r7jkom7snuz5t@pengutronix.de>
References: <20180123143053.20623-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180123143053.20623-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH] at91sam9x5ek: Add appropriate compatibility guards to
 all initcalls
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Jan 23, 2018 at 06:30:53AM -0800, Andrey Smirnov wrote:
> Add appropriate calls to of_machine_is_compatible() to all initcalls
> to avoid having those executed for wrong boards in multi-board build.
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  arch/arm/boards/at91sam9x5ek/hw_version.c |  3 +++
>  arch/arm/boards/at91sam9x5ek/init.c       | 13 +++++++++++++
>  2 files changed, 16 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/boards/at91sam9x5ek/hw_version.c b/arch/arm/boards/at91sam9x5ek/hw_version.c
> index 10563cf98..f15cd3dc0 100644
> --- a/arch/arm/boards/at91sam9x5ek/hw_version.c
> +++ b/arch/arm/boards/at91sam9x5ek/hw_version.c
> @@ -253,6 +253,9 @@ static int cm_cogent_fixup(struct device_node *root, void *unused)
>  
>  static int at91sam9x5ek_devices_detect_hw(void)
>  {
> +	if (!of_machine_is_compatible("atmel,at91sam9x5ek"))
> +		return 0;
> +
>  	at91sam9x5ek_devices_detect_one("/dev/ds24310");
>  	at91sam9x5ek_devices_detect_one("/dev/ds24311");
>  	at91sam9x5ek_devices_detect_one("/dev/ds24330");
> diff --git a/arch/arm/boards/at91sam9x5ek/init.c b/arch/arm/boards/at91sam9x5ek/init.c
> index 646cff5d6..649545e8a 100644
> --- a/arch/arm/boards/at91sam9x5ek/init.c
> +++ b/arch/arm/boards/at91sam9x5ek/init.c
> @@ -66,6 +66,10 @@ static struct sam9_smc_config cm_nand_smc_config = {
>  static int ek_add_device_smc(void)
>  {
>  	unsigned long csa;
> +
> +	if (!of_machine_is_compatible("atmel,at91sam9x5ek"))
> +		return 0;
> +
>  	csa = at91_sys_read(AT91_MATRIX_EBICSA);
>  
>  	/* Enable CS3 */
> @@ -105,6 +109,9 @@ static int ek_register_mac_address(void)
>  {
>  	int ret;
>  
> +	if (!of_machine_is_compatible("atmel,at91sam9x5ek"))
> +		return 0;
> +
>  	ret = w1_local_mac_address_register(0, "tml", "w1-2d-0");
>  	if (!ret)
>  		return ret;
> @@ -158,6 +165,9 @@ static void ek_add_device_lcdc(void) {}
>  
>  static int at91sam9x5ek_devices_init(void)
>  {
> +	if (!of_machine_is_compatible("atmel,at91sam9x5ek"))
> +		return 0;
> +
>  	ek_add_device_lcdc();
>  
>  	armlinux_set_architecture(CONFIG_MACH_AT91SAM9X5EK);
> @@ -171,6 +181,9 @@ device_initcall(at91sam9x5ek_devices_init);
>  
>  static int at91sam9x5ek_console_init(void)
>  {
> +	if (!of_machine_is_compatible("atmel,at91sam9x5ek"))
> +		return 0;
> +
>  	barebox_set_model("Atmel at91sam9x5-ek");
>  	barebox_set_hostname("at91sam9x5-ek");
>  
> -- 
> 2.14.3
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

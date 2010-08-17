Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-gx0-f177.google.com ([209.85.161.177])
	by bombadil.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OlJap-0008A7-JL
	for barebox@lists.infradead.org; Tue, 17 Aug 2010 10:40:33 +0000
Received: by gxk27 with SMTP id 27so2887612gxk.36
	for <barebox@lists.infradead.org>; Tue, 17 Aug 2010 03:40:30 -0700 (PDT)
Message-ID: <4C6A6709.9080107@gmail.com>
Date: Tue, 17 Aug 2010 05:40:09 -0500
From: Nishanth Menon <menon.nishanth@gmail.com>
MIME-Version: 1.0
References: <1282035337-25094-1-git-send-email-m.grzeschik@pengutronix.de>
In-Reply-To: <1282035337-25094-1-git-send-email-m.grzeschik@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH|RFC] beagle: make nand ecc command based
To: Michael Grzeschik <m.grzeschik@pengutronix.de>
Cc: barebox@lists.infradead.org

On 08/17/2010 03:55 AM, Michael Grzeschik wrote:
> Signed-off-by: Michael Grzeschik<m.grzeschik@pengutronix.de>
> ---
> This will only work once and bring the nand chip into a undefined state
> after a second call. Any ideas for doing this save?
looking at the gpmc logic, it does a reset in gpmc_cs_config by 
disabling and re-enabling it -> so my guess is:
a) in the selection of ecc logic
b) reset of statemachines in mtd layers
c) nand chip not being reset from it's previous state (resetting the 
controller does not mean nand chip is reset) (if i recollect sometime 
back mtd used to do a 0xff and reset)..


personally, IMHO using s/w ecc has not much benefit other than being 
"legacy enabled"
>
>   arch/arm/boards/omap/board-beagle.c |   28 +++++++++++++++++++++++++++-
>   1 files changed, 27 insertions(+), 1 deletions(-)
>
> diff --git a/arch/arm/boards/omap/board-beagle.c b/arch/arm/boards/omap/board-beagle.c
> index c0b6b43..99766af 100644
> --- a/arch/arm/boards/omap/board-beagle.c
> +++ b/arch/arm/boards/omap/board-beagle.c
> @@ -53,6 +53,7 @@
>    */
>
>   #include<common.h>
> +#include<command.h>
>   #include<console.h>
>   #include<init.h>
>   #include<driver.h>
> @@ -324,7 +325,6 @@ static int beagle_devices_init(void)
>   	/* WP is made high and WAIT1 active Low */
>   	gpmc_generic_init(0x10);
>   #endif
> -	gpmc_generic_nand_devices_init(0, 16, 1);
>
>   	armlinux_add_dram(&sdram_dev);
>   	armlinux_set_bootparams((void *)0x80000100);
> @@ -333,3 +333,29 @@ failed:
>   	return ret;
>   }
>   device_initcall(beagle_devices_init);
> +
> +static int do_ecc(struct command *cmdtp, int argc, char *argv[])
> +{
> +	if (*argv[0] == 's') {
> +		gpmc_generic_nand_devices_init(0, 16, 0);
> +	} else {
> +		gpmc_generic_nand_devices_init(0, 16, 1);
> +	}
> +	return 0;
> +}
> +
> +static const __maybe_unused char cmd_ecc_help[] =
> +"Usage: (s|h)whwcc<device>\n"
> +"set software or hardware ecc for nand controller \n";
> +
> +BAREBOX_CMD_START(hwecc)
> +        .cmd            = do_ecc,
> +        .usage          = "enable HWECC support in NAND",
> +        BAREBOX_CMD_HELP(cmd_ecc_help)
> +BAREBOX_CMD_END
> +
> +BAREBOX_CMD_START(swecc)
> +        .cmd            = do_ecc,
> +        .usage          = "enable SWECC support in NAND",
> +        BAREBOX_CMD_HELP(cmd_ecc_help)
> +BAREBOX_CMD_END


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

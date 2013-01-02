Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TqLHe-0007IH-OQ
 for barebox@lists.infradead.org; Wed, 02 Jan 2013 10:10:51 +0000
Date: Wed, 2 Jan 2013 11:10:49 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130102101049.GD26326@pengutronix.de>
References: <20121229100404.GA22953@game.jcrosoft.org>
 <1356775697-1849-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1356775697-1849-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/7] at91: add test commamd to emulate bootrom boot
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Sat, Dec 29, 2012 at 11:08:11AM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  arch/arm/mach-at91/Kconfig         |    5 ++
>  arch/arm/mach-at91/Makefile        |    1 +
>  arch/arm/mach-at91/boot_test_cmd.c |   97 ++++++++++++++++++++++++++++++++++++
>  3 files changed, 103 insertions(+)
>  create mode 100644 arch/arm/mach-at91/boot_test_cmd.c
> 
> diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
> index fcba7fb..264b975 100644
> --- a/arch/arm/mach-at91/Kconfig
> +++ b/arch/arm/mach-at91/Kconfig
> @@ -483,4 +483,9 @@ config CMD_AT91MUX
>  	bool "at91mux dump command"
>  	default y
>  
> +config CONFIG_CMD_AT91_BOOT_TEST
> +	bool "at91_boot_test"
> +	help
> +	  allow to upload a boot binary to sram and execute it

You should mention here that this is for debugging/testing the bootstrap
support.

> +	while ((opt = getopt(argc, argv, "j:s:")) > 0) {
> +		switch (opt) {
> +		case 'j':
> +			jump = simple_strtoul(optarg, NULL, 0);
> +			break;
> +		case 's':
> +			sram = optarg;
> +			break;

		default:
			return COMMAND_ERROR_USAGE;

Sascha


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

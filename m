Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gt6Mz-0006kh-4o
 for barebox@lists.infradead.org; Mon, 11 Feb 2019 07:51:14 +0000
Date: Mon, 11 Feb 2019 08:51:11 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190211075111.3nkxyejnpzrqh3gh@pengutronix.de>
References: <20190207095625.11582-1-o.rempel@pengutronix.de>
 <20190207095625.11582-2-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190207095625.11582-2-o.rempel@pengutronix.de>
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
Subject: Re: [PATCH v1 2/3] watchdog: add (U)EFI watchdog driver
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Feb 07, 2019 at 10:56:24AM +0100, Oleksij Rempel wrote:
> This driver is using SetWatchdogTimer() UEFI interface and was
> tested on iBASE MI991AF Mini-ITX motherboard.
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  common/efi/efi.c           |  9 ++++-
>  drivers/watchdog/Kconfig   |  6 ++++
>  drivers/watchdog/Makefile  |  1 +
>  drivers/watchdog/efi_wdt.c | 69 ++++++++++++++++++++++++++++++++++++++
>  4 files changed, 84 insertions(+), 1 deletion(-)
>  create mode 100644 drivers/watchdog/efi_wdt.c
> 
> +#define to_efi_wdt(h) container_of(h, struct efi_wdt_priv, wd)
> +
> +static int efi_wdt_set_timeout(struct watchdog *wd, unsigned timeout)
> +{
> +	struct efi_wdt_priv *priv = to_efi_wdt(wd);
> +	efi_status_t efiret;
> +
> +	efiret = BS->set_watchdog_timer(timeout, 0, 0, NULL);
> +	if (EFI_ERROR(efiret))
> +		dev_err(priv->dev, "filed to set EFI watchdog: %lx\n", efiret);

Shouldn't you return an error here?

> +	.name = "efi-wdt",
> +	.probe = efi_wdt_probe,
> +};
> +
> +static int efi_wdt_initcall(void)
> +{
> +	return platform_driver_register(&efi_wdt_driver);
> +}
> +device_initcall(efi_wdt_initcall);

device_platform_driver instead?

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

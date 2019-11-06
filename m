Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSHg5-0000Rh-FP
 for barebox@lists.infradead.org; Wed, 06 Nov 2019 09:32:38 +0000
Date: Wed, 6 Nov 2019 10:32:35 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20191106093235.yikgauqikv7nnk2x@pengutronix.de>
References: <20191106071034.24452-1-a.fatoum@pengutronix.de>
 <20191106071034.24452-5-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191106071034.24452-5-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH 5/7] misc: implement PSCI system reset driver
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Nov 06, 2019 at 08:10:32AM +0100, Ahmad Fatoum wrote:
> In cases where firmware provides PSCI >0.1, it may be prudent to use it as
> backend for reset and poweroff. This driver accomplishes this.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/misc/Kconfig         |  5 +++
>  drivers/misc/Makefile        |  1 +
>  drivers/misc/psci-sysreset.c | 62 ++++++++++++++++++++++++++++++++++++
>  3 files changed, 68 insertions(+)
>  create mode 100644 drivers/misc/psci-sysreset.c
> 
> diff --git a/drivers/misc/Kconfig b/drivers/misc/Kconfig
> index 0f736f8bded3..0412fcf02aa3 100644
> --- a/drivers/misc/Kconfig
> +++ b/drivers/misc/Kconfig
> @@ -35,4 +35,9 @@ config UBOOTVAR
>  	  While it can be used standalone, it is best when coupled
>  	  with corresponding filesystem driver.
>  
> +config PSCI_SYSRESET
> +	bool "PSCI system reset driver"
> +	select ARM_PSCI_CLIENT
> +	depends on CPU_32v7 || CPU_64v8

I would rather prefer to be ARM_PSCI_CLIENT a user visible option.

> +static int __init psci_sysreset_init(void)
> +{
> +	int version;
> +	int ret;
> +
> +	version = psci_get_version();
> +	if (version < 0)
> +		return version;

This prints a warning for everyone who has this code enabled but doesn't
have psci support. Also you enforce that the psci client driver has to
be registered already.
I think this code should rather be merged into the psci client driver,
there's no need for an additional initcall.

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

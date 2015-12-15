Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x22b.google.com ([2a00:1450:4010:c07::22b])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a8tmP-0005y2-5g
 for barebox@lists.infradead.org; Tue, 15 Dec 2015 17:52:54 +0000
Received: by mail-lf0-x22b.google.com with SMTP id z124so7584433lfa.3
 for <barebox@lists.infradead.org>; Tue, 15 Dec 2015 09:52:32 -0800 (PST)
Date: Tue, 15 Dec 2015 21:16:47 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20151215211647.172f804369dfefc5b4b0b0d2@gmail.com>
In-Reply-To: <1450200490-4488-1-git-send-email-fvallee@eukrea.fr>
References: <1450200490-4488-1-git-send-email-fvallee@eukrea.fr>
Mime-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v2] GPIO: add Microchip MCP23017 / MCP23008 GPIO driver
To: Florian Vallee <fvallee@eukrea.fr>
Cc: barebox@lists.infradead.org

On Tue, 15 Dec 2015 18:28:10 +0100
Florian Vallee <fvallee@eukrea.fr> wrote:

> This is based on the I2C implementation of the corresponding linux driver
> =

> v2:
>  - cleanup unused platform_data
>  - fix base gpio number handling
> =

> Signed-off-by: Florian Vallee <fvallee@eukrea.fr>
> ---
>  drivers/gpio/Kconfig             |  11 +-
>  drivers/gpio/Makefile            |   1 +
>  drivers/gpio/gpio-mcp23s08.c     | 341 +++++++++++++++++++++++++++++++++=
++++++
>  include/platform_data/mcp23s08.h |   4 +
>  4 files changed, 356 insertions(+), 1 deletion(-)
>  create mode 100644 drivers/gpio/gpio-mcp23s08.c
>  create mode 100644 include/platform_data/mcp23s08.h
> =

> diff --git a/drivers/gpio/Kconfig b/drivers/gpio/Kconfig
> index 9cb2261..6428f2b 100644
> --- a/drivers/gpio/Kconfig
> +++ b/drivers/gpio/Kconfig
> @@ -121,6 +121,15 @@ config GPIO_DESIGNWARE
>  	help
>  	  Say Y or M here to build support for the Synopsys DesignWare APB
>  	  GPIO block.
> -endmenu
>  =

> +config GPIO_MCP23S08
> +	tristate "Microchip MCP23xxx I/O expander"
> +	depends on I2C
> +	help
> +	  I2C driver for Microchip MCP23008/MCP23017
> +	  I/O expanders.
> +	  This provides a GPIO interface supporting inputs and outputs.
> +	  The I2C versions of the chips can be used as interrupt-controller.
> +
> +endmenu
>  endif

...

> --- /dev/null
> +++ b/drivers/gpio/gpio-mcp23s08.c
> @@ -0,0 +1,341 @@

...

> +struct mcp23s08_driver_data {
> +	unsigned		ngpio;
> +	struct mcp23s08		*mcp[8];
> +	struct mcp23s08		chip[];
> +};
> +
> +/*----------------------------------------------------------------------=
*/
> +
> +#if IS_ENABLED(CONFIG_I2C)


Hmmm.

You already have 'depends on I2C' in your Kconfig.


> +static int mcp23s08_probe_one(struct mcp23s08 *mcp, struct device_d *dev,
> +			      void *data, unsigned addr, unsigned type,
> +			      struct mcp23s08_platform_data *pdata, int cs)
> +{
> +	int status;
> +
> +	mcp->data =3D data;
> +	mcp->addr =3D addr;
> +
> +	switch (type) {
> +#if IS_ENABLED(CONFIG_I2C)

Just the same thing happened here.


> +	case MCP_TYPE_008:
> +		mcp->ops =3D &mcp23008_ops;
> +		mcp->chip.ngpio =3D 8;
> +		break;
> +
> +	case MCP_TYPE_017:
> +		mcp->ops =3D &mcp23017_ops;
> +		mcp->chip.ngpio =3D 16;
> +		break;
> +#endif /* CONFIG_I2C */

...

> diff --git a/include/platform_data/mcp23s08.h b/include/platform_data/mcp=
23s08.h
> new file mode 100644
> index 0000000..b5289ab
> --- /dev/null
> +++ b/include/platform_data/mcp23s08.h
> @@ -0,0 +1,4 @@
> +struct mcp23s08_platform_data {
> +	/* "base" is the number of the first GPIO. */
> +	unsigned	base;
> +};

This header file has no guard macro.
However, linux version of this file has no guard macro either.

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

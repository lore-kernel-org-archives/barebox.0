Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1ORjyV-0003hk-Su
	for barebox@lists.infradead.org; Thu, 24 Jun 2010 10:48:05 +0000
Date: Thu, 24 Jun 2010 12:48:01 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100624104801.GV12115@pengutronix.de>
References: <1277372997-6472-1-git-send-email-eric@eukrea.com>
	<1277372997-6472-2-git-send-email-eric@eukrea.com>
	<1277372997-6472-3-git-send-email-eric@eukrea.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1277372997-6472-3-git-send-email-eric@eukrea.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 3/3] eukrea_cpuimx35: better handling of backlight
To: Eric =?iso-8859-15?Q?B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

Hi Eric,

On Thu, Jun 24, 2010 at 11:49:57AM +0200, Eric B=E9nard wrote:
> start with backlight disabled and enable it if the logo is
> displayed.

I just posted a patch which starts up the imxfb driver disabled and
another patch which adds a board specific enable/disable hook. Would
this be a solution for you? The only thing missing then is a patch
which initializes the ipu fb driver with the display disabled.

Sascha

> =

> Signed-off-by: Eric B=E9nard <eric@eukrea.com>
> ---
>  board/eukrea_cpuimx35/env/bin/init      |    2 ++
>  board/eukrea_cpuimx35/eukrea_cpuimx35.c |   11 +++++++++--
>  2 files changed, 11 insertions(+), 2 deletions(-)
> =

> diff --git a/board/eukrea_cpuimx35/env/bin/init b/board/eukrea_cpuimx35/e=
nv/bin/init
> index 49e54c5..4610213 100644
> --- a/board/eukrea_cpuimx35/env/bin/init
> +++ b/board/eukrea_cpuimx35/env/bin/init
> @@ -14,9 +14,11 @@ fi
>  =

>  if [ -f /env/logo.bmp ]; then
>  	bmp /env/logo.bmp
> +	gpio_direction_output 1 1
>  elif [ -f /env/logo.bmp.lzo ]; then
>  	unlzo /env/logo.bmp.lzo /logo.bmp
>  	bmp /logo.bmp
> +	gpio_direction_output 1 1
>  fi
>  =

>  if [ -z $eth0.ethaddr ]; then
> diff --git a/board/eukrea_cpuimx35/eukrea_cpuimx35.c b/board/eukrea_cpuim=
x35/eukrea_cpuimx35.c
> index 7f1c782..f358f51 100644
> --- a/board/eukrea_cpuimx35/eukrea_cpuimx35.c
> +++ b/board/eukrea_cpuimx35/eukrea_cpuimx35.c
> @@ -166,8 +166,10 @@ device_initcall(eukrea_cpuimx35_devices_init);
>  =

>  static int eukrea_cpuimx35_enable_display(void)
>  {
> -	gpio_direction_output(1, 1);
> -	gpio_direction_output(0, 0);
> +	/* default : backlight OFF */
> +	gpio_direction_output(1, 0);
> +	gpio_direction_output(4, 1);
> +
>  	return 0;
>  }
>  =

> @@ -205,14 +207,19 @@ static struct pad_desc eukrea_cpuimx35_pads[] =3D {
>  	MX35_PAD_TXD1__UART1_TXD_MUX,
>  	MX35_PAD_RTS1__UART1_RTS,
>  	MX35_PAD_CTS1__UART1_CTS,
> +
> +	MX35_PAD_CONTRAST__GPIO1_1,
> +	MX35_PAD_D3_CLS__GPIO1_4,
>  };
>  =

> +
>  static int eukrea_cpuimx35_console_init(void)
>  {
>  	mxc_iomux_v3_setup_multiple_pads(eukrea_cpuimx35_pads,
>  		ARRAY_SIZE(eukrea_cpuimx35_pads));
>  =

>  	register_device(&eukrea_cpuimx35_serial_device);
> +
>  	return 0;
>  }
>  =

> -- =

> 1.6.3.3
> =

> =


-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

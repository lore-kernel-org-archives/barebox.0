Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x241.google.com ([2a00:1450:4010:c07::241])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eeGqf-0004Dr-OZ
 for barebox@lists.infradead.org; Wed, 24 Jan 2018 08:56:03 +0000
Received: by mail-lf0-x241.google.com with SMTP id f3so4168813lfe.4
 for <barebox@lists.infradead.org>; Wed, 24 Jan 2018 00:55:49 -0800 (PST)
Date: Wed, 24 Jan 2018 12:10:11 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20180124121011.5edbe7bab4fa8d8c46889d66@gmail.com>
In-Reply-To: <20180122095918.11721-1-antonynpavlov@gmail.com>
References: <20180122095918.11721-1-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH v3 0/3] sandbox: add gpio support with libftdi1
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, 22 Jan 2018 12:59:15 +0300
Antony Pavlov <antonynpavlov@gmail.com> wrote:

Sascha!

Please review this patch series.

> This patch series makes it possible to use FT2232H ACBUS[7:0]
> pins as gpio pins from sandbox barebox.
> =

> There are ready-to-use FT2232H-based boards:
> =

>   * FT2232H-56Q Mini-Module (http://www.ftdichip.com/Products/Modules/Dev=
elopmentModules.htm#FT2232H-56_Mini)
>   * FT2232 breakout board (http://dangerousprototypes.com/docs/FT2232_bre=
akout_board)
> =

> The main goal of adding gpio functionality to sandbox barebox
> is using it for connecting real i2c and spi devices to sandbox barebox.
> =

> Sample dts-file for at24 i2c eeprom and at25 spi flash is included.
> =

> Changes since v2 patch series (http://lists.infradead.org/pipermail/bareb=
ox/2018-January/031887.html):
> =

>   * ftdi USB IDs are moved to dts, parseopt_* functions are unused;
>   * dts stuff moved to sandbox-libftdi-example.dtsi;
>   * led example is added.
> =

> Changes since v1 patch series (http://lists.infradead.org/pipermail/bareb=
ox/2017-October/031306.html):
> =

>   * rebase on top barebox v2017.12.0;
>   * ds1307 i2c rtc driver works fine (i2c-gpio,scl-output-only is used);
>   * parseopt_* functions are used for cmdline parsing.
> =

> Changes since RFC v1 patch series (http://lists.infradead.org/pipermail/b=
arebox/2017-February/029106.html):
> =

>   * rebase on top barebox v2017.10.0;
>   * libftdi cmdline options are added;
>   * device tree support is added.
> =

> Antony Pavlov (3):
>   sandbox: avoid symbol conflict for {open,read,close}dir
>   sandbox: add gpio support with libftdi1
>   sandbox: add i2c and spi libftdi1 bit-bang example
> =

>  arch/sandbox/Kconfig                           |   1 +
>  arch/sandbox/Makefile                          |  10 +-
>  arch/sandbox/configs/sandbox_defconfig         |  21 +++-
>  arch/sandbox/dts/sandbox-libftdi-example.dtsi  |  80 +++++++++++++
>  arch/sandbox/mach-sandbox/include/mach/linux.h |  12 ++
>  arch/sandbox/os/Makefile                       |   3 +
>  arch/sandbox/os/ftdi.c                         | 154 +++++++++++++++++++=
++++++
>  drivers/gpio/Kconfig                           |   4 +
>  drivers/gpio/Makefile                          |   1 +
>  drivers/gpio/gpio-libftdi1.c                   | 137 +++++++++++++++++++=
+++
>  10 files changed, 420 insertions(+), 3 deletions(-)
>  create mode 100644 arch/sandbox/dts/sandbox-libftdi-example.dtsi
>  create mode 100644 arch/sandbox/os/ftdi.c
>  create mode 100644 drivers/gpio/gpio-libftdi1.c
> =

> -- =

> 2.15.1
> =



-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

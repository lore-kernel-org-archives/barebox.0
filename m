Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x243.google.com ([2a00:1450:4010:c07::243])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1ecETa-0008Qk-05
 for barebox@lists.infradead.org; Thu, 18 Jan 2018 17:59:47 +0000
Received: by mail-lf0-x243.google.com with SMTP id t139so12996712lff.0
 for <barebox@lists.infradead.org>; Thu, 18 Jan 2018 09:59:34 -0800 (PST)
Date: Thu, 18 Jan 2018 21:13:50 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20180118211350.06c661f55ea37e8071dd07c3@gmail.com>
In-Reply-To: <20180114212252.29682-1-antonynpavlov@gmail.com>
References: <20180114212252.29682-1-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH v2 0/7] sandbox: add gpio support with libftdi1
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, 15 Jan 2018 00:22:45 +0300
Antony Pavlov <antonynpavlov@gmail.com> wrote:

> This patch series makes it possible to use FT2232H ACBUS[7:0]
> pins as gpio pins from sandbox barebox.

Hi Sascha!

Please review this patch series!


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

> Antony Pavlov (7):
>   sandbox: avoid symbol conflict for {open,read,close}dir
>   sandbox: add gpio support with libftdi1
>   sandbox: add i2c and spi libftdi1 bit-bang example
>   move parseopt to lib/
>   include/parseopt.h: add guard macro
>   parseopt: introduce parseopt_u16() and parseopt_str()
>   sandbox: parse libftdi options
> =

>  arch/sandbox/Kconfig                           |   1 +
>  arch/sandbox/Makefile                          |  10 +-
>  arch/sandbox/configs/sandbox_defconfig         |  26 +++-
>  arch/sandbox/dts/sandbox.dts                   |  52 +++++++
>  arch/sandbox/mach-sandbox/include/mach/linux.h |  11 ++
>  arch/sandbox/os/Makefile                       |   3 +
>  arch/sandbox/os/common.c                       |  12 +-
>  arch/sandbox/os/ftdi.c                         | 181 +++++++++++++++++++=
++++++
>  drivers/gpio/Kconfig                           |   4 +
>  drivers/gpio/Makefile                          |   1 +
>  drivers/gpio/gpio-libftdi1.c                   | 125 +++++++++++++++++
>  fs/Makefile                                    |   2 +-
>  fs/fs.c                                        |   3 +-
>  fs/nfs.c                                       |   3 +-
>  fs/parseopt.c                                  |  60 --------
>  fs/parseopt.h                                  |   2 -
>  include/parseopt.h                             |   9 ++
>  lib/Makefile                                   |   1 +
>  lib/parseopt.c                                 | 124 +++++++++++++++++
>  19 files changed, 558 insertions(+), 72 deletions(-)
>  create mode 100644 arch/sandbox/os/ftdi.c
>  create mode 100644 drivers/gpio/gpio-libftdi1.c
>  delete mode 100644 fs/parseopt.c
>  delete mode 100644 fs/parseopt.h
>  create mode 100644 include/parseopt.h
>  create mode 100644 lib/parseopt.c
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

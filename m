Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yb0-x235.google.com ([2607:f8b0:4002:c09::235])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cT549-0002Yi-Hd
 for barebox@lists.infradead.org; Mon, 16 Jan 2017 11:03:11 +0000
Received: by mail-yb0-x235.google.com with SMTP id w194so29273961ybe.0
 for <barebox@lists.infradead.org>; Mon, 16 Jan 2017 03:02:48 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20170116105108.13617-1-s.hauer@pengutronix.de>
References: <20170116105108.13617-1-s.hauer@pengutronix.de>
From: Belisko Marek <marek.belisko@gmail.com>
Date: Mon, 16 Jan 2017 12:02:47 +0100
Message-ID: <CAAfyv35FkKMn_7LKbcd3gXsTdMqR1F9WKr_WRVb+TF0AB+5LWg@mail.gmail.com>
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
Subject: Re: i.MX7 support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

Hi Sascha,

On Mon, Jan 16, 2017 at 11:50 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> The following series adds i.MX7 support to barebox. The port
> was done on the WaRP7 board. The board starts, eMMC, USB and serial work.
> This board does not have ethernet or NAND, so supporting this is
> left for a later exercise.
>
> It will be some additional fun to support the 2nd CPU for i.MX7d as we'll
> need PSCI support then. So far we are limited to a single core, but
> the only currently supported board is single core anyway.
>
> One issue remaining is that I am currently unable to reset the board
> using the watchdog or the barebox reset command. Out of ideas, will
> fix later.
imx7 has know problem that cannot be reset by softreset only by
external signal as Fabio suggested.
>
> Sascha
>
>
> ----------------------------------------------------------------
> Juergen Borleis (10):
>       imx-usb-loader: let constant data be const
>       imx-usb-loader: this table is used internally only, so keep it static
>       imx-usb-loader: add i.MX7S support
>       ARM: Makefile: format fix
>       ARM: i.MX: Add i.MX7 base architecture support
>       clk: i.MX: Add clock support for i.MX7
>       ARM: i.MX: gpt: Add i.MX7 support
>       pinmmux: i.MX: add pin mux support for i.MX7
>       serial: i.MX: add i.MX7 support
>       ARM: i.MX: Add WaRP7 board support
>
> Sascha Hauer (13):
>       i2c: i.MX: Enable clock
>       mci: imx-esdhc: Enable clock
>       serial: i.MX: Enable clock
>       usb: imx: Make usb-misc multi instance safe
>       usb: imx: Add usbmisc support for i.MX7
>       usb: imx: Add clock support
>       phy: usb-nop-xceiv: Add clock support
>       of: partitions: force "partitions" subnode
>       mci: Allow to partition eMMC boot partitions
>       mci: imx-esdhci: remove wrong write protection test
>       clk: i.MX: pllv3: Add support for the i.MX7 enet pll
>       clk: imx: Add clk-cpu support
>       clk: i.MX7: Add missing USB clocks
>
>  Documentation/boards/imx.rst                       |   1 +
>  Documentation/boards/imx/Element14-WaRP7.rst       |  54 ++
>  arch/arm/Makefile                                  |   2 +-
>  arch/arm/boards/Makefile                           |   1 +
>  arch/arm/boards/element14-warp7/Makefile           |   2 +
>  arch/arm/boards/element14-warp7/board.c            |  35 +
>  .../element14-warp7/flash-header-mx7-warp.imxcfg   |  81 ++
>  arch/arm/boards/element14-warp7/lowlevel.c         |  48 ++
>  arch/arm/dts/Makefile                              |   1 +
>  arch/arm/dts/imx7s-warp.dts                        |  45 ++
>  arch/arm/mach-imx/Kconfig                          |   9 +
>  arch/arm/mach-imx/Makefile                         |   1 +
>  arch/arm/mach-imx/boot.c                           |  70 ++
>  arch/arm/mach-imx/clocksource.c                    |   6 +-
>  arch/arm/mach-imx/cpu_init.c                       |   5 +
>  arch/arm/mach-imx/imx.c                            |   6 +
>  arch/arm/mach-imx/imx7.c                           |  75 ++
>  arch/arm/mach-imx/include/mach/debug_ll.h          |   3 +
>  arch/arm/mach-imx/include/mach/generic.h           |  16 +
>  arch/arm/mach-imx/include/mach/imx7-regs.h         |  23 +
>  arch/arm/mach-imx/include/mach/imx7.h              |  59 ++
>  arch/arm/mach-imx/include/mach/imx_cpu_types.h     |   1 +
>  common/Kconfig                                     |   8 +
>  drivers/clk/imx/Makefile                           |   2 +
>  drivers/clk/imx/clk-cpu.c                          | 110 +++
>  drivers/clk/imx/clk-imx7.c                         | 881 +++++++++++++++++++++
>  drivers/clk/imx/clk-pllv3.c                        |  23 +-
>  drivers/clk/imx/clk.h                              |  33 +
>  drivers/i2c/busses/i2c-imx.c                       |   1 +
>  drivers/mci/imx-esdhc.c                            |  15 +-
>  drivers/mci/mci-core.c                             |  78 +-
>  drivers/of/partition.c                             |  12 +-
>  drivers/phy/usb-nop-xceiv.c                        |  18 +-
>  drivers/pinctrl/imx-iomux-v3.c                     |   5 +-
>  drivers/serial/serial_imx.c                        |   4 +
>  drivers/usb/imx/chipidea-imx.c                     |  22 +-
>  drivers/usb/imx/imx-usb-misc.c                     |  87 +-
>  images/Makefile.imx                                |   5 +
>  include/mci.h                                      |   1 +
>  include/serial/imx-uart.h                          |   5 +
>  include/usb/chipidea-imx.h                         |   4 +-
>  scripts/imx/imx-usb-loader.c                       |  21 +-
>  scripts/imx/imx.c                                  |   1 +
>  43 files changed, 1803 insertions(+), 77 deletions(-)
>  create mode 100644 Documentation/boards/imx/Element14-WaRP7.rst
>  create mode 100644 arch/arm/boards/element14-warp7/Makefile
>  create mode 100644 arch/arm/boards/element14-warp7/board.c
>  create mode 100644 arch/arm/boards/element14-warp7/flash-header-mx7-warp.imxcfg
>  create mode 100644 arch/arm/boards/element14-warp7/lowlevel.c
>  create mode 100644 arch/arm/dts/imx7s-warp.dts
>  create mode 100644 arch/arm/mach-imx/imx7.c
>  create mode 100644 arch/arm/mach-imx/include/mach/imx7-regs.h
>  create mode 100644 arch/arm/mach-imx/include/mach/imx7.h
>  create mode 100644 drivers/clk/imx/clk-cpu.c
>  create mode 100644 drivers/clk/imx/clk-imx7.c
>
>
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

BR,

marek

-- 
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
twitter: #opennandra
web: http://open-nandra.com

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

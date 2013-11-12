Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-x234.google.com ([2a00:1450:4013:c01::234])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VgN7T-0006lw-Qw
 for barebox@lists.infradead.org; Tue, 12 Nov 2013 23:11:42 +0000
Received: by mail-ea0-f180.google.com with SMTP id b11so3854004eae.25
 for <barebox@lists.infradead.org>; Tue, 12 Nov 2013 15:11:07 -0800 (PST)
Message-ID: <1384297864.18882.19.camel@lolumad>
From: Rostislav Lisovy <lisovy@gmail.com>
Date: Wed, 13 Nov 2013 00:11:04 +0100
In-Reply-To: <1384296396-18841-1-git-send-email-lisovy@gmail.com>
References: <1384296396-18841-1-git-send-email-lisovy@gmail.com>
Mime-Version: 1.0
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
Subject: Re: [PATCH 0/3 v2] Support for Voipac X53-DMM-668 module and Voipac
 Baseboard
To: barebox@lists.infradead.org
Cc: pisa@cmp.felk.cvut.cz

One small issue I am facing:
The board has a jumper to switch between 'internal boot' and 'serial
boot'. If I set it to 'serial boot' and then use imx-usb-loader to load
barebox to RAM, everything works just fine. When I then try to flash it
(flash controller support is missing in this patch-set), flashing is
successful, however I am not able to boot it later when switched to
'internal boot' mode. If I try to flash some old version of the barebox
(from my version running in RAM -- thus the problem is probably not in
the flash support), it not only flashes successfully, this older version
is even able to boot in the 'internal boot' mode.

I also noticed that when I am using CONFIG_IMX_MULTI_BOARDS the whole
set of CONFIG_ARCH_IMX_INTERNAL_BOOT_* disappears.

Commands I am using to flash barebox:
erase /dev/nand0
addpart /dev/nand0 512k(barebox)ro,512k(bareboxenv),4M(kernel),-(rootfs)
nand -a /dev/nand0.*
erase /dev/nand0.barebox.bb
tftp /vmx53/barebox.bin /dev/nand0.barebox.bb

Thanks in advance for any suggestions.
Rostislav


On Tue, 2013-11-12 at 23:46 +0100, Rostislav Lisovy wrote: 
> This patchset adds support for Voipac Baseboard using x53-dmm-668
> module (equipped with i.mx53 CPU). More info about the module may
> be found at: http://www.voipac.com/#X53-DMM-668
> 
> Changes since v1:
> * Fixed error checking in fec_imx.c
> * Board support is now done in the 'multiboard way'
> 
> Rostislav Lisovy (3):
>   ARM: dts: i.mx53: Internal keyboard controller + i2c pinmux
>   ARM: i.mx53: Parse Reset GPIO pin in FEC driver from Devicetree
>   ARM: i.mx53: Support for Voipac board with X53-DMM-668 module.
> 
>  arch/arm/boards/Makefile                           |    1 +
>  arch/arm/boards/freescale-mx53-vmx53/Makefile      |    3 +
>  arch/arm/boards/freescale-mx53-vmx53/board.c       |   42 +++++
>  .../boards/freescale-mx53-vmx53/env/config-board   |    8 +
>  .../flash-header-imx53-vmx53.imxcfg                |   54 ++++++
>  arch/arm/boards/freescale-mx53-vmx53/lowlevel.c    |   19 ++
>  arch/arm/dts/Makefile                              |    4 +-
>  arch/arm/dts/imx53-voipac-bsb.dts                  |  135 ++++++++++++++
>  arch/arm/dts/imx53-voipac-dmm-668.dtsi             |  196 ++++++++++++++++++++
>  arch/arm/dts/imx53.dtsi                            |   15 ++
>  arch/arm/mach-imx/Kconfig                          |    8 +
>  drivers/net/fec_imx.c                              |   33 ++++
>  images/Makefile.imx                                |    5 +
>  13 files changed, 522 insertions(+), 1 deletion(-)
>  create mode 100644 arch/arm/boards/freescale-mx53-vmx53/Makefile
>  create mode 100644 arch/arm/boards/freescale-mx53-vmx53/board.c
>  create mode 100644 arch/arm/boards/freescale-mx53-vmx53/env/config-board
>  create mode 100644 arch/arm/boards/freescale-mx53-vmx53/flash-header-imx53-vmx53.imxcfg
>  create mode 100644 arch/arm/boards/freescale-mx53-vmx53/lowlevel.c
>  create mode 100644 arch/arm/dts/imx53-voipac-bsb.dts
>  create mode 100644 arch/arm/dts/imx53-voipac-dmm-668.dtsi
> 



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

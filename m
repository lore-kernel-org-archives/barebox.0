Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SmX90-0000Gw-6Z
 for barebox@lists.infradead.org; Wed, 04 Jul 2012 21:29:57 +0000
Date: Wed, 4 Jul 2012 23:28:45 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120704212845.GH30009@pengutronix.de>
References: <1341407274-11848-1-git-send-email-maxime.ripard@free-electrons.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1341407274-11848-1-git-send-email-maxime.ripard@free-electrons.com>
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
Subject: Re: [PATCHv2 0/2] Add support for the Crystalfontz CFA-10036 module
To: Maxime Ripard <maxime.ripard@free-electrons.com>
Cc: barebox@lists.infradead.org, brian@crystalfontz.com

On Wed, Jul 04, 2012 at 03:07:51PM +0200, Maxime Ripard wrote:
> Hi everyone,
> 
> This is the second version of the initial support of the CFA-10036 module.
> 
> The module basically has a iMX28 SoC, plus a micro-SD slot, 3 pins to
> access the DUART, a USB OTG port, a OLED screen using the Solomon
> SSD1307 controller over I2C and a 200-pins SODIMM port to plug an
> expansion board.
> 
> Support for this board and the additional devices will come
> eventually.
> 
> Changes from v1:
>   * Switched to the new default environment
> 
> Maxime Ripard (2):
>   Add bootargs script to boot on ext filesystems
>   Add support for the Crystalfontz CFA-10036 board
> 

Applied, thanks

Sascha

>  arch/arm/Makefile                                  |    1 +
>  arch/arm/boards/crystalfontz-cfa10036/Makefile     |    1 +
>  arch/arm/boards/crystalfontz-cfa10036/cfa10036.c   |  106 ++++++++++++++++++++
>  arch/arm/boards/crystalfontz-cfa10036/config.h     |   16 +++
>  .../boards/crystalfontz-cfa10036/env/boot/mmc-ext3 |   10 ++
>  .../crystalfontz-cfa10036/env/init/automount       |    9 ++
>  .../crystalfontz-cfa10036/env/init/bootargs-base   |    8 ++
>  .../boards/crystalfontz-cfa10036/env/init/general  |   12 +++
>  .../boards/crystalfontz-cfa10036/env/init/hostname |    8 ++
>  arch/arm/configs/cfa10036_defconfig                |   42 ++++++++
>  arch/arm/mach-mxs/Kconfig                          |    8 ++
>  defaultenv-2/base/bin/bootargs-root-ext            |   12 +++
>  12 files changed, 233 insertions(+)
>  create mode 100644 arch/arm/boards/crystalfontz-cfa10036/Makefile
>  create mode 100644 arch/arm/boards/crystalfontz-cfa10036/cfa10036.c
>  create mode 100644 arch/arm/boards/crystalfontz-cfa10036/config.h
>  create mode 100644 arch/arm/boards/crystalfontz-cfa10036/env/boot/mmc-ext3
>  create mode 100644 arch/arm/boards/crystalfontz-cfa10036/env/init/automount
>  create mode 100644 arch/arm/boards/crystalfontz-cfa10036/env/init/bootargs-base
>  create mode 100644 arch/arm/boards/crystalfontz-cfa10036/env/init/general
>  create mode 100644 arch/arm/boards/crystalfontz-cfa10036/env/init/hostname
>  create mode 100644 arch/arm/configs/cfa10036_defconfig
>  create mode 100644 defaultenv-2/base/bin/bootargs-root-ext
> 
> -- 
> 1.7.9.5
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

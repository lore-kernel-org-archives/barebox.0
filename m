Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TjncH-00022Y-Lq
 for barebox@lists.infradead.org; Sat, 15 Dec 2012 09:01:06 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1Tjnbt-0007Wd-HI
 for barebox@lists.infradead.org; Sat, 15 Dec 2012 10:00:41 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1Tjnbs-0000tu-FP
 for barebox@lists.infradead.org; Sat, 15 Dec 2012 10:00:40 +0100
Date: Sat, 15 Dec 2012 10:00:40 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121215090040.GP24458@pengutronix.de>
References: <1355435350-20348-1-git-send-email-s.hauer@pengutronix.de>
 <1355435350-20348-6-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1355435350-20348-6-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH 5/7] ARM i.MX51: Add support for the Efika MX Smartbook
To: barebox@lists.infradead.org

On Thu, Dec 13, 2012 at 10:49:08PM +0100, Sascha Hauer wrote:
> The Efika MX Smartbook is a i.MX51 based netbook. This patch adds
> nearly full support for it including:
> 
> - USB
> - SD card slots
> - Internal SPI NOR flash
> - Internal flash PATA drive
> - LEDs
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/Makefile                                  |    1 +
>  arch/arm/boards/efika-mx-smartbook/Makefile        |    3 +
>  arch/arm/boards/efika-mx-smartbook/board.c         |  511 ++++++++++++++++++++
>  arch/arm/boards/efika-mx-smartbook/config.h        |   24 +
>  arch/arm/boards/efika-mx-smartbook/dcd-data.h      |   56 +++
>  .../boards/efika-mx-smartbook/env/bin/lvds_init    |   22 +
>  .../boards/efika-mx-smartbook/env/boot/hd-internal |   17 +
>  .../boards/efika-mx-smartbook/env/boot/mmc-left    |   19 +
>  arch/arm/boards/efika-mx-smartbook/env/config      |   29 ++
>  .../boards/efika-mx-smartbook/env/init/automount   |   29 ++
>  .../boards/efika-mx-smartbook/env/init/bootsource  |   10 +
>  .../efika-mx-smartbook/env/init/config-board       |    9 +
>  .../efika-mx-smartbook/env/network/eth0-discover   |    4 +
>  arch/arm/boards/efika-mx-smartbook/flash_header.c  |   29 ++
>  arch/arm/mach-imx/Kconfig                          |    8 +
>  defaultenv-2/base/boot/net                         |    4 +-
>  drivers/usb/core/usb.c                             |    8 +-
>  drivers/usb/host/ehci-hcd.c                        |    6 +
>  drivers/usb/otg/ulpi.c                             |   33 +-
>  include/usb/ulpi.h                                 |   43 +-

These USB related changes shouldn't be there. Will fix.

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

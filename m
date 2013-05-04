Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mho-02-ewr.mailhop.org ([204.13.248.72])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UYg3v-00010M-5a
 for barebox@lists.infradead.org; Sat, 04 May 2013 17:15:56 +0000
Date: Sat, 4 May 2013 13:15:30 -0400
From: Jason Cooper <jason@lakedaemon.net>
Message-ID: <20130504171530.GK31290@titan.lakedaemon.net>
References: <1367599871-28479-1-git-send-email-thomas.petazzoni@free-electrons.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1367599871-28479-1-git-send-email-thomas.petazzoni@free-electrons.com>
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
Subject: Re: [PATCH 0/7] Basic support for Marvell Armada 370/XP SoC
To: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Cc: Lior Amsalem <alior@marvell.com>, barebox@lists.infradead.org, Willy Tarreau <w@1wt.eu>, Ezequiel Garcia <ezequiel.garcia@free-electrons.com>

Thomas,

Great work!  Very clean series.  I only have one thought.  Prafulla
(u-boot kirkwood maintainer) is always asking about consolidating the
kwbimage.cfg files.  The three you've submitted for the first three
boards are almost (if not entirely) identical.  Before a whole bunch of
boards get added, should we make a kwbimage-common.cfg or similar?

I'm not sold on the idea, I'm just mentioning it since it's been an
issue in the past.  If we want to do that, now would be the time.

thx,

Jason.


On Fri, May 03, 2013 at 06:51:04PM +0200, Thomas Petazzoni wrote:
> Hello,
> 
> Here is a patch set that adds basic support for the Marvell Armada 370
> and Armada XP SoC. For now, the support is quite minimal, since only
> the serial port is supported. However, a significant part of the work
> has been the development of the tools that allow to extract/create
> bootable images and to push a bootable image through the UART to the
> hardware platform.
> 
> I expect to work on adding support for more devices (such as the
> network interface) and possibly to add support for the older, but
> popular, Marvell Kirkwood SoC family. Contributions are of course
> welcome.
> 
> In detail, the patch set contains:
> 
>  * A kwbimage tool. This tool allows to extract existing bootloader
>    images, and create new bootloader images. It is more or less
>    similar in purpose to the kwbimage tool from U-Boot, but is capable
>    of handling 'version 1' images used by Armada 370/XP, and not only
>    allows to create images, but also extract images.
> 
>    A typical usage is to first extract an existing bootloader image:
> 
>     ./scripts/kwbimage -x -i <existing-image> -o <some-directory>
> 
>    As an output, you typically get 3 files: kwbimage.cfg (a text file
>    that describes the configuration of the image in a format
>    ressembling the one used by U-Boot), binary.0 (the binary blob that
>    does the DDR3 training) and payload (the bootloader itself).
> 
>    Being able to extract an image is needed in order to get the DDR3
>    training code, and re-use it with Barebox.
> 
>    An image is then later created with:
> 
>     ./scripts/kwbimage -x -i <path/to/kwbimage.cfg> -o <image>
> 
>    For each board, the kwbimage.cfg file is typically located in
>    arch/arm/boards/<board-name>/. The DDR3 training code must however
>    be extracted from an existing bootloader image of your board,
>    usually the one provided by the board manufacturer.
> 
>  * A kwboot tool to push a bootloader through UART. It is directly
>    taken from U-Boot source code, to which I've added some fixes:
> 
>    - Extend the timeouts, to actually make it work on Armada
>      370/XP. This has originally been found by Willy Tarreau.
> 
>    - Ignore non-Xmodem characters, so that the original DDR3 training
>      code can be used without modifications (Willy had to change it to
>      make it output its messages on a different serial port, otherwise
>      it was confusing the Xmodem implementation)
> 
>    - Output to stdout all the non-Xmodem characters so that if
>      something goes wrong during the transfer, we have some
>      informations. It also shows the messages output by the DDR3
>      training code.
> 
>    - Remove the 'patch' feature that patches an image to have the UART
>      type. This requires a knowledge of the header format, which is
>      different between version 0 (kirkwood) and version 1 (armada
>      370/xp). It is not really needed anyway since kwbimage can
>      extract and create images.
> 
>  * The SoC-level code, which for now only consists in a minimal
>    clocksource driver, a function to register an UART, a fixed-rate
>    clock, and a function that determines the amount of RAM by looking
>    at the SDRAM windows registers.
> 
>  * The board-level code for the Armada 370 Mirabox from Globalscale,
>    the Armada XP OpenBlocks AX3 from Plathome and the Armada XP GP
>    from Marvell.
> 
> Reviews and comments welcome!
> 
> Best regards,
> 
> Thomas
> 
> Thomas Petazzoni (7):
>   scripts: allow lines longer than 80 cols with printf() in checkpatch
>   scripts: new kwbimage manipulation tool for Marvell SoC boot images
>   scripts: add kwboot tool
>   arm: initial support for Marvell Armada 370/XP SoCs
>   arm: add basic support for Armada XP OpenBlocks AX3 platform
>   arm: add basic support for the Armada 370 Mirabox platform
>   arm: add basic support for the Armada XP GP platform
> 
>  arch/arm/Kconfig                                   |    8 +
>  arch/arm/Makefile                                  |    4 +
>  arch/arm/boards/globalscale-mirabox/Makefile       |    2 +
>  arch/arm/boards/globalscale-mirabox/config.h       |    4 +
>  .../globalscale-mirabox/globalscale-mirabox.c      |   26 +
>  arch/arm/boards/globalscale-mirabox/kwbimage.cfg   |    8 +
>  arch/arm/boards/globalscale-mirabox/lowlevel.c     |   26 +
>  arch/arm/boards/marvell-armada-xp-gp/Makefile      |    2 +
>  arch/arm/boards/marvell-armada-xp-gp/config.h      |    4 +
>  arch/arm/boards/marvell-armada-xp-gp/kwbimage.cfg  |    8 +
>  arch/arm/boards/marvell-armada-xp-gp/lowlevel.c    |   25 +
>  .../marvell-armada-xp-gp/marvell-armada-xp-gp.c    |   25 +
>  arch/arm/boards/plathome-openblocks-ax3/Makefile   |    2 +
>  arch/arm/boards/plathome-openblocks-ax3/config.h   |    4 +
>  .../boards/plathome-openblocks-ax3/kwbimage.cfg    |    8 +
>  arch/arm/boards/plathome-openblocks-ax3/lowlevel.c |   25 +
>  .../plathome-openblocks-ax3.c                      |   25 +
>  arch/arm/configs/globalscale_mirabox_defconfig     |    8 +
>  arch/arm/configs/marvell_armada_xp_gp_defconfig    |   10 +
>  arch/arm/configs/plathome_openblocks_ax3_defconfig |    9 +
>  arch/arm/mach-mvebu/Kconfig                        |   54 +
>  arch/arm/mach-mvebu/Makefile                       |    1 +
>  arch/arm/mach-mvebu/core.c                         |  142 +++
>  arch/arm/mach-mvebu/include/mach/clkdev.h          |    7 +
>  arch/arm/mach-mvebu/include/mach/debug_ll.h        |   40 +
>  arch/arm/mach-mvebu/include/mach/mvebu.h           |   22 +
>  drivers/clocksource/Kconfig                        |    4 +
>  drivers/clocksource/Makefile                       |    1 +
>  drivers/clocksource/mvebu.c                        |   90 ++
>  scripts/.gitignore                                 |    2 +
>  scripts/Makefile                                   |    3 +-
>  scripts/checkpatch.pl                              |    2 +-
>  scripts/kwbimage.c                                 | 1224 ++++++++++++++++++++
>  scripts/kwboot.c                                   |  717 ++++++++++++
>  34 files changed, 2540 insertions(+), 2 deletions(-)
>  create mode 100644 arch/arm/boards/globalscale-mirabox/Makefile
>  create mode 100644 arch/arm/boards/globalscale-mirabox/config.h
>  create mode 100644 arch/arm/boards/globalscale-mirabox/globalscale-mirabox.c
>  create mode 100644 arch/arm/boards/globalscale-mirabox/kwbimage.cfg
>  create mode 100644 arch/arm/boards/globalscale-mirabox/lowlevel.c
>  create mode 100644 arch/arm/boards/marvell-armada-xp-gp/Makefile
>  create mode 100644 arch/arm/boards/marvell-armada-xp-gp/config.h
>  create mode 100644 arch/arm/boards/marvell-armada-xp-gp/kwbimage.cfg
>  create mode 100644 arch/arm/boards/marvell-armada-xp-gp/lowlevel.c
>  create mode 100644 arch/arm/boards/marvell-armada-xp-gp/marvell-armada-xp-gp.c
>  create mode 100644 arch/arm/boards/plathome-openblocks-ax3/Makefile
>  create mode 100644 arch/arm/boards/plathome-openblocks-ax3/config.h
>  create mode 100644 arch/arm/boards/plathome-openblocks-ax3/kwbimage.cfg
>  create mode 100644 arch/arm/boards/plathome-openblocks-ax3/lowlevel.c
>  create mode 100644 arch/arm/boards/plathome-openblocks-ax3/plathome-openblocks-ax3.c
>  create mode 100644 arch/arm/configs/globalscale_mirabox_defconfig
>  create mode 100644 arch/arm/configs/marvell_armada_xp_gp_defconfig
>  create mode 100644 arch/arm/configs/plathome_openblocks_ax3_defconfig
>  create mode 100644 arch/arm/mach-mvebu/Kconfig
>  create mode 100644 arch/arm/mach-mvebu/Makefile
>  create mode 100644 arch/arm/mach-mvebu/core.c
>  create mode 100644 arch/arm/mach-mvebu/include/mach/clkdev.h
>  create mode 100644 arch/arm/mach-mvebu/include/mach/debug_ll.h
>  create mode 100644 arch/arm/mach-mvebu/include/mach/mvebu.h
>  create mode 100644 drivers/clocksource/mvebu.c
>  create mode 100644 scripts/kwbimage.c
>  create mode 100644 scripts/kwboot.c
> 
> -- 
> 1.7.9.5
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

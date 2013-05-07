Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.free-electrons.com ([94.23.35.102])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UZrJt-0006R7-ET
 for barebox@lists.infradead.org; Tue, 07 May 2013 23:29:18 +0000
Message-ID: <51898E2F.3010404@free-electrons.com>
Date: Wed, 08 May 2013 01:28:47 +0200
From: Gregory CLEMENT <gregory.clement@free-electrons.com>
MIME-Version: 1.0
References: <1367599871-28479-1-git-send-email-thomas.petazzoni@free-electrons.com>
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

On 05/03/2013 06:51 PM, Thomas Petazzoni wrote:
> Hello,
Hi Thomas,

it was a great work, I am currently trying to use but unfortunately,
I didn't managed to run barebox on the Armada XP OpenBlocks AX3 from
Plathome :/

I get something like that:

kwboot -t -b barebix.bin.kw -B 115200 /dev/ttyUSB0
Sending boot message. Please reboot the target...-

[here I power up the AX3]

Sending boot image...
  0 % [......................................................................]
  4 % [......................................................................]
  9 % [......................................................................]
 14 % [......................................................................]
 18 % [......................................................................]
 23 % [......................................................................]
 28 % [......................................................................]
 33 % [......................................................................]
 37 % [......................................................................]
 42 % [......................................................................]
 47 % [......................................................................]
 52 % [.............................................................BootROM: Invalid header ID
Booting from NOR flash
DDR3 Training Sequence - Ver 3.0.0

I also found typo in the command line example you gave to use kwbimage.

I will try the other platform soon.

[...]
> 
>    An image is then later created with:
> 
>     ./scripts/kwbimage -x -i <path/to/kwbimage.cfg> -o <image>

I think it should be:
./scripts/kwbimage -c -i <path/to/kwbimage.cfg> -o <image>

Thanks!
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


-- 
Gregory Clement, Free Electrons
Kernel, drivers, real-time and embedded Linux
development, consulting, training and support.
http://free-electrons.com

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

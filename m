Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1ebCUG-0002Uq-Ea
 for barebox@lists.infradead.org; Mon, 15 Jan 2018 21:40:14 +0000
Date: Mon, 15 Jan 2018 22:39:51 +0100
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20180115213951.GA32669@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
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
Subject: [PATCH v3 0/3] Enable DT support for AT91SAM9263EK
To: Barebox List <barebox@lists.infradead.org>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, Sam Ravnborg <sam@ravnborg.org>

This is version 3 of a patchset to enable
device tree support for AT91SAM9263EK.

The patchset is made on top of previous
patches posted that move reset code to
the board files for at91 boards.
(Which are already part of -next)

On the quest towards getting so far several drivers was
converted to support DT.
These patches went in around august.

There was also issues with mach-at91 calling code
in the board directory (dependency in the
wrong direction).
This was fixed in "at91: move reset .." which is
pending (already posted).

I have failed to get the bootstrap mode to work.
It stops somewhere - and I have not invested enough
time to figure out where and why things goes wrong.
bootstrap mode was also broken before these patches.
No JTAG debugger available to help me.
And then I have at91bootstrap that works so motivation
was not too high.

I do not think the NAND support works either.
The device tree introduces some nand-controller
stuff that is not supported by barebox (at least I assume so).
And this part I did not look further into.

Next step is to get a proprietary board up and
running (which uses NOR flash).
But I wanted this patchset out in the open first.

Thanks for feedback so far - especially from Andrey.

	Sam

v2 => v3
- Squashed commit introducing support for multi image
  with the commit to add DT support
- Fixed init of smc


v1 => v2
Based on feedback from Andrey (thanks!)
Patches reworked and combined as a result of this

- Included two patches that makes some general
  improvements to mach-at91.
  (Updated since the RFC versions sent yesterday)

  - Move irq_fixup, thus allowing us to call this
    from board code. This makes it possible to have
    less dependencies between board code and the processor
    specific files in mach-at91.

  - Simplified soc setup. With this change setup.c
    no longer requires that at least one of the
    processor specific files are built.

- Create a minimal dts file, based on top of the
  dts file supplied from the kernel.

- Utilise gpio-hog - to setup gpio for PHY.

- Simpler Makefile logic in board Makefile
  It is now obvious that init.c is only used for
  bootstrap

- Processor specific files in mach-at91 no longer
  used when DT is enabled

- Use IS_ENABLED() when it makes code simpler


Sam Ravnborg (3):
      arm: at91: move irq_fixup to header file
      arm: at91: simplify soc setup
      at91sam9263ek: enable DT support

 arch/arm/boards/at91sam9263ek/Makefile        |  4 +-
 arch/arm/boards/at91sam9263ek/lowlevel_init.c | 17 +++--
 arch/arm/boards/at91sam9263ek/of_init.c       | 93 +++++++++++++++++++++++++++
 arch/arm/configs/at91sam9263ek_defconfig      | 10 ++-
 arch/arm/dts/Makefile                         |  2 +-
 arch/arm/dts/at91sam9263ek.dts                | 48 ++++++++++++++
 arch/arm/mach-at91/Kconfig                    | 30 ++++++---
 arch/arm/mach-at91/Makefile                   |  6 +-
 arch/arm/mach-at91/at91rm9200.c               | 10 +--
 arch/arm/mach-at91/at91sam9260.c              | 10 +--
 arch/arm/mach-at91/at91sam9260_devices.c      |  1 +
 arch/arm/mach-at91/at91sam9261.c              | 10 +--
 arch/arm/mach-at91/at91sam9261_devices.c      |  1 +
 arch/arm/mach-at91/at91sam9263.c              | 10 +--
 arch/arm/mach-at91/at91sam9263_devices.c      |  1 +
 arch/arm/mach-at91/at91sam9g45.c              | 10 +--
 arch/arm/mach-at91/at91sam9g45_devices.c      |  1 +
 arch/arm/mach-at91/at91sam9n12.c              | 10 +--
 arch/arm/mach-at91/generic.h                  | 11 +++-
 arch/arm/mach-at91/include/mach/at91_rtt.h    | 16 +++++
 arch/arm/mach-at91/irq_fixup.c                | 22 -------
 arch/arm/mach-at91/sama5d3.c                  | 10 +--
 arch/arm/mach-at91/sama5d4.c                  | 10 +--
 arch/arm/mach-at91/setup.c                    | 26 ++------
 arch/arm/mach-at91/soc.h                      | 76 ----------------------
 images/Makefile.at91                          |  4 ++
 26 files changed, 277 insertions(+), 172 deletions(-)


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

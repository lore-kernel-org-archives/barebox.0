Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eXveM-0003Tv-L3
 for barebox@lists.infradead.org; Sat, 06 Jan 2018 21:05:09 +0000
Date: Sat, 6 Jan 2018 22:04:50 +0100
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20180106210450.GA21127@ravnborg.org>
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
Subject: [PATCH v5 0/22] at91: move reset vector to board code
To: Barebox List <barebox@lists.infradead.org>
Cc: Sam Ravnborg <sam@ravnborg.org>

Hi all.

The following patchset moves the reset vector
for at91 boards from mach-at91 to board code.
This is similar to what other boards do and is done to
prepare for multi-image and DT support.

The patchset includes removal of the mmccpu board.

The patchset convert all at91 boards and thus clean up
the old code that resided in mach-at91/

The second patch have minimal impact, but prepares for a
board-by-board conversion.
All temporary CONFIG symbols are gone at the end of this series.

I kept Jean-Christophe PLAGNIOL-VILLARD and others
copyright in all the created files and did not add
copyright myself. The patchset does IMO not add any
copyrightable material from my side as this is
in reality just moving around code.

With this patchset applied we no longer have any
places where we call board code from mach-at91/
thus allowing us to introduce multi-images.
And we are also on the right track to introduce
DT support for additional AT91 based boards.

The patchset was successfully booted on a AT91SAM9263EK,
and all defconfigs was built (expect the ones that failed
to build before this patchset was applied).

I consider the patchset ready for barebox-next.

	Sam


Changes v4 => v5
  Fix whitespace issues all over (Sascha)
  Include lowlevel_init for tny_a9263 (Sascha)
  Delete mmccpu and updated patchset (Sascha)
  Use proper versioning of patches (Andrey)
  Combined a few patches deleting code (Sam)

Changes v3 => v4
  Updated at91sam926x_board_init.h based on feedback from Andrey Smirnov

Changes v2 => v3
  v2 was posted in July - but I have lacked spare time until now
  to give it a proper respin
  - respin of all patches on top of v2017.12.0
  - fix bogus handling of at91sam926x_board_init
  - Introduce new CONFIG symbol for at91sam926x_board_init to allow bisects

Changes v1 => v2
  - converted all boards over
  - fixed author info


Sam Ravnborg (22):
      at91: mmccpu: remove board support for mmccpu
      arm: at91: refactor lowlevel_init selection
      arm: at91: drop unused at91sam9x5_lowlevel_init.c
      arm: at91: add at91sam926x_board_init.h
      arm: at91: code cleanup in at91sam926x_board_init
      at91sam9263ek: move reset vector to board code
      at91sam9261ek, at91sam9g10ek: move reset vector to board code
      pm9261: move reset vector to board code
      at91: drop unused at91sam9261_lowlevel_init
      pm9263: move reset vector to board code
      {usb,tny}-a926x: move reset vector to board code
      qil-a926x: move reset vector to board code
      haba-knx: move reset vector to board code
      sama5d{3,4}{xek,xplained}: move reset vector to board code
      at91sam9n12ek: move reset vector to board code
      at91sam9260ek, at91sam9g20ek: move reset vector to board code
      at91sam9m10g45ek, at91sam9m10ihd, pm9g45: move reset vector to board code
      animeo: move reset vector to board code
      telit-evk-pro3: move reset vector to board code
      dss11: move reset vector to board code
      at91rm9200ek: move reset vector to board code
      arm: at91: remove leftovers from moving reset code in mach-at91

#git diff --stat=120 -M -C
 arch/arm/boards/Makefile                                                    |   1 -
 arch/arm/boards/animeo_ip/Makefile                                          |   3 +
 arch/arm/{mach-at91/sama5d3_lowlevel_init.c => boards/animeo_ip/lowlevel.c} |  19 ++---
 arch/arm/boards/at91rm9200ek/Makefile                                       |   3 +
 .../at91rm9200_lowlevel_init.c => boards/at91rm9200ek/lowlevel.c}           |  14 ++--
 arch/arm/boards/at91sam9260ek/Makefile                                      |   3 +
 .../{mach-at91/sama5d3_lowlevel_init.c => boards/at91sam9260ek/lowlevel.c}  |  19 ++---
 arch/arm/boards/at91sam9261ek/Makefile                                      |   2 +-
 arch/arm/boards/at91sam9261ek/lowlevel_init.c                               |  41 +++++++---
 arch/arm/boards/at91sam9263ek/Makefile                                      |   2 +-
 arch/arm/boards/at91sam9263ek/lowlevel_init.c                               |  43 ++++++++---
 arch/arm/boards/at91sam9m10g45ek/Makefile                                   |   3 +
 .../at91sam9g45_lowlevel_init.c => boards/at91sam9m10g45ek/lowlevel.c}      |  13 ++--
 arch/arm/boards/at91sam9m10ihd/Makefile                                     |   2 +
 .../at91sam9x5_lowlevel_init.c => boards/at91sam9m10ihd/lowlevel.c}         |  21 +++--
 arch/arm/boards/at91sam9n12ek/Makefile                                      |   3 +
 .../at91sam9n12_lowlevel_init.c => boards/at91sam9n12ek/lowlevel.c}         |  15 ++--
 arch/arm/boards/dss11/Makefile                                              |   2 +
 arch/arm/{mach-at91/sama5d3_lowlevel_init.c => boards/dss11/lowlevel.c}     |  19 ++---
 arch/arm/boards/haba-knx/Makefile                                           |   3 +
 arch/arm/{mach-at91/sama5d3_lowlevel_init.c => boards/haba-knx/lowlevel.c}  |  19 ++---
 arch/arm/boards/mmccpu/Makefile                                             |   3 -
 arch/arm/boards/mmccpu/env/bin/_update                                      |  36 ---------
 arch/arm/boards/mmccpu/env/bin/boot                                         |  47 ------------
 arch/arm/boards/mmccpu/env/bin/init                                         |  33 --------
 arch/arm/boards/mmccpu/env/bin/update_kernel                                |  15 ----
 arch/arm/boards/mmccpu/env/bin/update_root                                  |  16 ----
 arch/arm/boards/mmccpu/env/config                                           |  30 --------
 arch/arm/boards/mmccpu/init.c                                               |  88 ---------------------
 arch/arm/boards/mmccpu/lowlevel_init.c                                      | 135 --------------------------------
 arch/arm/boards/pm9261/Makefile                                             |   2 +-
 arch/arm/boards/pm9261/lowlevel_init.c                                      |  39 +++++++---
 arch/arm/boards/pm9263/Makefile                                             |   2 +-
 arch/arm/boards/pm9263/lowlevel_init.c                                      |  43 ++++++++---
 arch/arm/boards/pm9g45/Makefile                                             |   3 +
 .../arm/{mach-at91/at91sam9g45_lowlevel_init.c => boards/pm9g45/lowlevel.c} |  15 ++--
 arch/arm/boards/qil-a926x/Makefile                                          |   3 +
 arch/arm/{mach-at91/sama5d3_lowlevel_init.c => boards/qil-a926x/lowlevel.c} |  19 ++---
 arch/arm/boards/sama5d3_xplained/Makefile                                   |   1 +
 .../sama5d3_lowlevel_init.c => boards/sama5d3_xplained/lowlevel.c}          |  12 ++-
 arch/arm/boards/sama5d3xek/Makefile                                         |   1 +
 .../arm/{mach-at91/sama5d3_lowlevel_init.c => boards/sama5d3xek/lowlevel.c} |  12 ++-
 arch/arm/boards/sama5d4_xplained/Makefile                                   |   1 +
 .../sama5d3_lowlevel_init.c => boards/sama5d4_xplained/lowlevel.c}          |  12 ++-
 arch/arm/boards/sama5d4ek/Makefile                                          |   1 +
 arch/arm/{mach-at91/sama5d3_lowlevel_init.c => boards/sama5d4ek/lowlevel.c} |  12 ++-
 arch/arm/boards/telit-evk-pro3/Makefile                                     |   2 +
 .../{mach-at91/sama5d3_lowlevel_init.c => boards/telit-evk-pro3/lowlevel.c} |  19 ++---
 arch/arm/boards/tny-a926x/Makefile                                          |   9 ++-
 .../sama5d3_lowlevel_init.c => boards/tny-a926x/tny_a9260_lowlevel.c}       |  19 ++---
 .../boards/tny-a926x/{tny_a9263_lowlevel_init.c => tny_a9263_lowlevel.c}    |  49 ++++++++----
 arch/arm/boards/usb-a926x/Makefile                                          |   8 +-
 .../sama5d3_lowlevel_init.c => boards/usb-a926x/usb_a9260_lowlevel.c}       |  19 ++---
 .../boards/usb-a926x/{usb_a9263_lowlevel_init.c => usb_a9263_lowlevel.c}    |  43 ++++++++---
 arch/arm/configs/mmccpu_defconfig                                           |  37 ---------
 arch/arm/mach-at91/Kconfig                                                  |  37 ++++-----
 arch/arm/mach-at91/Makefile                                                 |  14 +---
 arch/arm/mach-at91/at91sam9260_lowlevel_init.c                              |  48 ------------
 arch/arm/mach-at91/at91sam9261_lowlevel_init.c                              |  48 ------------
 arch/arm/mach-at91/at91sam9263_lowlevel_init.c                              |  48 ------------
 arch/arm/mach-at91/include/mach/at91_lowlevel_init.h                        |  46 -----------
 .../{at91sam926x_lowlevel_init.c => include/mach/at91sam926x_board_init.h}  | 148 ++++++++++++++++--------------------
 62 files changed, 456 insertions(+), 969 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

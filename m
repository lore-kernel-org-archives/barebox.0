Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dTS5d-0005vN-6K
 for barebox@lists.infradead.org; Fri, 07 Jul 2017 12:10:33 +0000
Date: Fri, 7 Jul 2017 14:10:00 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20170707121000.GA16920@ravnborg.org>
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
Subject: [PATCH v2 0/23] at91: move reset vector to board code
To: Barebox List <barebox@lists.infradead.org>
Cc: Sam Ravnborg <sam@ravnborg.org>

The following patchset moves the reset vector
for at91 boards from mach-at91 to board code.
This is similar to what other boards do and is done to
prepare for multi-image and DT support.

The patchset convert all boards and thus clean up the
old code that resided in mach-at91/

The first patch have minimal impact, but prepares for a
board-by-board conversion.
All temporary CONFIG symbols are gone at the end of this series.

I kept Jean-Christophe PLAGNIOL-VILLARD and others
copyright in all the created files and did not add
copyright myself. The patchset does IMO not add any
copyrightable material from my side as this is
in reality just moving around code.

The patchset was successfully booted on a AT91SAM9263EK,
and all defconfigs was built (expect the ones that failed
to build before this patchset was applied).

Changes v1 => v2
- converted all boards over
- fixed author info

	Sam


Sam Ravnborg (23):
      at91: refactor lowlevel_init selection
      at91: drop unused at91sam9x5_lowlevel_init.c
      at91sam9263ek: move reset vector to board code
      at91sam9261ek, at91sam9g10ek: move reset vector to board code
      pm9261: move reset vector to board code
      at91: drop unused at91sam9261_lowlevel_init
      mmccpu: move reset vector to board code
      pm9263: move reset vector to board code
      usb-a926x: move reset vector to board code
      at91: delete at91sam926x_lowlevel_init
      tny-a926x: move reset vector to board code
      qil-a926x: move reset vector to board code
      haba-knx: move reset vector to board code
      at91: delete unused at91sam9263_lowlevel_init.c
      sama5d{3,4}{xek,xplained}: move reset vector to board code
      at91sam{9260,9G20,9m10g45,9n12}ek: move reset vector to board code
      at91rm9200ek: move reset vector to board code
      at91sam9m10ihd: move reset vector to board code
      pm9g45: move reset vector to board code
      animeo: move reset vector to board code
      dss11: move reset vector to board code
      telit-evk-pro3: move reset vector to board code
      at91: remove leftovers from reset code in mach-at91

 arch/arm/boards/animeo_ip/Makefile                 |   1 +
 arch/arm/boards/animeo_ip/lowlevel.c               |  26 ++++
 arch/arm/boards/at91rm9200ek/Makefile              |   1 +
 .../at91rm9200ek/lowlevel.c}                       |  16 +--
 arch/arm/boards/at91sam9260ek/Makefile             |   1 +
 arch/arm/boards/at91sam9260ek/lowlevel.c           |  26 ++++
 arch/arm/boards/at91sam9261ek/Makefile             |   2 +-
 arch/arm/boards/at91sam9261ek/lowlevel_init.c      |  41 +++++--
 arch/arm/boards/at91sam9263ek/Makefile             |   2 +-
 arch/arm/boards/at91sam9263ek/lowlevel_init.c      |  43 +++++--
 arch/arm/boards/at91sam9m10g45ek/Makefile          |   1 +
 .../at91sam9m10g45ek/lowlevel.c}                   |  11 +-
 arch/arm/boards/at91sam9m10ihd/Makefile            |   2 +
 .../at91sam9m10ihd/lowlevel.c}                     |  19 ++-
 arch/arm/boards/at91sam9n12ek/Makefile             |   1 +
 .../at91sam9n12ek/lowlevel.c}                      |  13 +-
 arch/arm/boards/dss11/Makefile                     |   1 +
 arch/arm/boards/dss11/lowlevel.c                   |  26 ++++
 arch/arm/boards/haba-knx/Makefile                  |   3 +
 arch/arm/boards/haba-knx/lowlevel.c                |  26 ++++
 arch/arm/boards/mmccpu/Makefile                    |   2 +-
 arch/arm/boards/mmccpu/lowlevel.c                  |  26 ++++
 arch/arm/boards/mmccpu/lowlevel_init.c             | 135 ---------------------
 arch/arm/boards/pm9261/Makefile                    |   2 +-
 arch/arm/boards/pm9261/lowlevel_init.c             |  39 ++++--
 arch/arm/boards/pm9263/Makefile                    |   2 +-
 arch/arm/boards/pm9263/lowlevel_init.c             |  43 +++++--
 arch/arm/boards/pm9g45/Makefile                    |   1 +
 arch/arm/boards/pm9g45/lowlevel.c                  |  24 ++++
 arch/arm/boards/qil-a926x/Makefile                 |   3 +
 arch/arm/boards/qil-a926x/lowlevel.c               |  26 ++++
 arch/arm/boards/sama5d3_xplained/Makefile          |   1 +
 .../sama5d3_xplained/lowlevel.c}                   |  10 +-
 arch/arm/boards/sama5d3xek/Makefile                |   1 +
 arch/arm/boards/sama5d3xek/lowlevel.c              |  23 ++++
 arch/arm/boards/sama5d4_xplained/Makefile          |   1 +
 arch/arm/boards/sama5d4_xplained/lowlevel.c        |  23 ++++
 arch/arm/boards/sama5d4ek/Makefile                 |   1 +
 arch/arm/boards/sama5d4ek/lowlevel.c               |  23 ++++
 arch/arm/boards/telit-evk-pro3/Makefile            |   1 +
 arch/arm/boards/telit-evk-pro3/lowlevel.c          |  26 ++++
 arch/arm/boards/tny-a926x/Makefile                 |   9 +-
 arch/arm/boards/tny-a926x/tny_a9260_lowlevel.c     |  26 ++++
 arch/arm/boards/tny-a926x/tny_a9263_lowlevel.c     |  26 ++++
 .../arm/boards/tny-a926x/tny_a9263_lowlevel_init.c | 107 ----------------
 arch/arm/boards/usb-a926x/Makefile                 |   8 +-
 arch/arm/boards/usb-a926x/usb_a9260_lowlevel.c     |  26 ++++
 ..._a9263_lowlevel_init.c => usb_a9263_lowlevel.c} |  43 +++++--
 arch/arm/mach-at91/Kconfig                         |  22 ++--
 arch/arm/mach-at91/Makefile                        |  12 --
 arch/arm/mach-at91/at91sam9260_lowlevel_init.c     |  48 --------
 arch/arm/mach-at91/at91sam9261_lowlevel_init.c     |  48 --------
 arch/arm/mach-at91/at91sam9263_lowlevel_init.c     |  48 --------
 .../mach-at91/include/mach/at91_lowlevel_init.h    |  46 -------
 .../mach/at91sam926x_board_init.h}                 |  63 ++++++----
 55 files changed, 622 insertions(+), 585 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

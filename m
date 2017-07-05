Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dSrFI-0000hW-MK
 for barebox@lists.infradead.org; Wed, 05 Jul 2017 20:50:02 +0000
Date: Wed, 5 Jul 2017 22:49:35 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20170705204935.GA20093@ravnborg.org>
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
Subject: [RFC PATCH 0/5] at91: move reset vector to board code
To: barebox@lists.infradead.org
Cc: sam@ravnborg.org

The following patchset is the start to move the reset vector
for at91 boards from mach-at91 to boards code.
This is similar to what other boards do and is done to prepare
for multi-image support and DT support.

The patchset convert a few boards already and I am aiming to convert
all boards, but wanted feedback on the patch set before starting to do so.

The first patch have minimal impact, but prepares for a
board-by-board conversion.

The patch-set includes the conversion of the boards:
at91sam9261ek
at91sam9263ek
pm9261
at91sam9g10ek

When all boards are converted then there will be no files
named arch/arm/mach-at91/*lowlevel_init.c
And all CONFIG symbols named *_LWL will be no more.

The patchset was successfully booted on a AT91SAM9263EK,
and all defconfigs was built (expect the ones that failed
to build before this patchset was applied).

Note: the patches are from srn@skov.dk - in the next round
I will change this to my home address as this is not work related.

	Sam


Sam Ravnborg (5):
      at91: refactor lowlevel_init selection
      at91: drop unused at91sam9x5_lowlevel_init.c
      at91sam9263ek: move reset vector to board code
      at91sam9261ek, at91sam9g10ek: move reset vector to board code
      pm9261: move reset vector to board code


 arch/arm/boards/at91sam9261ek/Makefile                   |   2 +-
 arch/arm/boards/at91sam9261ek/lowlevel_init.c            |  41 ++++++++---
 arch/arm/boards/at91sam9263ek/Makefile                   |   2 +-
 arch/arm/boards/at91sam9263ek/lowlevel_init.c            |  43 +++++++++---
 arch/arm/boards/mmccpu/Makefile                          |   2 +-
 arch/arm/boards/pm9261/Makefile                          |   2 +-
 arch/arm/boards/pm9261/lowlevel_init.c                   |  39 ++++++++---
 arch/arm/boards/pm9263/Makefile                          |   2 +-
 arch/arm/boards/tny-a926x/Makefile                       |   8 +--
 arch/arm/boards/usb-a926x/Makefile                       |   6 +-
 arch/arm/mach-at91/Kconfig                               |  72 +++++++++++++++----
 arch/arm/mach-at91/Makefile                              |  23 +++----
 arch/arm/mach-at91/at91sam9x5_lowlevel_init.c            |  26 -------
 arch/arm/mach-at91/include/mach/at91_lowlevel_init.h     |   2 +-
 arch/arm/mach-at91/include/mach/at91sam926x_board_init.h | 220 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 15 files changed, 392 insertions(+), 98 deletions(-)


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eUJ5K-0006u6-3X
 for barebox@lists.infradead.org; Wed, 27 Dec 2017 21:18:05 +0000
Date: Wed, 27 Dec 2017 22:17:43 +0100
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20171227211743.GA1084@ravnborg.org>
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
Subject: [PATCH 0/5] Enable DT support for AT91SAM9263EK
To: Barebox List <barebox@lists.infradead.org>
Cc: Sam Ravnborg <sam@ravnborg.org>

This patchset enabledevice tree support for AT91SAM9263EK.

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

Any fedback highly appreciated!

	Sam

Sam Ravnborg (5):
      at91sam9263ek: enable multi-image build
      at91sam9263ek: add DT file from Linux kernel v4.14-rc4
      at91sam9263ek: fix SD card in DT
      arm: at91: enable CPU specific init with OF
      at91sam9263ek: enable devicetree

 arch/arm/boards/at91sam9263ek/Makefile        |   5 +
 arch/arm/boards/at91sam9263ek/lowlevel_init.c |  24 ++-
 arch/arm/boards/at91sam9263ek/of_init.c       |  98 ++++++++++
 arch/arm/configs/at91sam9263ek_defconfig      |  10 +-
 arch/arm/dts/Makefile                         |   2 +-
 arch/arm/dts/at91sam9263ek.dts                | 253 ++++++++++++++++++++++++++
 arch/arm/mach-at91/Kconfig                    |  30 ++-
 arch/arm/mach-at91/at91sam9263.c              |   8 +
 arch/arm/mach-at91/generic.h                  |   4 +
 arch/arm/mach-at91/setup.c                    |   6 -
 images/Makefile.at91                          |   4 +
 11 files changed, 424 insertions(+), 20 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

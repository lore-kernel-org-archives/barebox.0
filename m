Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gvote-0000gs-V8
 for barebox@lists.infradead.org; Mon, 18 Feb 2019 19:48:12 +0000
Received: by mail-lj1-x242.google.com with SMTP id v16so15359624ljg.13
 for <barebox@lists.infradead.org>; Mon, 18 Feb 2019 11:48:08 -0800 (PST)
From: Sam Ravnborg <sam@ravnborg.org>
Date: Mon, 18 Feb 2019 20:47:50 +0100
Message-Id: <20190218194759.9557-1-sam@ravnborg.org>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v3 0/9] at91: Support PMC clock bindings
To: Barebox List <barebox@lists.infradead.org>, Sascha Hauer <s.hauer@pengutronix.de>, Ladislav Michl <ladis@linux-mips.org>
Cc: Sam Ravnborg <sam@ravnborg.org>

The following patchset add supports for the PMC clk
bindings for at91.
The patchset was tested on:
- at91sam9264ek - DT enabled
- sama5d4-xplained - non DT

The patchset includes sama5d2.c which is not used today.
I have a sama5d27-som1-ek board that I hope to find time to work
with and then this will be needed.

Patch was made on top of:
12cd92023788fdc67ad72c6e7d96251a6234ca3e ("Merge branch 'for-next/rpi' into next")

One stray patch sneaked in - to kill a warning.

The patchset triggers some checkpatch warnings:
- SPDX, the barebox variant of checkpatch is missing support for these (anyone?)
- Too long lines. As code is copied from the kernel I left them as-is

Comments/testing very welcome!

v3:
- Fixed build breakage in sama5d4 and clk-h32mx
- Added Tested-by: Ladislav Michl <ladis@linux-mips.org> to relevant patches

v2:
- Split up in smaller patches
- Fix builds in various configs
- Reworked Kconfig changes
- Fix checkpatch warnings (mostly whitespace)

v1:
- Posted to mailing list as a WIP patch

	Sam

Sam Ravnborg (9):
      arm: at91: fix at91_configure_usart6 warning
      clocksource: Do not mix depends and select for ATMEL_PIT
      arm: at91: add SOC_SAMA5{D3,D4}
      clk: at91: add at91sam9260
      clk: at91: add at91sam9rl
      clk: at91: add at91sam9x5
      clk: at91: add sama5d2
      clk: at91: add sama5d4
      clk: at91: update to PMC bindings

 arch/arm/mach-at91/Kconfig              |  31 +-
 arch/arm/mach-at91/include/mach/board.h |   1 +
 drivers/clk/at91/Makefile               |   5 +
 drivers/clk/at91/at91sam9260.c          | 497 ++++++++++++++++++++++++++++++++
 drivers/clk/at91/at91sam9rl.c           | 177 ++++++++++++
 drivers/clk/at91/at91sam9x5.c           | 315 ++++++++++++++++++++
 drivers/clk/at91/clk-generated.c        | 185 ++----------
 drivers/clk/at91/clk-h32mx.c            |  55 ++--
 drivers/clk/at91/clk-main.c             | 112 +------
 drivers/clk/at91/clk-master.c           |  94 +-----
 drivers/clk/at91/clk-peripheral.c       |  82 +-----
 drivers/clk/at91/clk-pll.c              | 174 +----------
 drivers/clk/at91/clk-plldiv.c           |  27 +-
 drivers/clk/at91/clk-programmable.c     |  83 +-----
 drivers/clk/at91/clk-slow.c             |  33 +--
 drivers/clk/at91/clk-smd.c              |  33 +--
 drivers/clk/at91/clk-system.c           |  42 +--
 drivers/clk/at91/clk-usb.c              |  94 +-----
 drivers/clk/at91/clk-utmi.c             | 100 ++++---
 drivers/clk/at91/pmc.c                  | 248 ++++++++++++++++
 drivers/clk/at91/pmc.h                  | 169 +++++++++++
 drivers/clk/at91/sama5d2.c              | 342 ++++++++++++++++++++++
 drivers/clk/at91/sama5d4.c              | 270 +++++++++++++++++
 drivers/clocksource/Kconfig             |   1 -
 include/linux/clk.h                     |   7 +
 include/soc/at91/atmel-sfr.h            |  34 +++
 26 files changed, 2233 insertions(+), 978 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

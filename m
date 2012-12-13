Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.free-electrons.com ([88.190.12.23])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Tj60G-0001sp-W5
 for barebox@lists.infradead.org; Thu, 13 Dec 2012 10:26:57 +0000
From: Maxime Ripard <maxime.ripard@free-electrons.com>
Date: Thu, 13 Dec 2012 11:26:42 +0100
Message-Id: <1355394405-18814-1-git-send-email-maxime.ripard@free-electrons.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCHv2 0/3] ARM: cfa10036: Load a different DTB depending on
 variants
To: barebox@lists.infradead.org
Cc: Brian Lilly <brian@crystalfontz.com>

Hi,

The CFA-10036 is actually a module that can be plugged in an expansion board.

For now, there is only two of these expansion boards, the CFA-10037 and the
CFA-10049, with different features, muxing and so on.

So, at boot time, the cfa-10036 has to be aware that it runs on an expansion
board and if so, which expansion board it is currently plugged in, so that it
can load the right device tree.

This is done thanks to an eeprom found at the same address on the same bus on
the expansion boards, that holds the expansion board id, so we can know all of
this.

This patchset does exactly that. It first adds support for the AT24, and then
the needed bits to retrieve the board variants from the eeprom if any and load
the right DTB.

Thanks,
Maxime

Changes from v2:
  - Changed the environment variable name and change it to a global variable

Maxime Ripard (3):
  ARM: cfa10036: Add the AT24HC02 I2C EEPROM
  ARM: cfa10036: Retrieve the board variant from the AT24
  ARM: cfa10036: Use the board variant to load a different device tree

 arch/arm/boards/crystalfontz-cfa10036/Makefile     |    2 +-
 arch/arm/boards/crystalfontz-cfa10036/cfa10036.c   |   27 ++++++
 .../boards/crystalfontz-cfa10036/env/boot/mmc-ext3 |    4 +-
 arch/arm/boards/crystalfontz-cfa10036/hwdetect.c   |   96 ++++++++++++++++++++
 arch/arm/boards/crystalfontz-cfa10036/hwdetect.h   |   22 +++++
 arch/arm/configs/cfa10036_defconfig                |    3 +-
 arch/arm/mach-mxs/Kconfig                          |    3 +
 7 files changed, 153 insertions(+), 4 deletions(-)
 create mode 100644 arch/arm/boards/crystalfontz-cfa10036/hwdetect.c
 create mode 100644 arch/arm/boards/crystalfontz-cfa10036/hwdetect.h

-- 
1.7.9.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WDtkt-0001up-MK
 for barebox@lists.infradead.org; Thu, 13 Feb 2014 10:43:00 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1WDtkX-0001iU-Ps
 for barebox@lists.infradead.org; Thu, 13 Feb 2014 11:42:33 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.82)
 (envelope-from <sha@pengutronix.de>) id 1WDtkX-0006JF-Ol
 for barebox@lists.infradead.org; Thu, 13 Feb 2014 11:42:33 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 13 Feb 2014 11:42:18 +0100
Message-Id: <1392288152-14821-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: i.MX: switch remaining boards to imx-image
To: barebox@lists.infradead.org


We used to let the compiler generate the binary headers for the
internal boot mode. Now we have the imx-image tool for this purpose
which is easier to use. Switch the remaining boards over to use
it.

Sascha

----------------------------------------------------------------
Sascha Hauer (14):
      ARM: i.MX: Add include directories to imximage target
      ARM: i.MX53 SMD: Switch to imximage
      ARM: i.MX6 sabresd: Switch to imximage
      ARM: i.MX6 arm2: Switch to imximage
      ARM: i.MX51 ccxmx51: Switch to imximage
      ARM: i.MX51 karo-tx51: Switch to imximage
      ARM: i.MX51 vincell: Switch to imximage
      ARM: i.MX51: Eukrea cpuimx51: Switch to imx-image
      ARM: i.MX25: freescale-mx25-3stack: Switch to imx-image
      ARM: i.MX53: TQ tqma53: Switch to imx-image
      ARM: i.MX25: Eukrea cpuimx25: Switch to imx-image
      ARM: i.MX35: eukrea-cpuimx35: Switch to imx-image
      ARM: i.MX35: freescale-mx35-3stack: Switch to imx-image
      ARM: i.MX53 karo-tx53: Switch to imximage

 arch/arm/Makefile                                  |  23 +++
 arch/arm/boards/ccxmx51/Makefile                   |   1 -
 arch/arm/boards/ccxmx51/flash-header.imxcfg        |  60 +++++++
 arch/arm/boards/ccxmx51/flash_header.c             |  84 ----------
 arch/arm/boards/eukrea_cpuimx25/Makefile           |   1 -
 .../arm/boards/eukrea_cpuimx25/flash-header.imxcfg |  16 ++
 arch/arm/boards/eukrea_cpuimx25/flash_header.c     |  61 -------
 arch/arm/boards/eukrea_cpuimx35/Makefile           |   1 -
 .../arm/boards/eukrea_cpuimx35/flash-header.imxcfg |  19 +++
 arch/arm/boards/eukrea_cpuimx35/flash_header.c     |  43 -----
 arch/arm/boards/eukrea_cpuimx51/Makefile           |   1 -
 .../arm/boards/eukrea_cpuimx51/flash-header.imxcfg |  59 +++++++
 arch/arm/boards/eukrea_cpuimx51/flash_header.c     |  83 ----------
 arch/arm/boards/freescale-mx25-3ds/3stack.c        |  61 -------
 .../boards/freescale-mx25-3ds/flash-header.imxcfg  |  42 +++++
 arch/arm/boards/freescale-mx35-3ds/Makefile        |   2 -
 .../boards/freescale-mx35-3ds/flash-header.imxcfg  |  34 ++++
 arch/arm/boards/freescale-mx35-3ds/flash_header.c  |  72 ---------
 arch/arm/boards/freescale-mx53-smd/Makefile        |   1 -
 .../boards/freescale-mx53-smd/flash-header.imxcfg  |  54 +++++++
 arch/arm/boards/freescale-mx53-smd/flash_header.c  | 102 ------------
 arch/arm/boards/freescale-mx6-arm2/Makefile        |   1 -
 .../boards/freescale-mx6-arm2/flash-header.imxcfg  | 122 ++++++++++++++
 arch/arm/boards/freescale-mx6-arm2/flash_header.c  | 171 --------------------
 arch/arm/boards/freescale-mx6-sabresd/Makefile     |   1 -
 .../freescale-mx6-sabresd/flash-header.imxcfg      | 128 +++++++++++++++
 .../boards/freescale-mx6-sabresd/flash_header.c    | 178 ---------------------
 arch/arm/boards/guf-vincell/Makefile               |   2 +-
 arch/arm/boards/guf-vincell/flash-header.imxcfg    |   3 +
 arch/arm/boards/guf-vincell/flash_header.c         |  41 -----
 arch/arm/boards/karo-tx51/Makefile                 |   1 -
 .../boards/karo-tx51/flash-header-karo-tx51.imxcfg |  13 ++
 arch/arm/boards/karo-tx51/flash_header.c           |  52 ------
 arch/arm/boards/karo-tx53/Makefile                 |   1 -
 .../karo-tx53/flash-header-tx53-rev1011.imxcfg     |  97 +++++++++++
 .../karo-tx53/flash-header-tx53-revxx30.imxcfg     | 127 +++++++++++++++
 arch/arm/boards/karo-tx53/flash_header.c           |  73 ---------
 arch/arm/boards/tqma53/flash-header.imxcfg         |  66 ++++++++
 scripts/Makefile.lib                               |   4 +-
 39 files changed, 867 insertions(+), 1034 deletions(-)
 create mode 100644 arch/arm/boards/ccxmx51/flash-header.imxcfg
 delete mode 100644 arch/arm/boards/ccxmx51/flash_header.c
 create mode 100644 arch/arm/boards/eukrea_cpuimx25/flash-header.imxcfg
 delete mode 100644 arch/arm/boards/eukrea_cpuimx25/flash_header.c
 create mode 100644 arch/arm/boards/eukrea_cpuimx35/flash-header.imxcfg
 delete mode 100644 arch/arm/boards/eukrea_cpuimx35/flash_header.c
 create mode 100644 arch/arm/boards/eukrea_cpuimx51/flash-header.imxcfg
 delete mode 100644 arch/arm/boards/eukrea_cpuimx51/flash_header.c
 create mode 100644 arch/arm/boards/freescale-mx25-3ds/flash-header.imxcfg
 create mode 100644 arch/arm/boards/freescale-mx35-3ds/flash-header.imxcfg
 delete mode 100644 arch/arm/boards/freescale-mx35-3ds/flash_header.c
 create mode 100644 arch/arm/boards/freescale-mx53-smd/flash-header.imxcfg
 delete mode 100644 arch/arm/boards/freescale-mx53-smd/flash_header.c
 create mode 100644 arch/arm/boards/freescale-mx6-arm2/flash-header.imxcfg
 delete mode 100644 arch/arm/boards/freescale-mx6-arm2/flash_header.c
 create mode 100644 arch/arm/boards/freescale-mx6-sabresd/flash-header.imxcfg
 delete mode 100644 arch/arm/boards/freescale-mx6-sabresd/flash_header.c
 create mode 100644 arch/arm/boards/guf-vincell/flash-header.imxcfg
 delete mode 100644 arch/arm/boards/guf-vincell/flash_header.c
 create mode 100644 arch/arm/boards/karo-tx51/flash-header-karo-tx51.imxcfg
 delete mode 100644 arch/arm/boards/karo-tx51/flash_header.c
 create mode 100644 arch/arm/boards/karo-tx53/flash-header-tx53-rev1011.imxcfg
 create mode 100644 arch/arm/boards/karo-tx53/flash-header-tx53-revxx30.imxcfg
 delete mode 100644 arch/arm/boards/karo-tx53/flash_header.c
 create mode 100644 arch/arm/boards/tqma53/flash-header.imxcfg

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

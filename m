Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SAzSf-0003bY-57
 for barebox@lists.infradead.org; Fri, 23 Mar 2012 08:03:07 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1SAzSO-0003DF-CS
 for barebox@lists.infradead.org; Fri, 23 Mar 2012 09:02:44 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.77)
 (envelope-from <sha@pengutronix.de>) id 1SAzSO-0007gb-6C
 for barebox@lists.infradead.org; Fri, 23 Mar 2012 09:02:44 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 23 Mar 2012 09:02:40 +0100
Message-Id: <1332489762-28709-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: fix i.MX flash header copy sizes
To: barebox@lists.infradead.org

barebox is getting bigger and the assumption that 256k of binary
size is enough for everybody is no longer true. Calculate the
binary size to copy during compile time instead of hardcoding
a value.

----------------------------------------------------------------
Sascha Hauer (2):
      ARM linker script: Fix barebox_image_size
      ARM i.MX flash header: Fix barebox image sizes

 arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c  |    5 +----
 arch/arm/boards/eukrea_cpuimx35/flash_header.c     |    2 +-
 arch/arm/boards/eukrea_cpuimx51/flash_header.c     |    4 +---
 arch/arm/boards/freescale-mx25-3-stack/3stack.c    |    5 +----
 .../boards/freescale-mx35-3-stack/flash_header.c   |    2 +-
 arch/arm/boards/freescale-mx51-pdk/flash_header.c  |    4 +---
 arch/arm/boards/freescale-mx53-loco/flash_header.c |    2 +-
 arch/arm/boards/freescale-mx53-smd/flash_header.c  |    2 +-
 arch/arm/boards/tqma53/flash_header.c              |    2 +-
 arch/arm/lib/barebox.lds.S                         |    2 +-
 arch/arm/mach-imx/include/mach/imx-flash-header.h  |   10 ++++++++++
 11 files changed, 20 insertions(+), 20 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

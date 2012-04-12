Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SIQLg-0001kV-Nm
 for barebox@lists.infradead.org; Thu, 12 Apr 2012 20:10:33 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1SIQLX-0004bJ-8s
 for barebox@lists.infradead.org; Thu, 12 Apr 2012 22:10:23 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.77)
 (envelope-from <sha@pengutronix.de>) id 1SIQLX-00018C-7g
 for barebox@lists.infradead.org; Thu, 12 Apr 2012 22:10:23 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 12 Apr 2012 22:10:17 +0200
Message-Id: <1334261421-4194-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: ARM i.MX5: Sync iomux to kernel
To: barebox@lists.infradead.org

This patch updates the i.MX iomux-v3 to the kernel.

Sascha Hauer (4):
      ARM i.MX iomux-v3: Sync to kernel
      ARM i.MX iomux-v3: one bit more for pad_ctl
      ARM i.MX51 iomux: sync to kernel
      ARM i.MX53 iomux: sync to kernel

 arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c |    2 +-
 arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c |    2 +-
 arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c |    2 +-
 arch/arm/boards/freescale-mx25-3-stack/3stack.c   |    2 +-
 arch/arm/boards/freescale-mx35-3-stack/3stack.c   |    2 +-
 arch/arm/boards/freescale-mx51-pdk/board.c        |   16 +-
 arch/arm/boards/freescale-mx53-loco/board.c       |    2 +-
 arch/arm/boards/freescale-mx53-smd/board.c        |    2 +-
 arch/arm/boards/guf-cupid/board.c                 |    2 +-
 arch/arm/boards/karo-tx25/board.c                 |    6 +-
 arch/arm/boards/pcm043/pcm043.c                   |    2 +-
 arch/arm/boards/tqma53/board.c                    |    2 +-
 arch/arm/mach-imx/include/mach/iomux-mx51.h       | 1133 +++++++++++++++------
 arch/arm/mach-imx/include/mach/iomux-mx53.h       |    8 +-
 arch/arm/mach-imx/include/mach/iomux-v3.h         |   78 +-
 arch/arm/mach-imx/iomux-v3.c                      |   40 +-
 16 files changed, 892 insertions(+), 409 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

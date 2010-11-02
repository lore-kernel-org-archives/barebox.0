Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PDKUK-0005Jo-7f
	for barebox@lists.infradead.org; Tue, 02 Nov 2010 17:17:41 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.71)
	(envelope-from <sha@pengutronix.de>) id 1PDKUH-0001lk-QU
	for barebox@lists.infradead.org; Tue, 02 Nov 2010 18:17:33 +0100
Received: from sha by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <sha@pengutronix.de>) id 1PDKUH-0006VA-NW
	for barebox@lists.infradead.org; Tue, 02 Nov 2010 18:17:33 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  2 Nov 2010 18:17:13 +0100
Message-Id: <1288718250-24919-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: device register functions for i.MX
To: barebox <barebox@lists.infradead.org>

Hi all,

The following series adds device register convenience functions
for i.MX SoCs. Thia simplifies the board support code and is also
done to simplify adding clocks for the devices later.

Sascha

The following changes since commit 3d4f24ef0bc1d00577b87ec216cec61bbf34a4ec:

  Merge branch 'next' (2010-11-02 18:05:32 +0100)

are available in the git repository at:

  git://git.pengutronix.de/git/barebox.git pu

Sascha Hauer (17):
      ARM i.MX51: Add SPBA0 base addresses
      ARM i.MX: Add device convenience functions
      ARM i.MX: Add header protection
      ARM i.MX35: Add IPU base address
      ARM pcm043: Use device functions
      ARM pca100: Use device functions
      ARM pcm038: Use device functions
      ARM pcm037: Use device functions
      ARM imx27ads: Use device functions
      ARM imx21ads: Use device functions
      ARM mx51 babbage: Use device functions
      ARM neso: Use device functions
      ARM mx35 3ds: Use device functions
      ARM mx25 3ds: Use device functions
      ARM eukrea cpuimx35: Use device functions
      ARM eukrea cpuimx27: Use device functions
      ARM eukrea cpuimx25: Use device functions

 arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c |   54 +++----------------
 arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c |   27 ++--------
 arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c |   53 +++----------------
 arch/arm/boards/freescale-mx25-3-stack/3stack.c   |   36 ++-----------
 arch/arm/boards/freescale-mx35-3-stack/3stack.c   |   38 ++------------
 arch/arm/boards/freescale-mx51-pdk/board.c        |   33 ++----------
 arch/arm/boards/guf-neso/board.c                  |   38 ++------------
 arch/arm/boards/imx21ads/imx21ads.c               |   29 ++---------
 arch/arm/boards/imx27ads/imx27ads.c               |   19 +------
 arch/arm/boards/pcm037/pcm037.c                   |   20 +------
 arch/arm/boards/pcm038/pcm038.c                   |   47 ++--------------
 arch/arm/boards/pcm043/pcm043.c                   |   38 ++------------
 arch/arm/boards/phycard-i.MX27/pca100.c           |   28 ++--------
 arch/arm/mach-imx/Makefile                        |    2 +-
 arch/arm/mach-imx/devices.c                       |   59 +++++++++++++++++++++
 arch/arm/mach-imx/include/mach/devices-imx21.h    |   33 ++++++++++++
 arch/arm/mach-imx/include/mach/devices-imx25.h    |   38 +++++++++++++
 arch/arm/mach-imx/include/mach/devices-imx27.h    |   54 +++++++++++++++++++
 arch/arm/mach-imx/include/mach/devices-imx31.h    |   35 ++++++++++++
 arch/arm/mach-imx/include/mach/devices-imx35.h    |   57 ++++++++++++++++++++
 arch/arm/mach-imx/include/mach/devices-imx51.h    |   53 ++++++++++++++++++
 arch/arm/mach-imx/include/mach/devices.h          |   17 ++++++
 arch/arm/mach-imx/include/mach/imx35-regs.h       |    1 +
 arch/arm/mach-imx/include/mach/imx51-regs.h       |   13 ++++-
 arch/arm/mach-imx/include/mach/imxfb.h            |    5 ++
 25 files changed, 429 insertions(+), 398 deletions(-)
 create mode 100644 arch/arm/mach-imx/devices.c
 create mode 100644 arch/arm/mach-imx/include/mach/devices-imx21.h
 create mode 100644 arch/arm/mach-imx/include/mach/devices-imx25.h
 create mode 100644 arch/arm/mach-imx/include/mach/devices-imx27.h
 create mode 100644 arch/arm/mach-imx/include/mach/devices-imx31.h
 create mode 100644 arch/arm/mach-imx/include/mach/devices-imx35.h
 create mode 100644 arch/arm/mach-imx/include/mach/devices-imx51.h
 create mode 100644 arch/arm/mach-imx/include/mach/devices.h

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1ORiu1-000438-1b
	for barebox@lists.infradead.org; Thu, 24 Jun 2010 09:39:22 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.71)
	(envelope-from <sha@pengutronix.de>) id 1ORitz-0007Wb-4A
	for barebox@lists.infradead.org; Thu, 24 Jun 2010 11:39:19 +0200
Received: from sha by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <sha@pengutronix.de>) id 1ORitz-00009j-3I
	for barebox@lists.infradead.org; Thu, 24 Jun 2010 11:39:19 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 24 Jun 2010 11:39:05 +0200
Message-Id: <1277372356-32370-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: assorted patches
To: barebox@lists.infradead.org


The following changes since commit 334fe1dc8a1b866d1f0f4ccf82ff7b06589ec022:

  pca100: use generic default env (2010-06-22 15:44:45 +0200)

are available in the git repository at:
  git://git.pengutronix.de/git/barebox.git assorted-pu

Sascha Hauer (11):
      i.MX27: merge iomux pim definitions from kernel
      imxfb: Add board specific hook to enable display
      imxfb: do not enable framebuffer on startup
      memcpy cmd: Do not expect to read/write the whole chunk at once
      armlinux: reorder tag setup
      remove eco920 board support
      usbnet: remove unused dev member in struct usbnet
      i.MX serial: Use readl/writel instead of pointer deref
      i.MX clocksource: Use readl/writel instead of pointer deref
      i.MX27: Add some missing device base addresses
      fb: add a usage counter to prevent double enable/disable

 arch/arm/Makefile                           |    1 -
 arch/arm/lib/armlinux.c                     |   51 +++----
 arch/arm/mach-at91rm9200/Kconfig            |    8 -
 arch/arm/mach-imx/clocksource.c             |   18 ++-
 arch/arm/mach-imx/include/mach/imx21-regs.h |   33 ----
 arch/arm/mach-imx/include/mach/imx27-regs.h |   96 +-----------
 arch/arm/mach-imx/include/mach/imxfb.h      |    2 +
 arch/arm/mach-imx/include/mach/iomux-mx21.h |  121 ++++++++++++++
 arch/arm/mach-imx/include/mach/iomux-mx27.h |  204 ++++++++++++++++++++++++
 arch/arm/mach-imx/include/mach/iomux-mx2x.h |  230 +++++++++++++++++++++++++++
 board/eco920/Makefile                       |    2 -
 board/eco920/config.h                       |  134 ----------------
 board/eco920/config.mk                      |    1 -
 board/eco920/eco920.c                       |  211 ------------------------
 board/eukrea_cpuimx27/eukrea_cpuimx27.c     |    3 +-
 board/imx21ads/imx21ads.c                   |    1 +
 board/imx27ads/imx27ads.c                   |    3 +-
 board/pcm038/pcm038.c                       |    3 +-
 board/phycard-i.MX27/pca100.c               |    3 +-
 commands/mem.c                              |   30 +++--
 drivers/net/usb/asix.c                      |   12 +-
 drivers/net/usb/usbnet.c                    |    9 +-
 drivers/serial/serial_imx.c                 |  137 ++++++++--------
 drivers/video/fb.c                          |    5 +
 drivers/video/imx.c                         |    9 +-
 include/fb.h                                |    4 +-
 include/usb/usbnet.h                        |    2 -
 27 files changed, 718 insertions(+), 615 deletions(-)
 create mode 100644 arch/arm/mach-imx/include/mach/iomux-mx21.h
 create mode 100644 arch/arm/mach-imx/include/mach/iomux-mx27.h
 create mode 100644 arch/arm/mach-imx/include/mach/iomux-mx2x.h
 delete mode 100644 board/eco920/Makefile
 delete mode 100644 board/eco920/config.h
 delete mode 100644 board/eco920/config.mk
 delete mode 100644 board/eco920/eco920.c


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OVi8K-00007t-Cj
	for barebox@lists.infradead.org; Mon, 05 Jul 2010 09:38:38 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.71)
	(envelope-from <sha@pengutronix.de>) id 1OVi8H-0004ir-7Z
	for barebox@lists.infradead.org; Mon, 05 Jul 2010 11:38:33 +0200
Received: from sha by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <sha@pengutronix.de>) id 1OVi8H-00019K-6b
	for barebox@lists.infradead.org; Mon, 05 Jul 2010 11:38:33 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  5 Jul 2010 11:38:29 +0200
Message-Id: <1278322711-4332-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: Garz+Fricke Neso Support
To: barebox@lists.infradead.org

The following patches add support for the Garz+Fricke Neso (i.MX27) board

The following changes since commit a398a920b6847775c255e2a783c9562bd7227e43:

  trivial: fix typos concerning "instead" (2010-07-05 08:27:28 +0200)

are available in the git repository at:
  git://git.pengutronix.de/git/barebox.git guf-neso

Sascha Hauer (2):
      Add Garz+Fricke Neso support
      Add Garz+Fricke Neso defconfig

 arch/arm/Makefile               |    1 +
 arch/arm/configs/neso_defconfig |  264 ++++++++++++++++++++++++++
 arch/arm/mach-imx/Kconfig       |   10 +
 board/guf-neso/Makefile         |    5 +
 board/guf-neso/board.c          |  400 +++++++++++++++++++++++++++++++++++++++
 board/guf-neso/config.h         |   26 +++
 board/guf-neso/env/config       |   53 +++++
 board/guf-neso/lowlevel.c       |  117 ++++++++++++
 board/guf-neso/pll_init.S       |   48 +++++
 9 files changed, 924 insertions(+), 0 deletions(-)
 create mode 100644 arch/arm/configs/neso_defconfig
 create mode 100644 board/guf-neso/Makefile
 create mode 100644 board/guf-neso/board.c
 create mode 100644 board/guf-neso/config.h
 create mode 100644 board/guf-neso/env/config
 create mode 100644 board/guf-neso/lowlevel.c
 create mode 100644 board/guf-neso/pll_init.S

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

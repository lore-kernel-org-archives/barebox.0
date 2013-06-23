Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UqqVO-0000gt-R8
 for barebox@lists.infradead.org; Sun, 23 Jun 2013 20:03:24 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 23 Jun 2013 22:02:54 +0200
Message-Id: <1372017777-787-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] remove empty board config.h files
To: barebox@lists.infradead.org

This removes several empty board config.h files. The boards which
do not have a config.h are then added to a newly created
arch/arm/boards/Makefile. This prepares the build system for
multiple board support.

Jean-Christophe, I'd like to get rid of the remaining config.h
files. The bulk of the remaining ones are at91 and most of
them contain a single define for AT91_MAIN_CLK. Could you work
on this? I could do it myself but I'm sure you have your own
idea how this should be accomplished.

Sascha

----------------------------------------------------------------
Sascha Hauer (3):
      ARM: Marvell boards: remove empty config.h files
      ARM: i.MX boards: remove empty config.h files
      ARM: Turn most board directories into regular build directories

 arch/arm/Makefile                                | 78 +++---------------------
 arch/arm/boards/Makefile                         | 68 +++++++++++++++++++++
 arch/arm/boards/eukrea_cpuimx25/config.h         | 23 -------
 arch/arm/boards/eukrea_cpuimx35/config.h         | 19 ------
 arch/arm/boards/freescale-mx25-3-stack/config.h  | 27 --------
 arch/arm/boards/freescale-mx35-3-stack/config.h  | 24 --------
 arch/arm/boards/globalscale-guruplug/config.h    |  4 --
 arch/arm/boards/globalscale-mirabox/config.h     |  4 --
 arch/arm/boards/guf-cupid/config.h               | 27 --------
 arch/arm/boards/karo-tx25/config.h               | 27 --------
 arch/arm/boards/marvell-armada-xp-gp/config.h    |  4 --
 arch/arm/boards/pcm037/config.h                  | 31 ----------
 arch/arm/boards/pcm043/config.h                  | 27 --------
 arch/arm/boards/plathome-openblocks-ax3/config.h |  4 --
 arch/arm/boards/scb9328/config.h                 | 26 --------
 15 files changed, 77 insertions(+), 316 deletions(-)
 create mode 100644 arch/arm/boards/Makefile
 delete mode 100644 arch/arm/boards/eukrea_cpuimx25/config.h
 delete mode 100644 arch/arm/boards/eukrea_cpuimx35/config.h
 delete mode 100644 arch/arm/boards/freescale-mx25-3-stack/config.h
 delete mode 100644 arch/arm/boards/freescale-mx35-3-stack/config.h
 delete mode 100644 arch/arm/boards/globalscale-guruplug/config.h
 delete mode 100644 arch/arm/boards/globalscale-mirabox/config.h
 delete mode 100644 arch/arm/boards/guf-cupid/config.h
 delete mode 100644 arch/arm/boards/karo-tx25/config.h
 delete mode 100644 arch/arm/boards/marvell-armada-xp-gp/config.h
 delete mode 100644 arch/arm/boards/pcm037/config.h
 delete mode 100644 arch/arm/boards/pcm043/config.h
 delete mode 100644 arch/arm/boards/plathome-openblocks-ax3/config.h
 delete mode 100644 arch/arm/boards/scb9328/config.h

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

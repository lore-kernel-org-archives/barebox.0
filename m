Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.15.15])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ui7RV-0006wF-5k
 for barebox@lists.infradead.org; Thu, 30 May 2013 18:19:18 +0000
Received: from mailout-de.gmx.net ([10.1.76.29]) by mrigmx.server.lan
 (mrigmx002) with ESMTP (Nemesis) id 0LfUwx-1U6Jqy31Jp-00p5ti for
 <barebox@lists.infradead.org>; Thu, 30 May 2013 20:18:49 +0200
From: Oleksij Rempel <linux@rempel-privat.de>
Date: Thu, 30 May 2013 20:18:39 +0200
Message-Id: <1369937922-1557-1-git-send-email-linux@rempel-privat.de>
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
Subject: [PATCH v3  0/3] work on atheros ar2313
To: barebox@lists.infradead.org

here is next version of pachtes for atheros ar2313.
All previous comments and style fixes was handled here.

Oleksij Rempel (3):
  MIPS: add Atheros ar531x family support
  net: add ar231x-eth support
  MIPS: ar231x: add netgear-wg102

 arch/mips/Kconfig                                  |   9 +
 arch/mips/Makefile                                 |   3 +
 arch/mips/boards/netgear-wg102/Kconfig             |   6 +
 arch/mips/boards/netgear-wg102/Makefile            |   1 +
 arch/mips/boards/netgear-wg102/ram.c               |  11 +
 arch/mips/mach-ar231x/Kconfig                      |  17 +
 arch/mips/mach-ar231x/Makefile                     |   3 +
 arch/mips/mach-ar231x/ar231x.c                     | 195 +++++++++
 arch/mips/mach-ar231x/ar231x_reset.c               |  73 ++++
 arch/mips/mach-ar231x/board.c                      | 188 +++++++++
 arch/mips/mach-ar231x/include/mach/ar2312_regs.h   | 302 ++++++++++++++
 .../mach-ar231x/include/mach/ar231x_platform.h     | 104 +++++
 drivers/net/Kconfig                                |   7 +
 drivers/net/Makefile                               |   1 +
 drivers/net/ar231x.c                               | 437 +++++++++++++++++++++
 drivers/net/ar231x.h                               | 219 +++++++++++
 16 files changed, 1576 insertions(+)
 create mode 100644 arch/mips/boards/netgear-wg102/Kconfig
 create mode 100644 arch/mips/boards/netgear-wg102/Makefile
 create mode 100644 arch/mips/boards/netgear-wg102/ram.c
 create mode 100644 arch/mips/mach-ar231x/Kconfig
 create mode 100644 arch/mips/mach-ar231x/Makefile
 create mode 100644 arch/mips/mach-ar231x/ar231x.c
 create mode 100644 arch/mips/mach-ar231x/ar231x_reset.c
 create mode 100644 arch/mips/mach-ar231x/board.c
 create mode 100644 arch/mips/mach-ar231x/include/mach/ar2312_regs.h
 create mode 100644 arch/mips/mach-ar231x/include/mach/ar231x_platform.h
 create mode 100644 drivers/net/ar231x.c
 create mode 100644 drivers/net/ar231x.h

-- 
1.8.1.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

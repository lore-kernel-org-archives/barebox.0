Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.17.20])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uf3oZ-0001PS-8n
 for barebox@lists.infradead.org; Wed, 22 May 2013 07:50:31 +0000
Received: from mailout-de.gmx.net ([10.1.76.35]) by mrigmx.server.lan
 (mrigmx001) with ESMTP (Nemesis) id 0LgKlO-1U9Fgz38JI-00ngG6 for
 <barebox@lists.infradead.org>; Wed, 22 May 2013 09:50:01 +0200
From: Oleksij Rempel <linux@rempel-privat.de>
Date: Wed, 22 May 2013 09:49:46 +0200
Message-Id: <1369208989-14369-1-git-send-email-linux@rempel-privat.de>
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
Subject: [RFC, PATCH v2 0/3] work on atheros ar2313
To: barebox@lists.infradead.org

Hello all,
here is next version of pachtes for atheros ar2313.
Previous comments was handled and some more work was done

Oleksij Rempel (3):
  MIPS: add Atheros ar531x family support
  net: add ar231x-eth support
  MIPS: ar231x: add netgear-wg102

 arch/mips/Kconfig                                  |  10 +
 arch/mips/Makefile                                 |   3 +
 arch/mips/boards/netgear-wg102/Kconfig             |   6 +
 arch/mips/boards/netgear-wg102/Makefile            |   1 +
 arch/mips/boards/netgear-wg102/ram.c               |  13 +
 arch/mips/mach-ar231x/Kconfig                      |  17 +
 arch/mips/mach-ar231x/Makefile                     |   3 +
 arch/mips/mach-ar231x/ar231x.c                     | 199 ++++++++++
 arch/mips/mach-ar231x/ar231x_reset.c               |  64 +++
 arch/mips/mach-ar231x/board.c                      | 184 +++++++++
 arch/mips/mach-ar231x/include/mach/ar2312_regs.h   | 269 +++++++++++++
 .../mach-ar231x/include/mach/ar231x_platform.h     |  89 +++++
 arch/mips/mach-ar231x/include/mach/debug_ll.h      |  35 ++
 drivers/net/Kconfig                                |   7 +
 drivers/net/Makefile                               |   1 +
 drivers/net/ar231x.c                               | 429 +++++++++++++++++++++
 drivers/net/ar231x.h                               | 219 +++++++++++
 17 files changed, 1549 insertions(+)
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
 create mode 100644 arch/mips/mach-ar231x/include/mach/debug_ll.h
 create mode 100644 drivers/net/ar231x.c
 create mode 100644 drivers/net/ar231x.h

-- 
1.8.1.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

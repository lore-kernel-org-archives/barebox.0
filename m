Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.17.20])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UpEQq-0005Ec-Pd
 for barebox@lists.infradead.org; Wed, 19 Jun 2013 09:12:01 +0000
Received: from mailout-de.gmx.net ([10.1.76.30]) by mrigmx.server.lan
 (mrigmx001) with ESMTP (Nemesis) id 0LcVHU-1UQaGD1lrS-00jnJt for
 <barebox@lists.infradead.org>; Wed, 19 Jun 2013 11:11:39 +0200
From: Oleksij Rempel <linux@rempel-privat.de>
Date: Wed, 19 Jun 2013 11:11:25 +0200
Message-Id: <1371633093-23179-1-git-send-email-linux@rempel-privat.de>
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
Subject: [PATCH 0/8] low level initialisation for ar2313
To: barebox@lists.infradead.org

this patch set add low level initialisation for Atheros ar2313
and board based on this chip - Netgear wg102.

Antony Pavlov (2):
  MIPS: pbl: add mips_barebox_10h asm macro
  MIPS: mach-ar231x: enable DEBUG_LL

Oleksij Rempel (6):
  MIPS: pbl: add pbl_sleep macro
  MIPS: pbl: add pbl_probe_mem macro
  MIPS: mach-ar231x: add lowlevel init pbl macros
  MIPS: netgear-wg102: add pbl support
  MIPS: netgear-wg102: add debug_ll
  netgear-wg102: pbl, add extra check for mem config

 arch/mips/Kconfig                                  |   1 +
 .../netgear-wg102/include/board/board_pbl_start.h  |  77 +++++++++
 .../boards/netgear-wg102/include/board/debug_ll.h  |  33 ++++
 arch/mips/include/asm/pbl_macros.h                 |  38 +++++
 arch/mips/mach-ar231x/Kconfig                      |   2 +
 arch/mips/mach-ar231x/include/mach/debug_ll.h      |  27 ++++
 arch/mips/mach-ar231x/include/mach/pbl_macros.h    | 177 +++++++++++++++++++++
 7 files changed, 355 insertions(+)
 create mode 100644 arch/mips/boards/netgear-wg102/include/board/board_pbl_start.h
 create mode 100644 arch/mips/boards/netgear-wg102/include/board/debug_ll.h
 create mode 100644 arch/mips/mach-ar231x/include/mach/debug_ll.h
 create mode 100644 arch/mips/mach-ar231x/include/mach/pbl_macros.h

-- 
1.8.1.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SJQtE-00014F-S9
 for barebox@lists.infradead.org; Sun, 15 Apr 2012 14:57:21 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1SJQt9-00051o-9H
 for barebox@lists.infradead.org; Sun, 15 Apr 2012 16:57:15 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.77)
 (envelope-from <sha@pengutronix.de>) id 1SJQt9-0008LL-8N
 for barebox@lists.infradead.org; Sun, 15 Apr 2012 16:57:15 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 15 Apr 2012 16:57:12 +0200
Message-Id: <1334501834-32001-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] ppc cleanup
To: barebox@lists.infradead.org

This removes some unused code from the ppc port.

----------------------------------------------------------------
Sascha Hauer (2):
      ppc: remove unused init_board_data function
      ppc: remove unused bd_t

 arch/ppc/include/asm/barebox.h |  103 ----------------------------------------
 arch/ppc/include/asm/common.h  |    3 --
 arch/ppc/lib/Makefile          |    1 -
 arch/ppc/lib/board_data.c      |   49 -------------------
 arch/ppc/mach-mpc5xxx/cpu.c    |   10 ----
 5 files changed, 166 deletions(-)
 delete mode 100644 arch/ppc/lib/board_data.c

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

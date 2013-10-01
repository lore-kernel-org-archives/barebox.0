Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VQtLt-0000SR-0q
 for barebox@lists.infradead.org; Tue, 01 Oct 2013 06:22:36 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1VQtLV-0000qz-JU
 for barebox@lists.infradead.org; Tue, 01 Oct 2013 08:22:09 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1VQtLV-000739-IE
 for barebox@lists.infradead.org; Tue, 01 Oct 2013 08:22:09 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  1 Oct 2013 08:22:02 +0200
Message-Id: <1380608528-26999-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: Compiler warning fixes
To: barebox@lists.infradead.org

Some fixes for compiler warnings

----------------------------------------------------------------
Sascha Hauer (6):
      ARM: edb93xx: Add missing include
      ARM: friendlyarm-tiny210: remove unused variable
      ARM: mx23-evk: Fix result checking of devfs_add_partition
      ARM: Ka-Ro TX28: Fix result checking of devfs_add_partition
      ARM: vexpress: Fix compiler warning
      mips: bcm47xx: Fix compiler warning

 arch/arm/boards/edb93xx/edb93xx.c              | 1 +
 arch/arm/boards/freescale-mx23-evk/mx23-evk.c  | 6 +++++-
 arch/arm/boards/friendlyarm-tiny210/lowlevel.c | 2 --
 arch/arm/boards/karo-tx28/tx28-stk5.c          | 6 +++++-
 arch/arm/boards/vexpress/init.c                | 2 ++
 arch/mips/mach-bcm47xx/include/mach/debug_ll.h | 6 ++++--
 6 files changed, 17 insertions(+), 6 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

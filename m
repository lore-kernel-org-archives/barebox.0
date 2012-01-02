Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RhiOA-0005Ta-PE
 for barebox@lists.infradead.org; Mon, 02 Jan 2012 13:57:24 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1RhiO3-0008Ov-3o
 for barebox@lists.infradead.org; Mon, 02 Jan 2012 14:57:15 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.77)
 (envelope-from <sha@pengutronix.de>) id 1RhiO3-0007I3-2d
 for barebox@lists.infradead.org; Mon, 02 Jan 2012 14:57:15 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  2 Jan 2012 14:57:09 +0100
Message-Id: <1325512634-25797-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: patches for compiler warnings
To: barebox@lists.infradead.org

These patches fix some compiler warnings, partly by just disabling
the warning in the compiler. The set-but-not-used warnings are not
very useful and often trigger false positives, so disable this. Same
with "warning: generating trampoline in object".

Sascha Hauer (5):
      scripts/Kbuild.include: update to latest kernel version
      Makefile: disable unused-but-set-variable warning
      mtd Kconfig: only select NAND_READ_OOB when NAND is enabled
      net dm9k: Fix compiler warning
      Makefile: disable warning: generating trampoline in object

 Makefile               |    6 ++
 drivers/mtd/Kconfig    |    4 +-
 drivers/net/dm9k.c     |    2 +
 scripts/Kbuild.include |  143 ++++++++++++++++++++++++++++++++++--------------
 4 files changed, 112 insertions(+), 43 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

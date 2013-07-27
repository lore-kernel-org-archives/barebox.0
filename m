Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V2zvm-00021V-An
 for barebox@lists.infradead.org; Sat, 27 Jul 2013 08:32:52 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1V2zvM-0000kZ-7z
 for barebox@lists.infradead.org; Sat, 27 Jul 2013 10:32:24 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1V2zvL-0004ZV-KB
 for barebox@lists.infradead.org; Sat, 27 Jul 2013 10:32:23 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sat, 27 Jul 2013 10:32:17 +0200
Message-Id: <1374913941-17529-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] of fixes
To: barebox@lists.infradead.org

The following are some of related fixes intended for master.

Sascha

----------------------------------------------------------------
Sascha Hauer (4):
      of: Use correct devicetree in of_print_cmdline
      of: net: Use correct devicetree in eth_of_fixup
      of: Use dts syntax when printing devicetrees
      ARM: bootm: Print Kernel commandline unconditionally

 arch/arm/lib/bootm.c | 3 +--
 common/oftree.c      | 2 +-
 drivers/of/base.c    | 9 ++++++---
 net/eth.c            | 2 +-
 4 files changed, 9 insertions(+), 7 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

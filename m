Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UeQrK-0001R0-S8
 for barebox@lists.infradead.org; Mon, 20 May 2013 14:14:45 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1UeQqz-0007Eb-2f
 for barebox@lists.infradead.org; Mon, 20 May 2013 16:14:21 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1UeQqz-0007YI-1R
 for barebox@lists.infradead.org; Mon, 20 May 2013 16:14:21 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 20 May 2013 16:14:12 +0200
Message-Id: <1369059260-28872-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] devicetree misc updates
To: barebox@lists.infradead.org

This contains some misc devicetree updates, most important the
patches running gcc -E on .dts files needed for importing recent
devicetree files from the kernel.

Sascha

----------------------------------------------------------------
Sascha Hauer (8):
      ARM: dtb: Add $(obj)/$(BUILTIN_DTB).dtb.S as secondary target
      ARM: build dtbs during build process using extra-y
      scripts: fixdep: update from v3.10-rc1
      kbuild: always run gcc -E on *.dts, remove cmd_dtc_cpp
      of: When checking for existing devices also check resource end
      of: Call of_add_memory from of_probe
      of: Add of_match_node function
      of: populate devices based on "simple-bus" property

 arch/arm/Makefile      |   5 --
 arch/arm/dts/Makefile  |   8 +-
 drivers/of/base.c      |  93 +++++++++++++++-------
 include/driver.h       |   2 +-
 include/of.h           |   3 +
 scripts/Makefile.lib   |  21 +++--
 scripts/basic/fixdep.c | 206 ++++++++++++++++++++++++++++++++-----------------
 7 files changed, 218 insertions(+), 120 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

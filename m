Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WmUfG-0003FJ-Pu
 for barebox@lists.infradead.org; Mon, 19 May 2014 21:00:07 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:a236:9fff:fe00:814])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1WmUeo-00085S-Ek
 for barebox@lists.infradead.org; Mon, 19 May 2014 22:59:38 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.82)
 (envelope-from <sha@pengutronix.de>) id 1WmUev-0000g1-8E
 for barebox@lists.infradead.org; Mon, 19 May 2014 22:59:45 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 19 May 2014 22:59:38 +0200
Message-Id: <1400533184-668-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] devicetree command changes
To: barebox@lists.infradead.org

This series has some changes to the devicetree commands:

- Add devicetree completion
- Add a dedicated of_dump command to make dumping nodes easier

Sascha

----------------------------------------------------------------
Sascha Hauer (6):
      complete: Fix completion after options
      complete: Add devicetree completion
      commands: add of_dump command
      oftree: remove dump support
      of: Drop devicetree merge support
      oftree command: make devicetree file optargs to -l/-s

 arch/arm/boards/highbank/init.c |   2 +-
 arch/arm/cpu/dtb.c              |   2 +-
 arch/arm/lib/bootm.c            |   2 +-
 arch/mips/boot/dtb.c            |   2 +-
 commands/Kconfig                |  15 +++++-
 commands/Makefile               |   1 +
 commands/of_dump.c              | 108 ++++++++++++++++++++++++++++++++++++++++
 commands/of_node.c              |   2 +
 commands/of_property.c          |   2 +
 commands/oftree.c               | 101 ++++++++-----------------------------
 common/blspec.c                 |   2 +-
 common/bootm.c                  |   2 +-
 common/complete.c               |  76 ++++++++++++++++++++++++++++
 drivers/of/fdt.c                |  44 +++++-----------
 include/complete.h              |   5 +-
 include/of.h                    |   2 +-
 16 files changed, 246 insertions(+), 122 deletions(-)
 create mode 100644 commands/of_dump.c

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

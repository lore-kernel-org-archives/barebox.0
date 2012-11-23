Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 18.mo3.mail-out.ovh.net ([87.98.172.162]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Tbva9-0004eb-Hu
 for barebox@lists.infradead.org; Fri, 23 Nov 2012 15:54:24 +0000
Received: from mail607.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 30A2BFF9B5F
 for <barebox@lists.infradead.org>; Fri, 23 Nov 2012 17:05:27 +0100 (CET)
Date: Fri, 23 Nov 2012 16:52:24 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121123155224.GV8327@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 0/4] at91: some fixes
To: barebox@lists.infradead.org

HI,

	some fixe for at91

	they are needed for at91sam9n12 support

The following changes since commit c7a729aefe13104b6f3a9f2150a9e993bb510d43:

  Merge branch 'for-next/m25p80' (2012-11-21 11:54:34 +0100)

are available in the git repository at:


  git://git.jcrosoft.org/barebox.git delivery/at91_fixes

for you to fetch changes up to 02d37b5d4598cd3ffea4730aa027c8c04ab1f58d:

  Revert "mtd: atmel_nand: optimize read/write buffer functions" (2012-11-22 02:21:14 +0800)

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (4):
      at91: fix timer rate
      atmel_nand: fix pmecc timeout
      at91: clock: check overclock for sam9260/9261/9263/9rl
      Revert "mtd: atmel_nand: optimize read/write buffer functions"

 arch/arm/mach-at91/at91sam926x_time.c |    7 ++++++-
 arch/arm/mach-at91/clock.c            |   12 ++++++++++++
 drivers/mtd/nand/atmel_nand.c         |   33 +++++++++++++++++++++++++--------
 drivers/mtd/nand/atmel_nand_ecc.h     |    2 +-
 4 files changed, 44 insertions(+), 10 deletions(-)

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

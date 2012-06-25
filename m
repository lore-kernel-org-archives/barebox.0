Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Sj8eq-0007io-Qn
 for barebox@lists.infradead.org; Mon, 25 Jun 2012 12:44:45 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1Sj8ep-0008Dd-3Q
 for barebox@lists.infradead.org; Mon, 25 Jun 2012 14:44:43 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1Sj8ep-0002gH-2K
 for barebox@lists.infradead.org; Mon, 25 Jun 2012 14:44:43 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 25 Jun 2012 14:44:36 +0200
Message-Id: <1340628281-8774-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] provide ffs and __ashrdi3 for all architectures
To: barebox@lists.infradead.org

For upcoming 64bit file support we need ffs and __ashrdi3 functions
for all architectures. These patches provide them.

Sascha

----------------------------------------------------------------
Sascha Hauer (5):
      blackfin: add __ashrdi3
      openrisc: link to libgcc
      mips: Add missing ffs include
      nios2: Add missing ffs include
      x86: Add missing ffs include

 arch/blackfin/lib/Makefile      |    1 +
 arch/blackfin/lib/ashrdi3.c     |   36 ++++++++++++++++++++++++++++++++++++
 arch/mips/include/asm/bitops.h  |    1 +
 arch/nios2/include/asm/bitops.h |    3 +++
 arch/openrisc/Makefile          |    4 ++++
 arch/x86/include/asm/bitops.h   |    5 ++++-
 6 files changed, 49 insertions(+), 1 deletion(-)
 create mode 100644 arch/blackfin/lib/ashrdi3.c


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

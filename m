Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UNHpG-0000KZ-JX
 for barebox@lists.infradead.org; Wed, 03 Apr 2013 07:09:43 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1UNHpE-0005c5-Nw
 for barebox@lists.infradead.org; Wed, 03 Apr 2013 09:09:40 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1UNHpE-0000Yf-Mg
 for barebox@lists.infradead.org; Wed, 03 Apr 2013 09:09:40 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  3 Apr 2013 09:09:36 +0200
Message-Id: <1364972980-32527-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] i.MX53 lowlevel work
To: barebox@lists.infradead.org

These are some early setup fixes for i.MX53. First PLL3 was initialized
to 432MHz instead of what the code claims (and what U-Boot does) to 216MHz.
We now really initialize it to 216MHz.
Second the imx53_init_lowlevel code was not really save for calling from
early code due to a call to clock_notifier_call_chain() inside. This fixes
this.

Sascha

----------------------------------------------------------------
Sascha Hauer (4):
      ARM: i.MX53: Fix pll216 setup
      ARM: i.MX53: split lowlevel function into early/nonearly version
      ARM: tx53: use early lowlevel function
      ARM: tqma53: call SoC lowlevel function early

 arch/arm/boards/karo-tx53/lowlevel.c  |  2 +-
 arch/arm/boards/tqma53/board.c        |  1 -
 arch/arm/boards/tqma53/lowlevel.c     |  2 ++
 arch/arm/mach-imx/imx51.c             |  2 +-
 arch/arm/mach-imx/imx53.c             | 14 +++++++++-----
 arch/arm/mach-imx/include/mach/imx5.h |  4 ++--
 6 files changed, 15 insertions(+), 10 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

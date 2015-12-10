Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a6y8M-00079Y-QA
 for barebox@lists.infradead.org; Thu, 10 Dec 2015 10:07:35 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps (TLS1.2:RSA_AES_128_CBC_SHA1:128)
 (Exim 4.80) (envelope-from <sha@pengutronix.de>) id 1a6y80-0001Ck-K6
 for barebox@lists.infradead.org; Thu, 10 Dec 2015 11:07:12 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.86)
 (envelope-from <sha@pengutronix.de>) id 1a6y8E-0002lA-OV
 for barebox@lists.infradead.org; Thu, 10 Dec 2015 11:07:26 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 10 Dec 2015 11:07:23 +0100
Message-Id: <1449742046-20906-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: Fix some gcc5 warnings
To: Barebox List <barebox@lists.infradead.org>

new compiler, new warnings. Fix a few of them.

----------------------------------------------------------------
Sascha Hauer (3):
      ubiformat: fix the subpage size hint on the error path
      linux/barebox-wrapper: Silence gcc5 warning
      ARM: Omap3: Remove useless inline

 arch/arm/mach-omap/include/mach/sys_info.h | 2 +-
 arch/arm/mach-omap/omap3_generic.c         | 2 +-
 commands/ubiformat.c                       | 5 ++---
 include/linux/barebox-wrapper.h            | 4 ++--
 4 files changed, 6 insertions(+), 7 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

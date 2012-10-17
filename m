Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TOa6X-0007up-Q1
 for barebox@lists.infradead.org; Wed, 17 Oct 2012 20:20:39 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1TOa6V-00039Q-G2
 for barebox@lists.infradead.org; Wed, 17 Oct 2012 22:20:35 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1TOa6V-0008Gh-Ez
 for barebox@lists.infradead.org; Wed, 17 Oct 2012 22:20:35 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 17 Oct 2012 22:20:31 +0200
Message-Id: <1350505234-29464-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] misc compiler warning fixes
To: barebox@lists.infradead.org

Some compiler warning fixes

----------------------------------------------------------------
Sascha Hauer (3):
      mips: remove unused variable
      sandbox: only test for sdl libs when sdl is enabled
      net gianfar: remove unused variable

 arch/mips/include/asm/mipsregs.h |    3 ---
 arch/sandbox/Makefile            |    7 +++++--
 drivers/net/gianfar.c            |    1 -
 3 files changed, 5 insertions(+), 6 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

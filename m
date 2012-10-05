Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TKB1R-0001ep-Ca
 for barebox@lists.infradead.org; Fri, 05 Oct 2012 16:45:10 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1TKB1P-0006MB-BQ
 for barebox@lists.infradead.org; Fri, 05 Oct 2012 18:45:07 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1TKB1P-0004Yh-AA
 for barebox@lists.infradead.org; Fri, 05 Oct 2012 18:45:07 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  5 Oct 2012 18:45:01 +0200
Message-Id: <1349455505-31731-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] cleanup arm startup a bit
To: barebox@lists.infradead.org

Some cleanups to the arm start files.

Sascha

----------------------------------------------------------------
Sascha Hauer (4):
      ARM: add assembly function for setting up C environment
      introduce region_overlap() function
      ARM: cleanup piggydata copy check
      ARM: simplify start.c

 arch/arm/cpu/Makefile              |    4 +--
 arch/arm/cpu/setupc.S              |   34 ++++++++++++++++++++++++
 arch/arm/cpu/start-pbl.c           |   51 +++++++++---------------------------
 arch/arm/cpu/start.c               |   41 +++++------------------------
 arch/arm/include/asm/barebox-arm.h |    2 ++
 include/common.h                   |   13 +++++++++
 6 files changed, 70 insertions(+), 75 deletions(-)
 create mode 100644 arch/arm/cpu/setupc.S


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TAyrU-0006be-MY
 for barebox@lists.infradead.org; Mon, 10 Sep 2012 07:56:53 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1TAyrS-0003YH-Rt
 for barebox@lists.infradead.org; Mon, 10 Sep 2012 09:56:50 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1TAyrS-00018K-Ql
 for barebox@lists.infradead.org; Mon, 10 Sep 2012 09:56:50 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 10 Sep 2012 09:56:46 +0200
Message-Id: <1347263809-2620-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH v2] ARM lowlevel
To: barebox@lists.infradead.org

Changes since v1:

- Make runtime offset function work in thumb2 mode
- Remove accidently prototype changing of board_init_lowlevel_return()

----------------------------------------------------------------
Sascha Hauer (3):
      ARM lowlevel: Update function documentation
      ARM: Add assembler function to get runtime offset
      ARM lowlevel: Use get_runtime_offset

 arch/arm/cpu/start-pbl.c           |   15 ++++++---------
 arch/arm/cpu/start-reset.c         |    3 +++
 arch/arm/cpu/start.c               |   17 +++++++----------
 arch/arm/include/asm/barebox-arm.h |    2 +-
 arch/arm/lib/Makefile              |    2 ++
 arch/arm/lib/barebox.lds.S         |    2 --
 arch/arm/lib/runtime-offset.S      |   17 +++++++++++++++++
 arch/arm/pbl/zbarebox.lds.S        |    2 --
 8 files changed, 36 insertions(+), 24 deletions(-)
 create mode 100644 arch/arm/lib/runtime-offset.S

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

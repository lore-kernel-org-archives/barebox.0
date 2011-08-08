Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QqJbr-0001Es-4j
	for barebox@lists.infradead.org; Mon, 08 Aug 2011 06:46:48 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.72)
	(envelope-from <sha@pengutronix.de>) id 1QqJbp-0000r4-B2
	for barebox@lists.infradead.org; Mon, 08 Aug 2011 08:46:45 +0200
Received: from sha by octopus.hi.pengutronix.de with local (Exim 4.76)
	(envelope-from <sha@pengutronix.de>) id 1QqJbp-0003wz-8y
	for barebox@lists.infradead.org; Mon, 08 Aug 2011 08:46:45 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  8 Aug 2011 08:46:35 +0200
Message-Id: <1312786003-14734-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: ARM: use high vectors if possible
To: barebox@lists.infradead.org

Created this series to get high vector support. Using high vectors
at 0xffff0000 allow us to map in a faulting page at 0x0 with which
we can catch NULL pointer dereferences. The other patches are only
some cleanups around exceptions which I came along the way.

Sascha

Sascha Hauer (8):
      ARM: add missing volatile in get_cr()
      ARM mmu: fix arm_create_pte
      ARM mmu: use high vectors if possible
      ARM: remove unused exception
      ARM: exceptions: remove unnecessary function declarations
      ARM: remove unused irq enable/disable functions
      ARM: fix comments in interrupts.c
      ARM: some cleanup in interrupts.c

 arch/arm/cpu/exceptions.S     |    5 --
 arch/arm/cpu/interrupts.c     |  105 ++++++++++-------------------------------
 arch/arm/cpu/mmu.c            |   39 ++++++++++++---
 arch/arm/cpu/start.c          |    2 +-
 arch/arm/include/asm/system.h |    2 +-
 5 files changed, 60 insertions(+), 93 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

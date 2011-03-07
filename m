Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Pwek5-0003ko-GT
	for barebox@lists.infradead.org; Mon, 07 Mar 2011 18:01:14 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.72)
	(envelope-from <sha@pengutronix.de>) id 1Pwek2-0003BG-85
	for barebox@lists.infradead.org; Mon, 07 Mar 2011 19:01:10 +0100
Received: from sha by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <sha@pengutronix.de>) id 1Pwek2-0008Ax-43
	for barebox@lists.infradead.org; Mon, 07 Mar 2011 19:01:10 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  7 Mar 2011 19:01:05 +0100
Message-Id: <1299520868-30775-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM mmu fixes
To: barebox@lists.infradead.org

Hi,

Here are some ARM mmu fixes. Patch 1/3 fixes a brown paper bag bug and
is an urgent fix for all armv7 users using the mmu. We still have this
lzo issue in the latest release requiring a stable release, this patch
will be part of it also.

Sascha Hauer (3):
      ARM v7: Fix broken mmu initialization
      ARM v7: Fix typos in cache-armv7.S
      ARM: use memalign to allocate page table

 arch/arm/cpu/cache-armv7.S |    5 ++---
 arch/arm/cpu/mmu.c         |    3 +--
 2 files changed, 3 insertions(+), 5 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

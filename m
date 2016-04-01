Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1alxpe-0005IN-Ga
 for barebox@lists.infradead.org; Fri, 01 Apr 2016 12:05:45 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps (TLS1.2:RSA_AES_128_CBC_SHA1:128)
 (Exim 4.80) (envelope-from <sha@pengutronix.de>) id 1alxpI-0005Jq-RO
 for barebox@lists.infradead.org; Fri, 01 Apr 2016 14:05:20 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.86_2)
 (envelope-from <sha@pengutronix.de>) id 1alxpI-0000wt-It
 for barebox@lists.infradead.org; Fri, 01 Apr 2016 14:05:20 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  1 Apr 2016 14:05:15 +0200
Message-Id: <1459512319-32073-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM: Fix memory at end of address space
To: Barebox List <barebox@lists.infradead.org>

When the registered SDRAM reaches the end of the address space the
vector table is not properly initialized. This series fixes this.

Sascha

----------------------------------------------------------------
Sascha Hauer (4):
      ARM: pbl-multi: Fix SDRAM at end of address space
      ARM: start: Fix wrong format specifier
      ARM: Do not use last 64KiB of address space for barebox
      ARM: Rework vector table setup

 arch/arm/cpu/entry.c               |   3 +-
 arch/arm/cpu/mmu.c                 | 164 ++++++++++++++++++++++++++++---------
 arch/arm/cpu/start.c               |   2 +-
 arch/arm/cpu/uncompress.c          |   2 +-
 arch/arm/include/asm/barebox-arm.h |   2 +-
 arch/arm/lib/barebox.lds.S         |   1 +
 6 files changed, 133 insertions(+), 41 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YR2p8-0001Bi-75
 for barebox@lists.infradead.org; Thu, 26 Feb 2015 18:06:11 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1YR2ol-0005ek-PY
 for barebox@lists.infradead.org; Thu, 26 Feb 2015 19:05:47 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.84)
 (envelope-from <sha@pengutronix.de>) id 1YR2ol-0002L3-OQ
 for barebox@lists.infradead.org; Thu, 26 Feb 2015 19:05:47 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 26 Feb 2015 19:05:43 +0100
Message-Id: <1424973945-8008-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: Handle data aborts gracefully
To: Barebox List <barebox@lists.infradead.org>

With this series the md command no longer aborts on inaccessible memory
but instead prints a nice 'XXXXXXXX' for this area. Based on original work
by Jan. I changed it to be compilable on !ARM. It happened that the i.MX6
PCIe controller needs exactly this support, so I continued working on this
patch.

Sascha

----------------------------------------------------------------
Jan Luebbe (1):
      ARM/mem: handle data aborts gracefully for md

Sascha Hauer (1):
      ARM: Allow to mask data aborts

 arch/arm/cpu/exceptions.S      | 22 ++++++++++++++++++++++
 arch/arm/cpu/interrupts.c      | 17 +++++++++++++++++
 arch/arm/include/asm/barebox.h |  4 ++++
 common/memory_display.c        | 34 +++++++++++++++++++++++++++++-----
 include/abort.h                | 37 +++++++++++++++++++++++++++++++++++++
 5 files changed, 109 insertions(+), 5 deletions(-)
 create mode 100644 include/abort.h

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

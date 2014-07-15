Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X737E-0006s2-Le
 for barebox@lists.infradead.org; Tue, 15 Jul 2014 13:49:57 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:a236:9fff:fe00:814])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1X736s-0000y2-Ig
 for barebox@lists.infradead.org; Tue, 15 Jul 2014 15:49:34 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim
 4.82_1-5b7a7c0-XX) (envelope-from <sha@pengutronix.de>)
 id 1X736s-0006h1-Hi
 for barebox@lists.infradead.org; Tue, 15 Jul 2014 15:49:34 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 15 Jul 2014 15:49:28 +0200
Message-Id: <1405432173-22448-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: Update/include some functions from the Kernel
To: barebox@lists.infradead.org

This adds/updates some lowlevel bitmap/bitop stuff from the
Kernel. Needed by upcoming USB updates.

Sascha

----------------------------------------------------------------
Sascha Hauer (5):
      include: Add DECLARE_BITMAP from kernel
      include: Add round_up/round_down macros from kernel
      include: Add foreign endianess adding functions from kernel
      lib: Add bitmap functions from kernel
      include: update bitop functions from kernel

 include/asm-generic/bitops/hweight.h |  15 +
 include/linux/bitmap.h               | 285 ++++++++++++
 include/linux/bitops.h               | 214 ++++++++-
 include/linux/byteorder/generic.h    |  29 ++
 include/linux/kernel.h               |  13 +
 include/linux/types.h                |   3 +
 lib/Makefile                         |   1 +
 lib/bitmap.c                         | 839 +++++++++++++++++++++++++++++++++++
 8 files changed, 1398 insertions(+), 1 deletion(-)
 create mode 100644 include/linux/bitmap.h
 create mode 100644 lib/bitmap.c

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

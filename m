Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SFgZz-0002r9-3L
 for barebox@lists.infradead.org; Thu, 05 Apr 2012 06:54:02 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1SFgZr-0001bO-7Y
 for barebox@lists.infradead.org; Thu, 05 Apr 2012 08:53:51 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.77)
 (envelope-from <sha@pengutronix.de>) id 1SFgZr-0003SU-6M
 for barebox@lists.infradead.org; Thu, 05 Apr 2012 08:53:51 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  5 Apr 2012 08:53:44 +0200
Message-Id: <1333608829-13213-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: Some last minute fixes for master branch
To: barebox@lists.infradead.org

The following patches fix several compiler warnings which disturb my
sense of beauty when compiling all defconfigs before a release. Also
a missing _text is added to the x86 linker script to make it compile
again.

Sascha

----------------------------------------------------------------
Sascha Hauer (5):
      string: remove unused bcopy function
      mtd: fix compiler warning
      USB gadget pxa: Fix compiler warning
      mips: Fix compiler warnings
      x86 linker script: Add missing _text

 arch/mips/lib/libgcc.h          |    4 ++++
 arch/x86/lib/barebox.lds.S      |    1 +
 drivers/mtd/core.c              |    2 ++
 drivers/usb/gadget/pxa27x_udc.c |    2 +-
 lib/string.c                    |   24 ------------------------
 5 files changed, 8 insertions(+), 25 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

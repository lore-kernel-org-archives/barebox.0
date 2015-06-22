Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z6xII-0002zQ-H4
 for barebox@lists.infradead.org; Mon, 22 Jun 2015 08:41:31 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps (TLS1.2:RSA_AES_128_CBC_SHA1:128)
 (Exim 4.80) (envelope-from <sha@pengutronix.de>) id 1Z6xHv-00034m-GK
 for barebox@lists.infradead.org; Mon, 22 Jun 2015 10:41:07 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.85)
 (envelope-from <sha@pengutronix.de>) id 1Z6xHv-0006X0-6K
 for barebox@lists.infradead.org; Mon, 22 Jun 2015 10:41:07 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 22 Jun 2015 10:40:55 +0200
Message-Id: <1434962466-23590-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: cfi-flash cleanups
To: Barebox List <barebox@lists.infradead.org>

CFI NOR flash still doesn't seem to be dead. This series has
several cleanups made while searching for a real bug which
is fixed with "mtd: cfi-flash: use unaligned accessor functions".

Sascha

----------------------------------------------------------------
Sascha Hauer (11):
      mtd: cfi-flash: We can print longlongs
      mtd: cfi-flash: save indention level
      mtd: cfi-flash: statically initialize instead of memset
      mtd: cfi-flash: replace ifdef with IS_ENABLED
      mtd: cfi-flash: remove unnecessary ifdefs
      mtd: cfi-flash: make flash_detect_width more readable
      mtd: cfi-flash: return 0 for success
      mtd: cfi-flash: turn some messages into vdbg
      mtd: cfi-flash: use unaligned accessor functions
      mtd: cfi-flash: Coding style cleanup
      mtd: cfi-flash: remove dead code

 drivers/mtd/nor/cfi_flash.c       | 671 ++++++++++++++++++--------------------
 drivers/mtd/nor/cfi_flash.h       | 138 ++++----
 drivers/mtd/nor/cfi_flash_amd.c   |  41 +--
 drivers/mtd/nor/cfi_flash_intel.c | 107 +++---
 4 files changed, 453 insertions(+), 504 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

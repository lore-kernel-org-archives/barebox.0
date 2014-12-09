Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XyPMO-0003f3-UF
 for barebox@lists.infradead.org; Tue, 09 Dec 2014 18:18:09 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1XyPM2-00006h-DB
 for barebox@lists.infradead.org; Tue, 09 Dec 2014 19:17:46 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.84)
 (envelope-from <sha@pengutronix.de>) id 1XyPM2-0000gu-Bj
 for barebox@lists.infradead.org; Tue, 09 Dec 2014 19:17:46 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  9 Dec 2014 19:17:35 +0100
Message-Id: <1418149064-26448-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: PBL console support
To: barebox@lists.infradead.org

This patchset adds simple console support for the PBL. Up to
now only simple functions like putc_ll, puthex_ll or puts_ll
could be used to print messages in the PBL. This series merely
moves everything away from lib/vsprintf.c which is not needed
for the PBL, enables lib/vsprintf.c and implements printf function
in the PBL which uses puts_ll as backend. Due to the use of
puts_ll the PBL console is still mainly for debugging.
Also some debug messages are added to the early ARM startup
functions to make it a bit easier to follow what's going on
there.

Sascha

----------------------------------------------------------------
Sascha Hauer (9):
      PBL: Add strnlen, needed for printf support
      printf: move panic() to common/misc.c
      printf: move simple_strto*() functions to separate file
      printf: use local isdigit/isalnum implementation
      Add PBL console support
      malloc: Add a function to detect if malloc pool is already initialized
      console: Make sure xzalloc is only used when it's available
      ARM: start.c: Add some debugging messages
      ARM: uncompress.c: Add some debugging messages

 arch/arm/cpu/start.c      |  11 +++++
 arch/arm/cpu/uncompress.c |   9 ++++
 common/Kconfig            |  11 +++++
 common/console_common.c   |   2 +-
 common/memory.c           |   8 ++++
 common/misc.c             |  22 ++++++++++
 include/malloc.h          |   2 +
 include/printk.h          |  15 ++++---
 include/stdio.h           |  20 +++++----
 lib/Makefile              |   3 ++
 lib/strtox.c              |  68 +++++++++++++++++++++++++++++
 lib/vsprintf.c            | 107 ++++++++--------------------------------------
 pbl/Makefile              |   1 +
 pbl/console.c             |  32 ++++++++++++++
 pbl/string.c              |  14 ++++++
 15 files changed, 220 insertions(+), 105 deletions(-)
 create mode 100644 lib/strtox.c
 create mode 100644 pbl/console.c

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

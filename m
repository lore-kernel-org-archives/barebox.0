Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RqPLz-0000dG-CD
 for barebox@lists.infradead.org; Thu, 26 Jan 2012 13:27:05 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1RqPLq-0005kf-P6
 for barebox@lists.infradead.org; Thu, 26 Jan 2012 14:26:54 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.77)
 (envelope-from <sha@pengutronix.de>) id 1RqPLq-0006Pn-Dw
 for barebox@lists.infradead.org; Thu, 26 Jan 2012 14:26:54 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 26 Jan 2012 14:26:46 +0100
Message-Id: <1327584413-23055-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: some debug patches
To: barebox@lists.infradead.org

Being forced to do debugging this morning I created some patches
to make this easier. initcall tracing now works with regular
debug() statements and not with LL debug functions anymore which
are not implemented for most architectures. Also, we do no
longer hang when an initcall fails which increases the chance
that the user gets some clue what went wrong.

Sascha Hauer (7):
      console: remove unused function prototypes
      kfifo: change kfifo_init to work with a preallocated fifo
      console: make it work without malloc
      ARM: panic on div 0
      initcalls: do not hang if an initcall fails
      startup: use regular debug statements in initcall debugging
      Add dump_stack function

 arch/arm/cpu/interrupts.c      |    5 ++++
 arch/arm/include/asm/barebox.h |   39 ++-----------------------------
 arch/arm/lib/div0.c            |    2 +-
 common/console.c               |   49 ++++++++++++++++++++++++++--------------
 common/startup.c               |   10 ++-----
 include/common.h               |    9 +++++++
 include/console.h              |   13 ----------
 include/kfifo.h                |    2 +-
 lib/kfifo.c                    |   23 +++++++-----------
 lib/vsprintf.c                 |    2 +
 10 files changed, 65 insertions(+), 89 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

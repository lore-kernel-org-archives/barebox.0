Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 8.mo2.mail-out.ovh.net ([188.165.52.147]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TjBp3-0007eh-4e
 for barebox@lists.infradead.org; Thu, 13 Dec 2012 16:39:46 +0000
Received: from mail426.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 264A1DC0CF8
 for <barebox@lists.infradead.org>; Thu, 13 Dec 2012 17:48:13 +0100 (CET)
Date: Thu, 13 Dec 2012 17:37:58 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121213163758.GB26483@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 0/9] introduction of dmesg support
To: barebox@lists.infradead.org

HI,

	we currently have 2 fifo at comsole level one for input one for output
	we fill the output fifo before any console is registered and then
	empty it

	Now we introduce a new mecanism as in the kernel dmesg

	we will always fill the output kfifo with drivers output

	as in barebox we have 2 world

	device/drivers and applicaiotn (commands)

	so for now on drivers will have to use pr_xxx and dev_xxx and
	application will use printf

	dmesg will print the kfifo at any time

	we will extend this later with more control of what the drivers output
	on the console or just in the fifo

	This new eature is optionnal if dmes is disable we continue as before

The following changes since commit e7509bfbabc46e15e66193efac64440b48e5e88f:

  Merge branch 'for-next/tftp' (2012-12-07 16:43:24 +0100)

are available in the git repository at:


  git://git.jcrosoft.org/barebox.git delivery/dmesg

for you to fetch changes up to 33c060981c15f453d88752eab8c9743c18a78247:

  dev_printf: switch to pr_info (2012-12-12 02:28:41 +0800)

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (9):
      kfifo: introduce kfifo_dump_str to dump the fifo
      console: switch to kfifo_dump_str
      intoduce dmesg to print the barebox output ring buffer
      introduce printk support
      startup: switch to pr_xxx
      console: allow to specify ouput kfifo size via CONSOLE_KFIFO_OUTPUT_SIZE
      at91: clock switch to pr_info
      meminfo: switch to pr_xxx
      dev_printf: switch to pr_info

 arch/arm/mach-at91/clock.c      |    2 +-
 commands/Kconfig                |    6 ++++++
 common/Kconfig                  |    7 +++++++
 common/console.c                |   80 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-----
 common/meminfo.c                |    8 ++++----
 common/startup.c                |   10 +++++-----
 drivers/base/driver.c           |    6 +++---
 include/common.h                |   28 ++++++++++++++++++----------
 include/kfifo.h                 |    2 ++
 include/linux/barebox-wrapper.h |    2 --
 lib/kfifo.c                     |   21 +++++++++++++++++++++
 11 files changed, 142 insertions(+), 30 deletions(-)

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

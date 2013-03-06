Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo2.mail-out.ovh.net ([87.98.181.248]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UD27y-0003uq-45
 for barebox@lists.infradead.org; Wed, 06 Mar 2013 00:22:39 +0000
Received: from mail180.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 20FAADC150D
 for <barebox@lists.infradead.org>; Wed,  6 Mar 2013 01:33:37 +0100 (CET)
Date: Wed, 6 Mar 2013 01:21:38 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130306002138.GQ23022@game.jcrosoft.org>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 0/6 v2] introduction of dmesg support
To: barebox@lists.infradead.org

HI,

	we currently have 2 fifo at comsole level one for input one for output
	we fill the output fifo before any console is registered and then
	empty it

	Now we introduce a new mecanism as in the kernel dmesg

	we will always fill the dmesg kfifo with drivers output

	as in barebox we have 2 world

	device/drivers and applicaiotn (commands)

	the verbositty of the printk can be selected at runtime and
	compilation

	so for now on drivers will have to use pr_xxx and dev_xxx and
	application will use printf

	dmesg will print the kfifo at any time

	we will extend this later with more control of what the drivers output
	on the console or just in the fifo

	This new feature is optionnal if dmes is disable we continue as before

The following changes since commit 94e71b843f6456abacc2fe76a5c375a461fabdf7:

  libubi: Use global mtd_all_ff function (2013-03-04 10:54:46 +0100)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git delivery/dmesg

for you to fetch changes up to f0850bc66930ef3ef03c530632258794cd24bb7b:

  meminfo: switch to pr_xxx (2013-03-04 11:11:00 +0800)

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (6):
      kfifo: introduce kfifo_dump_str to dump the fifo
      console: switch to kfifo_dump_str
      intoduce dmesg to print the barebox printk to dmesg ring buffer
      startup: switch to pr_xxx
      at91: clock switch to pr_info
      meminfo: switch to pr_xxx

 arch/arm/mach-at91/clock.c      |    2 +-
 commands/Kconfig                |   19 +++++++++++++++++++
 common/console.c                |  124 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++---
 common/meminfo.c                |    6 +++---
 common/startup.c                |    4 ++--
 drivers/base/driver.c           |   11 +++++++----
 include/kfifo.h                 |    2 ++
 include/linux/barebox-wrapper.h |   11 -----------
 include/printk.h                |   68 ++++++++++++++++++++++++++++++++++++++++++++++++--------------------
 lib/kfifo.c                     |   21 +++++++++++++++++++++
 10 files changed, 224 insertions(+), 44 deletions(-)

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

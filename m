Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 18.mo3.mail-out.ovh.net ([87.98.172.162]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UDipU-0002uC-Md
 for barebox@lists.infradead.org; Thu, 07 Mar 2013 21:58:26 +0000
Received: from mail412.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id F0C1FFF8C6A
 for <barebox@lists.infradead.org>; Thu,  7 Mar 2013 23:14:04 +0100 (CET)
Date: Thu, 7 Mar 2013 22:54:02 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130307215402.GA32347@game.jcrosoft.org>
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
Subject: [PATCH 00/11 v6] introduction of dmesg support
To: barebox@lists.infradead.org

HI,

	v6: more switch
	    use kfifo_put instead of kfifo_putc
	    as we already now the size to copy

	v5: rebase on master
	   add missing kern_levels.h

	v4: remove a debug info

	v3: add more swtich

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

The following changes since commit 092bfd5eb55d1b2d7ed098aa9723a2fa63b86192:

  fix another brown paper bag bug introduced with compile time loglevel (2013-03-06 23:53:04 +0100)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git delivery/dmesg

for you to fetch changes up to 1ca2fe80fdcb5c73ffbb95246666060f45c0bfe8:

  ext4: switch debug and printf to dev_xxx (2013-03-08 05:48:48 +0800)

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (11):
      kfifo: introduce kfifo_dump_str to dump the fifo
      console: switch to kfifo_dump_str
      intoduce dmesg to print the barebox printk to dmesg ring buffer
      startup: switch to pr_xxx
      at91: clock switch to pr_info
      meminfo: switch to pr_xxx
      net/console: switch to pr_xxx
      startup: switch to pr_xxx
      barebox_banner: switch to pr_info
      net/phy: convert to pr_info
      ext4: switch debug and printf to dev_xxx

 arch/arm/mach-at91/clock.c      |    2 +-
 commands/Kconfig                |   19 +++++++++++++++++++
 common/console.c                |  116 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++---
 common/meminfo.c                |    6 +++---
 common/startup.c                |   12 ++++++------
 common/version.c                |    4 ++--
 drivers/base/driver.c           |   16 ++++++++++------
 drivers/net/phy/phy.c           |    2 +-
 fs/ext4/ext4_common.c           |   12 ++++++------
 include/kfifo.h                 |    2 ++
 include/linux/barebox-wrapper.h |   11 -----------
 include/linux/kern_levels.h     |   25 +++++++++++++++++++++++++
 include/printk.h                |   59 ++++++++++++++++++++++++++++++++++++++++++-----------------
 lib/kfifo.c                     |   21 +++++++++++++++++++++
 net/netconsole.c                |    4 ++--
 15 files changed, 253 insertions(+), 58 deletions(-)
 create mode 100644 include/linux/kern_levels.h

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

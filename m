Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 19.mo4.mail-out.ovh.net ([87.98.179.66]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UD9rU-0006Mc-IX
 for barebox@lists.infradead.org; Wed, 06 Mar 2013 08:38:09 +0000
Received: from mail413.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id BD163104E358
 for <barebox@lists.infradead.org>; Wed,  6 Mar 2013 09:49:10 +0100 (CET)
Date: Wed, 6 Mar 2013 09:33:47 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130306083347.GB4401@game.jcrosoft.org>
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
Subject: [PATCH 0/9 v3] introduction of dmesg support
To: barebox@lists.infradead.org

HI,

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

The following changes since commit 94e71b843f6456abacc2fe76a5c375a461fabdf7:

  libubi: Use global mtd_all_ff function (2013-03-04 10:54:46 +0100)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git delivery/dmesg

for you to fetch changes up to 564196ff6ca3e17652d4d78e0c7523771221919e:

  barebox_banner: switch to pr_info (2013-03-04 19:28:05 +0800)

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (9):
      kfifo: introduce kfifo_dump_str to dump the fifo
      console: switch to kfifo_dump_str
      intoduce dmesg to print the barebox printk to dmesg ring buffer
      startup: switch to pr_xxx
      at91: clock switch to pr_info
      meminfo: switch to pr_xxx
      net/console: switch to pr_xxx
      startup: switch to pr_xxx
      barebox_banner: switch to pr_info

 arch/arm/mach-at91/clock.c      |    2 +-
 commands/Kconfig                |   19 +++++++++++++++++++
 common/console.c                |  127 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++---
 common/meminfo.c                |    6 +++---
 common/startup.c                |   12 ++++++------
 common/version.c                |    4 ++--
 drivers/base/driver.c           |   18 ++++++++++++------
 include/kfifo.h                 |    2 ++
 include/linux/barebox-wrapper.h |   11 -----------
 include/printk.h                |   68 ++++++++++++++++++++++++++++++++++++++++++++++++--------------------
 lib/kfifo.c                     |   21 +++++++++++++++++++++
 net/netconsole.c                |    4 ++--
 12 files changed, 240 insertions(+), 54 deletions(-)

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

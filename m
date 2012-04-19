Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 9.mo3.mail-out.ovh.net ([87.98.184.141]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SKkN4-0003It-JG
 for barebox@lists.infradead.org; Thu, 19 Apr 2012 05:57:38 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 2B250FF8B95
 for <barebox@lists.infradead.org>; Thu, 19 Apr 2012 07:58:55 +0200 (CEST)
Date: Thu, 19 Apr 2012 07:38:46 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120419053846.GA20601@game.jcrosoft.org>
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
Subject: [PATCH 00/11 v2] improve complete support
To: barebox@lists.infradead.org

Hi,

	the following patch serie improve the complete support
	by adding a complete framework to aalow commands complete support

	the add also car complete support for eval and setting and executable
	file support

	this also include an update of the stringlist API to support asprintf
	API

The following changes since commit a7ddbc40865a8ffe716aca686763780febad575c:

  Merge branch 'binfmt' of git://git.jcrosoft.org/barebox into next (2012-04-18 20:42:17 +0200)

are available in the git repository at:


  git://git.jcrosoft.org/barebox.git complete

for you to fetch changes up to fcbc878be12d1c8d2bf839255b1bb7bd465adb96:

  complete: add executable file support (2012-04-19 13:49:42 +0800)

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (9):
      complete: add var and device param complete support
      complete: add generic command complete framework
      complete: add device name complete support for devinfo
      complete: add help complete support
      complete: add empty complete support
      complete: add eth interface complete support
      complete: add go and sleep support
      complete: add delpart complete support
      complete: add executable file support

Sascha Hauer (2):
      stringlist: use seperately allocated string
      stringlist: implement string_list_add_asprintf

 arch/arm/cpu/cpuinfo.c        |    2 +
 arch/arm/mach-imx/speed.c     |    2 +
 arch/arm/mach-mxs/imx.c       |    2 +
 commands/clear.c              |    2 +
 commands/false.c              |    2 +
 commands/go.c                 |    2 +
 commands/help.c               |    2 +
 commands/login.c              |    2 +
 commands/lsmod.c              |    2 +
 commands/meminfo.c            |    2 +
 commands/net.c                |    2 +
 commands/partition.c          |    2 +
 commands/passwd.c             |    2 +
 commands/pwd.c                |    2 +
 commands/reginfo.c            |    2 +
 commands/reset.c              |    2 +
 commands/sleep.c              |    2 +
 commands/true.c               |    2 +
 commands/usb.c                |    2 +
 commands/version.c            |    2 +
 common/complete.c             |  201 +++++++++++++++++++++++++++++++++++------
 drivers/base/driver.c         |    2 +
 drivers/usb/gadget/u_serial.c |    2 +
 fs/devfs-core.c               |   19 ++++
 include/command.h             |    8 ++
 include/complete.h            |    9 ++
 include/stringlist.h          |    7 +-
 lib/stringlist.c              |   32 ++++++-
 net/dhcp.c                    |    2 +
 net/eth.c                     |   21 +++++
 30 files changed, 309 insertions(+), 34 deletions(-)

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

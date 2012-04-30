Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 2.mo4.mail-out.ovh.net ([46.105.72.36]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SOpxx-0003yl-7V
 for barebox@lists.infradead.org; Mon, 30 Apr 2012 12:44:34 +0000
Received: from mail97.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 0D5291050A7F
 for <barebox@lists.infradead.org>; Mon, 30 Apr 2012 14:45:50 +0200 (CEST)
Date: Mon, 30 Apr 2012 14:23:34 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120430122334.GE2992@game.jcrosoft.org>
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
Subject: [PATCH 00/11 v3] improve complete support
To: barebox@lists.infradead.org

Hi,

	the following patch serie improve the complete support
	by adding a complete framework to aalow commands complete support

	the add also car complete support for eval and setting and executable
	file support

	this also include an update of the stringlist API to support asprintf
	API

v3:

	add macro for complete state

The following changes since commit 6b489256ee1358973d536e723c77c2483e6b9f5b:

  Makefile: add barebox.srec to 'clean' (2012-04-30 14:01:34 +0200)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git tags/complete_update_support

for you to fetch changes up to 9492976bc88a9fe4633202681fcdc24ce1dab636:

  complete: add executable file support (2012-04-30 20:37:40 +0800)

----------------------------------------------------------------
improve complete support

The following patch serie improve the complete support
by adding a complete framework to aalow commands complete support.

The add also car complete support for eval and setting and executable
file support

This also include an update of the stringlist API to support asprintf
API

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
 include/complete.h            |   12 +++
 include/stringlist.h          |    7 +-
 lib/stringlist.c              |   32 ++++++-
 net/dhcp.c                    |    2 +
 net/eth.c                     |   21 +++++
 30 files changed, 312 insertions(+), 34 deletions(-)

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

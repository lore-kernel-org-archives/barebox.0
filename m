Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 10.97.mail-out.ovh.net ([178.33.249.221]
	helo=97.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QUglz-00005e-N8
	for barebox@lists.infradead.org; Thu, 09 Jun 2011 15:03:52 +0000
Received: from mail185.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by 97.mail-out.ovh.net (Postfix) with SMTP id A61384E215C
	for <barebox@lists.infradead.org>;
	Thu,  9 Jun 2011 17:04:22 +0200 (CEST)
Date: Thu, 9 Jun 2011 16:50:28 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20110609145028.GH17584@game.jcrosoft.org>
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
Subject: pull request complete support
To: barebox@lists.infradead.org

Hi,

	This patch series add the support of the complete for :
	- var and device param (set and get)
	- generic command complete framework
	- devinfo
	- help
	- empty command complete
	- eth interface

	this will also include the move driver and bus code to drivers/base
	patch as this series depend on it

	Please pull
The following changes since commit 6e27bfb15e4e2446753fe9affcc3128772205cec:

  Merge branch 'next' (2011-06-06 11:29:45 +0200)

are available in the git repository at:

  git://uboot.jcrosoft.org/barebox.git complete

Jean-Christophe PLAGNIOL-VILLARD (7):
      move driver and bus code to drivers/base
      complete: add var and device param complete support
      complete: add generic command complete framework
      complete: add device name complete support for devinfo
      complete: add help complete support
      complete: add empty complete support
      complete: add eth interface complete support

 arch/arm/cpu/cpuinfo.c                   |    2 +
 arch/arm/mach-imx/speed.c                |    2 +
 arch/arm/mach-mxs/imx.c                  |    2 +
 commands/clear.c                         |    2 +
 commands/false.c                         |    2 +
 commands/help.c                          |    2 +
 commands/login.c                         |    2 +
 commands/lsmod.c                         |    2 +
 commands/meminfo.c                       |    2 +
 commands/net.c                           |    2 +
 commands/passwd.c                        |    2 +
 commands/pwd.c                           |    2 +
 commands/reginfo.c                       |    2 +
 commands/reset.c                         |    2 +
 commands/true.c                          |    2 +
 commands/usb.c                           |    2 +
 commands/version.c                       |    2 +
 common/complete.c                        |  183 ++++++++++++++++++++++++++++--
 drivers/Makefile                         |    1 +
 drivers/base/Makefile                    |    2 +
 {lib => drivers/base}/driver.c           |    2 +
 lib/bus.c => drivers/base/platform_bus.c |    0
 drivers/usb/gadget/u_serial.c            |    2 +
 include/command.h                        |    8 ++
 include/complete.h                       |    7 +
 lib/Makefile                             |    2 -
 net/dhcp.c                               |    2 +
 net/eth.c                                |   23 ++++
 28 files changed, 253 insertions(+), 13 deletions(-)
 create mode 100644 drivers/base/Makefile
 rename {lib => drivers/base}/driver.c (99%)
 rename lib/bus.c => drivers/base/platform_bus.c (100%)

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

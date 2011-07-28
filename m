Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QmNTj-0000qL-E6
	for barebox@lists.infradead.org; Thu, 28 Jul 2011 10:06:08 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.72)
	(envelope-from <sha@pengutronix.de>) id 1QmNTe-0002jd-3d
	for barebox@lists.infradead.org; Thu, 28 Jul 2011 12:06:02 +0200
Received: from sha by octopus.hi.pengutronix.de with local (Exim 4.76)
	(envelope-from <sha@pengutronix.de>) id 1QmNTe-0005zS-2G
	for barebox@lists.infradead.org; Thu, 28 Jul 2011 12:06:02 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 28 Jul 2011 12:05:56 +0200
Message-Id: <1311847560-22946-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: MAC address setting
To: barebox@lists.infradead.org

The following series allows boards to associate MAC addresses with
ethernet devices. This makes it possible for boards to correctly
assign a MAC address without fiddling with each network driver.

The series also switches the current i.MX IIM based MAC address
setting to this new functionality.

Sascha Hauer (4):
      ARM i.MX IIM: Add a iim read function
      net: Add a possibility for boards to give network devices a MAC address
      ARM i.MX: rework IIM MAC address setting
      ARM i.MX51 babbage: set fec ethernet address from IIM

 arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c |    2 +
 arch/arm/boards/freescale-mx25-3-stack/3stack.c   |    2 +
 arch/arm/boards/freescale-mx51-pdk/board.c        |    5 ++-
 arch/arm/mach-imx/iim.c                           |   29 ++++++----
 arch/arm/mach-imx/include/mach/iim.h              |   34 +++++++++++-
 drivers/net/fec_imx.c                             |    4 --
 include/net.h                                     |    6 ++
 net/eth.c                                         |   59 ++++++++++++++++++++-
 8 files changed, 122 insertions(+), 19 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

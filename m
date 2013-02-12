Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo2.mail-out.ovh.net ([87.98.165.38]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U5FUA-00034E-PU
 for barebox@lists.infradead.org; Tue, 12 Feb 2013 13:01:24 +0000
Received: from mail416.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 7D20FDC062C
 for <barebox@lists.infradead.org>; Tue, 12 Feb 2013 14:11:43 +0100 (CET)
Date: Tue, 12 Feb 2013 14:00:12 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130212130012.GD19322@game.jcrosoft.org>
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
Subject: [PATCH 0/3] vexpress: detect the mapping based on the amba devices
To: barebox@lists.infradead.org

HI,

	so we can run on a9 on the non legacy hw

The following changes since commit 2d91386102612773074832d55e2ef11702fbb432:

  arm: add vexpress board support (2013-02-12 05:53:04 +0800)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git delivery/vexpress

for you to fetch changes up to 92b8828ad6b2b01248bd84888b8bbf920df85c31:

  vexpress: detect the board periph mapping and detecting the sp804 mapping (2013-02-12 05:53:04 +0800)

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (3):
      amba: introduce amba_device_get_pid/cid
      sp804: introduce amba_is_arm_sp804 to detect if the sp804 is present at the address
      vexpress: detect the board periph mapping and detecting the sp804 mapping

 arch/arm/boards/vexpress/init.c               |   35 +++++++++++++++++++----------------
 arch/arm/boards/vexpress/lowlevel.c           |    4 +++-
 arch/arm/mach-vexpress/devices.c              |    4 ++--
 arch/arm/mach-vexpress/include/mach/devices.h |    6 +++---
 arch/arm/mach-vexpress/v2m.c                  |    2 +-
 drivers/amba/bus.c                            |   10 +++-------
 drivers/clocksource/amba-sp804.c              |    6 +++---
 include/linux/amba/bus.h                      |   28 ++++++++++++++++++++++++++++
 include/linux/amba/sp804.h                    |   30 ++++++++++++++++++++++++++++++
 9 files changed, 92 insertions(+), 33 deletions(-)
 create mode 100644 include/linux/amba/sp804.h

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

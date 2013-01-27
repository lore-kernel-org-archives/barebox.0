Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 1.mo5.mail-out.ovh.net ([188.165.57.91]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TzVHK-0007C2-U0
 for barebox@lists.infradead.org; Sun, 27 Jan 2013 16:40:24 +0000
Received: from mail178.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id E931EFFA533
 for <barebox@lists.infradead.org>; Sun, 27 Jan 2013 17:50:19 +0100 (CET)
Date: Sun, 27 Jan 2013 17:39:03 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130127163903.GN26329@game.jcrosoft.org>
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
Subject: [PATCH 0/4] at91: sam9gx5/9g45/9n12 sd/ddrram autodetect size
To: barebox@lists.infradead.org

Hi,

The following changes since commit cd1c289b2a4949e8acb235d4847419bde784a9d6:

  Merge branch 'for-next/misc' into next (2013-01-25 19:51:11 +0100)

are available in the git repository at:


  git://git.jcrosoft.org/barebox.git delivery/at91_ddr_autodetect_size

for you to fetch changes up to 1cfd6344df05b57d5ee2103b03f9b3bafcebd0a8:

  at91: Atmel ref board sam{9x5/9n12/m109g45} EK and Ronetix pm9g45 autodetect ddr size (2013-01-23 17:27:50 +0800)

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (4):
      at91sam9x5: add autodetect sd/ddram size
      at91sam9n12: add autodetect sd/ddram size
      at91sam9g45: add autodetect sd/ddram size
      at91: Atmel ref board sam{9x5/9n12/m109g45} EK and Ronetix pm9g45 autodetect ddr size

 arch/arm/boards/at91sam9m10g45ek/init.c           |    2 +-
 arch/arm/boards/at91sam9m10ihd/init.c             |    2 +-
 arch/arm/boards/at91sam9n12ek/init.c              |    2 +-
 arch/arm/boards/at91sam9x5ek/init.c               |    2 +-
 arch/arm/boards/pm9g45/init.c                     |    2 +-
 arch/arm/mach-at91/at91sam9g45_devices.c          |    4 ++++
 arch/arm/mach-at91/at91sam9n12_devices.c          |    4 ++++
 arch/arm/mach-at91/at91sam9x5_devices.c           |    4 ++++
 arch/arm/mach-at91/include/mach/at91sam9_ddrsdr.h |   89 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 9 files changed, 106 insertions(+), 5 deletions(-)

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 13.mo5.mail-out.ovh.net ([87.98.182.191]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TGAbm-0003Um-Dy
 for barebox@lists.infradead.org; Mon, 24 Sep 2012 15:30:07 +0000
Received: from mail404.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 17595FFAE13
 for <barebox@lists.infradead.org>; Mon, 24 Sep 2012 17:35:59 +0200 (CEST)
Date: Mon, 24 Sep 2012 17:27:31 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120924152731.GF26553@game.jcrosoft.org>
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
Subject: [RFC PATCH 0/5] switch globalvar to it's own bus
To: barebox@lists.infradead.org

HI,

	The folowing patch serie switch the globalvar to it's onw bus and set
	of device. This will allow to reduce the time spend to search the
	right parameter especially when we have quite a lot's of globalvar.

	In this patch serie not all of the globalvar are converted but some fo
	them

	The one missingis the linux one

The following changes since commit 6392955f283389fa4fecb0e2d5d1837bcb83f480:

  Merge branch 'for-next/testing-menu' into next (2012-09-20 23:11:42 +0200)

are available in the git repository at:


  git://git.jcrosoft.org/barebox.git delivery/globalvar

for you to fetch changes up to b17dcadf3ca3e8ffaa2cfcff69f7a2efef563e31:

  bootm: switch globalvar to it's own device (2012-09-24 11:13:02 +0800)

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (5):
      globalvar: add it's own bus
      globalvar: allow to register multiple device
      net: switch to global device
      dhcp: switch globalvar to it's own device
      bootm: switch globalvar to it's own device

 arch/arm/boards/at91rm9200ek/env/config                 |    2 +-
 arch/arm/boards/at91sam9260ek/env/config                |    4 ++--
 arch/arm/boards/at91sam9261ek/env/config                |    4 ++--
 arch/arm/boards/at91sam9263ek/env/config                |    2 +-
 arch/arm/boards/at91sam9m10g45ek/env/config             |    2 +-
 arch/arm/boards/at91sam9x5ek/env/config                 |    2 +-
 arch/arm/boards/crystalfontz-cfa10036/env/boot/mmc-ext3 |    4 ++--
 arch/arm/boards/freescale-mx53-loco/env/config          |    2 +-
 arch/arm/boards/pcm038/env/boot/nand-ubi                |    4 ++--
 arch/arm/boards/qil-a9260/env/config                    |    2 +-
 arch/arm/boards/tny-a926x/env/config                    |    6 +++---
 arch/arm/boards/usb-a926x/env/config                    |    6 +++---
 commands/bootm.c                                        |   24 +++++++++++++++---------
 common/globalvar.c                                      |   86 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++----------------
 defaultenv-2/base/boot/initrd                           |    6 +++---
 defaultenv-2/base/boot/net                              |    4 ++--
 defaultenv-2/base/data/boot-template                    |    6 +++---
 defaultenv-2/base/network/eth0                          |    2 +-
 defaultenv/bin/boot                                     |   12 ++++++------
 defaultenv/config                                       |    2 +-
 include/globalvar.h                                     |   26 ++++++++++++++++++++++++++
 net/dhcp.c                                              |   58 +++++++++++++++++-----------------------------------------
 net/net.c                                               |   15 +++++++--------
 23 files changed, 171 insertions(+), 110 deletions(-)

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

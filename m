Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 16.mo3.mail-out.ovh.net ([188.165.56.217]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SHWkY-0000UF-NP
 for barebox@lists.infradead.org; Tue, 10 Apr 2012 08:48:32 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 5D9E4FF9021
 for <barebox@lists.infradead.org>; Tue, 10 Apr 2012 10:41:02 +0200 (CEST)
Date: Tue, 10 Apr 2012 10:22:59 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120410082259.GH29577@game.jcrosoft.org>
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
Subject: [PATCH 0/7] Calao Board oftree && MMU support
To: barebox@lists.infradead.org

HI,

	this patch serie add the support of the MMU and the DT on the Calo
	USB-A926x and TNY-A926x boards.

The following changes since commit 4da4b4df109e4ca958b5717a60de3ffb4f6900f4:

  menu: add color fancy support (2012-04-10 10:00:07 +0200)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git calao-board

for you to fetch changes up to 14c0105df4addfd9ede878a5e7e8cde89a62ede3:

  tny-a926x: enable MMU (2012-04-10 16:35:03 +0800)

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (7):
      usb-a926x: update DHCP vendor ID
      usb-a926x: add oftree support
      usb-a926x: enable MMU
      tny-a926x: update DHCP vendor ID
      tny-a926x: udpate defconfig
      tny-a926x: add oftree config support
      tny-a926x: enable MMU

 arch/arm/boards/tny-a926x/env/config        |   13 +++++++++----
 arch/arm/boards/usb-a926x/env/config        |   16 ++++++++++------
 arch/arm/configs/tny_a9260_defconfig        |    4 ++--
 arch/arm/configs/tny_a9263_defconfig        |    4 ++--
 arch/arm/configs/tny_a9g20_defconfig        |    4 ++--
 arch/arm/configs/usb_a9260_defconfig        |    7 +++++--
 arch/arm/configs/usb_a9263_128mib_defconfig |    9 ++++++---
 arch/arm/configs/usb_a9263_defconfig        |    8 ++++++--
 arch/arm/configs/usb_a9g20_128mib_defconfig |    7 +++++--
 arch/arm/configs/usb_a9g20_defconfig        |    7 +++++--
 10 files changed, 52 insertions(+), 27 deletions(-)

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

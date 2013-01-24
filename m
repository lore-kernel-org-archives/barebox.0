Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 14.mo3.mail-out.ovh.net ([188.165.43.98]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TyU3t-0008DQ-F9
 for barebox@lists.infradead.org; Thu, 24 Jan 2013 21:10:18 +0000
Received: from mail617.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 52E77FF8C0F
 for <barebox@lists.infradead.org>; Thu, 24 Jan 2013 22:24:08 +0100 (CET)
Date: Thu, 24 Jan 2013 22:08:58 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130124210858.GZ26329@game.jcrosoft.org>
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
Subject: [For-next PATCH 0/2 v2] at91: add Somfy Animeo-IP support
To: barebox@lists.infradead.org

Hi,

	v2:

	  send version for next

The following changes since commit 6d588b9bfd85247f9007c002cec98a7535764ae4:

  Merge branch 'for-next/misc' into next (2013-01-23 20:46:17 +0100)

are available in the git repository at:


  git://git.jcrosoft.org/barebox.git delivery/animeo_ip

for you to fetch changes up to 0ff38afe074ff2f31162799db17ca61bd064656f:

  at91: add Somfy Animeo IP support (2013-01-20 23:48:08 +0800)

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (2):
      at91sam9260ek: specify mach entry
      at91: add Somfy Animeo IP support

 arch/arm/Makefile                        |    1 +
 arch/arm/boards/animeo_ip/Makefile       |    1 +
 arch/arm/boards/animeo_ip/config.h       |    6 +++
 arch/arm/boards/animeo_ip/env/config     |   39 +++++++++++++++++++
 arch/arm/boards/animeo_ip/init.c         |  223 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 arch/arm/configs/animeo_ip_defconfig     |   79 ++++++++++++++++++++++++++++++++++++++
 arch/arm/configs/at91sam9260ek_defconfig |    1 +
 arch/arm/mach-at91/Kconfig               |    5 +++
 8 files changed, 355 insertions(+)
 create mode 100644 arch/arm/boards/animeo_ip/Makefile
 create mode 100644 arch/arm/boards/animeo_ip/config.h
 create mode 100644 arch/arm/boards/animeo_ip/env/config
 create mode 100644 arch/arm/boards/animeo_ip/init.c
 create mode 100644 arch/arm/configs/animeo_ip_defconfig

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

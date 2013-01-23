Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 1.mo2.mail-out.ovh.net ([46.105.63.121]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Ty7HL-0007uw-VA
 for barebox@lists.infradead.org; Wed, 23 Jan 2013 20:50:41 +0000
Received: from mail416.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id DDBE2DC0FFF
 for <barebox@lists.infradead.org>; Wed, 23 Jan 2013 22:00:22 +0100 (CET)
Date: Wed, 23 Jan 2013 21:49:16 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130123204916.GS26329@game.jcrosoft.org>
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
Subject: [PATCH 0/2] tny-a9263: add spi + bootstrap support
To: barebox@lists.infradead.org

HI,

	depends on console none

The following changes since commit e75f727c6e048c9978cb47cb8af92488a8251569:

  introduce console none support (2013-01-19 11:51:53 +0800)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git delivery/tny_a9263

for you to fetch changes up to 5b41b075420e3547a9dfa7ef1bc0ba015af9db98:

  tny_a9263: add bootstrop support (2013-01-19 14:41:24 +0800)

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (2):
      tny-a9263: add dataflash support
      tny_a9263: add bootstrop support

 arch/arm/boards/tny-a926x/Makefile                  |    9 +++++++++
 arch/arm/boards/tny-a926x/init.c                    |   43 ++++++++++++++++++++++++++++++-------------
 arch/arm/boards/tny-a926x/tny_a9263_bootstrap.c     |   16 ++++++++++++++++
 arch/arm/boards/tny-a926x/tny_a9263_lowlevel_init.c |  107 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 arch/arm/configs/tny_a9263_bootstrap_defconfig      |   26 ++++++++++++++++++++++++++
 arch/arm/configs/tny_a9263_defconfig                |    1 +
 arch/arm/mach-at91/Kconfig                          |    1 +
 7 files changed, 190 insertions(+), 13 deletions(-)
 create mode 100644 arch/arm/boards/tny-a926x/tny_a9263_bootstrap.c
 create mode 100644 arch/arm/boards/tny-a926x/tny_a9263_lowlevel_init.c
 create mode 100644 arch/arm/configs/tny_a9263_bootstrap_defconfig

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

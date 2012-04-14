Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 12.mo3.mail-out.ovh.net ([188.165.41.191]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SJ5uN-0001Bb-6v
 for barebox@lists.infradead.org; Sat, 14 Apr 2012 16:33:07 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 50690FF87F5
 for <barebox@lists.infradead.org>; Sat, 14 Apr 2012 18:34:15 +0200 (CEST)
Date: Sat, 14 Apr 2012 18:15:09 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120414161509.GC30672@game.jcrosoft.org>
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
Subject: [PATCH 0/3] Omap xloader boot menu support and beagle env
To: barebox@lists.infradead.org

Hi,

	The following patch seri add the support of a boot menu in the xloader

	This will allow to choice where we boot from.
	As example if the nand boot is broken we can choose to boot from mmc.
	The autoboot is set to 1s as most of the time you expect to boot from the
	default boot.

	As the xloader need to be really small to fit in the sram the boot menu allow
	to add user interaction.

	This pull request also include 
	menu: enable the fancy color support only if HUSH is enabled

	send previously

The following changes since commit c406f591292ccc2af583445c0a8b5f9ade0310e2:

  at91sam9260ek/9g20ek: udpate defconfig (2012-04-13 15:55:28 +0200)

are available in the git repository at:

  git://git.jcrosoft.org/barebox.git omap

for you to fetch changes up to 3687e2b6dbc2e7319c6abf8023f122f7e9ec8403:

  beagle/xload: update defconfig (2012-04-15 00:25:26 +0800)

----------------------------------------------------------------
Jean-Christophe PLAGNIOL-VILLARD (4):
      menu: enable the fancy color support only if HUSH is enabled
      beagle: add default env support
      beagle: add xloader boot menu support
      beagle/xload: update defconfig

 arch/arm/boards/beagle/env/config                |   39 ++++++++
 arch/arm/configs/omap3530_beagle_defconfig       |   16 +++-
 arch/arm/configs/omap3530_beagle_xload_defconfig |    2 +
 arch/arm/mach-omap/xload.c                       |  115 ++++++++++++++++++++-
 common/menu.c                                    |   21 +++-
 5 files changed, 177 insertions(+), 16 deletions(-)
 create mode 100644 arch/arm/boards/beagle/env/config

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

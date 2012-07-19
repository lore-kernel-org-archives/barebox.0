Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Srx1u-0004KO-OM
 for barebox@lists.infradead.org; Thu, 19 Jul 2012 20:09:00 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1Srx1r-0007Bc-6z
 for barebox@lists.infradead.org; Thu, 19 Jul 2012 22:08:55 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <jbe@pengutronix.de>) id 1Srx1r-00010W-5t
 for barebox@lists.infradead.org; Thu, 19 Jul 2012 22:08:55 +0200
From: Juergen Beisert <jbe@pengutronix.de>
Date: Thu, 19 Jul 2012 22:08:52 +0200
Message-Id: <1342728533-3750-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH] ARM: add the vendor 'FriendlyARM' to its board's directory
 names
To: barebox@lists.infradead.org

Since a look into "arch/arm/boards/" offers various boards starting with the
vendor's name in their directory name (like 'eukrea' and 'freescale').
This patch does the same with the currently existing FriendlyARM boards
Mini2440 and Tiny210.

Note: I hope I have used the '-M' parameter in a correct manner ;)

Juergen

The following changes since commit a7953f6e56b1e7e4b6973bf44b016169886f5430:

  Merge branch 'for-next/reset-source' into next (2012-07-18 16:21:48 +0200)

are available in the git repository at:

  git://git.pengutronix.de/git/jbe/barebox.git next_rename_fa_boardsV1

for you to fetch changes up to 7061e9e4337e70972923c3b967494ffb7fe20f5e:

  ARM/Samsung: add the vendor FriendlyARM to the board's directory name (2012-07-19 21:52:12 +0200)

----------------------------------------------------------------
Juergen Beisert (1):
      ARM/Samsung: add the vendor FriendlyARM to the board's directory name

 arch/arm/Makefile                                                  |    4 ++--
 arch/arm/boards/{mini2440 => friendlyarm-mini2440}/Kconfig         |    0
 arch/arm/boards/{mini2440 => friendlyarm-mini2440}/Makefile        |    0
 arch/arm/boards/{mini2440 => friendlyarm-mini2440}/config.h        |    0
 arch/arm/boards/{mini2440 => friendlyarm-mini2440}/env/config      |    0
 arch/arm/boards/{mini2440 => friendlyarm-mini2440}/lowlevel_init.S |    0
 arch/arm/boards/{mini2440 => friendlyarm-mini2440}/mini2440.c      |    0
 arch/arm/boards/{tiny210 => friendlyarm-tiny210}/Makefile          |    0
 arch/arm/boards/{tiny210 => friendlyarm-tiny210}/config.h          |    0
 arch/arm/boards/{tiny210 => friendlyarm-tiny210}/lowlevel.c        |    0
 arch/arm/boards/{tiny210 => friendlyarm-tiny210}/tiny210.c         |    0
 .../configs/{mini2440_defconfig => friendlyarm_mini2440_defconfig} |    2 +-
 .../configs/{tiny210_defconfig => friendlyarm_tiny210_defconfig}   |    0
 arch/arm/mach-samsung/Kconfig                                      |    2 +-
 14 files changed, 4 insertions(+), 4 deletions(-)
 rename arch/arm/boards/{mini2440 => friendlyarm-mini2440}/Kconfig (100%)
 rename arch/arm/boards/{mini2440 => friendlyarm-mini2440}/Makefile (100%)
 rename arch/arm/boards/{mini2440 => friendlyarm-mini2440}/config.h (100%)
 rename arch/arm/boards/{mini2440 => friendlyarm-mini2440}/env/config (100%)
 rename arch/arm/boards/{mini2440 => friendlyarm-mini2440}/lowlevel_init.S (100%)
 rename arch/arm/boards/{mini2440 => friendlyarm-mini2440}/mini2440.c (100%)
 rename arch/arm/boards/{tiny210 => friendlyarm-tiny210}/Makefile (100%)
 rename arch/arm/boards/{tiny210 => friendlyarm-tiny210}/config.h (100%)
 rename arch/arm/boards/{tiny210 => friendlyarm-tiny210}/lowlevel.c (100%)
 rename arch/arm/boards/{tiny210 => friendlyarm-tiny210}/tiny210.c (100%)
 rename arch/arm/configs/{mini2440_defconfig => friendlyarm_mini2440_defconfig} (92%)
 rename arch/arm/configs/{tiny210_defconfig => friendlyarm_tiny210_defconfig} (100%)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

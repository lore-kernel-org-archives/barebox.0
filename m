Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RaoB2-0000kC-O0
 for barebox@lists.infradead.org; Wed, 14 Dec 2011 12:43:17 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1RaoAu-0005c9-5n
 for barebox@lists.infradead.org; Wed, 14 Dec 2011 13:43:08 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.77)
 (envelope-from <sha@pengutronix.de>) id 1RaoAu-0000mw-4m
 for barebox@lists.infradead.org; Wed, 14 Dec 2011 13:43:08 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 14 Dec 2011 13:43:02 +0100
Message-Id: <1323866587-2385-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: ppc work
To: barebox@lists.infradead.org


The following switches ppc from the old ft_build oftree implementation
to the new libfdt based implementation. Also some pcm030 fixups included
which broke during the switch to resources.

Sascha Hauer (5):
      ppc pcm030: Fix device resource sizes
      pcm030: update defconfig
      ppc pcm030: Move memory registration to mem_initcall
      ppc: switch to libfdt based oftree implementation
      remove old ft_build support

 arch/ppc/boards/pcm030/pcm030.c   |   31 +-
 arch/ppc/configs/pcm030_defconfig |   27 ++-
 arch/ppc/lib/ppclinux.c           |  231 +--------------
 arch/ppc/mach-mpc5xxx/cpu.c       |   42 ++--
 commands/bootm.c                  |    5 +
 common/Kconfig                    |    4 -
 common/Makefile                   |    1 -
 common/ft_build.c                 |  620 -------------------------------------
 include/boot.h                    |    2 +-
 include/ft_build.h                |   69 ----
 10 files changed, 67 insertions(+), 965 deletions(-)
 delete mode 100644 common/ft_build.c
 delete mode 100644 include/ft_build.h

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RUdYM-0008H5-T1
 for barebox@lists.infradead.org; Sun, 27 Nov 2011 12:09:51 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1RUdYD-0007dd-SP
 for barebox@lists.infradead.org; Sun, 27 Nov 2011 13:09:41 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.77)
 (envelope-from <sha@pengutronix.de>) id 1RUdYD-0005jK-RW
 for barebox@lists.infradead.org; Sun, 27 Nov 2011 13:09:41 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 27 Nov 2011 13:09:35 +0100
Message-Id: <1322395780-21916-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] magic variables
To: barebox@lists.infradead.org

I don't like magic variables that much, but we have them and they are at
times very convenient to use. The problem with those variables is that
we don't know which variables exist in a running binary, so this patchset
adds a 'magicvar' command which prints information about the magic variables.
The description for magic variables can be put next to their user and
the description completely compiles away when the magicvar command is not
selected.

Sascha Hauer (5):
      add magicvar command
      bootm: Add bootargs magicvar
      ARM i.MX boot: Add barebox_loc magicvar
      hush: Add magicvars
      dhcp: Add magicvars

 arch/arm/lib/barebox.lds.S                |    4 +++
 arch/arm/mach-imx/boot.c                  |    3 ++
 arch/blackfin/boards/ipe337/barebox.lds.S |    4 +++
 arch/mips/lib/barebox.lds.S               |    4 +++
 arch/nios2/cpu/barebox.lds.S              |    4 +++
 arch/ppc/boards/pcm030/barebox.lds.S      |    4 +++
 arch/sandbox/board/barebox.lds.S          |    5 ++++
 arch/x86/lib/barebox.lds.S                |    9 +++++++-
 commands/Kconfig                          |   14 ++++++++++++
 commands/Makefile                         |    1 +
 commands/bootm.c                          |    3 ++
 commands/magicvar.c                       |   20 ++++++++++++++++++
 common/hush.c                             |    8 +++++++
 include/asm-generic/barebox.lds.h         |    2 +
 include/magicvar.h                        |   32 +++++++++++++++++++++++++++++
 net/dhcp.c                                |    6 +++++
 16 files changed, 122 insertions(+), 1 deletions(-)
 create mode 100644 commands/magicvar.c
 create mode 100644 include/magicvar.h

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

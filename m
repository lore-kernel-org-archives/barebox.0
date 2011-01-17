Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Pem92-0003Oi-Im
	for barebox@lists.infradead.org; Mon, 17 Jan 2011 10:17:05 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.72)
	(envelope-from <sha@pengutronix.de>) id 1Pem90-0006wo-Vg
	for barebox@lists.infradead.org; Mon, 17 Jan 2011 11:17:02 +0100
Received: from sha by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <sha@pengutronix.de>) id 1Pem90-0007UG-UF
	for barebox@lists.infradead.org; Mon, 17 Jan 2011 11:17:02 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 17 Jan 2011 11:16:52 +0100
Message-Id: <1295259421-26338-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: cleanup linker variables
To: barebox@lists.infradead.org

The following series aims to cleanup the linker provided variables.
Jean, I still use _end instead of _barebox_end, just because it
is used by the Linux Kernel aswell.

Sascha

The following changes since commit 2f0109b1bb833fe3481b37a6cfa0ae319d248754:

  Merge branch 'master' into next (2011-01-17 09:43:40 +0100)

are available in the git repository at:

  bla ..BRANCH.NOT.VERIFIED..

Sascha Hauer (9):
      ppc pcm030: provide _stext, _text and __bss_stop in linker script
      blackfin: provide __bss_stop in linker script
      ARM: provide __bss_stop in linker script
      add sections.h header file
      ARM start.c: use sections.h header file for linker variables
      ARM: remove unnecessary include
      x86: use sections.h header file for linker variables
      reloc.h: remove linker variables which are now in asm/sections.h
      startup: make debug printing of linker variables work again

 arch/arm/cpu/start.c                      |    5 ++---
 arch/arm/include/asm/sections.h           |    1 +
 arch/arm/lib/arm.c                        |    1 -
 arch/arm/lib/barebox.lds.S                |    1 +
 arch/blackfin/boards/ipe337/barebox.lds.S |    1 +
 arch/blackfin/include/asm/sections.h      |    1 +
 arch/ppc/boards/pcm030/barebox.lds.S      |    3 +++
 arch/ppc/include/asm/sections.h           |    1 +
 arch/sandbox/include/asm/sections.h       |    1 +
 arch/x86/boot/main_entry.c                |    7 ++-----
 arch/x86/include/asm/sections.h           |    1 +
 arch/x86/lib/barebox.lds.S                |    2 +-
 common/startup.c                          |    5 +++--
 include/asm-generic/sections.h            |    8 ++++++++
 include/reloc.h                           |    2 +-
 15 files changed, 27 insertions(+), 13 deletions(-)
 create mode 100644 arch/arm/include/asm/sections.h
 create mode 100644 arch/blackfin/include/asm/sections.h
 create mode 100644 arch/ppc/include/asm/sections.h
 create mode 100644 arch/sandbox/include/asm/sections.h
 create mode 100644 arch/x86/include/asm/sections.h
 create mode 100644 include/asm-generic/sections.h


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

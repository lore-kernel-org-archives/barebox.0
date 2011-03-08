Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Pwv2A-0001Rw-R8
	for barebox@lists.infradead.org; Tue, 08 Mar 2011 11:25:00 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.72)
	(envelope-from <sha@pengutronix.de>) id 1Pwv27-0006Ev-Az
	for barebox@lists.infradead.org; Tue, 08 Mar 2011 12:24:55 +0100
Received: from sha by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <sha@pengutronix.de>) id 1Pwv27-0007mM-9G
	for barebox@lists.infradead.org; Tue, 08 Mar 2011 12:24:55 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  8 Mar 2011 12:24:49 +0100
Message-Id: <1299583492-29504-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM stack unwinding support
To: barebox@lists.infradead.org

Hi All,

The following patches enable stack unwinding support on ARM. With
this we can get nice backtraces like this:

barebox@Freescale i.MX51 PDK:/ md 0x1
data abort
pc : [<97f24f04>]    lr : [<97f24ed4>]
sp : 95effde8  ip : 97f26184  fp : 00000000
r10: 00000000  r9 : 00000000  r8 : 00000000
r7 : 95f02f18  r6 : 00000004  r5 : 95f02f18  r4 : 00000001
r3 : 00000020  r2 : 00000002  r1 : 00000004  r0 : 00000040
Flags: nZCv  IRQs off  FIQs off  Mode SVC_32
[<97f24f04>] (memcpy_sz+0x5c/0x74) from [<97f261c0>] (mem_read+0x3c/0x4c)
[<97f261c0>] (mem_read+0x3c/0x4c) from [<97f24b94>] (cdev_read+0x30/0x34)
[<97f24b94>] (cdev_read+0x30/0x34) from [<97f24bbc>] (devfs_read+0x24/0x28)
[<97f24bbc>] (devfs_read+0x24/0x28) from [<97f2535c>] (read+0x74/0x98)
[<97f2535c>] (read+0x74/0x98) from [<97f19e04>] (do_mem_md+0xd8/0x16c)
[<97f19e04>] (do_mem_md+0xd8/0x16c) from [<97f05b18>] (execute_command+0x30/0x60)
[<97f05b18>] (execute_command+0x30/0x60) from [<97f037fc>] (run_list_real+0x6a0/0x768)
[<97f037fc>] (run_list_real+0x6a0/0x768) from [<97f03a1c>] (parse_stream_outer+0x158/0x27c)
[<97f03a1c>] (parse_stream_outer+0x158/0x27c) from [<97f03d6c>] (run_shell+0x3c/0x4c)
[<97f03d6c>] (run_shell+0x3c/0x4c) from [<97f06a90>] (start_barebox+0xd8/0x114)
[<97f06a90>] (start_barebox+0xd8/0x114) from [<90002080>] (0x90002080)
Resetting CPU ...

Furthermore, the setup of the exception vectors is reworked in a board
independent way. We only supported section mapping which only works
on 1MB boundaries, so we had to put the exception vectors on a 1MB
boundary also. The following patches allow to create 4Kb pages, which
is used to copy the exception vectors to 0x0 using a page.

Sascha

Sascha Hauer (3):
      ARM: create a second level page table entry for the exception vectors
      ARM: Add stack unwinding support
      kallsyms/printk: enable symbol printing support (%pS)

 Makefile                                          |    2 +-
 arch/arm/Kconfig                                  |   10 +
 arch/arm/Makefile                                 |    4 +
 arch/arm/boards/chumby_falconwing/falconwing.c    |    5 -
 arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c |    5 -
 arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c |    5 -
 arch/arm/boards/freescale-mx51-pdk/board.c        |    6 -
 arch/arm/boards/guf-cupid/board.c                 |    6 -
 arch/arm/boards/guf-neso/board.c                  |    5 -
 arch/arm/boards/karo-tx28/tx28.c                  |    5 -
 arch/arm/boards/pcm037/pcm037.c                   |    5 -
 arch/arm/boards/pcm038/pcm038.c                   |    5 -
 arch/arm/boards/pcm043/pcm043.c                   |    6 -
 arch/arm/boards/phycard-i.MX27/pca100.c           |    5 -
 arch/arm/cpu/interrupts.c                         |    4 +
 arch/arm/cpu/mmu.c                                |   48 +++
 arch/arm/lib/Makefile                             |    2 +-
 arch/arm/lib/barebox.lds.S                        |   16 +
 arch/arm/lib/unwind.c                             |  344 +++++++++++++++++++++
 common/Kconfig                                    |    3 -
 common/kallsyms.c                                 |  148 +++++++++-
 include/kallsyms.h                                |    5 +
 lib/vsprintf.c                                    |    1 +
 23 files changed, 581 insertions(+), 64 deletions(-)
 create mode 100644 arch/arm/lib/unwind.c


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P9KkU-0002bi-VK
	for barebox@lists.infradead.org; Fri, 22 Oct 2010 16:45:54 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.71)
	(envelope-from <rsc@pengutronix.de>) id 1P9KkL-0000lQ-Rz
	for barebox@lists.infradead.org; Fri, 22 Oct 2010 18:45:37 +0200
Received: from rsc by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <rsc@pengutronix.de>) id 1P9KkL-0000ZS-Qw
	for barebox@lists.infradead.org; Fri, 22 Oct 2010 18:45:37 +0200
From: Robert Schwebel <r.schwebel@pengutronix.de>
Date: Fri, 22 Oct 2010 18:44:52 +0200
Message-Id: <1287765924-1856-1-git-send-email-r.schwebel@pengutronix.de>
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
Subject: Documentation Updates
To: barebox@lists.infradead.org

This series:

- switches doxygen to quiet output, in order to actually see the
  warnings

- fixes most of the warnings I could address; some are left and have to
  be discussed with the involved developers

- introduces a new set of macros to unify the online and offline
  documentation

- starts switching commands to this new mechanics.

The following changes since commit 298252bdef6a97d988f83f5ea554a2262c529ae2:

  process_escape_sequence: Add missing include (2010-10-21 22:21:42 +0200)

are available in the git repository at:
  http://git.pengutronix.de/git/rsc/barebox for-mainline

Robert Schwebel (32):
      reset_cpu: unify declaration
      Doxyfile: enable quiet output
      Doxyfile: remove obsolete boards directory
      Doxyfile: add exclude rules
      Doxyfile: remove non-existing directories
      Doxyfile: remove unused features
      Doxyfile: enable assembler files
      doc: let doxygen find some assembler functions
      doc: remove nonexisting command
      doc: remove reference to non-existing documentation
      doc: eliminate nonexisting reference
      doc: add missing quoting
      doc: fix typo
      doc: mark code explicitely
      doc: avoid that doxygen parses magic in command.h
      doc: fix wrongly named parameter
      doc: fix parameter name in mci-core
      doc: silence doxygen warnings
      doc: add macros to unify command help with doxygen
      doc: add documentation for 'bmp'
      doc: add documentation for 'clear'
      doc: add documentation for 'crc32'
      doc: add documentation for 'dfu'
      doc: unify documentation for 'ls'
      doc: unify documentation for 'cat'
      doc: unify documentation for 'cd'
      doc: add documentation for 'echo'
      doc: unify documentation for 'edit'
      doc: add documentation for 'bootm'
      doc: unify documentation for 'addpart'
      doc: unify documentation for 'cp'
      doc: unify documentation for 'delpart'

 Documentation/commands.dox            |    8 ++-
 Documentation/developers_manual.dox   |    1 -
 Documentation/users_manual.dox        |    1 -
 Doxyfile                              |   22 ++++---
 arch/arm/mach-at91/at91sam926x_time.c |    2 +-
 arch/arm/mach-ep93xx/clocksource.c    |    2 +-
 arch/arm/mach-imx/clocksource.c       |    2 +-
 arch/arm/mach-omap/arch-omap.dox      |    6 ++-
 arch/arm/mach-omap/omap3_generic.c    |    4 +-
 arch/arm/mach-s3c24xx/lowlevel-init.S |    2 +-
 arch/arm/mach-stm/reset-imx23.c       |    2 +-
 arch/blackfin/lib/cpu.c               |    2 +-
 arch/m68k/mach-mcfv4e/mcf_reset_cpu.c |    2 +-
 arch/ppc/mach-mpc5xxx/cpu.c           |    2 +-
 arch/sandbox/os/common.c              |    2 +-
 arch/x86/boot/boot_hdisk.S            |    2 -
 arch/x86/boot/boot_main.S             |    2 -
 arch/x86/boot/pmjump.S                |    2 -
 arch/x86/lib/memory16.S               |    2 -
 arch/x86/lib/traveler.S               |    3 -
 arch/x86/mach-x86.dox                 |    2 +-
 commands/bmp.c                        |   16 +++---
 commands/bootm.c                      |   18 ++----
 commands/cat.c                        |   19 ++----
 commands/cd.c                         |   17 ++----
 commands/clear.c                      |    5 ++
 commands/cp.c                         |   24 +++-----
 commands/crc.c                        |   15 ++---
 commands/dfu.c                        |   21 ++++---
 commands/echo.c                       |   10 +++
 commands/edit.c                       |   36 ++++--------
 commands/ls.c                         |    9 ++-
 commands/partition.c                  |   58 +++++--------------
 common/kallsyms.c                     |    4 +
 drivers/mci/mci-core.c                |    2 +-
 include/command.h                     |   13 ++++
 lib/parameter.c                       |    2 +-
 scripts/doxy_filter.awk               |  101 +++++++++++++++++++++++++++++++++
 38 files changed, 254 insertions(+), 189 deletions(-)
 create mode 100644 scripts/doxy_filter.awk


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

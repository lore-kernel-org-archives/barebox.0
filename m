Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PCpq4-0007o3-FD
	for barebox@lists.infradead.org; Mon, 01 Nov 2010 08:34:02 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.71)
	(envelope-from <rsc@pengutronix.de>) id 1PCpq2-0008St-AT
	for barebox@lists.infradead.org; Mon, 01 Nov 2010 09:33:58 +0100
Received: from rsc by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <rsc@pengutronix.de>) id 1PCpq2-0001kM-9N
	for barebox@lists.infradead.org; Mon, 01 Nov 2010 09:33:58 +0100
From: Robert Schwebel <r.schwebel@pengutronix.de>
Date: Mon,  1 Nov 2010 09:33:33 +0100
Message-Id: <1288600434-6112-1-git-send-email-r.schwebel@pengutronix.de>
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
Subject: Unified Documentation
To: barebox@lists.infradead.org

This series contains the next round of documentation rework, in order to
avoid the duplication of several documentation sniplets between the
compiled-in documentation (help <command>) and the online documentation
managed by Doxygen.

Since these patches have been posted last time, I've reworked the awk
script that generates the Doxygen input slightly. It is now possible to
add long prosa text blocks which do only appear in the online manual.

The following changes since commit bd8db893bb65e32952f8389d37f868e2c6f82d21:

  doc: silence doxygen warnings (2010-10-22 20:47:03 +0200)

are available in the git repository at:
  http://git.pengutronix.de/git/rsc/barebox ..BRANCH.NOT.VERIFIED..

Robert Schwebel (21):
      doc: fix typo
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
      doc: rework user manual
      doc: unify documentation for 'devinfo'
      doc: unify documentation for 'erase'
      doc: rework and unify documentation for gpio commands
      doc: unify documentation for 'export'
      doc: unify documentation for 'tftp'

 Documentation/barebox-main.dox        |  232 ++++++++++-----------------------
 Documentation/building.dox            |   62 +++++++++
 Documentation/commands.dox            |   29 ++++-
 Documentation/first_steps.dox         |   61 +++++++++
 Documentation/users_manual.dox        |   13 +-
 Doxyfile                              |    7 +-
 arch/arm/mach-s3c24xx/lowlevel-init.S |    2 +-
 commands/bmp.c                        |   27 +++-
 commands/bootm.c                      |   38 +++---
 commands/cat.c                        |   19 +--
 commands/cd.c                         |   17 +--
 commands/clear.c                      |    5 +
 commands/cp.c                         |   30 ++---
 commands/crc.c                        |   15 +-
 commands/dfu.c                        |   28 +++--
 commands/echo.c                       |   17 +++
 commands/edit.c                       |   38 ++----
 commands/export.c                     |   14 +--
 commands/flash.c                      |   30 +++--
 commands/gpio.c                       |  100 ++++++++-------
 commands/ls.c                         |    9 +-
 commands/partition.c                  |   75 +++++------
 include/command.h                     |    9 ++
 lib/driver.c                          |   45 ++++---
 net/tftp.c                            |   49 +++----
 scripts/doxy_filter.awk               |  103 +++++++++++++++
 26 files changed, 627 insertions(+), 447 deletions(-)
 create mode 100644 Documentation/building.dox
 create mode 100644 Documentation/first_steps.dox
 create mode 100644 scripts/doxy_filter.awk


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

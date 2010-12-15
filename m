Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PSpti-0001uE-Ke
	for barebox@lists.infradead.org; Wed, 15 Dec 2010 11:51:58 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.71)
	(envelope-from <rsc@pengutronix.de>) id 1PSptd-0006uo-Ji
	for barebox@lists.infradead.org; Wed, 15 Dec 2010 12:51:49 +0100
Received: from rsc by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <rsc@pengutronix.de>) id 1PSptd-000089-HN
	for barebox@lists.infradead.org; Wed, 15 Dec 2010 12:51:49 +0100
From: Robert Schwebel <r.schwebel@pengutronix.de>
Date: Wed, 15 Dec 2010 12:51:14 +0100
Message-Id: <1292413908-464-1-git-send-email-r.schwebel@pengutronix.de>
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
Subject: More Documentation Patches
To: barebox@lists.infradead.org

Hi,

I've added more documentation for the commands available in Barebox.
While being there, I'm collecting things where I think we should add
more examples etc; those are marked with \todos in order to find them
quickly. The series is not complete yet, more patches will follow.

The following changes since commit 615076e1fc11a86efdc76c64ce65cd336684c742:

  cfi_flash_amd: Add manufacturer-specific fixups (2010-12-03 01:53:14 +0800)

are available in the git repository at:
  git://git.pengutronix.de/git/rsc/barebox.git for-mainline-doc

Robert Schwebel (34):
      doc: remove non-existing references
      doc: add documentation for 'version' command
      doc: add documentation for 'unlzo' command
      doc: add documentation for 'umount' command
      doc: add documentation for 'usb' command
      doc: add documentation for ubi commands
      doc: add documentation for 'timeout' command
      doc: add documentation for 'true' command
      doc: add documentation for 'sleep' command
      doc: add documentation for 'rm' command
      doc: add documentation for 'rmdir' command
      doc: add documentation for 'mkdir' command
      doc: add documentation for 'test' command
      doc: add documentation for 'lsmod' command
      doc: add documentation for 'readline' command
      doc: add documentation for 'insmod' command
      doc: add documentation for 'help' command
      doc: add documentation for 'pwd' command
      doc: add documentation for 'false' command
      doc: add documentation for 'exec' command
      doc: add documentation for 'reset' command
      doc: add documentation for 'reginfo' command
      doc: add documentation for 'meminfo' command
      doc: add documentation for 'go' command
      doc: add documentation for 'source' command
      doc: add documentation for 'sh' command
      doc: add documentation for 'ping' command
      doc: add documentation for 'nfs' command
      doc: add documentation for 'rarpboot' command
      doc: add documentation for 'passwd' command
      doc: add documentation for 'nand' command
      doc: add documentation for 'mw' command
      doc: add documentation for 'memcmp' command
      doc: add documentation for 'md' command

 Documentation/commands.dox  |   70 +++++++++++++++++-----------------
 Doxyfile                    |    3 +-
 arch/arm/mach-omap/syslib.c |    2 +-
 commands/exec.c             |    5 ++
 commands/false.c            |    5 ++
 commands/go.c               |   17 ++++++--
 commands/help.c             |   22 +++++++---
 commands/insmod.c           |   13 +++++-
 commands/lsmod.c            |    5 ++
 commands/mem.c              |   90 +++++++++++++++++++++++++-----------------
 commands/meminfo.c          |    5 ++
 commands/mkdir.c            |   16 ++++++-
 commands/nand.c             |   22 +++++++---
 commands/net.c              |   19 ++++++++-
 commands/passwd.c           |   18 ++++++--
 commands/pwd.c              |    5 ++
 commands/readline.c         |   14 +++++-
 commands/reginfo.c          |   12 ++++++
 commands/reset.c            |    5 ++
 commands/rm.c               |    7 ++-
 commands/rmdir.c            |    7 ++-
 commands/sleep.c            |    5 ++
 commands/test.c             |   16 +++++---
 commands/timeout.c          |   23 +++++++----
 commands/true.c             |    5 ++
 commands/ubi.c              |   39 ++++++++++++++-----
 commands/umount.c           |   14 +++++-
 commands/unlzo.c            |   14 +++++-
 commands/version.c          |   15 +++++++-
 common/hush.c               |   37 ++++++++++-------
 drivers/usb/core/usb.c      |   14 +++++-
 net/nfs.c                   |   14 +++++-
 net/ping.c                  |   16 ++++++++
 33 files changed, 407 insertions(+), 167 deletions(-)



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PDGdU-0002Xa-NQ
	for barebox@lists.infradead.org; Tue, 02 Nov 2010 13:10:54 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.71)
	(envelope-from <rsc@pengutronix.de>) id 1PDGdR-0007fp-1E
	for barebox@lists.infradead.org; Tue, 02 Nov 2010 14:10:45 +0100
Received: from rsc by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <rsc@pengutronix.de>) id 1PDGdQ-0001Jo-VK
	for barebox@lists.infradead.org; Tue, 02 Nov 2010 14:10:44 +0100
From: Robert Schwebel <r.schwebel@pengutronix.de>
Date: Tue,  2 Nov 2010 14:10:29 +0100
Message-Id: <1288703442-5032-1-git-send-email-r.schwebel@pengutronix.de>
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
Subject: documentation updates
To: barebox@lists.infradead.org

Here is the next round of documentation updates.

The following changes since commit f0e62e69a58e249e11fc33f993e4cdb95eac6ea3:

  cpuimx35: fix warning (2010-11-02 09:58:47 +0100)

are available in the git repository at:
  git://git.pengutronix.de/git/rsc/barebox for-mainline-doc

Robert Schwebel (13):
      doc: remove obsolete link method for arch specification
      doc: unify documentation for 'loadenv'
      doc: remove ..., confuses doxygen
      doc: unify documentation for 'mount'
      doc: unify documentation for 'printenv'
      doc: unify documentation for 'protect' and 'unprotect'
      doc: unify documentation for 'saveenv'
      doc: unify documentation for 'setenv'
      doc: remove sh from command documentation
      doc: unify documentation for 'linux16'
      doc: put CPUIMX35 into the right chapter
      doc: put babage board into the right chapter
      doc: put cupid into the right chapter

 Documentation/boards.dox                        |    4 +
 Documentation/building.dox                      |   14 ++---
 Documentation/commands.dox                      |    1 -
 arch/arm/boards/freescale-mx51-pdk/mx51-pdk.dox |    2 +-
 arch/arm/boards/guf-cupid/cupid.dox             |    2 +-
 commands/flash.c                                |   76 +++++++++++++---------
 commands/linux16.c                              |   25 ++++----
 commands/loadenv.c                              |   34 ++++------
 commands/ls.c                                   |    2 +-
 commands/mount.c                                |   78 +++++++++++------------
 commands/printenv.c                             |   30 ++++-----
 commands/saveenv.c                              |   31 ++++-----
 commands/setenv.c                               |   30 ++++-----
 13 files changed, 161 insertions(+), 168 deletions(-)

Robert
-- 
Pengutronix e.K.                           | Dipl.-Ing. Robert Schwebel  |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

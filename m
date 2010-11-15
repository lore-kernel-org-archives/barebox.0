Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PHuyF-0001ol-Tm
	for barebox@lists.infradead.org; Mon, 15 Nov 2010 09:03:33 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.71)
	(envelope-from <rsc@pengutronix.de>) id 1PHuxJ-0008SU-Es
	for barebox@lists.infradead.org; Mon, 15 Nov 2010 10:02:29 +0100
Received: from rsc by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <rsc@pengutronix.de>) id 1PHuxJ-0007UF-Dn
	for barebox@lists.infradead.org; Mon, 15 Nov 2010 10:02:29 +0100
From: Robert Schwebel <r.schwebel@pengutronix.de>
Date: Mon, 15 Nov 2010 10:02:24 +0100
Message-Id: <1289811747-28742-1-git-send-email-r.schwebel@pengutronix.de>
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
Subject: More documentation updates
To: barebox@lists.infradead.org

This series contains some further documentation updates for next. Please
pull here:

The following changes since commit b960023b46dd6c8195b50f531e867fc1b9515220:

  pcm037: Fix compilation warning. (2010-11-15 09:20:47 +0100)

are available in the git repository at:
  git://git.pengutronix.de/git/rsc/barebox for-mainline-doc

Robert Schwebel (3):
      doc: sort list alphabetically
      doc: add missing commands
      doc: put barebox version into documentation

 .gitignore                 |    3 ++
 Documentation/commands.dox |   67 ++++++++++++++++++++++++++++++++++++++++++-
 Doxyfile                   |    2 +-
 Makefile                   |    7 +++-
 4 files changed, 74 insertions(+), 5 deletions(-)


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

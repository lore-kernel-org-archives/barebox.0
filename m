Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PbDKM-0001I7-CE
	for barebox@lists.infradead.org; Fri, 07 Jan 2011 14:30:07 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.72)
	(envelope-from <sha@pengutronix.de>) id 1PbDKJ-0000XR-9J
	for barebox@lists.infradead.org; Fri, 07 Jan 2011 15:29:59 +0100
Received: from sha by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <sha@pengutronix.de>) id 1PbDKJ-0001aY-5p
	for barebox@lists.infradead.org; Fri, 07 Jan 2011 15:29:59 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  7 Jan 2011 15:29:54 +0100
Message-Id: <1294410597-25824-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: scb9328 updates
To: barebox@lists.infradead.org

The following series contains some update patches for the
first i.MX board I ever worked on.

Sascha

The following changes since commit d4b8e67fcd9eccdc908cbd851ffe4d4a8de0a60a:

  nand: Fix warnings due to incompatible format strings (2011-01-07 10:34:27 +0100)

are available in the git repository at:
  git://git.pengutronix.de/git/barebox.git scb9328

Sascha Hauer (3):
      scb9328: remove useless bin/init file from env
      update scb9328_defconfig
      ARM scb9328: increase barebox partition size

 arch/arm/boards/scb9328/env/bin/init |    3 ---
 arch/arm/boards/scb9328/scb9328.c    |    2 +-
 arch/arm/configs/scb9328_defconfig   |   28 +++++++++++++++++++++++++++-
 3 files changed, 28 insertions(+), 5 deletions(-)
 delete mode 100644 arch/arm/boards/scb9328/env/bin/init


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

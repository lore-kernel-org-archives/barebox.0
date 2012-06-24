Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Sil0N-0001U1-Ix
 for barebox@lists.infradead.org; Sun, 24 Jun 2012 11:29:24 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1Sil0I-00012E-8J
 for barebox@lists.infradead.org; Sun, 24 Jun 2012 13:29:18 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1Sil0H-0005nT-15
 for barebox@lists.infradead.org; Sun, 24 Jun 2012 13:29:17 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 24 Jun 2012 13:29:13 +0200
Message-Id: <1340537355-22243-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] add basename/dirname commands
To: barebox@lists.infradead.org

basename and dirname are handy commands, add support for it.

----------------------------------------------------------------
Sascha Hauer (2):
      Add basename command
      Add dirname command

 commands/Kconfig    |   14 ++++++++++++++
 commands/Makefile   |    2 ++
 commands/basename.c |   47 +++++++++++++++++++++++++++++++++++++++++++++++
 commands/dirname.c  |   47 +++++++++++++++++++++++++++++++++++++++++++++++
 4 files changed, 110 insertions(+)
 create mode 100644 commands/basename.c
 create mode 100644 commands/dirname.c

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

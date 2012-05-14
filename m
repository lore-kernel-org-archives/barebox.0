Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1STztJ-0002mo-GX
 for barebox@lists.infradead.org; Mon, 14 May 2012 18:21:06 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1STztG-0007Md-Nx
 for barebox@lists.infradead.org; Mon, 14 May 2012 20:21:02 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.77)
 (envelope-from <sha@pengutronix.de>) id 1STztG-0003Tq-Mo
 for barebox@lists.infradead.org; Mon, 14 May 2012 20:21:02 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 14 May 2012 20:20:58 +0200
Message-Id: <1337019660-12096-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] Add glob sort support
To: barebox@lists.infradead.org

This series adds glob sort support.

Sascha

----------------------------------------------------------------
Sascha Hauer (2):
      add qsort support
      glob: Add sorted output support

 common/Kconfig  |    8 +++++-
 include/qsort.h |    7 +++++
 lib/Kconfig     |    3 +++
 lib/Makefile    |    1 +
 lib/glob.c      |   11 ++++----
 lib/qsort.c     |   79 +++++++++++++++++++++++++++++++++++++++++++++++++++++++
 6 files changed, 102 insertions(+), 7 deletions(-)
 create mode 100644 include/qsort.h
 create mode 100644 lib/qsort.c

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

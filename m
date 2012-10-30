Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TTD5h-0000o8-Ue
 for barebox@lists.infradead.org; Tue, 30 Oct 2012 14:46:54 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1TTD5e-0008KY-Ns
 for barebox@lists.infradead.org; Tue, 30 Oct 2012 15:46:50 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1TTD5e-0000sJ-Mq
 for barebox@lists.infradead.org; Tue, 30 Oct 2012 15:46:50 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 30 Oct 2012 15:46:47 +0100
Message-Id: <1351608409-9793-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] filetype command support
To: barebox@lists.infradead.org

The file detection mechanism has proven to be useful, so add a command
for it. Based on an earlier version from Jean-Crhistophe

Sascha

----------------------------------------------------------------
Sascha Hauer (2):
      filetype: add shortnames
      add filetype command support

 commands/Kconfig    |    5 +++
 commands/Makefile   |    1 +
 commands/filetype.c |   97 +++++++++++++++++++++++++++++++++++++++++++++++++++
 common/filetype.c   |   51 +++++++++++++++++----------
 include/filetype.h  |    2 ++
 5 files changed, 137 insertions(+), 19 deletions(-)
 create mode 100644 commands/filetype.c

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PKUmu-0004xR-T2
	for barebox@lists.infradead.org; Mon, 22 Nov 2010 11:42:28 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.71)
	(envelope-from <jbe@pengutronix.de>) id 1PKUmn-0006pa-II
	for barebox@lists.infradead.org; Mon, 22 Nov 2010 12:42:17 +0100
Received: from jbe by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <jbe@pengutronix.de>) id 1PKUmn-0003O1-FJ
	for barebox@lists.infradead.org; Mon, 22 Nov 2010 12:42:17 +0100
From: Juergen Beisert <jbe@pengutronix.de>
Date: Mon, 22 Nov 2010 12:42:14 +0100
Message-Id: <1290426135-12984-1-git-send-email-jbe@pengutronix.de>
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
Subject: Just add some doc about MCI card handling
To: barebox@lists.infradead.org

Just add some doc about MCI card handling

The following changes since commit 53dbaf3fc7b8371ed1e24ef96715e41d60b8ebc3:

  Merge branch 'master' into next (2010-11-19 09:35:15 +0100)

are available in the git repository at:

  http://git.pengutronix.de/git/jbe/for_barebox_next mci_doc

Juergen Beisert (1):
      Add some documentation about MCI card handling

 Documentation/developers_manual.dox |    1 +
 Documentation/users_manual.dox      |    1 +
 drivers/mci/mci-core.c              |  118 +++++++++++++++++++++++++++++++++++
 3 files changed, 120 insertions(+), 0 deletions(-)


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1Qe06y-0007Cx-Rv
	for barebox@lists.infradead.org; Tue, 05 Jul 2011 07:32:02 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.72)
	(envelope-from <sha@pengutronix.de>) id 1Qe06t-0007MM-S5
	for barebox@lists.infradead.org; Tue, 05 Jul 2011 09:31:55 +0200
Received: from sha by octopus.hi.pengutronix.de with local (Exim 4.76)
	(envelope-from <sha@pengutronix.de>) id 1Qe06t-0000c5-Qu
	for barebox@lists.infradead.org; Tue, 05 Jul 2011 09:31:55 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  5 Jul 2011 09:31:51 +0200
Message-Id: <1309851114-2069-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: updates for imx-esdhc controller
To: barebox@lists.infradead.org

The following patches contain some fixes for the i.MX esdhc controller.
The first one i'd like to put into the upcoming release, the others
can wait some time for the upcoming i.MX53 support.

Sascha

Sascha Hauer (3):
      MCI imx-esdhc: Fix cache flush/inval for multi block support
      MCI imx-esdhc: Fix multiblock transfers on i.MX53
      MCI imx-esdhc: remove unnecessary large delay

 drivers/mci/imx-esdhc.c |   33 +++++++++++++++++----------------
 1 files changed, 17 insertions(+), 16 deletions(-)


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

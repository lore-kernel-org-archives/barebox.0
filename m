Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q9YnL-0005qk-H5
	for barebox@lists.infradead.org; Tue, 12 Apr 2011 08:17:56 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.72)
	(envelope-from <sha@pengutronix.de>) id 1Q9YnJ-000081-9D
	for barebox@lists.infradead.org; Tue, 12 Apr 2011 10:17:54 +0200
Received: from sha by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <sha@pengutronix.de>) id 1Q9YnJ-0005mV-7g
	for barebox@lists.infradead.org; Tue, 12 Apr 2011 10:17:53 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 12 Apr 2011 10:17:49 +0200
Message-Id: <1302596272-21635-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: mci patches
To: barebox@lists.infradead.org

The following patches reduce the string footprint of the mci core.
Also, There is no need for guessing disk sizes on !X86, so remove
the code for non X86 architectures.

Sascha Hauer (3):
      mci: shrink string footprint
      mci: turn several pr_* statements into debug
      ata: guessing disk sizes is only needed on X86

 drivers/ata/disk_drive.c |    5 ++++-
 drivers/mci/mci-core.c   |   40 +++++++++++++++++++++-------------------
 2 files changed, 25 insertions(+), 20 deletions(-)


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

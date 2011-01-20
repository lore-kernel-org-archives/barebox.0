Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PfqCM-0004ew-OY
	for barebox@lists.infradead.org; Thu, 20 Jan 2011 08:48:56 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.72)
	(envelope-from <sha@pengutronix.de>) id 1PfqBN-0006he-UZ
	for barebox@lists.infradead.org; Thu, 20 Jan 2011 09:47:53 +0100
Received: from sha by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <sha@pengutronix.de>) id 1PfqBN-0005lD-TR
	for barebox@lists.infradead.org; Thu, 20 Jan 2011 09:47:53 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 20 Jan 2011 09:47:50 +0100
Message-Id: <1295513272-22108-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: Default environment patches
To: barebox@lists.infradead.org

Two little updates to the default environment.

Sascha


The following changes since commit a45c3b961c7696e2f203f3fd981db78d92b747e6:

  at91sam9g45: fix ARCH_TEXT_BASE (2011-01-19 09:38:18 +0100)

are available in the git repository at:
  nowhere ..BRANCH.NOT.VERIFIED..

Sascha Hauer (2):
      defaultenv: only try to add partitions when partition description exists
      defaultenv: do not print usage information for update script

 defaultenv/bin/init |    9 +++------
 1 files changed, 3 insertions(+), 6 deletions(-)


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

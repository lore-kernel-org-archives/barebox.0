Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1ORiq4-0003M4-1W
	for barebox@lists.infradead.org; Thu, 24 Jun 2010 09:35:17 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.71)
	(envelope-from <sha@pengutronix.de>) id 1ORipy-0007Eg-LB
	for barebox@lists.infradead.org; Thu, 24 Jun 2010 11:35:10 +0200
Received: from sha by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <sha@pengutronix.de>) id 1ORipy-0007zO-KI
	for barebox@lists.infradead.org; Thu, 24 Jun 2010 11:35:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 24 Jun 2010 11:35:00 +0200
Message-Id: <1277372108-30332-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: more network patches
To: barebox@lists.infradead.org

Hi All,

Here are some more network related patches. I added a generic progression
bar function for use with tftp/nfs. Further more tftp gets push support.

Sascha

The following changes since commit 334fe1dc8a1b866d1f0f4ccf82ff7b06589ec022:

  pca100: use generic default env (2010-06-22 15:44:45 +0200)

are available in the git repository at:
  git://git.pengutronix.de/git/barebox.git net-pu

Sascha Hauer (8):
      tftp: remove unused variables
      add progression bar function
      cfi flash driver: Use generic progression bar function
      tftp: use generic progression bar
      tftp: Add push support
      nfs: Use generic progression bar
      nfs: resend requests after timeout
      tftp: update doxygen information

 drivers/nor/cfi_flash.c |    5 +-
 include/progress.h      |   15 +++
 lib/Makefile            |    1 +
 lib/show_progress.c     |   62 +++++++++++++
 net/Kconfig             |    4 +
 net/nfs.c               |   26 +++---
 net/tftp.c              |  231 +++++++++++++++++++++++++++++++++--------------
 7 files changed, 262 insertions(+), 82 deletions(-)
 create mode 100644 include/progress.h
 create mode 100644 lib/show_progress.c



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1Ns9y3-0003Ih-T3
	for barebox@lists.infradead.org; Thu, 18 Mar 2010 07:16:32 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.71)
	(envelope-from <sha@pengutronix.de>) id 1Ns9y2-0005Zw-9g
	for barebox@lists.infradead.org; Thu, 18 Mar 2010 08:16:30 +0100
Received: from sha by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <sha@pengutronix.de>) id 1Ns9y2-0005MW-8I
	for barebox@lists.infradead.org; Thu, 18 Mar 2010 08:16:30 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 18 Mar 2010 08:16:25 +0100
Message-Id: <1268896587-20407-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: some cache related patches
To: barebox@lists.infradead.org


Hi,

Here are some cache related patches for ARM.

Sascha

The following changes since commit c6f4ea0dcf2ee03e2fee8130e0fe87ecaa98efb2:
  Juergen Beisert (1):
        Make some help comments less confusing

are available in the git repository at:

  git://git.pengutronix.de/git/barebox.git pu

Sascha Hauer (2):
      armv5: use proper cache flush function
      remove unused file arch/arm/cpu/cache.S

 arch/arm/cpu/Makefile      |    2 +-
 arch/arm/cpu/cache-armv5.S |  113 ++++++++++++++++++++++++++++++++++++++++++++
 arch/arm/cpu/cache.S       |   70 ---------------------------
 3 files changed, 114 insertions(+), 71 deletions(-)
 create mode 100644 arch/arm/cpu/cache-armv5.S
 delete mode 100644 arch/arm/cpu/cache.S


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

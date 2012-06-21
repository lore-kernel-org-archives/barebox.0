Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1ShdV1-0000Hu-6V
 for barebox@lists.infradead.org; Thu, 21 Jun 2012 09:16:23 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1ShdUx-0006lD-It
 for barebox@lists.infradead.org; Thu, 21 Jun 2012 11:16:19 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <jbe@pengutronix.de>) id 1ShdUx-0000xc-Hu
 for barebox@lists.infradead.org; Thu, 21 Jun 2012 11:16:19 +0200
From: Juergen Beisert <jbe@pengutronix.de>
Date: Thu, 21 Jun 2012 11:16:16 +0200
Message-Id: <1340270178-2615-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCHv2] Enable a way to provide the reason for "being here"
To: barebox@lists.infradead.org

Many architectures support a way to detect why the bootloader is running.
This patch adds a global variable to be able to use the cause in some kind of
shell code to do special things on demand. For example to do an emergency boot,
when the last boot fails and the watchdog reactivates the hanging system.

This series includes Marcs suggesion.

Comments are welcome.

Juergen

The following changes since commit 2761ef4d4ae401887f0832d1fd496f26cdf11f20:

  Merge branch 'for-next/resource-size' into next (2012-06-20 10:30:40 +0200)

are available in the git repository at:

  git://git.pengutronix.de/git/jbe/barebox.git next_provide_reset_sourceV2

for you to fetch changes up to 8fded47341461b284589b5cc81f5c5dfc89f2ec9:

  Add two architectures which can detect the reset source (2012-06-21 10:54:19 +0200)

----------------------------------------------------------------
Juergen Beisert (2):
      Enable a way to provide the reason for "being here"
      Add two architectures which can detect the reset source

 arch/arm/mach-imx/Makefile           |    1 +
 arch/arm/mach-imx/reset_source.c     |   59 ++++++++++++++++++++++++++++++++++
 arch/arm/mach-samsung/Makefile       |    1 +
 arch/arm/mach-samsung/reset_source.c |   56 ++++++++++++++++++++++++++++++++
 common/Makefile                      |    2 +-
 common/reset_source.c                |   44 +++++++++++++++++++++++++
 include/reset_source.h               |   27 ++++++++++++++++
 7 files changed, 189 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/mach-imx/reset_source.c
 create mode 100644 arch/arm/mach-samsung/reset_source.c
 create mode 100644 common/reset_source.c
 create mode 100644 include/reset_source.h

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

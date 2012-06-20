Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1ShLHb-0001HU-9f
 for barebox@lists.infradead.org; Wed, 20 Jun 2012 13:49:20 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1ShLHX-0001Hn-Rr
 for barebox@lists.infradead.org; Wed, 20 Jun 2012 15:49:15 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <jbe@pengutronix.de>) id 1ShLHX-0000t9-QR
 for barebox@lists.infradead.org; Wed, 20 Jun 2012 15:49:15 +0200
From: Juergen Beisert <jbe@pengutronix.de>
Date: Wed, 20 Jun 2012 15:49:11 +0200
Message-Id: <1340200153-9215-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH] ARM/MXS: free the watchdog from acting as a system reset
 source on demand
To: barebox@lists.infradead.org

Currently the watchdog is occupied for system reset. This usage collides with
the dedicated usage of a watchdog. This patch series changes the behaviour of
at least i.MX23/i.MX28 where the chipset supports a simple and powerful
alternative to reset the whole SoC (including the PMIC).

Comments are welcome.

Juergen

The following changes since commit 2761ef4d4ae401887f0832d1fd496f26cdf11f20:

  Merge branch 'for-next/resource-size' into next (2012-06-20 10:30:40 +0200)

are available in the git repository at:

  git://git.pengutronix.de/git/jbe/barebox.git mxs_next_release_watchdog

for you to fetch changes up to c2acb4d57a6e79f633f69926bac03368dac2f8c5:

  ARM/MXS: remove the now obsolete mxs reset routine (2012-06-20 15:02:54 +0200)

----------------------------------------------------------------
Juergen Beisert (2):
      ARM/MXS: add new way to reset the whole SoC
      ARM/MXS: remove the now obsolete mxs reset routine

 arch/arm/mach-mxs/Makefile    |    6 ++--
 arch/arm/mach-mxs/reset-imx.c |   61 -----------------------------------------
 arch/arm/mach-mxs/soc-imx23.c |   37 +++++++++++++++++++++++++
 arch/arm/mach-mxs/soc-imx28.c |   37 +++++++++++++++++++++++++
 4 files changed, 77 insertions(+), 64 deletions(-)
 delete mode 100644 arch/arm/mach-mxs/reset-imx.c
 create mode 100644 arch/arm/mach-mxs/soc-imx23.c
 create mode 100644 arch/arm/mach-mxs/soc-imx28.c

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

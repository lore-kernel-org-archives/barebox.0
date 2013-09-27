Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VPRZO-00088m-ED
 for barebox@lists.infradead.org; Fri, 27 Sep 2013 06:30:31 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1VPRZ0-00071Y-4X
 for barebox@lists.infradead.org; Fri, 27 Sep 2013 08:30:06 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1VPRZ0-00063s-37
 for barebox@lists.infradead.org; Fri, 27 Sep 2013 08:30:06 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 27 Sep 2013 08:30:00 +0200
Message-Id: <1380263404-23104-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: getenv helpers
To: barebox@lists.infradead.org

This introduces some helpers for getting int values from enironment
variables and uses them where appropriate.

Sascha

----------------------------------------------------------------
Sascha Hauer (4):
      environment variables: introduce new helpers
      loads: use getenv_bool for 'loads_echo'
      bootm: Replace getenv_loadaddr with getenv_ul
      dhcp: replace dhcp_getenv_int with getenv_uint

 arch/arm/lib/armlinux.c | 29 +++++---------------
 commands/bootm.c        |  4 +--
 commands/loads.c        |  7 +----
 common/env.c            | 71 +++++++++++++++++++++++++++++++++++++++++++++----
 include/environment.h   | 31 ++++++++++++++++++---
 net/dhcp.c              | 12 +--------
 6 files changed, 104 insertions(+), 50 deletions(-)


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

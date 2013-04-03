Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UNHYd-0005dq-Tv
 for barebox@lists.infradead.org; Wed, 03 Apr 2013 06:52:32 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1UNHYb-0004k0-N0
 for barebox@lists.infradead.org; Wed, 03 Apr 2013 08:52:29 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1UNHYb-0006Vw-Lh
 for barebox@lists.infradead.org; Wed, 03 Apr 2013 08:52:29 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  3 Apr 2013 08:52:20 +0200
Message-Id: <1364971945-24352-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] bootsource
To: barebox@lists.infradead.org

This is a series based on earlier work by Marc. It creates an arch
independent framework for storing/retrieving the bootsource. Changes
to Marcs version are:

- rename (currently i.MX specific) barebox_loc environment variable
  to 'bootsource'
- initialize the bootsource instance to unknown (-1) instead of 0
  which is a valid bootsource instance

Sascha

----------------------------------------------------------------
Marc Kleine-Budde (3):
      bootsource: create arch independent bootsource framework
      bootsource: use initcall to export bootsource location to environment
      bootsource: add support for bootsource instance information

Sascha Hauer (2):
      ARM: i.MX: rename barebox_loc to bootsource
      ARM: i.MX53: Add bootsource instance information

 arch/arm/boards/efika-mx-smartbook/board.c         |  3 +-
 .../boards/efika-mx-smartbook/env/init/bootsource  |  2 +-
 arch/arm/boards/karo-tx53/board.c                  |  3 +-
 arch/arm/boards/pcm038/pcm038.c                    |  3 +-
 arch/arm/mach-imx/boot.c                           | 77 ++++++++-----------
 arch/arm/mach-imx/imx51.c                          |  2 +-
 arch/arm/mach-imx/include/mach/generic.h           | 15 ----
 common/Makefile                                    |  1 +
 common/bootsource.c                                | 86 ++++++++++++++++++++++
 include/bootsource.h                               | 23 ++++++
 10 files changed, 148 insertions(+), 67 deletions(-)
 create mode 100644 common/bootsource.c
 create mode 100644 include/bootsource.h

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

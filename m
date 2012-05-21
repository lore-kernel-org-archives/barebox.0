Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from devils.ext.ti.com ([198.47.26.153])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SWPsY-0005Ha-On
 for barebox@lists.infradead.org; Mon, 21 May 2012 10:30:19 +0000
Received: from dbdp20.itg.ti.com ([172.24.170.38])
 by devils.ext.ti.com (8.13.7/8.13.7) with ESMTP id q4LAUFW0013620
 for <barebox@lists.infradead.org>; Mon, 21 May 2012 05:30:16 -0500
Received: from DBDE71.ent.ti.com (localhost [127.0.0.1])
 by dbdp20.itg.ti.com (8.13.8/8.13.8) with ESMTP id q4LAUFC6022702
 for <barebox@lists.infradead.org>; Mon, 21 May 2012 16:00:15 +0530 (IST)
From: Anand Gadiyar <gadiyar@ti.com>
Date: Mon, 21 May 2012 16:00:09 +0530
Message-ID: <1337596213-15239-1-git-send-email-gadiyar@ti.com>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 0/4] panda: misc patches
To: barebox@lists.infradead.org
Cc: Anand Gadiyar <gadiyar@ti.com>

This series fixes a minor bug in the ehci initialization for panda
and enables i2c-omap, twlcore and LED support for the board.

This is my first patch posting to the barebox list and I hope I'll
have many more in future.

The patches are based on the -next branch, tested on an OMAP4430 panda.
Next up is to get OMAP4460/70 support.

Anand Gadiyar (4):
  panda: fix crash when not using barebox as second stage
  panda: add i2c and twlcore to panda
  panda: add LED support
  panda: update defconfig for i2c and led support

 arch/arm/boards/panda/board.c    |   33 +++++++++++++++++++++++++++++++++
 arch/arm/configs/panda_defconfig |    8 +++++++-
 2 files changed, 40 insertions(+), 1 deletions(-)


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

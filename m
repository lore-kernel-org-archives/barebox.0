Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from comal.ext.ti.com ([198.47.26.152])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Runj7-0005mN-FR
 for barebox@lists.infradead.org; Tue, 07 Feb 2012 16:17:06 +0000
Received: from dbdp20.itg.ti.com ([172.24.170.38])
 by comal.ext.ti.com (8.13.7/8.13.7) with ESMTP id q17GH3w6020925
 for <barebox@lists.infradead.org>; Tue, 7 Feb 2012 10:17:04 -0600
Received: from DBDE71.ent.ti.com (localhost [127.0.0.1])
 by dbdp20.itg.ti.com (8.13.8/8.13.8) with ESMTP id q17GH3Ep006483
 for <barebox@lists.infradead.org>; Tue, 7 Feb 2012 21:47:03 +0530 (IST)
From: Sanjeev Premi <premi@ti.com>
Date: Tue, 7 Feb 2012 21:46:52 +0530
Message-ID: <1328631414-19427-1-git-send-email-premi@ti.com>
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
Subject: [PATCH 0/2] omap3evm: Enable Linux boot
To: barebox@lists.infradead.org

These patches are necessary enable Linux boot from
barebox.bin.

Both patches apply against the 'next' branch at:

Linux still doesn't boot successfully, and changes
are necessary in the defconfig and default env.
Will submit the patches once I have done some more
debug.

Will share the failure log in reponse to this patch
(just to prevent clutter in this description).

Sanjeev Premi (2):
  omap3evm: Remove inclusion of non-existent header
  omap3evm: Setup ATAGs for Linux boot

 arch/arm/boards/omap3evm/board.c |    5 ++++-
 1 files changed, 4 insertions(+), 1 deletions(-)


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

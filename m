Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from comal.ext.ti.com ([198.47.26.152])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RkzcJ-0001yU-HA
 for barebox@lists.infradead.org; Wed, 11 Jan 2012 14:57:32 +0000
Received: from dbdp20.itg.ti.com ([172.24.170.38])
 by comal.ext.ti.com (8.13.7/8.13.7) with ESMTP id q0BEvSRX011858
 for <barebox@lists.infradead.org>; Wed, 11 Jan 2012 08:57:29 -0600
Received: from DBDE70.ent.ti.com (localhost [127.0.0.1])
 by dbdp20.itg.ti.com (8.13.8/8.13.8) with ESMTP id q0BEvSvi019975
 for <barebox@lists.infradead.org>; Wed, 11 Jan 2012 20:27:28 +0530 (IST)
From: Sanjeev Premi <premi@ti.com>
Date: Wed, 11 Jan 2012 20:27:17 +0530
Message-ID: <1326293842-3063-1-git-send-email-premi@ti.com>
In-Reply-To: <s.hauer@pengutronix.de,plagnioj@jcrosoft.com,J.Kilb@phytec.de>
References: <s.hauer@pengutronix.de,plagnioj@jcrosoft.com,J.Kilb@phytec.de>
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
Subject: [PATCH 0/5] ARM omap: Some fixes and enhancements
To: barebox@lists.infradead.org

First two patches in this series are fixes to problems in the
existing code.

Next two patches enable specific features on the OMAP3EVM.

The last patch is an enhancement to avoid manual copy each
time barebox is built as the primary bootloader i.e. in the
xload configuration.

Sanjeev Premi (5):
  ARM omap: Use updated config option
  ARM omap3beagle: Fix incorrect base addresses
  ARM omap3evm: Allow building first stage bootloader
  ARM omap3evm: Enable HSMMC device
  ARM omap: Set IFT target as MLO

 arch/arm/Makefile                       |    5 +++--
 arch/arm/boards/omap/board-beagle.c     |   10 +++++-----
 arch/arm/boards/omap/board-omap3evm.c   |    7 ++++++-
 arch/arm/boards/omap/board-sdp343x.c    |    2 +-
 arch/arm/boards/phycard-a-l1/pca-a-l1.c |    2 +-
 arch/arm/mach-omap/Kconfig              |    1 +
 6 files changed, 17 insertions(+), 10 deletions(-)


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

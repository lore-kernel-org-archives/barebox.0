Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from eta-ori.net ([176.31.99.10] helo=orion.eta-ori.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Tvj2M-0003HZ-Qu
 for barebox@lists.infradead.org; Thu, 17 Jan 2013 06:33:20 +0000
Received: from ubuntu.phytec.de (mail.phycard.de [217.6.246.34])
 by orion.eta-ori.net (Postfix) with ESMTPSA id B2CA560055
 for <barebox@lists.infradead.org>; Thu, 17 Jan 2013 07:33:11 +0100 (CET)
From: Daniel Mierswa <d.mierswa@phytec.de>
Date: Thu, 17 Jan 2013 07:32:55 +0100
Message-Id: <cover.1358400153.git.d.mierswa@phytec.de>
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
Subject: [RESEND PATCH] framebuffer work (especially i.MX)
To: barebox@lists.infradead.org

I adjusted the patch series and added the fixes as discussed on the
mailinglist.

I still somehow feel that the offscreenbuf member should be set by
the fd_open routine because I expect fd_close to always work with the
struct set by fd_open no matter what offscreen parameter the function
got.

Daniel Mierswa (4):
  i.MX21: Add periph. clock register name macros
  i.MX21/27: don't enable lcd bus clocks too early
  i.MX27: fix shift amount for PCCR1_PERCLK3_EN
  video/imx: initialize offscreenbuf member

 arch/arm/mach-imx/clk-imx21.c               | 67 ++++++++++++++++++++++++++---
 arch/arm/mach-imx/clk-imx27.c               | 16 ++++---
 arch/arm/mach-imx/include/mach/imx21-regs.h |  6 ---
 commands/splash.c                           |  8 ++++
 drivers/video/imx.c                         | 40 ++++++++++++++---
 5 files changed, 111 insertions(+), 26 deletions(-)

-- 
1.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

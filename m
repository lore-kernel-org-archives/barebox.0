Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from eta-ori.net ([176.31.99.10] helo=orion.eta-ori.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TuZFz-0005Bc-LX
 for barebox@lists.infradead.org; Mon, 14 Jan 2013 01:54:36 +0000
Received: from localhost.localdomain (p5B06EB72.dip.t-dialin.net
 [91.6.235.114])
 by orion.eta-ori.net (Postfix) with ESMTPSA id C0BB560055
 for <barebox@lists.infradead.org>; Mon, 14 Jan 2013 02:54:31 +0100 (CET)
From: Daniel Mierswa <d.mierswa@phytec.de>
Date: Mon, 14 Jan 2013 02:54:12 +0100
Message-Id: <cover.1358127379.git.d.mierswa@phytec.de>
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
Subject: [PATCH] framebuffer work (especially i.MX)
To: barebox@lists.infradead.org

I provided a couple of patches to make the framebuffer device on our platform
work. At least incohately. As this is my first patch series provided to the
project I'm very unsure about the quality and would greatly appreciate your
input. Especially because it introduces platform specific code in the video
driver where it was removed not too long ago.

Daniel Mierswa (4):
  i.MX21: Add periph. clock register name macros
  i.MX21/27: don't enable lcd bus clocks too early
  i.MX27: fix shift amount for PCCR1_PERCLK3_EN
  graphic_utils: always initialize offscreenbuf member

 arch/arm/mach-imx/clk-imx21.c               | 61 +++++++++++++++++++++++++----
 arch/arm/mach-imx/clk-imx27.c               | 16 +++++---
 arch/arm/mach-imx/include/mach/imx21-regs.h |  6 ---
 drivers/video/imx.c                         | 51 ++++++++++++++++++++----
 lib/gui/graphic_utils.c                     |  2 +
 5 files changed, 110 insertions(+), 26 deletions(-)

-- 
1.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

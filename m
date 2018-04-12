Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x244.google.com ([2a00:1450:4010:c07::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f6UuB-0008VQ-K8
 for barebox@lists.infradead.org; Thu, 12 Apr 2018 05:36:20 +0000
Received: by mail-lf0-x244.google.com with SMTP id o102-v6so5832011lfg.8
 for <barebox@lists.infradead.org>; Wed, 11 Apr 2018 22:36:07 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu, 12 Apr 2018 08:35:55 +0300
Message-Id: <20180412053559.30687-1-antonynpavlov@gmail.com>
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
Subject: [PATCH 0/4] ARM: socfpga: misc fixes
To: barebox@lists.infradead.org

Antony Pavlov (4):
  net: make SoCFPGA-specific designware driver work again
  ARM: socfpga: boards: pll_config.h: remove duplicate macros
  ARM: socfpga: mach/pll_config.h: add guard macro
  ARM: socfpga_defconfig: enable Altera firmware stuff

 arch/arm/boards/ebv-socrates/pll_config.h       | 6 ------
 arch/arm/boards/terasic-sockit/pll_config.h     | 6 ------
 arch/arm/configs/socfpga_defconfig              | 3 +++
 arch/arm/mach-socfpga/include/mach/pll_config.h | 4 ++++
 drivers/net/Kconfig                             | 1 +
 5 files changed, 8 insertions(+), 12 deletions(-)

-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

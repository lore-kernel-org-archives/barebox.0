Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jnivU-0003Ze-3o
 for barebox@lists.infradead.org; Tue, 23 Jun 2020 13:25:32 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 23 Jun 2020 15:25:17 +0200
Message-Id: <20200623132521.4727-1-a.fatoum@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 0/4] dts: clean up and a fix
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Hello Sascha,

the vexpress changed paths, again, so building now fails. Fortunately[1],
a label: had been introduced meanwhile, that we could use. This is what
the first patch does. Please order it before the v5.8-rc1 sync, so we
don't have intermittent build breakage[2].

The other three patches remove code that became obsolete with the device
tree sync.

[1]: The same patch adding the label, also added the partitions node,
     which broke barebox on the board, but that's a different issue..
[2]: We probably want a make dtbs target to spot such issues and fix
     them up into the same commit if needed

Cheers
Ahmad Fatoum (4):
  ARM: vexpress: dts: use direct &phandle instead of &{/path}
  ARM: stm32mp: dts: extend now upstream stm32mp157c-lxa-mc1.dts
  clk: at91: remove no-longer needed dt-compat code
  clk: at91: remove now-duplicate crutch #defines

 arch/arm/dts/stm32mp157c-lxa-mc1.dts  |   2 +-
 arch/arm/dts/stm32mp157c-lxa-mc1.dtsi | 362 -------------
 arch/arm/dts/stm32mp15xx-osd32.dtsi   | 229 --------
 arch/arm/dts/vexpress-v2p-ca15.dts    |   2 +-
 drivers/clk/at91/Makefile             |  10 +-
 drivers/clk/at91/dt-compat.c          | 727 --------------------------
 drivers/clk/at91/pmc.h                |   6 -
 7 files changed, 7 insertions(+), 1331 deletions(-)
 delete mode 100644 arch/arm/dts/stm32mp157c-lxa-mc1.dtsi
 delete mode 100644 arch/arm/dts/stm32mp15xx-osd32.dtsi
 delete mode 100644 drivers/clk/at91/dt-compat.c

-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x235.google.com ([2a00:1450:4010:c07::235])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1bCa93-0001xk-67
 for barebox@lists.infradead.org; Mon, 13 Jun 2016 22:15:45 +0000
Received: by mail-lf0-x235.google.com with SMTP id q132so55300094lfe.3
 for <barebox@lists.infradead.org>; Mon, 13 Jun 2016 15:15:24 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue, 14 Jun 2016 01:15:01 +0300
Message-Id: <1465856107-24133-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 0/6] MIPS: ath79: sync dts stuff with linux v4.7-rc2
To: barebox@lists.infradead.org

At the moment linux v4.7-rc2 has AR9331 device tree support.
This patchseries syncs barebox AR9331 device tree stuff
with linux v4.7-rc2.

Antony Pavlov (6):
  clk: ar933x: fix copyright header
  MIPS: ath79: dts: sync clk stuff with linux v4.7-rc2
  MIPS: ath79: dts: sync uart stuff with linux v4.7-rc2
  MIPS: ath79: dts: sync spi stuff with linux v4.7-rc2
  MIPS: ath79: dts: tplink-mr3020.dts: sync with linux v4.7-rc2
  MIPS: ath79: dts: use ar9331.dtsi from linux v4.7-rc2

 arch/mips/dts/ar9331.dtsi              | 44 ----------------------------------
 arch/mips/dts/black-swift.dts          | 22 ++++++++++-------
 arch/mips/dts/tplink-mr3020.dts        | 26 ++++++++++++--------
 drivers/clk/clk-ar933x.c               | 37 +++++++---------------------
 drivers/spi/ath79_spi.c                |  2 +-
 include/dt-bindings/clock/ar933x-clk.h | 22 -----------------
 6 files changed, 39 insertions(+), 114 deletions(-)
 delete mode 100644 arch/mips/dts/ar9331.dtsi
 delete mode 100644 include/dt-bindings/clock/ar933x-clk.h

Cc: Yegor Yefremov <yegorslists@googlemail.com>

-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

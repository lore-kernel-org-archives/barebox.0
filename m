Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lj1-x22b.google.com ([2a00:1450:4864:20::22b])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heBza-0006rL-4J
 for barebox@lists.infradead.org; Fri, 21 Jun 2019 05:21:43 +0000
Received: by mail-lj1-x22b.google.com with SMTP id v18so4808845ljh.6
 for <barebox@lists.infradead.org>; Thu, 20 Jun 2019 22:21:41 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri, 21 Jun 2019 08:21:34 +0300
Message-Id: <20190621052138.12246-1-antonynpavlov@gmail.com>
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
Subject: [PATCH 0/4] MIPS: misc patches
To: barebox@lists.infradead.org

Antony Pavlov (4):
  MIPS: Kconfig: move ARCH_TEXT_BASE to top mips Kconfig file
  Documentation: user manual: update MIPS-specific targets
  serial: ar933x: set linux_console_name
  MIPS: dts: tplink-mr3020: add missing stdout-path property

 Documentation/user/barebox.rst  | 7 ++++---
 arch/mips/Kconfig               | 4 ++++
 arch/mips/dts/tplink-mr3020.dts | 2 ++
 arch/mips/mach-ar231x/Kconfig   | 4 ----
 arch/mips/mach-ath79/Kconfig    | 4 ----
 arch/mips/mach-bcm47xx/Kconfig  | 4 ----
 arch/mips/mach-loongson/Kconfig | 4 ----
 arch/mips/mach-malta/Kconfig    | 4 ----
 arch/mips/mach-xburst/Kconfig   | 4 ----
 drivers/serial/serial_ar933x.c  | 1 +
 10 files changed, 11 insertions(+), 27 deletions(-)

-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

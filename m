Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kblGR-00009p-V5
 for barebox@lists.infradead.org; Sun, 08 Nov 2020 14:01:52 +0000
Received: by mail-qk1-x744.google.com with SMTP id k9so5615541qki.6
 for <barebox@lists.infradead.org>; Sun, 08 Nov 2020 06:01:50 -0800 (PST)
From: Du Huanpeng <u74147@gmail.com>
Date: Sun,  8 Nov 2020 22:01:36 +0800
Message-Id: <1604844099-27647-1-git-send-email-u74147@gmail.com>
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
Subject: [PATCH 0/3] add clk driver for loongson ls1b200
To: barebox@lists.infradead.org
Cc: Du Huanpeng <u74147@gmail.com>

add clk driver and switch serials to clk privider from fixed clock.

Du Huanpeng (3):
  MIPS: ls1b: enable clk driver framework support
  clk: ls1b200: add clk driver for loongson 1b
  MIPS: ls1b200: use clk driver

 arch/mips/Kconfig                        |   3 +
 arch/mips/dts/loongson-ls1b.dts          |   6 ++
 arch/mips/dts/ls1b.dtsi                  |  17 +++-
 drivers/clk/Makefile                     |   1 +
 drivers/clk/loongson/Makefile            |   2 +
 drivers/clk/loongson/clk-ls1b200.c       | 151 +++++++++++++++++++++++++++++++
 dts/include/dt-bindings/clock/ls1b-clk.h |  21 +++++
 7 files changed, 197 insertions(+), 4 deletions(-)
 create mode 100644 drivers/clk/loongson/Makefile
 create mode 100644 drivers/clk/loongson/clk-ls1b200.c
 create mode 100644 dts/include/dt-bindings/clock/ls1b-clk.h

-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

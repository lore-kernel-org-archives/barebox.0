Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22b.google.com ([2a00:1450:4010:c04::22b])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WX49N-0006oe-UC
 for barebox@lists.infradead.org; Mon, 07 Apr 2014 07:39:26 +0000
Received: by mail-lb0-f171.google.com with SMTP id w7so4367451lbi.2
 for <barebox@lists.infradead.org>; Mon, 07 Apr 2014 00:39:02 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon,  7 Apr 2014 11:38:46 +0400
Message-Id: <1396856329-17464-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 0/3] MIPS: loongson-ls1b: switch to device tree probe
To: barebox@lists.infradead.org

New boards should probe from devicetree and
not use the platform registration code.

This patchseries adds device tree stuff for
Longson LS1B SoC and Loongson Tech LS1B Demo Board.

Antony Pavlov (3):
  MIPS: add Longson LS1B SoC dtsi file
  MIPS: add Loongson Tech LS1B Demo Board dts file
  MIPS: loongson-ls1b: switch to device tree

 arch/mips/boards/loongson-ls1b/Makefile   |  1 -
 arch/mips/boards/loongson-ls1b/ram.c      | 12 ---------
 arch/mips/boards/loongson-ls1b/serial.c   | 12 ---------
 arch/mips/configs/loongson-ls1b_defconfig |  6 +++++
 arch/mips/dts/loongson-ls1b.dts           | 16 ++++++++++++
 arch/mips/dts/ls1b.dtsi                   | 43 +++++++++++++++++++++++++++++++
 6 files changed, 65 insertions(+), 25 deletions(-)
 delete mode 100644 arch/mips/boards/loongson-ls1b/ram.c
 create mode 100644 arch/mips/dts/loongson-ls1b.dts
 create mode 100644 arch/mips/dts/ls1b.dtsi

-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

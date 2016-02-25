Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x244.google.com ([2a00:1450:4010:c07::244])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aYs17-0004Od-NS
 for barebox@lists.infradead.org; Thu, 25 Feb 2016 09:15:26 +0000
Received: by mail-lf0-x244.google.com with SMTP id 78so1806541lfy.1
 for <barebox@lists.infradead.org>; Thu, 25 Feb 2016 01:15:05 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu, 25 Feb 2016 12:14:49 +0300
Message-Id: <1456391693-25172-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 0/4] MIPS: ath79: pbl: use more lowlevel init code from
 U-Boot_mod
To: barebox@lists.infradead.org

U-Boot_mod is a popular bootloader for Atheros AR93xx chips,
please see https://github.com/pepe2k/u-boot_mod for details.

It's reasonable to import some lowlevel AR9331 initialization
code from U-Boot_mod.

Antony Pavlov (4):
  MIPS: ath79: pbl: import AR9331 CP0 init routine from U-Boot_mod
  MIPS: ath79: pbl: import hornet_1_1_war routine from U-Boot_mod
  MIPS: tplink-mr3020: pbl: use more lowlevel init code from U-Boot_mod
  MIPS: black-swift: pbl: use more lowlevel init code from U-Boot_mod

 .../black-swift/include/board/board_pbl_start.h    |  4 +-
 .../tplink-mr3020/include/board/board_pbl_start.h  |  4 +-
 arch/mips/mach-ath79/include/mach/pbl_macros.h     | 87 ++++++++++++++++++++++
 3 files changed, 93 insertions(+), 2 deletions(-)

-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

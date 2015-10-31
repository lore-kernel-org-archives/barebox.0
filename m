Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x234.google.com ([2a00:1450:4010:c07::234])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZsWA5-0004yD-Ff
 for barebox@lists.infradead.org; Sat, 31 Oct 2015 13:25:38 +0000
Received: by lfbn126 with SMTP id n126so45690685lfb.2
 for <barebox@lists.infradead.org>; Sat, 31 Oct 2015 06:25:13 -0700 (PDT)
From: Anton Bondarenko <anton.bondarenko.sama@gmail.com>
Date: Sat, 31 Oct 2015 14:25:06 +0100
Message-Id: <1446297909-2001-1-git-send-email-anton.bondarenko.sama@gmail.com>
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
Subject: [PATCH 0/3] ARM: i.MX6Q: Add support for Embedsky E9 board, part 2
To: s.hauer@pengutronix.de, barebox@lists.infradead.org

Added missing default config file and small cleanups in DTS.
Config is based on
http://lists.infradead.org/pipermail/barebox/2014-July/020025.html
from Andrey Panov.
Added barebox_update command for barebox self update.
WARNING: partition table need to be updated to avoid partition
table erase.

Anton Bondarenko (3):
  embedsky-e9: defconfig for Embedsky E9
  embedsky-e9: enable barebox_update command for booter update
  embedsky-e9: cleanup and reorder DTS nodes

 arch/arm/boards/embedsky-e9/board.c    |   6 ++
 arch/arm/configs/embedsky-e9_defconfig | 117 +++++++++++++++++++++++++++++++++
 arch/arm/dts/imx6q-embedsky-e9.dtsi    |  77 ++++++++++------------
 3 files changed, 156 insertions(+), 44 deletions(-)
 create mode 100644 arch/arm/configs/embedsky-e9_defconfig

-- 
2.6.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

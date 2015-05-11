Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22d.google.com ([2a00:1450:4010:c03::22d])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Yrund-0004hK-NH
 for barebox@lists.infradead.org; Mon, 11 May 2015 20:59:42 +0000
Received: by laat2 with SMTP id t2so102339624laa.1
 for <barebox@lists.infradead.org>; Mon, 11 May 2015 13:59:19 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue, 12 May 2015 00:00:48 +0300
Message-Id: <1431378053-18914-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH v2 0/5] dm9k fixups;
 img-ci20: enable dm9000 ethernet controller
To: barebox@lists.infradead.org

Changes since v1 (http://lists.infradead.org/pipermail/barebox/2014-September):

  * rework 'net: dm9k: add device tree support' completely;
  * add additional comments to 'net: dm9k: show only one phy on miibus';
  * add img-ci20-related patches.


Antony Pavlov (5):
  net: dm9k: show only one phy on miibus
  net: dm9k: add device tree support
  net: dm9k: fix reset routine
  MIPS: img-ci20: enable dm9000 ethernet controller
  MIPS: img-ci20_defconfig: enable network stuff

 arch/mips/configs/img-ci20_defconfig |  11 ++-
 arch/mips/dts/img-ci20.dts           |  15 ++++
 arch/mips/mach-xburst/Kconfig        |   1 +
 drivers/net/dm9k.c                   | 138 ++++++++++++++++++++++++++++++-----
 4 files changed, 143 insertions(+), 22 deletions(-)

-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

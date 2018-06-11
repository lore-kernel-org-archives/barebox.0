Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fSTeT-0000Bf-Le
 for barebox@lists.infradead.org; Mon, 11 Jun 2018 20:43:00 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 11 Jun 2018 22:42:42 +0200
Message-Id: <20180611204245.8351-1-s.hauer@pengutronix.de>
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
Subject: [PATCH v2 0/3] kill oftree -f
To: Barebox List <barebox@lists.infradead.org>

Alexander mentioned that oftree -f is used to force a legacy ATAG boot
on ARM, so we cannot remove it without providing an alternative. The
alternative is implemented in this series. We provide a
global.bootm.boot_atag variable which, if set to true, forces ATAG boot.
Also the documentation is updated accordingly which was also missing in
the first patch.

Sascha

Sascha Hauer (3):
  ARM: bootm: Add option boot using ATAGs
  commands: oftree: kill oftree -f
  Documentation: explain new way to boot using ATAGs

 Documentation/user/booting-linux.rst          |  4 +--
 Documentation/user/devicetree.rst             | 16 +++---------
 .../defaultenv-kindle-mx50/boot/mmc_kernel    |  4 +--
 arch/arm/boards/radxa-rock/env/boot/mshc1     |  2 +-
 arch/arm/boards/radxa-rock/env/boot/mshc1-old |  2 +-
 arch/arm/lib32/bootm.c                        | 26 +++++++++++++++----
 commands/oftree.c                             | 17 +-----------
 7 files changed, 32 insertions(+), 39 deletions(-)

-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

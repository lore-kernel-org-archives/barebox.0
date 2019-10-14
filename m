Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJu0u-0006G4-E9
 for barebox@lists.infradead.org; Mon, 14 Oct 2019 06:39:34 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 14 Oct 2019 08:39:17 +0200
Message-Id: <20191014063922.17233-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 0/4] ARM: stm32mp: dk2: support barebox_update and env
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

When booting from SD-Card, the BootROM and first-stage bootloader both
assume the subsequent bootloader to be a STM32 image in a specially named
GPT partition. Add support to barebox to have environment and
barebox_update operate on their respective GPT partitions as well.

Needs Oleksij's "mci: add support for stm32mp sd/mmc controller"[1] to work.

[1]: http://lists.infradead.org/pipermail/barebox/2019-October/039532.html

Ahmad Fatoum (4):
  fs: devfs-core: have device_find_partition search symlinks
  ARM: stm32mp: dk2: rename function according to init level
  ARM: stm32mp: dk2: add barebox SD-Card update handler
  Documentation: boards: stm32mp: document environment partition

Oleksij Rempel (1):
  ARM: dts: stm32mp: add barebox-enviroment on DK boards

 Documentation/boards/stm32mp.rst         |  4 ++++
 arch/arm/boards/stm32mp157c-dk2/board.c  | 18 ++++++++++++++++--
 arch/arm/dts/stm32mp157a-dk1.dtsi        |  7 +++++++
 arch/arm/mach-stm32mp/include/mach/bbu.h | 14 ++++++++++++++
 fs/devfs-core.c                          | 21 +++++++++++++++++++++
 5 files changed, 62 insertions(+), 2 deletions(-)
 create mode 100644 arch/arm/mach-stm32mp/include/mach/bbu.h

-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

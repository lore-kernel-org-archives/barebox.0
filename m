Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22f.google.com ([2a00:1450:4010:c03::22f])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XF8ys-0004Ib-37
 for barebox@lists.infradead.org; Wed, 06 Aug 2014 21:42:46 +0000
Received: by mail-la0-f47.google.com with SMTP id mc6so2778209lab.6
 for <barebox@lists.infradead.org>; Wed, 06 Aug 2014 14:42:22 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu,  7 Aug 2014 01:42:09 +0400
Message-Id: <1407361335-14875-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 0/6] openrisc: add device tree support
To: barebox@lists.infradead.org

This patch series adds device tree support for openrisc generic board.
The barebox mips device tree support is used as a sample.

Antony Pavlov (6):
  openrisc: generic board: reserve 512K for barebox
  net: ethoc: add device tree support
  openrisc: add initial device tree support
  openrisc: dts: import or1ksim.dts from linux-3.16
  openrisc: generic board: reduce platform code
  openrisc: generic_defconfig: enable device tree stuff

 arch/openrisc/Kconfig                   |  9 ++++++
 arch/openrisc/Makefile                  |  7 +++++
 arch/openrisc/boards/generic/config.h   |  9 ++----
 arch/openrisc/boards/generic/generic.c  | 24 ++--------------
 arch/openrisc/configs/generic_defconfig | 35 +++++++++++++---------
 arch/openrisc/cpu/barebox.lds.S         |  2 ++
 arch/openrisc/dts/Makefile              |  5 ++++
 arch/openrisc/dts/or1ksim.dts           | 51 +++++++++++++++++++++++++++++++++
 arch/openrisc/lib/Makefile              |  1 +
 arch/openrisc/lib/dtb.c                 | 44 ++++++++++++++++++++++++++++
 drivers/net/ethoc.c                     |  6 ++++
 drivers/of/Kconfig                      |  2 +-
 12 files changed, 152 insertions(+), 43 deletions(-)
 create mode 100644 arch/openrisc/dts/Makefile
 create mode 100644 arch/openrisc/dts/or1ksim.dts
 create mode 100644 arch/openrisc/lib/dtb.c

-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

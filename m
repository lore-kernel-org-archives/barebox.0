Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x236.google.com ([2a00:1450:4010:c03::236])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XQspg-0004ly-Ng
 for barebox@lists.infradead.org; Mon, 08 Sep 2014 06:53:49 +0000
Received: by mail-la0-f54.google.com with SMTP id b17so16957569lan.13
 for <barebox@lists.infradead.org>; Sun, 07 Sep 2014 23:53:25 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon,  8 Sep 2014 10:53:02 +0400
Message-Id: <1410159189-17328-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH v2 0/7] openrisc: add device tree support
To: barebox@lists.infradead.org

This patch series adds device tree support for openrisc generic board.
The barebox mips device tree support is used as a sample.

Changes since v1:

  * rebase over latest next;
  * add 'Documentation: add OpenRISC or1ksim emulator section'.

Antony Pavlov (7):
  openrisc: generic board: reserve 512K for barebox
  net: ethoc: add device tree support
  openrisc: add initial device tree support
  openrisc: dts: import or1ksim.dts from linux-3.16
  openrisc: generic board: reduce platform code
  openrisc: generic_defconfig: enable device tree stuff
  Documentation: add OpenRISC or1ksim emulator section

 Documentation/boards/openrisc.rst       | 51 +++++++++++++++++++++++++++++++++
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
 13 files changed, 203 insertions(+), 43 deletions(-)
 create mode 100644 Documentation/boards/openrisc.rst
 create mode 100644 arch/openrisc/dts/Makefile
 create mode 100644 arch/openrisc/dts/or1ksim.dts
 create mode 100644 arch/openrisc/lib/dtb.c

-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

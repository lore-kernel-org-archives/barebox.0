Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og111.obsmtp.com ([64.18.0.22])
 by merlin.infradead.org with smtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VFOqq-0007gD-Qt
 for barebox@lists.infradead.org; Fri, 30 Aug 2013 13:35:02 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Fri, 30 Aug 2013 14:34:25 +0100
Message-Id: <1377869669-27821-1-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH 0/4] Update P2020RDB board support to allow NFS booting.
To: barebox@lists.infradead.org

This patchset updates the PPC and board support to enable NFS boot.

Device tree fixup functionality for SOC version specific properties has
been added, these were imported from U-Boot files commom/fdt_support.c
and arch/powerpc/cpu/mpc85xx/fdt.c - version git-2b26201.

Since the boot memory mapping for the MPC85xx is limited to the first
64MiB, support has been added to ensure that the device tree is located
in this region before booting.

The P2020RDB configuration is updated to have device tree support
to boot Linux and environment support for the user to automate the boot
mechanism.

These modifications have been tested using a recent kernel (3.7-rc8).
There is no guarantee that older kernel and dtb versions will boot
correctly since support for older device tree fixup properties has not
been included.


Renaud Barbier (4):
  of: base: import of_find_node_by_type
  ppc: add mpc85xx device tree fixup functions
  ppc: bootm: relocate fdt to valid boot memory
  ppc: P2020RDB configuration update

 arch/ppc/boards/freescale-p2020rdb/env/bin/init |    3 +
 arch/ppc/boards/freescale-p2020rdb/env/config   |    2 +
 arch/ppc/boards/freescale-p2020rdb/p2020rdb.c   |    7 +
 arch/ppc/configs/p2020rdb_defconfig             |   13 ++-
 arch/ppc/include/asm/processor.h                |    2 +
 arch/ppc/lib/ppclinux.c                         |   49 ++++++-
 arch/ppc/mach-mpc85xx/Makefile                  |    1 +
 arch/ppc/mach-mpc85xx/eth-devices.c             |    2 +-
 arch/ppc/mach-mpc85xx/fdt.c                     |  197 +++++++++++++++++++++++
 drivers/of/base.c                               |   29 ++++
 include/of.h                                    |    2 +
 11 files changed, 304 insertions(+), 3 deletions(-)
 create mode 100644 arch/ppc/boards/freescale-p2020rdb/env/bin/init
 create mode 100644 arch/ppc/boards/freescale-p2020rdb/env/config
 create mode 100644 arch/ppc/mach-mpc85xx/fdt.c


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

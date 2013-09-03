Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og112.obsmtp.com ([64.18.0.24])
 by merlin.infradead.org with smtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VGs0N-0001gD-Po
 for barebox@lists.infradead.org; Tue, 03 Sep 2013 14:54:56 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Tue,  3 Sep 2013 15:54:23 +0100
Message-Id: <1378220067-22296-1-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH v2 0/4] Update P2020RDB board support to allow NFS booting.
To: barebox@lists.infradead.org

This patchset addresses all the comments regarding the initial patch [2/4].
The comments in respect of the function fdt_stdout_setup have been addressed
by:
- Removing the check on the existence of the /chosen node.
- Returning an errno value instead of 1.

The comments in respect of the MAC fixup function have been addressed by:
- Removing the fixup function from the initial patch.
- Updating eth_of_fixup to set the MAC address based on the Ethernet device
  node alias.

Since eth_of_fixup is conditionally compiled, the P2020RDB configuration file
in patch [4/4] is updated to enable CONFIG_OFDEVICE.

Renaud Barbier (4):
  of: base: import of_find_node_by_type
  ppc: add and update device tree fixup functions
  ppc: bootm: relocate fdt to valid boot memory
  ppc: P2020RDB configuration update

 arch/ppc/boards/freescale-p2020rdb/env/bin/init |    3 +
 arch/ppc/boards/freescale-p2020rdb/env/config   |    2 +
 arch/ppc/boards/freescale-p2020rdb/p2020rdb.c   |    7 +
 arch/ppc/configs/p2020rdb_defconfig             |   14 ++-
 arch/ppc/include/asm/processor.h                |    2 +
 arch/ppc/lib/ppclinux.c                         |   49 ++++++++-
 arch/ppc/mach-mpc85xx/Makefile                  |    1 +
 arch/ppc/mach-mpc85xx/fdt.c                     |  146 +++++++++++++++++++++++
 drivers/of/base.c                               |   29 +++++
 include/of.h                                    |    2 +
 net/eth.c                                       |   20 ++--
 11 files changed, 264 insertions(+), 11 deletions(-)
 create mode 100644 arch/ppc/boards/freescale-p2020rdb/env/bin/init
 create mode 100644 arch/ppc/boards/freescale-p2020rdb/env/config
 create mode 100644 arch/ppc/mach-mpc85xx/fdt.c


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

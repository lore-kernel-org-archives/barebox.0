Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x236.google.com ([2a00:1450:400c:c05::236])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WzPB2-00083i-0C
 for barebox@lists.infradead.org; Tue, 24 Jun 2014 11:46:18 +0000
Received: by mail-wi0-f182.google.com with SMTP id bs8so449841wib.3
 for <barebox@lists.infradead.org>; Tue, 24 Jun 2014 04:45:53 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Tue, 24 Jun 2014 13:45:33 +0200
Message-Id: <1403610336-5949-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 0/3] MVEBU SoC ID and revision detection
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

This patch set adds support for reading SoC ID and revision from
PCIe controllers found on Marvell MVEBU SoCs.

Patch 1 adds PCI bus specific OF address translation required for
reg property parsing of PCIe controller nodes.

Patch 2 selects above PCI OF address translation for MVEBU SoCs.

Patch 3 adds common code to find and parse PCIe controller nodes
from MVEBU SoC DT and read out SoC ID and revision registers.

The patches are based on barebox next with latest MVEBU patches
for cleanup and PBL images applied. They have been tested on
Marvell Kirkwood, Dove, and Armada 370.

Sebastian Hesselbarth (3):
  drivers: of: import PCI bus specific translator
  ARM: mvebu: select PCI specific DT bus translator
  ARM: mvebu: determine SoC id and revision from PCIe nodes

 arch/arm/Kconfig                         |  1 +
 arch/arm/mach-mvebu/common.c             | 64 ++++++++++++++++++++++++
 arch/arm/mach-mvebu/include/mach/socid.h | 76 +++++++++++++++++++++++++++++
 drivers/of/Kconfig                       |  3 ++
 drivers/of/address.c                     | 83 ++++++++++++++++++++++++++++++++
 5 files changed, 227 insertions(+)
 create mode 100644 arch/arm/mach-mvebu/include/mach/socid.h

---
Cc: barebox@lists.infradead.org
-- 
2.0.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipsrt-0006UD-4v
 for barebox@lists.infradead.org; Fri, 10 Jan 2020 11:54:22 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 10 Jan 2020 12:54:05 +0100
Message-Id: <20200110115410.18265-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 0/5] ARM: Layerscape: Add Fixups for Linux IOMMU support
To: Barebox List <barebox@lists.infradead.org>

To make the IOMMU work under Linux we have to configure the different Isolation
Context Identifier registers in the SoC and communicate the settings to
Linux via "iommu" properties in the device tree. This adds the necessary
settings and device tree fixups ported from U-Boot.

Sascha

Sascha Hauer (5):
  ARM: Layerscape: replace overcomplicated macros
  include/soc/fsl: remove unused function prototypes
  include/soc/fsl: Make struct ccsr_qman v3 specific
  net: fsl-fman: Do not put hardware in reset before Linux start
  ARM: Layerscape: setup icids for the IOMMU

 arch/arm/mach-layerscape/icid.c | 611 ++++++++++++++++++++++++--------
 drivers/net/fsl-fman.c          |   8 -
 include/soc/fsl/fsl_qbman.h     |  18 +-
 include/soc/fsl/immap_lsch2.h   |   1 +
 4 files changed, 465 insertions(+), 173 deletions(-)

-- 
2.25.0.rc1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

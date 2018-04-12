Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f6Wgg-0007wj-Uw
 for barebox@lists.infradead.org; Thu, 12 Apr 2018 07:30:36 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 12 Apr 2018 09:30:04 +0200
Message-Id: <20180412073017.6750-4-s.hauer@pengutronix.de>
In-Reply-To: <20180412073017.6750-1-s.hauer@pengutronix.de>
References: <20180412073017.6750-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 03/16] ARM: i.MX: phytec-som-imx: env: add boot script for emmc
To: Barebox List <barebox@lists.infradead.org>
Cc: Matthias Rabe <matthias.rabe@sigma-chemnitz.de>

From: Matthias Rabe <matthias.rabe@sigma-chemnitz.de>

add bootscript for emmc boot

Signed-off-by: Matthias Rabe <matthias.rabe@sigma-chemnitz.de>
Signed-off-by: Christian Hemp <c.hemp@phytec.de>
---
 arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6/boot/emmc | 5 +++++
 1 file changed, 5 insertions(+)
 create mode 100644 arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6/boot/emmc

diff --git a/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6/boot/emmc b/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6/boot/emmc
new file mode 100644
index 0000000000..83924df5d7
--- /dev/null
+++ b/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6/boot/emmc
@@ -0,0 +1,5 @@
+#!/bin/sh
+
+global.bootm.image="/mnt/mmc3/linuximage"
+global.bootm.oftree="/mnt/mmc3/oftree"
+global.linux.bootargs.dyn.root="root=/dev/mmcblk3p2 rootwait rw"
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gn4wG-0001It-3f
 for barebox@lists.infradead.org; Fri, 25 Jan 2019 17:06:47 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.89)
 (envelope-from <l.stach@pengutronix.de>) id 1gn4wC-0000nj-SH
 for barebox@lists.infradead.org; Fri, 25 Jan 2019 18:06:40 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri, 25 Jan 2019 18:06:38 +0100
Message-Id: <20190125170640.19469-1-l.stach@pengutronix.de>
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
Subject: [PATCH 1/3] Documentation: imx8mq-evk: point to current version of
 the firmware
To: barebox@lists.infradead.org

There were some updates to the i.MX8MQ DDR training firmware, so better
point to the current version.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 Documentation/boards/imx/nxp-imx8mq-evk.rst | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/Documentation/boards/imx/nxp-imx8mq-evk.rst b/Documentation/boards/imx/nxp-imx8mq-evk.rst
index dfe004e0e434..ba8cf01452d6 100644
--- a/Documentation/boards/imx/nxp-imx8mq-evk.rst
+++ b/Documentation/boards/imx/nxp-imx8mq-evk.rst
@@ -16,9 +16,9 @@ uses several binary firmware blobs that are distributed under a
 separate EULA and cannot be included in Barebox. In order to obtain
 them do the following::
 
- wget https://www.nxp.com/lgfiles/NMG/MAD/YOCTO/firmware-imx-7.2.bin
- chmod +x firmware-imx-7.2.bin
- ./firmware-imx-7.2.bin
+ wget https://www.nxp.com/lgfiles/NMG/MAD/YOCTO/firmware-imx-8.0.bin
+ chmod +x firmware-imx-8.0.bin
+ ./firmware-imx-8.0.bin
 
 Executing that file should produce a EULA acceptance dialog as well as
 result in the following files:
@@ -36,7 +36,7 @@ As a last step of this process those files need to be placed in
 	   lpddr4_pmu_train_2d_dmem.bin  \
 	   lpddr4_pmu_train_2d_imem.bin; \
   do \
-	   cp firmware-imx-7.2/firmware/ddr/synopsys/${f} \
+	   cp firmware-imx-8.0/firmware/ddr/synopsys/${f} \
 	      firmware/imx/${f}; \
   done
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

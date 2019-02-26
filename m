Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout02.posteo.de ([185.67.36.66])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gyjxT-00053P-LP
 for barebox@lists.infradead.org; Tue, 26 Feb 2019 21:08:13 +0000
Received: from submission (posteo.de [89.146.220.130]) 
 by mout02.posteo.de (Postfix) with ESMTPS id 1C02F2400E6
 for <barebox@lists.infradead.org>; Tue, 26 Feb 2019 22:08:05 +0100 (CET)
From: Christian Hemp <christian.hemp@posteo.de>
Date: Tue, 26 Feb 2019 22:07:49 +0100
Message-Id: <20190226210749.8898-1-christian.hemp@posteo.de>
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
Subject: [PATCH] Documentation: imx8mq-evk: fix firmware path
To: barebox@lists.infradead.org
Cc: Christian Hemp <christian.hemp@posteo.de>

Since commit: "da985aac8 firmware: drop the imx subdir" the firmware is
not longer placed in imx subdir. So the subdir can be removed from the
documentation.

Signed-off-by: Christian Hemp <christian.hemp@posteo.de>
---
 Documentation/boards/imx/nxp-imx8mq-evk.rst | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/boards/imx/nxp-imx8mq-evk.rst b/Documentation/boards/imx/nxp-imx8mq-evk.rst
index 8bad9455a..a8624130e 100644
--- a/Documentation/boards/imx/nxp-imx8mq-evk.rst
+++ b/Documentation/boards/imx/nxp-imx8mq-evk.rst
@@ -29,7 +29,7 @@ result in the following files:
 - lpddr4_pmu_train_2d_imem.bin
 
 As a last step of this process those files need to be placed in
-"firmware/imx/"::
+"firmware/"::
 
   for f in lpddr4_pmu_train_1d_dmem.bin  \
            lpddr4_pmu_train_1d_imem.bin  \
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

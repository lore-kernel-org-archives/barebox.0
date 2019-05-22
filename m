Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTRl5-0003vb-Mu
 for barebox@lists.infradead.org; Wed, 22 May 2019 13:58:21 +0000
Received: from [2001:67c:670:100:6a05:caff:fe2d:a9b1] (helo=birne)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <afa@pengutronix.de>) id 1hTRl4-0004JK-8F
 for barebox@lists.infradead.org; Wed, 22 May 2019 15:58:18 +0200
Received: from afa by birne with local (Exim 4.89)
 (envelope-from <afa@pengutronix.de>) id 1hTRl3-0002mW-VQ
 for barebox@lists.infradead.org; Wed, 22 May 2019 15:58:17 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 22 May 2019 15:58:16 +0200
Message-Id: <20190522135816.10647-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH] Documentation: imx8mq-evk: collapse BMOD switch superposition
To: barebox@lists.infradead.org

Table 3. Boot mode setting in the user's guide[1] lists
0010 as 'Boot from EMMC'. Adjust diagram accordingly.

[1]: https://www.mouser.com/ds/2/302/IMX8MDQLQEVKHUG-1280333.pdf

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/boards/imx/nxp-imx8mq-evk.rst | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/boards/imx/nxp-imx8mq-evk.rst b/Documentation/boards/imx/nxp-imx8mq-evk.rst
index a8624130ea8f..470d42eab032 100644
--- a/Documentation/boards/imx/nxp-imx8mq-evk.rst
+++ b/Documentation/boards/imx/nxp-imx8mq-evk.rst
@@ -97,7 +97,7 @@ Bootsource is the internal eMMC::
   |         |
   | | | O | |
   | | | | | |  <---- eMMC
-  | O O O O |
+  | O O | O |
   |         |
   | 1 2 3 4 |
   +---------+
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

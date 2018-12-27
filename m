Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gcaqa-00021z-FH
 for barebox@lists.infradead.org; Thu, 27 Dec 2018 18:57:36 +0000
Received: by mail-qt1-x843.google.com with SMTP id e5so21048048qtr.12
 for <barebox@lists.infradead.org>; Thu, 27 Dec 2018 10:57:20 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
Date: Thu, 27 Dec 2018 16:57:14 -0200
Message-Id: <20181227185714.16738-1-festevam@gmail.com>
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
Subject: [PATCH] Documentation: imx8mq-evk: Pass the full path for file names
To: s.hauer@pengutronix.de
Cc: andrew.smirnov@gmail.com, barebox@lists.infradead.org

Passing the full path of the referenced files make the text
clearer.

Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
 Documentation/boards/imx/nxp-imx8mq-evk.rst | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/boards/imx/nxp-imx8mq-evk.rst b/Documentation/boards/imx/nxp-imx8mq-evk.rst
index f0cdc3486..dfe004e0e 100644
--- a/Documentation/boards/imx/nxp-imx8mq-evk.rst
+++ b/Documentation/boards/imx/nxp-imx8mq-evk.rst
@@ -45,8 +45,8 @@ DDR Configuration Code
 
 The following two files:
 
-  - ddr_init.c
-  - ddrphy_train.c
+  - arch/arm/boards/nxp-imx8mq-evk/ddr_init.c
+  - arch/arm/boards/nxp-imx8mq-evk/ddrphy_train.c
 
 were obtained by running i.MX 8M DDR Tool that can be found here:
 
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

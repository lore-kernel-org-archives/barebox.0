Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qt0-x241.google.com ([2607:f8b0:400d:c0d::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fg8U0-0006QH-F4
 for barebox@lists.infradead.org; Thu, 19 Jul 2018 12:56:37 +0000
Received: by mail-qt0-x241.google.com with SMTP id c15-v6so7045187qtp.0
 for <barebox@lists.infradead.org>; Thu, 19 Jul 2018 05:56:24 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
Date: Thu, 19 Jul 2018 09:57:25 -0300
Message-Id: <1532005045-11756-1-git-send-email-festevam@gmail.com>
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
Subject: [PATCH] Documentation: imx8mq-evk: Fix typo
To: s.hauer@pengutronix.de
Cc: andrew.smirnov@gmail.com, barebox@lists.infradead.org

Correct form is "obtain them".

Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
 Documentation/boards/imx/nxp-imx8mq-evk.rst | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/boards/imx/nxp-imx8mq-evk.rst b/Documentation/boards/imx/nxp-imx8mq-evk.rst
index 9dfa911..f0cdc34 100644
--- a/Documentation/boards/imx/nxp-imx8mq-evk.rst
+++ b/Documentation/boards/imx/nxp-imx8mq-evk.rst
@@ -14,7 +14,7 @@ Downloading DDR PHY Firmware
 As a part of DDR intialization routine NXP i.MX8MQ EVK requires and
 uses several binary firmware blobs that are distributed under a
 separate EULA and cannot be included in Barebox. In order to obtain
-the do the following::
+them do the following::
 
  wget https://www.nxp.com/lgfiles/NMG/MAD/YOCTO/firmware-imx-7.2.bin
  chmod +x firmware-imx-7.2.bin
@@ -113,4 +113,4 @@ Serial boot SW802 setting needed for i.MX8 DDR Tool is as follows::
   | O | | <--- off = low level
   |     |
   | 1 2 |
-  +-----+
\ No newline at end of file
+  +-----+
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

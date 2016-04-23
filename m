Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-vk0-x229.google.com ([2607:f8b0:400c:c05::229])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1au6On-0000Lm-Rr
 for barebox@lists.infradead.org; Sat, 23 Apr 2016 22:51:38 +0000
Received: by mail-vk0-x229.google.com with SMTP id n67so153352460vkf.3
 for <barebox@lists.infradead.org>; Sat, 23 Apr 2016 15:51:17 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
Date: Sat, 23 Apr 2016 19:50:31 -0300
Message-Id: <1461451831-16138-1-git-send-email-festevam@gmail.com>
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
Subject: [PATCH] ARM: dts: imx6qdl-sabresd: Fix barebox-environment location
To: s.hauer@pengutronix.de
Cc: Fabio Estevam <fabio.estevam@nxp.com>, barebox@lists.infradead.org

From: Fabio Estevam <fabio.estevam@nxp.com>

After doing a 'saveenv' command, it is no longer possible to boot.

The reason is that the 'barebox-environment' overwrites the 
barebox binary.

Fix this problem by placing the environment into a proper SD card
location, such as 0xc0000.

Signed-off-by: Fabio Estevam <fabio.estevam@nxp.com>
---
 arch/arm/dts/imx6qdl-sabresd.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/dts/imx6qdl-sabresd.dtsi b/arch/arm/dts/imx6qdl-sabresd.dtsi
index 32318cf..29dc4d4 100644
--- a/arch/arm/dts/imx6qdl-sabresd.dtsi
+++ b/arch/arm/dts/imx6qdl-sabresd.dtsi
@@ -34,8 +34,8 @@
 		reg = <0x0 0x80000>;
 	};
 
-	environment_usdhc3: partition@1 {
+	environment_usdhc3: partition@c0000 {
 		label = "barebox-environment";
-		reg = <0x80000 0x80000>;
+		reg = <0xc0000 0x80000>;
 	};
 };
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

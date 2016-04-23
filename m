Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-x22e.google.com ([2607:f8b0:400e:c03::22e])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1au6ZW-0004OB-3j
 for barebox@lists.infradead.org; Sat, 23 Apr 2016 23:02:42 +0000
Received: by mail-pa0-x22e.google.com with SMTP id er2so50741810pad.3
 for <barebox@lists.infradead.org>; Sat, 23 Apr 2016 16:02:21 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
Date: Sat, 23 Apr 2016 20:01:33 -0300
Message-Id: <1461452493-19431-1-git-send-email-festevam@gmail.com>
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
Subject: [PATCH v2] ARM: dts: imx6qdl-sabresd: Fix barebox-environment location
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org, sam@ravnborg.org

After doing a 'saveenv' command, it is no longer possible to boot.

The reason for this behaviour is that the 'barebox' partition has currently
a size of 0x80000 (512 kB), which is not sufficient to store the barebox
binary. This causes the 'barebox' and 'barebox-environment' partitions
to overlap.

Fix this problem by increasing the size of the 'barebox' partition and
by placing the 'barebox-environment' right after it.

Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
Changes since v1:
- Also adjust the partition size for 'barebox'.

 arch/arm/dts/imx6qdl-sabresd.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/dts/imx6qdl-sabresd.dtsi b/arch/arm/dts/imx6qdl-sabresd.dtsi
index 32318cf..690cd41 100644
--- a/arch/arm/dts/imx6qdl-sabresd.dtsi
+++ b/arch/arm/dts/imx6qdl-sabresd.dtsi
@@ -31,11 +31,11 @@
 
 	partition@0 {
 		label = "barebox";
-		reg = <0x0 0x80000>;
+		reg = <0x0 0xc0000>;
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

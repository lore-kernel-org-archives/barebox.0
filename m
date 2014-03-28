Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22e.google.com ([2a00:1450:4010:c04::22e])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WTZeJ-0003ys-2R
 for barebox@lists.infradead.org; Fri, 28 Mar 2014 16:28:55 +0000
Received: by mail-lb0-f174.google.com with SMTP id u14so3885853lbd.33
 for <barebox@lists.infradead.org>; Fri, 28 Mar 2014 09:28:32 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri, 28 Mar 2014 20:28:34 +0400
Message-Id: <1396024114-15610-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] MIPS: rzx50: use short form for serial1 reference
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/dts/rzx50.dts | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/arch/mips/dts/rzx50.dts b/arch/mips/dts/rzx50.dts
index 78103e3..360c1bf 100644
--- a/arch/mips/dts/rzx50.dts
+++ b/arch/mips/dts/rzx50.dts
@@ -9,10 +9,8 @@
 	memory {
 		reg = <0x00000000 0x4000000>;
 	};
+};
 
-	soc {
-		serial1: serial@b0031000 {
-			status = "okay";
-		};
-	};
+&serial1 {
+	status = "okay";
 };
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

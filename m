Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x232.google.com ([2a00:1450:4010:c03::232])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZeW95-0007MC-Im
 for barebox@lists.infradead.org; Tue, 22 Sep 2015 22:34:44 +0000
Received: by lacao8 with SMTP id ao8so7433604lac.3
 for <barebox@lists.infradead.org>; Tue, 22 Sep 2015 15:34:21 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed, 23 Sep 2015 01:34:11 +0300
Message-Id: <1442961253-24762-5-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1442961253-24762-1-git-send-email-antonynpavlov@gmail.com>
References: <1442961253-24762-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 4/6] MIPS: dts: tplink-mr3020.dts: move aliases up
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/dts/tplink-mr3020.dts | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/arch/mips/dts/tplink-mr3020.dts b/arch/mips/dts/tplink-mr3020.dts
index 41be352..e155de3 100644
--- a/arch/mips/dts/tplink-mr3020.dts
+++ b/arch/mips/dts/tplink-mr3020.dts
@@ -9,6 +9,10 @@
 	memory {
 		reg = <0x00000000 0x2000000>;
 	};
+
+	aliases {
+		spiflash = &spiflash;
+	};
 };
 
 &serial0 {
@@ -28,9 +32,3 @@
 		reg = <0>;
 	};
 };
-
-/ {
-	aliases {
-		spiflash = &spiflash;
-	};
-};
-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

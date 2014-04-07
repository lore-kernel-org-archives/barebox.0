Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22a.google.com ([2a00:1450:4010:c04::22a])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WX4Tr-0007CG-5u
 for barebox@lists.infradead.org; Mon, 07 Apr 2014 08:00:38 +0000
Received: by mail-lb0-f170.google.com with SMTP id s7so4420426lbd.15
 for <barebox@lists.infradead.org>; Mon, 07 Apr 2014 01:00:12 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon,  7 Apr 2014 11:59:58 +0400
Message-Id: <1396857600-20407-4-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1396857600-20407-1-git-send-email-antonynpavlov@gmail.com>
References: <1396857600-20407-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH v2 3/5] MIPS: ar9331.dtsi: add SPI master
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/dts/ar9331.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/mips/dts/ar9331.dtsi b/arch/mips/dts/ar9331.dtsi
index 890fda8..9485fbf 100644
--- a/arch/mips/dts/ar9331.dtsi
+++ b/arch/mips/dts/ar9331.dtsi
@@ -22,5 +22,11 @@
 			reg = <0xb8050000 0x48>;
 			#clock-cells = <1>;
 		};
+
+		spi: spi@bf000000{
+			compatible = "qca,ath79-spi";
+			reg = <0xbf000000 0x01000000>;
+			status = "disabled";
+		};
 	};
 };
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

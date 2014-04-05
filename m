Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x231.google.com ([2a00:1450:4010:c03::231])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WWVRq-0000D0-6c
 for barebox@lists.infradead.org; Sat, 05 Apr 2014 18:36:11 +0000
Received: by mail-la0-f49.google.com with SMTP id mc6so3412045lab.8
 for <barebox@lists.infradead.org>; Sat, 05 Apr 2014 11:35:48 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sat,  5 Apr 2014 22:35:32 +0400
Message-Id: <1396722934-23818-4-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1396722934-23818-1-git-send-email-antonynpavlov@gmail.com>
References: <1396722934-23818-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 3/5] MIPS: ar9331.dtsi: add SPI master
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

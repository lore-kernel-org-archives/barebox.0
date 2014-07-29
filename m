Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x229.google.com ([2a00:1450:4010:c03::229])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XCDjq-0005SE-5b
 for barebox@lists.infradead.org; Tue, 29 Jul 2014 20:11:14 +0000
Received: by mail-la0-f41.google.com with SMTP id s18so146262lam.28
 for <barebox@lists.infradead.org>; Tue, 29 Jul 2014 13:10:47 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed, 30 Jul 2014 00:10:24 +0400
Message-Id: <1406664625-19653-9-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1406664625-19653-1-git-send-email-antonynpavlov@gmail.com>
References: <1406664625-19653-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH v4 8/9] MIPS: dts: jz4755.dtsi: add jz4740-rtc
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/dts/jz4755.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/mips/dts/jz4755.dtsi b/arch/mips/dts/jz4755.dtsi
index 0e655b6..ed64f9a 100644
--- a/arch/mips/dts/jz4755.dtsi
+++ b/arch/mips/dts/jz4755.dtsi
@@ -8,6 +8,11 @@
 		#size-cells = <1>;
 		ranges;
 
+		rtc: rtc@10003000 {
+			compatible = "ingenic,jz4740-rtc";
+			reg = <0xb0003000 0x38>;
+		};
+
 		serial0: serial@b0030000 {
 			compatible = "ingenic,jz4740-uart";
 			reg = <0xb0030000 0x20>;
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

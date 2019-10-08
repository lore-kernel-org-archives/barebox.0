Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHlI2-0004tD-9W
 for barebox@lists.infradead.org; Tue, 08 Oct 2019 08:56:19 +0000
From: Stefan Riedmueller <s.riedmueller@phytec.de>
Date: Tue, 8 Oct 2019 10:56:12 +0200
Message-Id: <1570524972-208631-2-git-send-email-s.riedmueller@phytec.de>
In-Reply-To: <1570524972-208631-1-git-send-email-s.riedmueller@phytec.de>
References: <1570524972-208631-1-git-send-email-s.riedmueller@phytec.de>
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
Subject: [PATCH 2/2] ARM: dts: imx6qdl: pfla02: Remove fec phy-supply
To: barebox@lists.infradead.org

There is no driver for the phyFLEX-i.MX 6 phy-supply regulator in
the barebox. Use a dummy regulator instead by simply deleting the
phy-supply property.

Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
---
 arch/arm/dts/imx6qdl-phytec-pfla02.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi b/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
index f0bba2e09881..846ebbe6b18b 100644
--- a/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
+++ b/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
@@ -86,6 +86,10 @@
 	};
 };
 
+&fec {
+	/delete-property/ phy-supply;
+};
+
 &gpmi {
 	partitions {
 		compatible = "fixed-partitions";
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eHEn9-00017G-IP
 for barebox@lists.infradead.org; Tue, 21 Nov 2017 20:05:13 +0000
From: Oleksij Rempel <linux@rempel-privat.de>
Date: Tue, 21 Nov 2017 21:04:35 +0100
Message-Id: <1511294675-14438-3-git-send-email-linux@rempel-privat.de>
In-Reply-To: <1511294675-14438-1-git-send-email-linux@rempel-privat.de>
References: <1511294675-14438-1-git-send-email-linux@rempel-privat.de>
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
Subject: [PATCH v1 3/3] MIPS: dts: tl_wdr4300: enable watchdog node
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <linux@rempel-privat.de>

Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
---
 arch/mips/dts/ar9344-tl-wdr4300-v1.7.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/mips/dts/ar9344-tl-wdr4300-v1.7.dts b/arch/mips/dts/ar9344-tl-wdr4300-v1.7.dts
index d16cab0..5216cdc 100644
--- a/arch/mips/dts/ar9344-tl-wdr4300-v1.7.dts
+++ b/arch/mips/dts/ar9344-tl-wdr4300-v1.7.dts
@@ -38,6 +38,10 @@
 	clock-frequency = <40000000>;
 };
 
+&wdt0 {
+	status = "okay";
+};
+
 &spi {
 	num-chipselects = <1>;
 	status = "okay";
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

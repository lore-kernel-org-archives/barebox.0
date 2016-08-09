Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bX6IE-00078o-Qz
 for barebox@lists.infradead.org; Tue, 09 Aug 2016 12:38:05 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Tue,  9 Aug 2016 14:37:30 +0200
Message-Id: <1470746252-3146-5-git-send-email-s.trumtrar@pengutronix.de>
In-Reply-To: <1470746252-3146-1-git-send-email-s.trumtrar@pengutronix.de>
References: <1470746252-3146-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 5/7] ARM: socfpga: socrates: set alias for ethernet0
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/dts/socfpga_cyclone5_socrates.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/dts/socfpga_cyclone5_socrates.dts b/arch/arm/dts/socfpga_cyclone5_socrates.dts
index 12b3fa5dae40..e94df86813dc 100644
--- a/arch/arm/dts/socfpga_cyclone5_socrates.dts
+++ b/arch/arm/dts/socfpga_cyclone5_socrates.dts
@@ -22,6 +22,10 @@
 	chosen {
 		stdout-path = &uart0;
 	};
+
+	aliases {
+		ethernet0 = &gmac1;
+	};
 };
 
 &qspi {
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

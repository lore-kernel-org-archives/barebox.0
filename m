Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Whwqk-0008KB-Su
 for barebox@lists.infradead.org; Wed, 07 May 2014 08:05:12 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  7 May 2014 10:04:44 +0200
Message-Id: <1399449884-19089-14-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1399449884-19089-1-git-send-email-s.hauer@pengutronix.de>
References: <1399449884-19089-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 14/14] ARM: dts: i.MX53: Add ipu alias
To: barebox@lists.infradead.org

The barebox IPU driver needs it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/imx53.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/dts/imx53.dtsi b/arch/arm/dts/imx53.dtsi
index bc68012..8740b6f 100644
--- a/arch/arm/dts/imx53.dtsi
+++ b/arch/arm/dts/imx53.dtsi
@@ -4,5 +4,6 @@
 	aliases {
 		pwm0 = &pwm1;
 		pwm1 = &pwm2;
+		ipu0 = &ipu;
 	};
 };
-- 
2.0.0.rc0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

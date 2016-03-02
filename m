Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.85 #2 (Red Hat Linux))
 id 1ab9Jr-0003CM-8s
 for barebox@lists.infradead.org; Wed, 02 Mar 2016 16:08:12 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  2 Mar 2016 17:07:42 +0100
Message-Id: <1456934863-30990-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1456934863-30990-1-git-send-email-s.hauer@pengutronix.de>
References: <1456934863-30990-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 6/7] ARM: i.MX: karo-tx6: disable power button
To: Barebox List <barebox@lists.infradead.org>

The power button is not part of the CPU module and can be triggered
wrongly on other baseboards. Disable it since we do not need it
currently.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/imx6qdl-tx6x.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/dts/imx6qdl-tx6x.dtsi b/arch/arm/dts/imx6qdl-tx6x.dtsi
index 9fe6e6a..9c5d676 100644
--- a/arch/arm/dts/imx6qdl-tx6x.dtsi
+++ b/arch/arm/dts/imx6qdl-tx6x.dtsi
@@ -14,6 +14,10 @@
 			device-path = &usdhc4, "partname:boot1";
 		};
 	};
+
+	gpio-keys {
+		status = "disabled";
+	};
 };
 
 &fec {
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

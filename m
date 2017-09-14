Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dsPSv-0005Ts-Nq
 for barebox@lists.infradead.org; Thu, 14 Sep 2017 08:25:48 +0000
From: Oleksij Rempel <linux@rempel-privat.de>
Date: Thu, 14 Sep 2017 10:25:03 +0200
Message-Id: <20170914082509.23583-5-linux@rempel-privat.de>
In-Reply-To: <20170914082509.23583-1-linux@rempel-privat.de>
References: <20170914082509.23583-1-linux@rempel-privat.de>
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
Subject: [PATCH v3 04/10] MIPS: dts: tl_wdr4300: enable mac0
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <linux@rempel-privat.de>

Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
---
 arch/mips/dts/ar9344_tl_wdr4300.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/mips/dts/ar9344_tl_wdr4300.dts b/arch/mips/dts/ar9344_tl_wdr4300.dts
index b02c1d730..5a4a6f379 100644
--- a/arch/mips/dts/ar9344_tl_wdr4300.dts
+++ b/arch/mips/dts/ar9344_tl_wdr4300.dts
@@ -61,3 +61,7 @@
 		};
 	};
 };
+
+&mac0 {
+	status = "okay";
+};
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

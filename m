Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dsPSv-0005U7-Nv
 for barebox@lists.infradead.org; Thu, 14 Sep 2017 08:25:52 +0000
From: Oleksij Rempel <linux@rempel-privat.de>
Date: Thu, 14 Sep 2017 10:25:05 +0200
Message-Id: <20170914082509.23583-7-linux@rempel-privat.de>
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
Subject: [PATCH v3 06/10] MIPS: dts: tl_wdr4300: remove RO flag from barebox
 partition
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <linux@rempel-privat.de>

we need it RW for barebox updates.

Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
---
 arch/mips/dts/ar9344_tl_wdr4300.dts | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/mips/dts/ar9344_tl_wdr4300.dts b/arch/mips/dts/ar9344_tl_wdr4300.dts
index c784e6cb4..139717a6b 100644
--- a/arch/mips/dts/ar9344_tl_wdr4300.dts
+++ b/arch/mips/dts/ar9344_tl_wdr4300.dts
@@ -53,7 +53,6 @@
 		partition@0 {
 			label = "barebox";
 			reg = <0 0x80000>;
-			read-only;
 		};
 
 		partition@80000 {
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

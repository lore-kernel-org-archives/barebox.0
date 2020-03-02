Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8gy3-0002nr-TS
 for barebox@lists.infradead.org; Mon, 02 Mar 2020 09:02:29 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  2 Mar 2020 10:02:24 +0100
Message-Id: <20200302090225.8317-2-s.hauer@pengutronix.de>
In-Reply-To: <20200302090225.8317-1-s.hauer@pengutronix.de>
References: <20200302090225.8317-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/3] arm: vf610-zii-scu4-aib: Remove non effective properties
To: Barebox List <barebox@lists.infradead.org>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

The vf610-zii-scu4-aib dts contains a fixup for nodes which do not
exist anymore, so instead of fixing up the nodes new ones are created
which is surely not intentional.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/dts/vf610-zii-scu4-aib.dts | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/arch/arm/dts/vf610-zii-scu4-aib.dts b/arch/arm/dts/vf610-zii-scu4-aib.dts
index 1e6a54954a..43a13e243d 100644
--- a/arch/arm/dts/vf610-zii-scu4-aib.dts
+++ b/arch/arm/dts/vf610-zii-scu4-aib.dts
@@ -109,11 +109,3 @@
 		label = "fiber9";
 	};
 };
-
-/*
- * FIXME: Remove once this code appears in kernel DTS
-*/
-&i2c2 {
-	tca9548@70 { i2c-mux-idle-disconnect; };
-	tca9548@71 { i2c-mux-idle-disconnect; };
-};
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

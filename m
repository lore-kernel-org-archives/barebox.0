Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.15.18])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1er5R0-00056r-Rn
 for barebox@lists.infradead.org; Wed, 28 Feb 2018 17:22:32 +0000
From: Oleksij Rempel <linux@rempel-privat.de>
Date: Wed, 28 Feb 2018 18:22:06 +0100
Message-Id: <20180228172206.12823-2-linux@rempel-privat.de>
In-Reply-To: <20180228172206.12823-1-linux@rempel-privat.de>
References: <20180228172206.12823-1-linux@rempel-privat.de>
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
Subject: [PATCH v1 2/2] MIPS: dts: enable heartbeat led for
 ar9331-dptechnics-dpt-module
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <linux@rempel-privat.de>

Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
---
 arch/mips/dts/ar9331-dptechnics-dpt-module.dts | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/mips/dts/ar9331-dptechnics-dpt-module.dts b/arch/mips/dts/ar9331-dptechnics-dpt-module.dts
index 39eb36600..2c38bbc09 100644
--- a/arch/mips/dts/ar9331-dptechnics-dpt-module.dts
+++ b/arch/mips/dts/ar9331-dptechnics-dpt-module.dts
@@ -12,6 +12,12 @@
 			device-path = &spiflash, "partname:barebox-environment";
 		};
 	};
+
+	leds {
+		system {
+			barebox,default-trigger = "heartbeat";
+		};
+	};
 };
 
 &spiflash {
-- 
2.14.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

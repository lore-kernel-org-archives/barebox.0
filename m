Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j68rG-0006Xa-6E
 for barebox@lists.infradead.org; Mon, 24 Feb 2020 08:12:56 +0000
Received: from geraet.fritz.box (muedsl-82-207-211-016.citykom.de
 [82.207.211.16]) (Authenticated sender: ahmad@a3f.at)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id D622960016
 for <barebox@lists.infradead.org>; Mon, 24 Feb 2020 08:12:02 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Mon, 24 Feb 2020 09:11:54 +0100
Message-Id: <20200224081154.526146-2-ahmad@a3f.at>
In-Reply-To: <20200224081154.526146-1-ahmad@a3f.at>
References: <20200224081154.526146-1-ahmad@a3f.at>
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
Subject: [PATCH 2/2] ARM: stm32mp: add aliases for mmc1 and mmc2
To: barebox@lists.infradead.org

With the latest update, dts/src/arm/stm32mp151.dtsi now defines the two
other sdmmc nodes as well. Have barebox set aliases for them.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 arch/arm/dts/stm32mp151.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/dts/stm32mp151.dtsi b/arch/arm/dts/stm32mp151.dtsi
index e416c89856a2..8f8249dbc479 100644
--- a/arch/arm/dts/stm32mp151.dtsi
+++ b/arch/arm/dts/stm32mp151.dtsi
@@ -19,6 +19,8 @@
 		gpio10 = &gpiok;
 		gpio25 = &gpioz;
 		mmc0 = &sdmmc1;
+		mmc1 = &sdmmc2;
+		mmc2 = &sdmmc3;
 	};
 
 	psci {
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.visioncatalog.com ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.85_2 #1 (Red Hat Linux))
 id 1byakS-0001xK-00
 for barebox@lists.infradead.org; Mon, 24 Oct 2016 08:36:50 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 57A2DA003F7
 for <barebox@lists.infradead.org>; Mon, 24 Oct 2016 10:36:55 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Mon, 24 Oct 2016 10:36:24 +0200
Message-Id: <1477298184-32928-1-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH v2] ARM: dts: am33xx.dtsi: Add spi aliases
To: barebox@lists.infradead.org

We need to add the spi aliases to set the bus number correct in
the driver.

Delete the spi1 alias again in the am33xx-strip.dtsi for MLO as
the node is deleted there also.

Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
Changes in v2:
- Removed the first patch completly
- Delete now spi1 alias in strip file
- Updated commit message

 arch/arm/dts/am33xx-strip.dtsi | 1 +
 arch/arm/dts/am33xx.dtsi       | 2 ++
 2 files changed, 3 insertions(+)

diff --git a/arch/arm/dts/am33xx-strip.dtsi b/arch/arm/dts/am33xx-strip.dtsi
index 2943fd1..83d23a8 100644
--- a/arch/arm/dts/am33xx-strip.dtsi
+++ b/arch/arm/dts/am33xx-strip.dtsi
@@ -14,6 +14,7 @@
 		/delete-property/ mmc2;
 		/delete-property/ d_can0;
 		/delete-property/ d_can1;
+		/delete-property/ spi1;
 	};
 };
 
diff --git a/arch/arm/dts/am33xx.dtsi b/arch/arm/dts/am33xx.dtsi
index 7ba0a0b..f1ee7b3 100644
--- a/arch/arm/dts/am33xx.dtsi
+++ b/arch/arm/dts/am33xx.dtsi
@@ -18,5 +18,7 @@
 		mmc0 = &mmc1;
 		mmc1 = &mmc2;
 		mmc2 = &mmc3;
+		spi0 = &spi0;
+		spi1 = &spi1;
 	};
 };
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

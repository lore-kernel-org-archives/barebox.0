Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.tricorecenter.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bxWOr-0001ux-AJ
 for barebox@lists.infradead.org; Fri, 21 Oct 2016 09:46:06 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 7BA21A002D8
 for <barebox@lists.infradead.org>; Fri, 21 Oct 2016 11:46:11 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Fri, 21 Oct 2016 11:45:41 +0200
Message-Id: <1477043141-27884-2-git-send-email-t.remmet@phytec.de>
In-Reply-To: <1477043141-27884-1-git-send-email-t.remmet@phytec.de>
References: <1477043141-27884-1-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH 2/2] ARM: dts: am33xx.dtsi: Add spi aliases
To: barebox@lists.infradead.org

We need to add the spi aliases to set the bus number correct in
the driver.

Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 arch/arm/dts/am33xx.dtsi | 2 ++
 1 file changed, 2 insertions(+)

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

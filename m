Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.rapiddevelopmentkit.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Z8OoS-0003by-87
 for barebox@lists.infradead.org; Fri, 26 Jun 2015 08:16:41 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 6B6E2A003E7
 for <barebox@lists.infradead.org>; Fri, 26 Jun 2015 10:17:51 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Fri, 26 Jun 2015 10:14:37 +0200
Message-Id: <1435306477-5949-3-git-send-email-t.remmet@phytec.de>
In-Reply-To: <1435306477-5949-1-git-send-email-t.remmet@phytec.de>
References: <1435306477-5949-1-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH 3/3] ARM: dts: am33xx-strip: Strip more unused nodes
To: barebox@lists.infradead.org

There are still some nodes not used in barebox. Removed them.

Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 arch/arm/dts/am33xx-strip.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/dts/am33xx-strip.dtsi b/arch/arm/dts/am33xx-strip.dtsi
index 085200e..04cf315 100644
--- a/arch/arm/dts/am33xx-strip.dtsi
+++ b/arch/arm/dts/am33xx-strip.dtsi
@@ -43,3 +43,5 @@
 /delete-node/ &mcasp0;
 /delete-node/ &mcasp1;
 /delete-node/ &rng;
+/delete-node/ &rtc;
+/delete-node/ &wkup_m3;
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

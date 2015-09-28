Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.rapiddevelopmentkit.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZgVzu-0001QG-Nk
 for barebox@lists.infradead.org; Mon, 28 Sep 2015 10:49:31 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 1B686A003EC
 for <barebox@lists.infradead.org>; Mon, 28 Sep 2015 12:49:14 +0200 (CEST)
From: Wadim Egorov <w.egorov@phytec.de>
Date: Mon, 28 Sep 2015 12:47:59 +0200
Message-Id: <1443437281-33316-1-git-send-email-w.egorov@phytec.de>
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
Subject: [PATCH 1/3] ARM: dts: am335x-phytec-phycore-som: Disable mac node.
To: barebox@lists.infradead.org

Signed-off-by: Wadim Egorov <w.egorov@phytec.de>
---
 arch/arm/dts/am335x-phytec-phycore-som-mlo.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/dts/am335x-phytec-phycore-som-mlo.dts b/arch/arm/dts/am335x-phytec-phycore-som-mlo.dts
index f70835f..32b43dd 100644
--- a/arch/arm/dts/am335x-phytec-phycore-som-mlo.dts
+++ b/arch/arm/dts/am335x-phytec-phycore-som-mlo.dts
@@ -27,3 +27,7 @@
 &gpmc {
 	status = "disabled";
 };
+
+&mac {
+	status = "disabled";
+};
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

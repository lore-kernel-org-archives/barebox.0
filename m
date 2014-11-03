Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XlQNy-000685-H8
 for barebox@lists.infradead.org; Mon, 03 Nov 2014 22:46:07 +0000
Received: from tellur.intern.lynxeye.de (p57B5E6E1.dip0.t-ipconnect.de
 [87.181.230.225]) by lynxeye.de (Postfix) with ESMTPA id BF32C26C2005
 for <barebox@lists.infradead.org>; Mon,  3 Nov 2014 23:45:15 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Mon,  3 Nov 2014 23:52:17 +0100
Message-Id: <1415055144-6119-5-git-send-email-dev@lynxeye.de>
In-Reply-To: <1415055144-6119-1-git-send-email-dev@lynxeye.de>
References: <1415055144-6119-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 05/12] tegra: beaver: add stdout-path
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/dts/tegra30-beaver.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/dts/tegra30-beaver.dts b/arch/arm/dts/tegra30-beaver.dts
index d2809bb..5879353 100644
--- a/arch/arm/dts/tegra30-beaver.dts
+++ b/arch/arm/dts/tegra30-beaver.dts
@@ -12,6 +12,8 @@
 	};
 
 	chosen {
+		stdout-path = &uarta;
+
 		environment@0 {
 			compatible = "barebox,environment";
 			device-path = &emmc, "partname:boot1";
-- 
1.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

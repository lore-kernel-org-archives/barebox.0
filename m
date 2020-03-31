Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJLvF-0005th-4B
 for barebox@lists.infradead.org; Tue, 31 Mar 2020 18:47:38 +0000
Received: by mail-pf1-x444.google.com with SMTP id 22so10733866pfa.9
 for <barebox@lists.infradead.org>; Tue, 31 Mar 2020 11:47:37 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 31 Mar 2020 11:47:01 -0700
Message-Id: <20200331184722.22707-3-andrew.smirnov@gmail.com>
In-Reply-To: <20200331184722.22707-1-andrew.smirnov@gmail.com>
References: <20200331184722.22707-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 02/23] ARM: imx7d-zii-rpu2: Drop redundant chosen node
To: Barebox List <barebox@lists.infradead.org>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

This code is no longer necessary. Upstream DT code has all the
necessary bits. Remove it.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/dts/imx7d-zii-rpu2.dts | 9 ---------
 1 file changed, 9 deletions(-)

diff --git a/arch/arm/dts/imx7d-zii-rpu2.dts b/arch/arm/dts/imx7d-zii-rpu2.dts
index f8d6e8904..168f66c73 100644
--- a/arch/arm/dts/imx7d-zii-rpu2.dts
+++ b/arch/arm/dts/imx7d-zii-rpu2.dts
@@ -8,15 +8,6 @@
 #include "imx7d-ddrc.dtsi"
 
 / {
-	chosen {
-		/*
-		 * Kernel DTS incorrectly specifies stdout-path as
-                 * &uart1, this can be removed once the fix trickles
-                 * down
-		 */
-		stdout-path = &uart2;
-	};
-
 	aliases {
 		/*
 		 * NVMEM device corresponding to EEPROM attached to
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

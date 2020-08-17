Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k7cw3-0006ad-5g
 for barebox@lists.infradead.org; Mon, 17 Aug 2020 11:04:15 +0000
Received: by mail-lj1-x243.google.com with SMTP id g6so16928703ljn.11
 for <barebox@lists.infradead.org>; Mon, 17 Aug 2020 04:04:13 -0700 (PDT)
From: Lars Pedersen <lapeddk@gmail.com>
Date: Mon, 17 Aug 2020 13:03:46 +0200
Message-Id: <20200817110346.118450-1-lapeddk@gmail.com>
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
Subject: [PATCH] arm: imx: RELOCATABLE default yes on IMX_MULTI_BOARDS
To: barebox@lists.infradead.org
Cc: a.fatoum@pengutronix.de, Lars Pedersen <lapeddk@gmail.com>

Set relocatable to default yes when compiling for multiple i.MX boards,
since setting a suitable TEXT_BASE value across multiple boards is impossible.

Signed-off-by: Lars Pedersen <lapeddk@gmail.com>
---
 common/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/common/Kconfig b/common/Kconfig
index 658437f01..c37339793 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -349,6 +349,7 @@ config KALLSYMS
 config RELOCATABLE
 	depends on PPC || ARM
 	bool "generate relocatable barebox binary"
+	default y if IMX_MULTI_BOARDS
 	help
 	  A non relocatable barebox binary will run at it's compiled in
 	  link address in RAM. This leads to smaller image sizes but may
-- 
2.26.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

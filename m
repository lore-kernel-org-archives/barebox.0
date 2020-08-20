Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k8kIR-0002J8-MR
 for barebox@lists.infradead.org; Thu, 20 Aug 2020 13:08:00 +0000
Received: by mail-lj1-x243.google.com with SMTP id m22so2009518ljj.5
 for <barebox@lists.infradead.org>; Thu, 20 Aug 2020 06:07:56 -0700 (PDT)
From: Lars Pedersen <lapeddk@gmail.com>
Date: Thu, 20 Aug 2020 15:07:31 +0200
Message-Id: <20200820130731.1211839-1-lapeddk@gmail.com>
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
Subject: [PATCH v2] arm: imx: Select RELOCATABLE on IMX_MULTI_BOARDS
To: barebox@lists.infradead.org
Cc: a.fatoum@pengutronix.de, Lars Pedersen <lapeddk@gmail.com>

Depend on RELOCATABLE when compiling for multiple i.MX boards,
since setting a suitable TEXT_BASE value across multiple boards is impossible.

Signed-off-by: Lars Pedersen <lapeddk@gmail.com>
---
 arch/arm/mach-imx/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 2e8d2bd56..0fffde46e 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -215,6 +215,7 @@ config ARCH_VF610
 config IMX_MULTI_BOARDS
 	bool "Allow multiple boards to be selected"
 	select HAVE_PBL_MULTI_IMAGES
+	select RELOCATABLE
 
 if IMX_MULTI_BOARDS
 
-- 
2.26.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

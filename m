Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1grYOg-0003YA-2X
 for barebox@lists.infradead.org; Thu, 07 Feb 2019 01:22:35 +0000
Received: by mail-pf1-x442.google.com with SMTP id c73so3981012pfe.13
 for <barebox@lists.infradead.org>; Wed, 06 Feb 2019 17:22:32 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed,  6 Feb 2019 17:21:59 -0800
Message-Id: <20190207012214.5060-2-andrew.smirnov@gmail.com>
In-Reply-To: <20190207012214.5060-1-andrew.smirnov@gmail.com>
References: <20190207012214.5060-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 01/16] ARM: Select HAS_DMA for AArch64
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

AArch64 implements all of the DMA API functions, so it should select
HAS_DMA to allow building drivers that depend on that.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/cpu/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/cpu/Kconfig b/arch/arm/cpu/Kconfig
index 2359c56b3..257710329 100644
--- a/arch/arm/cpu/Kconfig
+++ b/arch/arm/cpu/Kconfig
@@ -13,6 +13,7 @@ config CPU_64
 	bool
 	select PHYS_ADDR_T_64BIT
 	select HAVE_PBL_IMAGE
+	select HAS_DMA
 
 # Select CPU types depending on the architecture selected. This selects
 # which CPUs we support in the kernel image, and the compiler instruction
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g9vxr-0002i4-03
 for barebox@lists.infradead.org; Tue, 09 Oct 2018 17:38:37 +0000
Received: by mail-pl1-x643.google.com with SMTP id q17-v6so1173550plr.8
 for <barebox@lists.infradead.org>; Tue, 09 Oct 2018 10:38:26 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue,  9 Oct 2018 10:37:51 -0700
Message-Id: <20181009173805.26181-4-andrew.smirnov@gmail.com>
In-Reply-To: <20181009173805.26181-1-andrew.smirnov@gmail.com>
References: <20181009173805.26181-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 03/17] VFxxx: Select CLOCKSOURCE_ARM_GLOBAL_TIMER
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 4a56fb9f4..8d161bee2 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -185,6 +185,7 @@ config ARCH_VF610
 	select COMMON_CLK_OF_PROVIDER
 	select NVMEM
 	select IMX_OCOTP	# Needed for clock adjustement
+	select CLOCKSOURCE_ARM_GLOBAL_TIMER
 
 config IMX_MULTI_BOARDS
 	bool "Allow multiple boards to be selected"
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

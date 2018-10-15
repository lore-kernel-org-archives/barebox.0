Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gBsW5-0006sk-Pp
 for barebox@lists.infradead.org; Mon, 15 Oct 2018 02:22:00 +0000
Received: by mail-pg1-x541.google.com with SMTP id f8-v6so8400661pgq.5
 for <barebox@lists.infradead.org>; Sun, 14 Oct 2018 19:21:47 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun, 14 Oct 2018 19:21:06 -0700
Message-Id: <20181015022125.24020-4-andrew.smirnov@gmail.com>
In-Reply-To: <20181015022125.24020-1-andrew.smirnov@gmail.com>
References: <20181015022125.24020-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v3 03/22] VFxxx: Select CLOCKSOURCE_ARM_GLOBAL_TIMER
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

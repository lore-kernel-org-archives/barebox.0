Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x243.google.com ([2607:f8b0:400e:c05::243])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dZel2-0003SJ-1j
 for barebox@lists.infradead.org; Mon, 24 Jul 2017 14:54:55 +0000
Received: by mail-pg0-x243.google.com with SMTP id 123so1364625pgj.0
 for <barebox@lists.infradead.org>; Mon, 24 Jul 2017 07:54:33 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 24 Jul 2017 07:53:58 -0700
Message-Id: <20170724145400.2279-8-andrew.smirnov@gmail.com>
In-Reply-To: <20170724145400.2279-1-andrew.smirnov@gmail.com>
References: <20170724145400.2279-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 7/9] ARM: i.MX: Add ARCH_HAD_FEC_IMX to ARCH_IMX7
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

---
 arch/arm/mach-imx/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 6110924af..9ab27b42d 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -168,6 +168,7 @@ config ARCH_IMX7
 	select PINCTRL_IMX_IOMUX_V3
 	select OFTREE
 	select COMMON_CLK_OF_PROVIDER
+	select ARCH_HAS_FEC_IMX
 
 config ARCH_VF610
 	bool
-- 
2.13.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

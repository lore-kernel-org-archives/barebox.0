Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x242.google.com ([2607:f8b0:400e:c00::242])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cr2jG-0005Ea-P2
 for barebox@lists.infradead.org; Thu, 23 Mar 2017 13:24:44 +0000
Received: by mail-pf0-x242.google.com with SMTP id n11so20579641pfg.2
 for <barebox@lists.infradead.org>; Thu, 23 Mar 2017 06:24:20 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 23 Mar 2017 06:23:50 -0700
Message-Id: <20170323132358.8539-7-andrew.smirnov@gmail.com>
In-Reply-To: <20170323132358.8539-1-andrew.smirnov@gmail.com>
References: <20170323132358.8539-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 06/14] at91: Enable PINCTRL for SOC_AT91SAM9
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-at91/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index 28f66ac..0b77653 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -44,6 +44,7 @@ config SOC_AT91SAM9
 	select COMMON_CLK_OF_PROVIDER
 	select AT91SAM9_SMC
 	select CLOCKSOURCE_ATMEL_PIT
+	select PINCTRL
 
 config SOC_SAMA5
 	bool
-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

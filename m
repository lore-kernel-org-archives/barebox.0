Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22e.google.com ([2a00:1450:4010:c04::22e])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Y4ej5-0005SE-1l
 for barebox@lists.infradead.org; Fri, 26 Dec 2014 23:55:23 +0000
Received: by mail-lb0-f174.google.com with SMTP id 10so9145153lbg.33
 for <barebox@lists.infradead.org>; Fri, 26 Dec 2014 15:55:00 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sat, 27 Dec 2014 02:56:27 +0300
Message-Id: <1419638189-5678-5-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1419638189-5678-1-git-send-email-antonynpavlov@gmail.com>
References: <1419638189-5678-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 4/6] ARM: versatile: enable missed HAS_DEBUG_LL
To: barebox@lists.infradead.org

We already have arch/arm/mach-versatile/include/mach/debug_ll.h
but HAS_DEBUG_LL is missed.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/arm/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 4aa6afe..97e2526 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -191,6 +191,7 @@ config ARCH_VERSATILE
 	select CPU_ARM926T
 	select GPIOLIB
 	select HAVE_CLK
+	select HAS_DEBUG_LL
 
 config ARCH_VEXPRESS
 	bool "ARM Vexpres boards"
-- 
2.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

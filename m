Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f177.google.com ([209.85.217.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SCDjF-0005Rs-QX
 for barebox@lists.infradead.org; Mon, 26 Mar 2012 17:29:15 +0000
Received: by lbol5 with SMTP id l5so4906195lbo.36
 for <barebox@lists.infradead.org>; Mon, 26 Mar 2012 10:29:10 -0700 (PDT)
From: esben.haabendal@gmail.com
Date: Mon, 26 Mar 2012 19:29:05 +0200
Message-Id: <1332782947-3407-3-git-send-email-esben.haabendal@gmail.com>
In-Reply-To: <1332782947-3407-1-git-send-email-esben.haabendal@gmail.com>
References: <1332782947-3407-1-git-send-email-esben.haabendal@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/4] mxs: Fix i.MX28 PWM3 iomux configuration
To: barebox@lists.infradead.org
Cc: Esben Haabendal <esben.haabendal@prevas.dk>

From: Esben Haabendal <esben.haabendal@gmail.com>

Signed-off-by: Esben Haabendal <esben.haabendal@prevas.dk>
---
 arch/arm/mach-mxs/include/mach/iomux-imx28.h |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/arch/arm/mach-mxs/include/mach/iomux-imx28.h b/arch/arm/mach-mxs/include/mach/iomux-imx28.h
index 1557126..fae525e 100644
--- a/arch/arm/mach-mxs/include/mach/iomux-imx28.h
+++ b/arch/arm/mach-mxs/include/mach/iomux-imx28.h
@@ -296,7 +296,7 @@
 #define LCD_RESET_GPIO		(FUNC(3) | PORTF(3, 30))
 #define PWM4			(FUNC(0) | PORTF(3, 29))
 #define PWM4_GPIO		(FUNC(3) | PORTF(3, 29))
-#define PWM3			(FUNC(0) | PORTF(3 28))
+#define PWM3			(FUNC(0) | PORTF(3, 28))
 #define PWM3_GPIO		(FUNC(3) | PORTF(3, 28))
 
 #define PWM2			(FUNC(0) | PORTF(3, 18))
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

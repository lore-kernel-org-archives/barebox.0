Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x232.google.com ([2a00:1450:400c:c09::232])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aAMLG-0001Ja-PY
 for barebox@lists.infradead.org; Sat, 19 Dec 2015 18:34:55 +0000
Received: by mail-wm0-x232.google.com with SMTP id l126so23290397wml.1
 for <barebox@lists.infradead.org>; Sat, 19 Dec 2015 10:34:33 -0800 (PST)
From: Alexander Aring <alex.aring@gmail.com>
Date: Sat, 19 Dec 2015 19:34:00 +0100
Message-Id: <1450550044-14674-4-git-send-email-alex.aring@gmail.com>
In-Reply-To: <1450550044-14674-1-git-send-email-alex.aring@gmail.com>
References: <1450550044-14674-1-git-send-email-alex.aring@gmail.com>
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
Subject: [PATCH 3/7] arm: bcm2835: fix indentation
To: barebox@lists.infradead.org
Cc: dthompson@nexusisp.com, carlo.caione@gmail.com

This patch fix indentation in core.h of mach-bcm2835.

Signed-off-by: Alexander Aring <alex.aring@gmail.com>
---
 arch/arm/mach-bcm2835/include/mach/core.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-bcm2835/include/mach/core.h b/arch/arm/mach-bcm2835/include/mach/core.h
index 477ecb9..b0bed80 100644
--- a/arch/arm/mach-bcm2835/include/mach/core.h
+++ b/arch/arm/mach-bcm2835/include/mach/core.h
@@ -24,7 +24,7 @@ void bcm2835_add_device_sdram(u32 size);
 static void inline bcm2835_register_mci(void)
 {
 	add_generic_device("bcm2835_mci", 0, NULL, BCM2835_EMMC_BASE, 0xFC,
-			IORESOURCE_MEM, NULL);
+			   IORESOURCE_MEM, NULL);
 }
 
 static void inline bcm2835_register_fb(void)
-- 
2.6.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

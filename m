Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22b.google.com ([2a00:1450:4010:c03::22b])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uigdt-0001xx-97
 for barebox@lists.infradead.org; Sat, 01 Jun 2013 07:54:26 +0000
Received: by mail-la0-f43.google.com with SMTP id fe20so579278lab.16
 for <barebox@lists.infradead.org>; Sat, 01 Jun 2013 00:54:03 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sat,  1 Jun 2013 11:52:48 +0400
Message-Id: <1370073169-29009-6-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1370073169-29009-1-git-send-email-antonynpavlov@gmail.com>
References: <1370073169-29009-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 5/6] MIPS: malta: adapt for new debug_ll
To: barebox@lists.infradead.org

Set fake DEBUG_LL_UART_DIVISOR to use <asm/debug_ll_ns16550.h>.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/mach-malta/include/mach/hardware.h |    1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/mips/mach-malta/include/mach/hardware.h b/arch/mips/mach-malta/include/mach/hardware.h
index 5e8e276..8bd814d 100644
--- a/arch/mips/mach-malta/include/mach/hardware.h
+++ b/arch/mips/mach-malta/include/mach/hardware.h
@@ -20,6 +20,7 @@
 
 #define DEBUG_LL_UART_ADDR	0xb00003f8
 #define DEBUG_LL_UART_SHIFT	0
+#define DEBUG_LL_UART_DIVISOR	1	/* no matter for emulated port */
 
 /*
  * Reset register.
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x242.google.com ([2a00:1450:400c:c09::242])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bK2Ru-0007tN-Kq
 for barebox@lists.infradead.org; Mon, 04 Jul 2016 11:54:04 +0000
Received: by mail-wm0-x242.google.com with SMTP id r201so21093086wme.0
 for <barebox@lists.infradead.org>; Mon, 04 Jul 2016 04:53:45 -0700 (PDT)
From: Raphael Poggi <poggi.raph@gmail.com>
Date: Mon,  4 Jul 2016 13:52:55 +0200
Message-Id: <1467633177-22478-13-git-send-email-poggi.raph@gmail.com>
In-Reply-To: <1467633177-22478-1-git-send-email-poggi.raph@gmail.com>
References: <1467633177-22478-1-git-send-email-poggi.raph@gmail.com>
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
Subject: [PATCH v5 12/14] arm: include: swab: use rigth assembly for armv8
To: barebox@lists.infradead.org
Cc: Raphael Poggi <poggi.raph@gmail.com>

Signed-off-by: Raphael Poggi <poggi.raph@gmail.com>
---
 arch/arm/include/asm/swab.h | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/include/asm/swab.h b/arch/arm/include/asm/swab.h
index 9997ad2..3795437 100644
--- a/arch/arm/include/asm/swab.h
+++ b/arch/arm/include/asm/swab.h
@@ -33,7 +33,11 @@ static inline __attribute_const__ __u16 __arch_swab16(__u16 x)
 
 static inline __attribute_const__ __u32 __arch_swab32(__u32 x)
 {
+#if __LINUX_ARM_ARCH__ == 8
+	__asm__ ("rev %w0, %w1" : "=r" (x) : "r" (x));
+#else
 	__asm__ ("rev %0, %1" : "=r" (x) : "r" (x));
+#endif
 	return x;
 }
 #define __arch_swab32 __arch_swab32
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

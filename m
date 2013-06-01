Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pd0-f174.google.com ([209.85.192.174])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UimRM-0008Qd-Pv
 for barebox@lists.infradead.org; Sat, 01 Jun 2013 14:05:53 +0000
Received: by mail-pd0-f174.google.com with SMTP id 3so3604079pdj.33
 for <barebox@lists.infradead.org>; Sat, 01 Jun 2013 07:05:30 -0700 (PDT)
From: monaka@monami-ya.jp
Date: Sat,  1 Jun 2013 23:05:22 +0900
Message-Id: <1370095522-63657-1-git-send-email-monaka@monami-ya.com>
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
Subject: [PATCH] [x86] Avoid build error on "config SPI" is y
To: barebox@lists.infradead.org

From: Masaki Muranaka <monaka@monami-ya.com>

In case he configures with make ARCH=x85 menuconfig,
config SPI will be set to "y". And he will got an error on spi.h.

Signed-off-by: Masaki Muranaka <monaka@monami-ya.com>
---
 arch/x86/include/asm/types.h | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/x86/include/asm/types.h b/arch/x86/include/asm/types.h
index b0218d2..d473405 100644
--- a/arch/x86/include/asm/types.h
+++ b/arch/x86/include/asm/types.h
@@ -29,12 +29,16 @@ typedef unsigned int __u32;
 typedef __signed__ long long __s64;
 typedef unsigned long long __u64;
 
+typedef signed char s8;
 typedef unsigned char u8;
 
+typedef signed short s16;
 typedef unsigned short u16;
 
+typedef signed int s32;
 typedef unsigned int u32;
 
+typedef signed long long s64;
 typedef unsigned long long u64;
 
 #endif /* __ASSEMBLY__ */
-- 
1.8.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

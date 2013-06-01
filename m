Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x232.google.com ([2a00:1450:4010:c03::232])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uib42-0006om-S1
 for barebox@lists.infradead.org; Sat, 01 Jun 2013 01:57:03 +0000
Received: by mail-la0-f50.google.com with SMTP id ed20so1950330lab.9
 for <barebox@lists.infradead.org>; Fri, 31 May 2013 18:56:40 -0700 (PDT)
MIME-Version: 1.0
Date: Sat, 1 Jun 2013 10:56:40 +0900
Message-ID: <CAJBvFxNw3yip2gozgC6-cnxL5=OVMOZ9xBy5ZLhY0grSjyonQA@mail.gmail.com>
From: Masaki Muranaka <monaka@monami-ya.jp>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [patch][x86] Avoid build error on "config SPI" is y
To: barebox@lists.infradead.org

Hello,

In case he configures with make ARCH=x85 menuconfig,
config SPI will be set to "y". And he will got an error on spi.h.

After applied this patch, the error will be fixed.

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
--
Masaki Muranaka
Monami-ya LLC, Japan.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

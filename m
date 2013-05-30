Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x236.google.com ([2a00:1450:4010:c03::236])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ui1iz-00066e-2I
 for barebox@lists.infradead.org; Thu, 30 May 2013 12:12:57 +0000
Received: by mail-la0-f54.google.com with SMTP id eg20so163152lab.13
 for <barebox@lists.infradead.org>; Thu, 30 May 2013 05:12:34 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu, 30 May 2013 16:11:29 +0400
Message-Id: <1369915889-30767-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] MIPS: asm/mipsregs.h: remove unused stuff
To: barebox@lists.infradead.org

In barebox we have no CONFIG_MIPS_MT_SMTC Kconfig option.
So remove the code under this macro.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/include/asm/mipsregs.h |    8 --------
 1 file changed, 8 deletions(-)

diff --git a/arch/mips/include/asm/mipsregs.h b/arch/mips/include/asm/mipsregs.h
index 608f19b..f923860 100644
--- a/arch/mips/include/asm/mipsregs.h
+++ b/arch/mips/include/asm/mipsregs.h
@@ -673,19 +673,11 @@ do {									\
 #define write_c0_compare3(val)	__write_32bit_c0_register($11, 7, val)
 
 #define read_c0_status()	__read_32bit_c0_register($12, 0)
-#ifdef CONFIG_MIPS_MT_SMTC
-#define write_c0_status(val)						\
-do {									\
-	__write_32bit_c0_register($12, 0, val);				\
-	__ehb();							\
-} while (0)
-#else
 /*
  * Legacy non-SMTC code, which may be hazardous
  * but which might not support EHB
  */
 #define write_c0_status(val)	__write_32bit_c0_register($12, 0, val)
-#endif /* CONFIG_MIPS_MT_SMTC */
 
 #define read_c0_cause()		__read_32bit_c0_register($13, 0)
 #define write_c0_cause(val)	__write_32bit_c0_register($13, 0, val)
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

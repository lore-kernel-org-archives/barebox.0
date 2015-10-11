Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-x230.google.com ([2607:f8b0:400e:c03::230])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZlLbb-0007ra-TN
 for barebox@lists.infradead.org; Sun, 11 Oct 2015 18:44:24 +0000
Received: by padhy16 with SMTP id hy16so133242340pad.1
 for <barebox@lists.infradead.org>; Sun, 11 Oct 2015 11:44:03 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun, 11 Oct 2015 11:43:35 -0700
Message-Id: <1444589021-12727-2-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1444589021-12727-1-git-send-email-andrew.smirnov@gmail.com>
References: <1444589021-12727-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 2/8] arm: Disable unaligned accesses
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Form reading ARM architecture related documentation if appears that
while unaligned memory access is supported by the processor in general
it is not supported if MMU is disabled.

The problem in question can be easilty reproduced by building the code
without this patch, MMU disabled, and trying to run 'memtest'
command. Which would in turn call mem_test() which would eventually
call show_progress(). That last function, if build without
-mno-unaligned-access would result in unaligned memory access which
would result in Barebox hanging.

This patch instructs the compiler to not generate any unaligned
accesses to memory thus avoiding the problem.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/Makefile | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 721aa9b..cae05ff 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -13,6 +13,13 @@ AS		+= -EL
 LD		+= -EL
 endif

+# Unaligned access is not supported when MMU is disabled, so given how
+# at least some of the code would be executed with MMU off, lets be
+# conservative and instruct the compiler not to generate any unaligned
+# accesses
+CFLAGS += -mno-unaligned-access
+
+
 # This selects which instruction set is used.
 # Note that GCC does not numerically define an architecture version
 # macro, but instead defines a whole series of macros which makes
--
2.1.4

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

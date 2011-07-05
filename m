Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ew0-f49.google.com ([209.85.215.49])
	by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1Qe2kD-0003SS-DL
	for barebox@lists.infradead.org; Tue, 05 Jul 2011 10:20:42 +0000
Received: by ewy3 with SMTP id 3so2202384ewy.36
	for <barebox@lists.infradead.org>; Tue, 05 Jul 2011 03:19:31 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue,  5 Jul 2011 14:19:22 +0400
Message-Id: <1309861164-11327-3-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1309861164-11327-1-git-send-email-antonynpavlov@gmail.com>
References: <1309861164-11327-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH v1-very-draft 3/5] MIPS: fix file gt64120.h for barebox
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/include/asm/gt64120.h |    6 +++---
 1 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/mips/include/asm/gt64120.h b/arch/mips/include/asm/gt64120.h
index e64b410..a988891 100644
--- a/arch/mips/include/asm/gt64120.h
+++ b/arch/mips/include/asm/gt64120.h
@@ -21,9 +21,9 @@
 #ifndef _ASM_GT64120_H
 #define _ASM_GT64120_H
 
-#include <linux/clocksource.h>
+//#include <linux/clocksource.h>
 
-#include <asm/addrspace.h>
+//#include <asm/addrspace.h>
 #include <asm/byteorder.h>
 
 #define MSK(n)			((1 << (n)) - 1)
@@ -561,7 +561,7 @@
  *		  full gt64120 cascade interrupt support is in place
  */
 
-#include <mach-gt64120.h>
+//#include <mach-gt64120.h>
 
 /*
  * Because of an error/peculiarity in the Galileo chip, we need to swap the
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

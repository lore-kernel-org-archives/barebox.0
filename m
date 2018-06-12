Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x242.google.com ([2607:f8b0:400e:c01::242])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fSYXY-0007Tc-F1
 for barebox@lists.infradead.org; Tue, 12 Jun 2018 01:56:09 +0000
Received: by mail-pl0-x242.google.com with SMTP id c23-v6so13399676plz.12
 for <barebox@lists.infradead.org>; Mon, 11 Jun 2018 18:55:59 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 11 Jun 2018 18:53:15 -0700
Message-Id: <20180612015326.26192-44-andrew.smirnov@gmail.com>
In-Reply-To: <20180612015326.26192-1-andrew.smirnov@gmail.com>
References: <20180612015326.26192-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v4 43/54] ARM: interrupts64: Include ESR value in exception
 traceback
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Oftentimes knowing the class of exception is not enough and full ESR
value is needed to decode the specifics. Add code to print ESR as a
part of excpetion traceback to provide that information.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/cpu/interrupts_64.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/cpu/interrupts_64.c b/arch/arm/cpu/interrupts_64.c
index 32c8dfcb2..f6f0c9d09 100644
--- a/arch/arm/cpu/interrupts_64.c
+++ b/arch/arm/cpu/interrupts_64.c
@@ -155,7 +155,8 @@ void do_sync(struct pt_regs *pt_regs, unsigned int esr, unsigned long far)
 		return;
 	}
 
-	printf("%s exception at 0x%016lx\n", esr_get_class_string(esr), far);
+	printf("%s exception (ESR 0x%08x) at 0x%016lx\n", esr_get_class_string(esr),
+	       esr, far);
 	do_exception(pt_regs);
 }
 
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

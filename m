Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from m15-112.126.com ([220.181.15.112])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WIuGf-0001en-5E
 for barebox@lists.infradead.org; Thu, 27 Feb 2014 06:16:28 +0000
Date: Thu, 27 Feb 2014 14:15:44 +0800
From: zzs <zzs213@126.com>
Message-ID: <20140227061544.GA20720@greatfirst.com>
MIME-Version: 1.0
Content-Disposition: inline
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
Subject: bug in arm_cpu_lowlevel_init ??
To: barebox <barebox@lists.infradead.org>

My cpu is at91rm9200

When start barebox at reset time by burn it in Nor flash, all things Ok.

But when start it by my first stage boot program, It's crash.  And
Execption process code which install by my boot program, report Undef
instruction detected.

The only diff is my boot program change the cpu to svc mode already.

I try the flowwing patch:

------------------------------------------------
--- a/arch/arm/cpu/lowlevel.S
+++ b/arch/arm/cpu/lowlevel.S
@@ -4,6 +4,7 @@

 .section ".text_bare_init_","ax"
 ENTRY(arm_cpu_lowlevel_init)
+       mov     r2, lr
        /* set the cpu to SVC32 mode */
        mrs     r12, cpsr
        bic     r12, r12, #0x1f
@@ -35,5 +36,5 @@ ENTRY(arm_cpu_lowlevel_init)

        mcr     p15, 0, r12, c1, c0, 0

-       mov     pc, lr
+       mov     pc, r2
 ENDPROC(arm_cpu_lowlevel_init)
------------------------------------------------

The problem dispeared, All things worked!!

I'm not very familiar with asm code,

Anybody tell me is this a bug, Or my boot program has strange behavior?

Thanks!!

-- 
Best Regards,
zzs



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

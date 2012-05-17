Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yw0-f49.google.com ([209.85.213.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SV8pe-0007RJ-Go
 for barebox@lists.infradead.org; Thu, 17 May 2012 22:06:02 +0000
Received: by yhjj52 with SMTP id j52so2695110yhj.36
 for <barebox@lists.infradead.org>; Thu, 17 May 2012 15:06:00 -0700 (PDT)
MIME-Version: 1.0
Date: Fri, 18 May 2012 00:06:00 +0200
Message-ID: <CAOQ7t2aPsARo+NTNDobCAUVjhRR4TE9X7-L5m8xqMo4+R6oNOA@mail.gmail.com>
From: Carlo Caione <carlo.caione@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: SVC32 and SP
To: barebox@lists.infradead.org

Hi,
I was debugging the problem with barebox and qemu-linaro as I
described in a previous post.
This is what I have discovered.

The problem is in the strlen function that seems to get corrupted
runtime during barebox initialization. The problem seems related to
the switch to SVC32 mode together with the __mmu_cache_flush
implementation.
Before setting the cpu to SVC32 mode, the Stack Pointer is correctly
set to 0x4020fcb0, but, immediately after the writing in the cpsr
register (__asm__ __volatile__("msr cpsr, %0" : : "r"(r));) the Stack
Pointer (now R13_SVC) is in 0x40205cb0 that is in the middle of the
.text section (and precisely in the middle of the strlen routine).
The problem is that in the __mmu_cache_flush disassembly I have a huge
push {r0, r1, r2, r3, r4, r5, r6, r7, r9, r10, r11} that overwrites
the strlen function and corrupts the code.

I'm using:
arm-none-eabi-gcc (Sourcery CodeBench Lite 2011.09-69) 4.6.1
QEMU emulator version 1.0.91 (qemu-linaro from git)

--
Carlo Caione

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

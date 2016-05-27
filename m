Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b6E8r-0004Wb-BD
 for barebox@lists.infradead.org; Fri, 27 May 2016 09:33:19 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps (TLS1.2:RSA_AES_128_CBC_SHA1:128)
 (Exim 4.80) (envelope-from <jbe@pengutronix.de>) id 1b6E8T-00064L-R2
 for barebox@lists.infradead.org; Fri, 27 May 2016 11:32:53 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.87)
 (envelope-from <jbe@pengutronix.de>) id 1b6E8T-0002dC-JE
 for barebox@lists.infradead.org; Fri, 27 May 2016 11:32:53 +0200
From: Juergen Borleis <jbe@pengutronix.de>
Date: Fri, 27 May 2016 11:32:48 +0200
Message-Id: <1464341571-22552-2-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1464341571-22552-1-git-send-email-jbe@pengutronix.de>
References: <1464341571-22552-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 1/4] PPC: fix size optimisation
To: barebox@lists.infradead.org

Since patch e92abad36307d the linker discards sections which seems not
used to make the image smaller.
But this change will discard the whole init and exception code from start.S
which renders the final image useless.

From 'barebox.map' without this patch:

Discarded input sections
 .text          0x0000000000000000     0x358c arch/ppc/mach-mpc5xxx/start.o
 .data          0x0000000000000000        0x0 arch/ppc/mach-mpc5xxx/start.o
 .bss           0x0000000000000000        0x0 arch/ppc/mach-mpc5xxx/start.o
 .got2          0x0000000000000000       0x24 arch/ppc/mach-mpc5xxx/start.o
[...]

So, define the entry point to mark the init and exception used.

From 'barebox.map' with this patch applied:

Discarded input sections
 .data          0x0000000000000000        0x0 arch/ppc/mach-mpc5xxx/start.o
 .bss           0x0000000000000000        0x0 arch/ppc/mach-mpc5xxx/start.o
[...]

Note: tested on MPC5200 at run time, for MPC85XX compile time only

Signed-off-by: Juergen Borleis <jbe@pengutronix.de>
---
 arch/ppc/boards/pcm030/barebox.lds.S | 1 +
 arch/ppc/mach-mpc85xx/barebox.lds.S  | 1 +
 2 files changed, 2 insertions(+)

diff --git a/arch/ppc/boards/pcm030/barebox.lds.S b/arch/ppc/boards/pcm030/barebox.lds.S
index 0e08e05..0e34f0a 100644
--- a/arch/ppc/boards/pcm030/barebox.lds.S
+++ b/arch/ppc/boards/pcm030/barebox.lds.S
@@ -20,6 +20,7 @@
 #include <asm-generic/barebox.lds.h>
 
 OUTPUT_ARCH("powerpc")
+ENTRY(_start)
 /* Do we need any of these for elf?
    __DYNAMIC = 0;    */
 SECTIONS
diff --git a/arch/ppc/mach-mpc85xx/barebox.lds.S b/arch/ppc/mach-mpc85xx/barebox.lds.S
index 1f7f52c..beebab3 100644
--- a/arch/ppc/mach-mpc85xx/barebox.lds.S
+++ b/arch/ppc/mach-mpc85xx/barebox.lds.S
@@ -22,6 +22,7 @@
 #endif
 
 OUTPUT_ARCH("powerpc")
+ENTRY(_start_e500)
 
 PHDRS
 {
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

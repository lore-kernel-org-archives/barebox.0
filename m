Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f177.google.com ([209.85.217.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Ss8sr-0001bV-RD
 for barebox@lists.infradead.org; Fri, 20 Jul 2012 08:48:29 +0000
Received: by lbbgg6 with SMTP id gg6so4936742lbb.36
 for <barebox@lists.infradead.org>; Fri, 20 Jul 2012 01:48:20 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri, 20 Jul 2012 12:47:37 +0400
Message-Id: <1342774059-2169-6-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1342774059-2169-1-git-send-email-antonynpavlov@gmail.com>
References: <1342774059-2169-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC 5/7] MIPS: malta: make KSEG0 uncached
To: barebox@lists.infradead.org

On MIPS as usual KSEG0 segment used for cached memory access,
and Linux kernel linked to KSEG0.

As just now we don't have cache memory support on MIPS,
we can change the KSEG0 mode (make it uncached) and
use it without any danger.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/mach-malta/lowlevel_init.S |    4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/mips/mach-malta/lowlevel_init.S b/arch/mips/mach-malta/lowlevel_init.S
index a0134f8..368c2fe 100644
--- a/arch/mips/mach-malta/lowlevel_init.S
+++ b/arch/mips/mach-malta/lowlevel_init.S
@@ -62,6 +62,10 @@ LEAF(mach_init_lowlevel)
 	lui	t0, 0x5e00
 	sw	t0, 136(t1) /* GT_PCI0M1HD */
 
+	/* make KSEG0 uncached */
+	li	t0, CONF_CM_UNCACHED
+	mtc0	t0, CP0_CONFIG
+
 	/* return */
 	b	mach_init_lowlevel_return
 	 nop
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

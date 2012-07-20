Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f177.google.com ([209.85.217.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Ss8si-0001Zq-Eh
 for barebox@lists.infradead.org; Fri, 20 Jul 2012 08:48:21 +0000
Received: by lbbgg6 with SMTP id gg6so4936640lbb.36
 for <barebox@lists.infradead.org>; Fri, 20 Jul 2012 01:48:14 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri, 20 Jul 2012 12:47:34 +0400
Message-Id: <1342774059-2169-3-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC 2/7] MIPS: add the initial support for lowlevel init
To: barebox@lists.infradead.org

This commit introduce the initial support for
machine specific lowlevel initialization
(e.g. RAM controller or cache memory).

To return from mach_init_lowlevel() it uses
explicit mach_init_lowlevel_return label.
This saves ra register for using inside mach_init_lowlevel()

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/boot/start.S |    8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/mips/boot/start.S b/arch/mips/boot/start.S
index 10f7691..238e2c4 100644
--- a/arch/mips/boot/start.S
+++ b/arch/mips/boot/start.S
@@ -74,6 +74,14 @@ __start:
 	and	k0, k1
 	mtc0	k0, CP0_STATUS
 
+#ifdef CONFIG_MACH_DO_LOWLEVEL_INIT
+	b	mach_init_lowlevel
+	 nop
+
+mach_init_lowlevel_return:
+EXPORT(mach_init_lowlevel_return)
+#endif
+
 	/* copy barebox to link location */
 	ADR	a0, _start, t1	/* a0 <- pc-relative position of _start */
 
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

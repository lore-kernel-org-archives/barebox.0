Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lpp01m010-f49.google.com ([209.85.215.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1STcXP-0001gu-4u
 for barebox@lists.infradead.org; Sun, 13 May 2012 17:24:55 +0000
Received: by laap9 with SMTP id p9so3589191laa.36
 for <barebox@lists.infradead.org>; Sun, 13 May 2012 10:24:53 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sun, 13 May 2012 21:24:43 +0400
Message-Id: <1336929884-19292-3-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1336929884-19292-1-git-send-email-antonynpavlov@gmail.com>
References: <1336929884-19292-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC 2/3] MIPS: add the initial support for lowlevel init
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
index 6bf5baa..6db104b 100644
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

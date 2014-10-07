Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XbVf2-0008HU-78
 for barebox@lists.infradead.org; Tue, 07 Oct 2014 14:22:46 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1XbVee-0003OM-RU
 for barebox@lists.infradead.org; Tue, 07 Oct 2014 16:22:20 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.84)
 (envelope-from <jbe@pengutronix.de>) id 1XbVee-0004Cl-Q7
 for barebox@lists.infradead.org; Tue, 07 Oct 2014 16:22:20 +0200
From: Juergen Borleis <jbe@pengutronix.de>
Date: Tue,  7 Oct 2014 16:22:01 +0200
Message-Id: <1412691738-11145-3-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1412691738-11145-1-git-send-email-jbe@pengutronix.de>
References: <1412691738-11145-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 02/19] arch/MPC5xxx: use a mach specific linker script instead
 of a board specific one
To: barebox@lists.infradead.org

For easier maintenance in the future.

Signed-off-by: Juergen Borleis <jbe@pengutronix.de>
---
 arch/ppc/Makefile                                      | 5 -----
 arch/ppc/boards/pcm030/Makefile                        | 1 -
 arch/ppc/mach-mpc5xxx/Makefile                         | 1 +
 arch/ppc/{boards/pcm030 => mach-mpc5xxx}/barebox.lds.S | 0
 4 files changed, 1 insertion(+), 6 deletions(-)
 rename arch/ppc/{boards/pcm030 => mach-mpc5xxx}/barebox.lds.S (100%)

diff --git a/arch/ppc/Makefile b/arch/ppc/Makefile
index fb9b0b8..d0dd51e 100644
--- a/arch/ppc/Makefile
+++ b/arch/ppc/Makefile
@@ -64,9 +64,4 @@ endif
 
 common-y += $(BOARD) $(CPU) $(MACH)
 common-y += arch/ppc/lib/
-
-ifdef CONFIG_MPC85xx
 lds-y += $(MACH)/barebox.lds
-else
-lds-y += $(BOARD)/barebox.lds
-endif
diff --git a/arch/ppc/boards/pcm030/Makefile b/arch/ppc/boards/pcm030/Makefile
index e7d744b..3749605 100644
--- a/arch/ppc/boards/pcm030/Makefile
+++ b/arch/ppc/boards/pcm030/Makefile
@@ -1,2 +1 @@
 obj-y += pcm030.o
-extra-y += barebox.lds
diff --git a/arch/ppc/mach-mpc5xxx/Makefile b/arch/ppc/mach-mpc5xxx/Makefile
index c532a6d..bf8d68d 100644
--- a/arch/ppc/mach-mpc5xxx/Makefile
+++ b/arch/ppc/mach-mpc5xxx/Makefile
@@ -5,6 +5,7 @@ obj-y				+= speed.o
 obj-y				+= traps.o
 obj-y				+= time.o
 extra-y				+= start.o
+extra-y				+= barebox.lds
 obj-$(CONFIG_MPC5200)		+= firmware_sc_task_bestcomm.impl.o
 obj-$(CONFIG_REGINFO)		+= reginfo.o
 
diff --git a/arch/ppc/boards/pcm030/barebox.lds.S b/arch/ppc/mach-mpc5xxx/barebox.lds.S
similarity index 100%
rename from arch/ppc/boards/pcm030/barebox.lds.S
rename to arch/ppc/mach-mpc5xxx/barebox.lds.S
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

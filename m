Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XbVf2-0008Hb-6T
 for barebox@lists.infradead.org; Tue, 07 Oct 2014 14:22:45 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1XbVee-0003OX-TZ
 for barebox@lists.infradead.org; Tue, 07 Oct 2014 16:22:20 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.84)
 (envelope-from <jbe@pengutronix.de>) id 1XbVee-0004D5-SK
 for barebox@lists.infradead.org; Tue, 07 Oct 2014 16:22:20 +0200
From: Juergen Borleis <jbe@pengutronix.de>
Date: Tue,  7 Oct 2014 16:22:05 +0200
Message-Id: <1412691738-11145-7-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 06/19] arch/MPC5xxx: move away existing files to be able to
 add a new SoC type
To: barebox@lists.infradead.org

Signed-off-by: Juergen Borleis <jbe@pengutronix.de>
---
 arch/ppc/mach-mpc5xxx/Makefile                           | 8 ++++----
 arch/ppc/mach-mpc5xxx/{cpu.c => cpu-mpc5200.c}           | 0
 arch/ppc/mach-mpc5xxx/{cpu_init.c => cpu_init-mpc5200.c} | 0
 arch/ppc/mach-mpc5xxx/{speed.c => speed-mpc5200.c}       | 0
 4 files changed, 4 insertions(+), 4 deletions(-)
 rename arch/ppc/mach-mpc5xxx/{cpu.c => cpu-mpc5200.c} (100%)
 rename arch/ppc/mach-mpc5xxx/{cpu_init.c => cpu_init-mpc5200.c} (100%)
 rename arch/ppc/mach-mpc5xxx/{speed.c => speed-mpc5200.c} (100%)

diff --git a/arch/ppc/mach-mpc5xxx/Makefile b/arch/ppc/mach-mpc5xxx/Makefile
index bf8d68d..c8d503e 100644
--- a/arch/ppc/mach-mpc5xxx/Makefile
+++ b/arch/ppc/mach-mpc5xxx/Makefile
@@ -1,7 +1,7 @@
-obj-y 				+= cpu.o
-obj-y				+= cpu_init.o
-obj-y				+= loadtask.o
-obj-y				+= speed.o
+obj-$(CONFIG_MPC5200)		+= cpu-mpc5200.o
+obj-$(CONFIG_MPC5200)		+= cpu_init-mpc5200.o
+obj-$(CONFIG_MPC5200)		+= loadtask.o
+obj-$(CONFIG_MPC5200)		+= speed-mpc5200.o
 obj-y				+= traps.o
 obj-y				+= time.o
 extra-y				+= start.o
diff --git a/arch/ppc/mach-mpc5xxx/cpu.c b/arch/ppc/mach-mpc5xxx/cpu-mpc5200.c
similarity index 100%
rename from arch/ppc/mach-mpc5xxx/cpu.c
rename to arch/ppc/mach-mpc5xxx/cpu-mpc5200.c
diff --git a/arch/ppc/mach-mpc5xxx/cpu_init.c b/arch/ppc/mach-mpc5xxx/cpu_init-mpc5200.c
similarity index 100%
rename from arch/ppc/mach-mpc5xxx/cpu_init.c
rename to arch/ppc/mach-mpc5xxx/cpu_init-mpc5200.c
diff --git a/arch/ppc/mach-mpc5xxx/speed.c b/arch/ppc/mach-mpc5xxx/speed-mpc5200.c
similarity index 100%
rename from arch/ppc/mach-mpc5xxx/speed.c
rename to arch/ppc/mach-mpc5xxx/speed-mpc5200.c
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

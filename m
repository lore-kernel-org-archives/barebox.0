Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og112.obsmtp.com ([64.18.0.24])
 by merlin.infradead.org with smtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RpfZv-0004jm-Su
 for barebox@lists.infradead.org; Tue, 24 Jan 2012 12:34:25 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Tue, 24 Jan 2012 12:34:02 +0000
Message-Id: <1327408443-3519-9-git-send-email-renaud.barbier@ge.com>
In-Reply-To: <1327408443-3519-1-git-send-email-renaud.barbier@ge.com>
References: <1327408443-3519-1-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH 8/9] Update (ppc) Makefile and Kconfig.
To: barebox@lists.infradead.org

* Compile the mpc8xxx/mpc85xx architecture.
* Compile the p1_p2 Freescale platform code if selected.

Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
---
 arch/ppc/Kconfig  |    1 +
 arch/ppc/Makefile |   10 ++++++++++
 2 files changed, 11 insertions(+), 0 deletions(-)

diff --git a/arch/ppc/Kconfig b/arch/ppc/Kconfig
index ea38af6..e0934f4 100644
--- a/arch/ppc/Kconfig
+++ b/arch/ppc/Kconfig
@@ -25,6 +25,7 @@ endchoice
 endmenu
 
 source arch/ppc/mach-mpc5xxx/Kconfig
+source arch/ppc/mach-mpc8xxx/Kconfig
 source common/Kconfig
 source commands/Kconfig
 source net/Kconfig
diff --git a/arch/ppc/Makefile b/arch/ppc/Makefile
index c7bf863..8d4a3a4 100644
--- a/arch/ppc/Makefile
+++ b/arch/ppc/Makefile
@@ -8,9 +8,19 @@ CPPFLAGS += -fPIC -mrelocatable
 endif
 
 
+#may need a better ifdef option for spe and e500
+ifdef CONFIG_MPC85xx
+CPPFLAGS += -Wa,-me500 -msoft-float -mno-string -mspe=yes -mno-spe
+endif
+
 machine-$(CONFIG_ARCH_MPC5200)			:= mpc5200
+
 board-$(CONFIG_MACH_PHYCORE_MPC5200B_TINY)	:= pcm030
+
+board-$(CONFIG_P1_P2_RDB) := freescale/p1_p2_rdb
+
 cpu-$(CONFIG_ARCH_MPC5200)			:= mpc5xxx
+cpu-$(CONFIG_ARCH_MPC8XXX)			:= mpc8xxx
 
 TEXT_BASE = $(CONFIG_TEXT_BASE)
 
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

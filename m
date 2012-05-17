Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og104.obsmtp.com ([64.18.0.178])
 by merlin.infradead.org with smtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SV3ty-0004SE-OT
 for barebox@lists.infradead.org; Thu, 17 May 2012 16:50:12 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Thu, 17 May 2012 17:49:50 +0100
Message-Id: <1337273391-20858-9-git-send-email-renaud.barbier@ge.com>
In-Reply-To: <1337273391-20858-1-git-send-email-renaud.barbier@ge.com>
References: <1337273391-20858-1-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH V5 8/9] 85xx core support build files
To: barebox@lists.infradead.org

Kconfig and Makefile allow to include the 85xx cpu support in the
compilation process.

Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
---
 arch/ppc/Kconfig  |    3 +++
 arch/ppc/Makefile |    7 +++++++
 2 files changed, 10 insertions(+), 0 deletions(-)

diff --git a/arch/ppc/Kconfig b/arch/ppc/Kconfig
index 164598f..d124065 100644
--- a/arch/ppc/Kconfig
+++ b/arch/ppc/Kconfig
@@ -12,9 +12,12 @@ choice
 config ARCH_MPC5XXX
 	bool "Freescale MPC5xxx"
 
+config ARCH_MPC85XX
+	bool "Freescale MPC85xx"
 endchoice
 
 source arch/ppc/mach-mpc5xxx/Kconfig
+source arch/ppc/mach-mpc85xx/Kconfig
 source common/Kconfig
 source commands/Kconfig
 source net/Kconfig
diff --git a/arch/ppc/Makefile b/arch/ppc/Makefile
index 2d9e47f..67eb667 100644
--- a/arch/ppc/Makefile
+++ b/arch/ppc/Makefile
@@ -7,9 +7,16 @@ ifdef CONFIG_RELOCATABLE
 CPPFLAGS += -fPIC -mrelocatable
 endif
 
+ifdef CONFIG_MPC85xx
+CPPFLAGS += -Wa,-me500x2 -msoft-float -mno-string
+endif
 
 board-$(CONFIG_MACH_PHYCORE_MPC5200B_TINY)	:= pcm030
+
 machine-$(CONFIG_ARCH_MPC5200)			:= mpc5xxx
+machine-$(CONFIG_ARCH_MPC85XX)			:= mpc85xx
+
+cpu-$(CONFIG_ARCH_MPC85XX)			:= 85xx
 
 TEXT_BASE = $(CONFIG_TEXT_BASE)
 
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

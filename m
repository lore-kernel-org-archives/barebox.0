Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wy0-f177.google.com ([74.125.82.177])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PvHU2-0003Mm-4t
	for barebox@lists.infradead.org; Thu, 03 Mar 2011 22:58:58 +0000
Received: by wyf23 with SMTP id 23so1676005wyf.36
	for <barebox@lists.infradead.org>; Thu, 03 Mar 2011 14:58:57 -0800 (PST)
From: franck.jullien@gmail.com
Date: Thu,  3 Mar 2011 23:58:15 +0100
Message-Id: <4d701d30.9009d80a.2cd3.5e71@mx.google.com>
In-Reply-To: <n>
References: <n>
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
Subject: [PATCH 01/54] Add arch/nios2/Kconfig
To: barebox@lists.infradead.org

From: Franck JULLIEN <franck.jullien@gmail.com>

Add arch/nios2/Kconfig

---
 arch/nios2/Kconfig |   39 +++++++++++++++++++++++++++++++++++++++
 1 files changed, 39 insertions(+), 0 deletions(-)
 create mode 100644 arch/nios2/Kconfig

diff --git a/arch/nios2/Kconfig b/arch/nios2/Kconfig
new file mode 100644
index 0000000..9b6fd2b
--- /dev/null
+++ b/arch/nios2/Kconfig
@@ -0,0 +1,39 @@
+config NIOS2
+	bool
+	select HAS_KALLSYMS
+	select HAS_MODULES
+	select HAVE_CONFIGURABLE_MEMORY_LAYOUT
+	default y
+
+config ARCH_TEXT_BASE
+	hex
+	default 0x00000000
+		
+config BOARDINFO
+	default "Altera Generic Board" if GENERIC
+
+choice
+	prompt "Select your board"
+
+config GENERIC
+	bool "Altera Generic Board"
+	select NIOS2
+
+
+endchoice
+
+menu "Board configuration           "
+
+config EARLY_PRINTF
+	default n
+	bool "Enable early printf functions"
+	
+endmenu
+
+source common/Kconfig
+source commands/Kconfig
+source net/Kconfig
+source drivers/Kconfig
+source fs/Kconfig
+source lib/Kconfig
+
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

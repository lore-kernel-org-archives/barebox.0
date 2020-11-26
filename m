Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kiO19-0008Af-Oa
 for barebox@lists.infradead.org; Thu, 26 Nov 2020 20:37:29 +0000
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Thu, 26 Nov 2020 21:37:17 +0100
Message-Id: <20201126203716.394606-1-ahmad@a3f.at>
MIME-Version: 1.0
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH master] sandbox: retire CONFIG_LINUX symbol in favor of
 CONFIG_SANDBOX
To: barebox@lists.infradead.org

5211e428cbab ("image: Convert the IH_... values to enums") removed the
IH_ARCH_LINUX enumeration value leading to breakage of sandbox
configurations that enable bootm. Instead of reinstating IH_ARCH_LINUX,
just use IH_ARCH_SANDBOX and remove mention of CONFIG_LINUX altogether,
it's always true anyway when CONFIG_SANDBOX is true.

Fixes: 5211e428cbab ("image: Convert the IH_... values to enums")
Cc: Antony Pavlov <antonynpavlov@gmail.com>
Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 arch/sandbox/Kconfig   | 6 +-----
 commands/Kconfig       | 2 +-
 drivers/net/Kconfig    | 2 +-
 drivers/serial/Kconfig | 2 +-
 include/image.h        | 4 ++--
 5 files changed, 6 insertions(+), 10 deletions(-)

diff --git a/arch/sandbox/Kconfig b/arch/sandbox/Kconfig
index 113b619fc35b..d9fc0c947b02 100644
--- a/arch/sandbox/Kconfig
+++ b/arch/sandbox/Kconfig
@@ -11,17 +11,13 @@ config SANDBOX
 	select BLOCK_WRITE
 	select PARTITION_DISK
 	select ARCH_HAS_STACK_DUMP if ASAN
+	select GENERIC_FIND_NEXT_BIT
 	default y
 
 config ARCH_TEXT_BASE
 	hex
 	default 0x00000000
 
-config LINUX
-	bool
-	default y
-	select GENERIC_FIND_NEXT_BIT
-
 config SANDBOX_REEXEC
 	prompt "exec(2) reset handler"
 	def_bool y
diff --git a/commands/Kconfig b/commands/Kconfig
index 8b4ed9aa5365..03ddfc887074 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -2058,7 +2058,7 @@ config CMD_KEYSTORE
 
 config CMD_LINUX_EXEC
 	bool "linux exec"
-	depends on LINUX
+	depends on SANDBOX
 	help
 	  Execute a command on the host
 
diff --git a/drivers/net/Kconfig b/drivers/net/Kconfig
index 76509a52a1c7..0d55ea7a3b60 100644
--- a/drivers/net/Kconfig
+++ b/drivers/net/Kconfig
@@ -242,7 +242,7 @@ config DRIVER_NET_SMC91111
 
 config DRIVER_NET_TAP
 	bool "tap Ethernet driver"
-	depends on LINUX
+	depends on SANDBOX
 
 config DRIVER_NET_EFI_SNP
 	bool "EFI SNP ethernet driver"
diff --git a/drivers/serial/Kconfig b/drivers/serial/Kconfig
index 14cd430ee489..5c6f0e88e398 100644
--- a/drivers/serial/Kconfig
+++ b/drivers/serial/Kconfig
@@ -52,7 +52,7 @@ config DRIVER_SERIAL_AUART
 	bool "i.MX23/i.MX28 application UART serial driver"
 
 config DRIVER_SERIAL_LINUX_CONSOLE
-	depends on LINUX
+	depends on SANDBOX
 	default y
 	bool "linux console driver"
 
diff --git a/include/image.h b/include/image.h
index 963ea9686319..fa06476845af 100644
--- a/include/image.h
+++ b/include/image.h
@@ -127,8 +127,8 @@ enum {
 #define IH_ARCH IH_ARCH_BLACKFIN
 #elif defined(__avr32__)
 #define IH_ARCH IH_ARCH_AVR32
-#elif defined(CONFIG_LINUX)
-#define IH_ARCH IH_ARCH_LINUX
+#elif defined(CONFIG_SANDBOX)
+#define IH_ARCH IH_ARCH_SANDBOX
 #else
 #define IH_ARCH IH_ARCH_INVALID
 #endif
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

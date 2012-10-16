Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-f49.google.com ([74.125.82.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TODEG-0003KT-Tt
 for barebox@lists.infradead.org; Tue, 16 Oct 2012 19:55:05 +0000
Received: by mail-wg0-f49.google.com with SMTP id gg4so3902164wgb.18
 for <barebox@lists.infradead.org>; Tue, 16 Oct 2012 12:55:02 -0700 (PDT)
From: Franck Jullien <franck.jullien@gmail.com>
Date: Tue, 16 Oct 2012 21:54:55 +0200
Message-Id: <1350417296-26963-2-git-send-email-franck.jullien@gmail.com>
In-Reply-To: <1350417296-26963-1-git-send-email-franck.jullien@gmail.com>
References: <1350417296-26963-1-git-send-email-franck.jullien@gmail.com>
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
Subject: [PATCH 1/2] openrisc: switch to defaultenv-2 and change boardinfo
To: barebox@lists.infradead.org

Signed-off-by: Franck Jullien <franck.jullien@gmail.com>

---
 arch/openrisc/Kconfig                   |    3 ++-
 arch/openrisc/configs/generic_defconfig |    4 ++--
 2 files changed, 4 insertions(+), 3 deletions(-)

diff --git a/arch/openrisc/Kconfig b/arch/openrisc/Kconfig
index a3cb337..bcfd67f 100644
--- a/arch/openrisc/Kconfig
+++ b/arch/openrisc/Kconfig
@@ -1,6 +1,7 @@
 config OPENRISC
 	bool
 	select HAVE_CONFIGURABLE_MEMORY_LAYOUT
+	select HAVE_DEFAULT_ENVIRONMENT_NEW
 	default y
 
 # not used
@@ -9,7 +10,7 @@ config ARCH_TEXT_BASE
 	default 0x00000000
 
 config BOARDINFO
-	default "Openrisc simulator" if GENERIC
+	default "or1k" if GENERIC
 
 choice
 	prompt "Select your board"
diff --git a/arch/openrisc/configs/generic_defconfig b/arch/openrisc/configs/generic_defconfig
index 68e0371..7ae85b0 100644
--- a/arch/openrisc/configs/generic_defconfig
+++ b/arch/openrisc/configs/generic_defconfig
@@ -3,13 +3,13 @@ CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_PARTITION=y
-CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_LOADENV=y
 CONFIG_CMD_EXPORT=y
 CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_TIME=y
+CONFIG_CMD_ECHO_E=y
 CONFIG_CMD_MEMINFO=y
 CONFIG_CMD_FLASH=y
 # CONFIG_CMD_BOOTM is not set
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-f177.google.com ([209.85.212.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TYlMt-0003VA-Nx
 for barebox@lists.infradead.org; Wed, 14 Nov 2012 22:23:37 +0000
Received: by mail-wi0-f177.google.com with SMTP id c10so439397wiw.0
 for <barebox@lists.infradead.org>; Wed, 14 Nov 2012 14:23:34 -0800 (PST)
From: Franck Jullien <franck.jullien@gmail.com>
Date: Wed, 14 Nov 2012 23:23:33 +0100
Message-Id: <1352931813-2817-2-git-send-email-franck.jullien@gmail.com>
In-Reply-To: <1352931813-2817-1-git-send-email-franck.jullien@gmail.com>
References: <1352931813-2817-1-git-send-email-franck.jullien@gmail.com>
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
Subject: [PATCH 2/2] nios2: update generic_defconfig
To: barebox@lists.infradead.org

Signed-off-by: Franck Jullien <franck.jullien@gmail.com>
---
 arch/nios2/configs/generic_defconfig |   11 ++++++++++-
 1 files changed, 10 insertions(+), 1 deletions(-)

diff --git a/arch/nios2/configs/generic_defconfig b/arch/nios2/configs/generic_defconfig
index 279a71e..5e27cc8 100644
--- a/arch/nios2/configs/generic_defconfig
+++ b/arch/nios2/configs/generic_defconfig
@@ -14,10 +14,19 @@ CONFIG_CMD_LOADENV=y
 CONFIG_CMD_EXPORT=y
 CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_READLINE=y
+CONFIG_CMD_TFTP=y
+CONFIG_CMD_ECHO_E=y
 CONFIG_CMD_FLASH=y
-CONFIG_CMD_BOOTM_ZLIB=y
+CONFIG_CMD_BOOTM_SHOW_TYPE=y
+CONFIG_CMD_BOOTM_VERBOSE=y
+CONFIG_CMD_UIMAGE=y
 CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
+CONFIG_NET=y
+CONFIG_NET_PING=y
+CONFIG_DRIVER_NET_TSE=y
 CONFIG_DRIVER_CFI=y
+CONFIG_FS_TFTP=y
+CONFIG_ZLIB=y
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

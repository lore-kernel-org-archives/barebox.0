Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x231.google.com ([2a00:1450:4010:c03::231])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Wpz3c-0007ZW-TO
 for barebox@lists.infradead.org; Thu, 29 May 2014 12:03:41 +0000
Received: by mail-la0-f49.google.com with SMTP id pv20so122767lab.22
 for <barebox@lists.infradead.org>; Thu, 29 May 2014 05:03:18 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu, 29 May 2014 16:03:04 +0400
Message-Id: <1401364984-14327-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] MIPS: dlink-dir-320_defconfig: drop duplicated symbols
To: barebox@lists.infradead.org

Duplicated symbols lead to this warnings:

  $ make dlink-dir-320_defconfig
  arch/mips/configs/dlink-dir-320_defconfig:52:warning: override: reassigning to symbol CMD_DHCP
  arch/mips/configs/dlink-dir-320_defconfig:54:warning: override: reassigning to symbol CMD_PING
  arch/mips/configs/dlink-dir-320_defconfig:55:warning: override: reassigning to symbol CMD_TFTP
  arch/mips/configs/dlink-dir-320_defconfig:64:warning: override: reassigning to symbol FS_TFTP

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/configs/dlink-dir-320_defconfig | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/arch/mips/configs/dlink-dir-320_defconfig b/arch/mips/configs/dlink-dir-320_defconfig
index 2ff9dd7..ab29cf3 100644
--- a/arch/mips/configs/dlink-dir-320_defconfig
+++ b/arch/mips/configs/dlink-dir-320_defconfig
@@ -49,11 +49,7 @@ CONFIG_CMD_OF_PROPERTY=y
 CONFIG_CMD_OFTREE=y
 CONFIG_CMD_TIME=y
 CONFIG_NET=y
-CONFIG_CMD_DHCP=y
 CONFIG_NET_NFS=y
-CONFIG_CMD_PING=y
-CONFIG_CMD_TFTP=y
-CONFIG_FS_TFTP=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_RESOLV=y
 CONFIG_OFDEVICE=y
-- 
1.9.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

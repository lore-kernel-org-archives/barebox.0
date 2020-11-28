Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kj7wY-0002QX-5O
 for barebox@lists.infradead.org; Sat, 28 Nov 2020 21:39:48 +0000
Received: from geraet.fritz.box (muedsl-82-207-195-223.citykom.de
 [82.207.195.223]) (Authenticated sender: ahmad@a3f.at)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id 2F62E1BF20B
 for <barebox@lists.infradead.org>; Sat, 28 Nov 2020 21:39:44 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Sat, 28 Nov 2020 22:39:31 +0100
Message-Id: <20201128213934.681065-8-ahmad@a3f.at>
In-Reply-To: <20201128213934.681065-1-ahmad@a3f.at>
References: <20201128213934.681065-1-ahmad@a3f.at>
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
Subject: [PATCH 08/11] ARM: rpi: drop no longer needed environment
To: barebox@lists.infradead.org

The barebox PL011 driver automatically arranges for the kernel to be
called with the appropriate console argument (placed in
${global.linux.bootargs.console}. There is thus no need to hard code a
TTY. Indeed we shouldn't because some Raspberry Pis don't use the PL011,
but the mini-uart, which is a ttyS.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 arch/arm/boards/raspberry-pi/env/init/bootargs-base | 3 ---
 arch/arm/configs/rpi_defconfig                      | 2 +-
 2 files changed, 1 insertion(+), 4 deletions(-)
 delete mode 100644 arch/arm/boards/raspberry-pi/env/init/bootargs-base

diff --git a/arch/arm/boards/raspberry-pi/env/init/bootargs-base b/arch/arm/boards/raspberry-pi/env/init/bootargs-base
deleted file mode 100644
index 416dc8a6f4fc..000000000000
--- a/arch/arm/boards/raspberry-pi/env/init/bootargs-base
+++ /dev/null
@@ -1,3 +0,0 @@
-#!/bin/sh
-
-global.linux.bootargs.base="console=ttyAMA0,115200"
diff --git a/arch/arm/configs/rpi_defconfig b/arch/arm/configs/rpi_defconfig
index dd5ca7585a83..f42b8819afc9 100644
--- a/arch/arm/configs/rpi_defconfig
+++ b/arch/arm/configs/rpi_defconfig
@@ -23,7 +23,7 @@ CONFIG_BOOTM_OFTREE=y
 CONFIG_BLSPEC=y
 CONFIG_CONSOLE_ALLOW_COLOR=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/raspberry-pi/env"
+CONFIG_DEFAULT_ENVIRONMENT_PATH=""
 CONFIG_CMD_DMESG=y
 CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

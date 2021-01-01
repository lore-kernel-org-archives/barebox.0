Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kvTHg-0003EJ-Np
 for barebox@lists.infradead.org; Fri, 01 Jan 2021 22:52:38 +0000
Received: from geraet.fritz.box (unknown [87.123.97.237])
 (Authenticated sender: ahmad@a3f.at)
 by relay1-d.mail.gandi.net (Postfix) with ESMTPSA id A8D46240005
 for <barebox@lists.infradead.org>; Fri,  1 Jan 2021 22:52:35 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Fri,  1 Jan 2021 23:52:28 +0100
Message-Id: <20210101225228.2166084-4-ahmad@a3f.at>
In-Reply-To: <20210101225228.2166084-1-ahmad@a3f.at>
References: <20210101225228.2166084-1-ahmad@a3f.at>
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
Subject: [PATCH 4/4] MIPS: qemu-malta_defconfig: enable VGA output
To: barebox@lists.infradead.org

Now that we have a driver for the Qemu's default -device VGA, enable it
in defconfig, along with fbtest for testing it.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 Documentation/boards/mips/qemu-malta.rst | 4 ++--
 arch/mips/configs/qemu-malta_defconfig   | 4 ++++
 2 files changed, 6 insertions(+), 2 deletions(-)

diff --git a/Documentation/boards/mips/qemu-malta.rst b/Documentation/boards/mips/qemu-malta.rst
index 2bb81350a109..470be32f1f49 100644
--- a/Documentation/boards/mips/qemu-malta.rst
+++ b/Documentation/boards/mips/qemu-malta.rst
@@ -9,7 +9,7 @@ QEMU run string:
 .. code-block:: sh
 
   qemu-system-mips -nodefaults -M malta -m 256 \
-      -nographic -serial stdio -monitor null \
+      -device VGA -serial stdio -monitor null \
       -bios barebox-flash-image
 
 
@@ -33,7 +33,7 @@ QEMU run string:
 .. code-block:: sh
 
   qemu-system-mipsel -nodefaults -M malta -m 256 \
-      -nographic -serial stdio -monitor null \
+      -devica VGA -serial stdio -monitor null \
       -bios barebox-flash-image
 
 
diff --git a/arch/mips/configs/qemu-malta_defconfig b/arch/mips/configs/qemu-malta_defconfig
index ac0577c217e3..b9994f392c47 100644
--- a/arch/mips/configs/qemu-malta_defconfig
+++ b/arch/mips/configs/qemu-malta_defconfig
@@ -42,6 +42,7 @@ CONFIG_CMD_LOGIN=y
 CONFIG_CMD_MENU=y
 CONFIG_CMD_MENU_MANAGEMENT=y
 CONFIG_CMD_PASSWD=y
+CONFIG_CMD_FBTEST=y
 CONFIG_CMD_READLINE=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_CRC=y
@@ -68,6 +69,9 @@ CONFIG_DRIVER_CFI=y
 # CONFIG_DRIVER_CFI_BANK_WIDTH_1 is not set
 # CONFIG_DRIVER_CFI_BANK_WIDTH_2 is not set
 CONFIG_CFI_BUFFER_WRITE=y
+CONFIG_VIDEO=y
+CONFIG_FRAMEBUFFER_CONSOLE=y
+CONFIG_DRIVER_VIDEO_BOCHS_PCI=y
 CONFIG_GPIO_MALTA_FPGA_I2C=y
 CONFIG_PCI=y
 CONFIG_PCI_DEBUG=y
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

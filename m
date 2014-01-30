Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W8o7C-0007oB-Ur
 for barebox@lists.infradead.org; Thu, 30 Jan 2014 09:40:55 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 30 Jan 2014 10:40:29 +0100
Message-Id: <1391074829-25877-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1391074829-25877-1-git-send-email-s.hauer@pengutronix.de>
References: <1391074829-25877-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] ARM: i.MX: edmqmx6: update defconfig
To: barebox@lists.infradead.org

on the edmqmx6 barebox is loaded into SRAM, so it must not get
too big. Disable some stuff to make the image fit into SRAM again.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/configs/dmo-realq7_defconfig | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/configs/dmo-realq7_defconfig b/arch/arm/configs/dmo-realq7_defconfig
index 501a182..131eddf 100644
--- a/arch/arm/configs/dmo-realq7_defconfig
+++ b/arch/arm/configs/dmo-realq7_defconfig
@@ -1,4 +1,5 @@
 CONFIG_ARCH_IMX=y
+CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x31000
 CONFIG_IMX_MULTI_BOARDS=y
 CONFIG_MACH_REALQ7=y
 CONFIG_IMX_IIM=y
@@ -8,10 +9,10 @@ CONFIG_CMD_ARM_MMUINFO=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_ARM_UNWIND=y
 CONFIG_MMU=y
-CONFIG_TEXT_BASE=0x8fc00000
-CONFIG_MALLOC_SIZE=0x40000000
+CONFIG_TEXT_BASE=0x0
+CONFIG_MALLOC_SIZE=0x0
 CONFIG_MALLOC_TLSF=y
-CONFIG_KALLSYMS=y
+CONFIG_RELOCATABLE=y
 CONFIG_LONGHELP=y
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
@@ -67,7 +68,6 @@ CONFIG_CMD_DETECT=y
 CONFIG_CMD_WD=y
 CONFIG_NET=y
 CONFIG_NET_DHCP=y
-CONFIG_NET_NFS=y
 CONFIG_NET_PING=y
 CONFIG_NET_RESOLV=y
 CONFIG_OFDEVICE=y
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

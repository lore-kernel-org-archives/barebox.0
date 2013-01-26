Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Tz3rH-0004Vj-5L
 for barebox@lists.infradead.org; Sat, 26 Jan 2013 11:23:39 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sat, 26 Jan 2013 12:23:22 +0100
Message-Id: <1359199403-27664-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1359199403-27664-1-git-send-email-s.hauer@pengutronix.de>
References: <1359199403-27664-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/3] ARM: Fix reassigning symbols in defconfigs
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/configs/at91sam9n12ek_defconfig   |    1 -
 arch/arm/configs/eukrea_cpuimx51_defconfig |    1 -
 arch/arm/configs/pcm027_defconfig          |    1 -
 3 files changed, 3 deletions(-)

diff --git a/arch/arm/configs/at91sam9n12ek_defconfig b/arch/arm/configs/at91sam9n12ek_defconfig
index d46a9bd..3e25c8f 100644
--- a/arch/arm/configs/at91sam9n12ek_defconfig
+++ b/arch/arm/configs/at91sam9n12ek_defconfig
@@ -6,7 +6,6 @@ CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_PBL_IMAGE=y
 CONFIG_MMU=y
 CONFIG_TEXT_BASE=0x26f00000
-CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_EXPERIMENTAL=y
 CONFIG_MALLOC_TLSF=y
 CONFIG_PROMPT="9G20-EK:"
diff --git a/arch/arm/configs/eukrea_cpuimx51_defconfig b/arch/arm/configs/eukrea_cpuimx51_defconfig
index e4ec7b0..3f5d817 100644
--- a/arch/arm/configs/eukrea_cpuimx51_defconfig
+++ b/arch/arm/configs/eukrea_cpuimx51_defconfig
@@ -50,7 +50,6 @@ CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
 CONFIG_NET_PING=y
 CONFIG_CMD_TFTP=y
-CONFIG_FS_TFTP=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_RESOLV=y
 CONFIG_DRIVER_NET_FEC_IMX=y
diff --git a/arch/arm/configs/pcm027_defconfig b/arch/arm/configs/pcm027_defconfig
index e08955b..ac9269d 100644
--- a/arch/arm/configs/pcm027_defconfig
+++ b/arch/arm/configs/pcm027_defconfig
@@ -57,5 +57,4 @@ CONFIG_DRIVER_NET_SMC91111=y
 CONFIG_DRIVER_CFI=y
 CONFIG_VIDEO=y
 CONFIG_DRIVER_VIDEO_PXA=y
-CONFIG_FS_TFTP=y
 CONFIG_LZO_DECOMPRESS=y
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

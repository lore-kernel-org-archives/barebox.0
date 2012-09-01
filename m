Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo2.mail-out.ovh.net ([87.98.172.75]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T7n4N-0007bu-0M
 for barebox@lists.infradead.org; Sat, 01 Sep 2012 12:45:00 +0000
Received: from mail21.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id A5400DC67E0
 for <barebox@lists.infradead.org>; Sat,  1 Sep 2012 14:50:10 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat,  1 Sep 2012 14:45:13 +0200
Message-Id: <1346503513-23046-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1346503513-23046-1-git-send-email-plagnioj@jcrosoft.com>
References: <1346503513-23046-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/2] Atmel sam9x boards: enable the pbl
To: barebox@lists.infradead.org

so we are smaller than the 256KiB reserved for barebox

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/configs/at91sam9260ek_defconfig    |    1 +
 arch/arm/configs/at91sam9261ek_defconfig    |    1 +
 arch/arm/configs/at91sam9263ek_defconfig    |    1 +
 arch/arm/configs/at91sam9g10ek_defconfig    |    1 +
 arch/arm/configs/at91sam9g20ek_defconfig    |    1 +
 arch/arm/configs/at91sam9m10g45ek_defconfig |    1 +
 arch/arm/configs/at91sam9x5ek_defconfig     |    1 +
 7 files changed, 7 insertions(+)

diff --git a/arch/arm/configs/at91sam9260ek_defconfig b/arch/arm/configs/at91sam9260ek_defconfig
index e6b5d1f..9466c07 100644
--- a/arch/arm/configs/at91sam9260ek_defconfig
+++ b/arch/arm/configs/at91sam9260ek_defconfig
@@ -2,6 +2,7 @@ CONFIG_ARCH_AT91SAM9260=y
 CONFIG_AEABI=y
 # CONFIG_CMD_ARM_CPUINFO is not set
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_PBL_IMAGE=y
 CONFIG_MMU=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_EXPERIMENTAL=y
diff --git a/arch/arm/configs/at91sam9261ek_defconfig b/arch/arm/configs/at91sam9261ek_defconfig
index 137226f..0fd31d6 100644
--- a/arch/arm/configs/at91sam9261ek_defconfig
+++ b/arch/arm/configs/at91sam9261ek_defconfig
@@ -2,6 +2,7 @@ CONFIG_ARCH_AT91SAM9261=y
 CONFIG_AEABI=y
 # CONFIG_CMD_ARM_CPUINFO is not set
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_PBL_IMAGE=y
 CONFIG_MMU=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_EXPERIMENTAL=y
diff --git a/arch/arm/configs/at91sam9263ek_defconfig b/arch/arm/configs/at91sam9263ek_defconfig
index 3b5c8b0..b91d2e2 100644
--- a/arch/arm/configs/at91sam9263ek_defconfig
+++ b/arch/arm/configs/at91sam9263ek_defconfig
@@ -1,6 +1,7 @@
 CONFIG_ARCH_AT91SAM9263=y
 # CONFIG_CMD_ARM_CPUINFO is not set
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_PBL_IMAGE=y
 CONFIG_MMU=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_EXPERIMENTAL=y
diff --git a/arch/arm/configs/at91sam9g10ek_defconfig b/arch/arm/configs/at91sam9g10ek_defconfig
index dbae4bd..0cc37ac 100644
--- a/arch/arm/configs/at91sam9g10ek_defconfig
+++ b/arch/arm/configs/at91sam9g10ek_defconfig
@@ -2,6 +2,7 @@ CONFIG_ARCH_AT91SAM9G10=y
 CONFIG_AEABI=y
 # CONFIG_CMD_ARM_CPUINFO is not set
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_PBL_IMAGE=y
 CONFIG_MMU=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_EXPERIMENTAL=y
diff --git a/arch/arm/configs/at91sam9g20ek_defconfig b/arch/arm/configs/at91sam9g20ek_defconfig
index 3ecba68..c1c1ff7 100644
--- a/arch/arm/configs/at91sam9g20ek_defconfig
+++ b/arch/arm/configs/at91sam9g20ek_defconfig
@@ -3,6 +3,7 @@ CONFIG_AT91_HAVE_2MMC=y
 CONFIG_AEABI=y
 # CONFIG_CMD_ARM_CPUINFO is not set
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_PBL_IMAGE=y
 CONFIG_MMU=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_EXPERIMENTAL=y
diff --git a/arch/arm/configs/at91sam9m10g45ek_defconfig b/arch/arm/configs/at91sam9m10g45ek_defconfig
index e22f80a..1fa37d6 100644
--- a/arch/arm/configs/at91sam9m10g45ek_defconfig
+++ b/arch/arm/configs/at91sam9m10g45ek_defconfig
@@ -2,6 +2,7 @@ CONFIG_ARCH_AT91SAM9G45=y
 CONFIG_AEABI=y
 # CONFIG_CMD_ARM_CPUINFO is not set
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_PBL_IMAGE=y
 CONFIG_MMU=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_MALLOC_TLSF=y
diff --git a/arch/arm/configs/at91sam9x5ek_defconfig b/arch/arm/configs/at91sam9x5ek_defconfig
index aee21fd..e67ebc9 100644
--- a/arch/arm/configs/at91sam9x5ek_defconfig
+++ b/arch/arm/configs/at91sam9x5ek_defconfig
@@ -2,6 +2,7 @@ CONFIG_ARCH_AT91SAM9X5=y
 CONFIG_AEABI=y
 # CONFIG_CMD_ARM_CPUINFO is not set
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
+CONFIG_PBL_IMAGE=y
 CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_EXPERIMENTAL=y
 CONFIG_MALLOC_TLSF=y
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

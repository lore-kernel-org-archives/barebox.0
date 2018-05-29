Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x242.google.com ([2607:f8b0:400e:c01::242])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fNWYT-0006wA-3q
 for barebox@lists.infradead.org; Tue, 29 May 2018 04:48:24 +0000
Received: by mail-pl0-x242.google.com with SMTP id f1-v6so7772617plt.6
 for <barebox@lists.infradead.org>; Mon, 28 May 2018 21:48:07 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 28 May 2018 21:47:29 -0700
Message-Id: <20180529044731.3964-6-andrew.smirnov@gmail.com>
In-Reply-To: <20180529044731.3964-1-andrew.smirnov@gmail.com>
References: <20180529044731.3964-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 5/7] i.MX: ocotp: Move OCOTP driver to drivers/nvmem
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, Vivien Didelot <vivien.didelot@savoirfairelinux.com>

Move OCOTP driver to drivers/nvmem to be consistent with Linux
kerenel.

Cc: Vivien Didelot <vivien.didelot@savoirfairelinux.com>
Tested-by: Vivien Didelot <vivien.didelot@savoirfairelinux.com>
Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/Kconfig                    | 23 ++------------------
 arch/arm/mach-imx/Makefile                   |  1 -
 drivers/nvmem/Kconfig                        | 21 ++++++++++++++++++
 drivers/nvmem/Makefile                       |  3 +++
 {arch/arm/mach-imx => drivers/nvmem}/ocotp.c |  0
 5 files changed, 26 insertions(+), 22 deletions(-)
 rename {arch/arm/mach-imx => drivers/nvmem}/ocotp.c (100%)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 2b5f825b0..721b0d2e3 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -180,6 +180,7 @@ config ARCH_VF610
 	select OFTREE
 	select COMMON_CLK
 	select COMMON_CLK_OF_PROVIDER
+	select NVMEM
 	select IMX_OCOTP	# Needed for clock adjustement
 
 config IMX_MULTI_BOARDS
@@ -734,33 +735,13 @@ config IMX_IIM_FUSE_BLOW
 	  enable it:
 	    imx_iim0.permanent_write_enable=1
 
-config IMX_OCOTP
-	tristate "i.MX6 On Chip OTP controller"
-	depends on ARCH_IMX6 || ARCH_VF610
-	depends on OFDEVICE
-	help
-	  This adds support for the i.MX6 On-Chip OTP controller. Currently the
-	  only supported functionality is reading the MAC address and assigning
-	  it to an ethernet device.
-
-config IMX_OCOTP_WRITE
-	bool
-	prompt "Enable write support of i.MX6 CPUs OTP fuses"
-	depends on IMX_OCOTP
-	help
-	  This adds write support to IMX6 On-Chip OTP registers. Example of set
-	  MAC to 12:34:56:78:9A:BC (2 words with address 0x22 (OCOTP_MAC0) and
-	  address 0x23 (OCOTP_MAC1)). To calculate the file offset multiply
-	  the value of the address by 4.
-	    mw -l -d /dev/imx-ocotp 0x8C 0x00001234
-	    mw -l -d /dev/imx-ocotp 0x88 0x56789ABC
-
 config HAB
 	bool
 
 config HABV4
 	tristate "HABv4 support"
 	select HAB
+	select NVMEM
 	select IMX_OCOTP
 	depends on ARCH_IMX6
 	depends on OFDEVICE
diff --git a/arch/arm/mach-imx/Makefile b/arch/arm/mach-imx/Makefile
index 160ed4b08..969f5347b 100644
--- a/arch/arm/mach-imx/Makefile
+++ b/arch/arm/mach-imx/Makefile
@@ -18,7 +18,6 @@ obj-$(CONFIG_ARCH_IMX7) += imx7.o
 obj-$(CONFIG_ARCH_VF610) += vf610.o
 obj-$(CONFIG_ARCH_IMX_XLOAD) += xload.o
 obj-$(CONFIG_IMX_IIM)	+= iim.o
-obj-$(CONFIG_IMX_OCOTP)	+= ocotp.o
 obj-$(CONFIG_NAND_IMX) += nand.o
 lwl-$(CONFIG_ARCH_IMX_EXTERNAL_BOOT_NAND) += external-nand-boot.o
 obj-y += devices.o imx.o
diff --git a/drivers/nvmem/Kconfig b/drivers/nvmem/Kconfig
index d801cc25a..53086d1aa 100644
--- a/drivers/nvmem/Kconfig
+++ b/drivers/nvmem/Kconfig
@@ -15,4 +15,25 @@ config NVMEM_SNVS_LPGPR
 	help
 	  If you say yes here you get NVMEM support for the Freescale SNVS
 	  Low Power Generic Purpose Register (LPGPR).
+
+config IMX_OCOTP
+	tristate "i.MX6 On Chip OTP controller"
+	depends on ARCH_IMX6 || ARCH_VF610
+	depends on OFDEVICE
+	help
+	  This adds support for the i.MX6 On-Chip OTP controller. Currently the
+	  only supported functionality is reading the MAC address and assigning
+	  it to an ethernet device.
+
+config IMX_OCOTP_WRITE
+	bool
+	prompt "Enable write support of i.MX6 CPUs OTP fuses"
+	depends on IMX_OCOTP
+	help
+	  This adds write support to IMX6 On-Chip OTP registers. Example of set
+	  MAC to 12:34:56:78:9A:BC (2 words with address 0x22 (OCOTP_MAC0) and
+	  address 0x23 (OCOTP_MAC1)). To calculate the file offset multiply
+	  the value of the address by 4.
+	    mw -l -d /dev/imx-ocotp 0x8C 0x00001234
+	    mw -l -d /dev/imx-ocotp 0x88 0x56789ABC
 endif
diff --git a/drivers/nvmem/Makefile b/drivers/nvmem/Makefile
index 32522e9fb..998a9c4b9 100644
--- a/drivers/nvmem/Makefile
+++ b/drivers/nvmem/Makefile
@@ -8,3 +8,6 @@ nvmem_core-y			:= core.o
 # Devices
 obj-$(CONFIG_NVMEM_SNVS_LPGPR)	+= nvmem_snvs_lpgpr.o
 nvmem_snvs_lpgpr-y		:= snvs_lpgpr.o
+
+obj-$(CONFIG_IMX_OCOTP)		+= nvmem_ocotp.o
+nvmem_ocotp-y			:= ocotp.o
\ No newline at end of file
diff --git a/arch/arm/mach-imx/ocotp.c b/drivers/nvmem/ocotp.c
similarity index 100%
rename from arch/arm/mach-imx/ocotp.c
rename to drivers/nvmem/ocotp.c
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

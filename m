Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x532.google.com ([2607:f8b0:4864:20::532])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fgJqU-0002pO-9M
 for barebox@lists.infradead.org; Fri, 20 Jul 2018 01:04:46 +0000
Received: by mail-pg1-x532.google.com with SMTP id s7-v6so1845233pgv.3
 for <barebox@lists.infradead.org>; Thu, 19 Jul 2018 18:04:24 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 19 Jul 2018 18:03:50 -0700
Message-Id: <20180720010357.22822-6-andrew.smirnov@gmail.com>
In-Reply-To: <20180720010357.22822-1-andrew.smirnov@gmail.com>
References: <20180720010357.22822-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 05/12] ARM: i.MX: fimware: Add pre-built BL31 ATF blob
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Running Linux on i.MX8M requires us to use and proerly set up a ARM
Trusted Firmware blob. For the sake of convenience, add a pre-built
blob to our firmware tree, so it can be used by individual boards.

This blob was built using Buildroot:

 - commit: 6b02b8210acb18773f2c4b26cfc11d1f9bc4fb88
 - defconig: freescale_imx8mqevk_defconfig

The resulting file of interest is output/images/bl31.bin

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 firmware/Kconfig            |   3 +++
 firmware/Makefile           |   2 ++
 firmware/imx/imx8m-bl31.bin | Bin 0 -> 46744 bytes
 3 files changed, 5 insertions(+)
 create mode 100755 firmware/imx/imx8m-bl31.bin

diff --git a/firmware/Kconfig b/firmware/Kconfig
index b6449644b..a6f79e8a9 100644
--- a/firmware/Kconfig
+++ b/firmware/Kconfig
@@ -7,4 +7,7 @@ config EXTRA_FIRMWARE_DIR
 config FIRMWARE_IMX_LPDDR4_PMU_TRAIN
        	bool
 
+config FIRMWARE_IMX8MQ_ATF
+        bool
+
 endmenu
diff --git a/firmware/Makefile b/firmware/Makefile
index c82e81ae4..62124933d 100644
--- a/firmware/Makefile
+++ b/firmware/Makefile
@@ -9,6 +9,8 @@ firmware-$(CONFIG_FIRMWARE_IMX_LPDDR4_PMU_TRAIN) += \
 	imx/lpddr4_pmu_train_2d_dmem.bin \
 	imx/lpddr4_pmu_train_2d_imem.bin
 
+firmware-$(CONFIG_FIRMWARE_IMX8MQ_ATF) += imx/imx8m-bl31.bin
+
 # Create $(fwabs) from $(CONFIG_EXTRA_FIRMWARE_DIR) -- if it doesn't have a
 # leading /, it's relative to $(srctree).
 fwdir := $(subst $(quote),,$(CONFIG_EXTRA_FIRMWARE_DIR))
diff --git a/firmware/imx/imx8m-bl31.bin b/firmware/imx/imx8m-bl31.bin
new file mode 100755
index 0000000000000000000000000000000000000000..b2310e4334c498686550a2ecab796ba905a13ebe
GIT binary patch
literal 46744
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
T1f8H0bnadH=+w{g^6$?d>FQ|r

literal 0
HcmV?d00001

-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

Delivery-date: Wed, 27 May 2026 14:18:17 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wSDDF-004Nx6-2K
	for lore@lore.pengutronix.de;
	Wed, 27 May 2026 14:18:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wSDDF-0001cg-0V
	for lore@pengutronix.de; Wed, 27 May 2026 14:18:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Pt82AQ7Af3YWz13A5GjR7gryTpA8o9QpSrBr3et2z58=; b=HNoG7WIKS9FYvpevW44c3bnh/g
	EsKfF9bcyF1Sa1GkryRi+CHN/q3PsZJt7sgS1pDo8lygHgl/x/u/fCGYt7QAZe7+p9r5+MvZtD+DA
	oRirOTEvcNWM4FAzI3Z38T0IyMtkUwQlM4IgeRp1+27LD+JFMWWjgt7HIx5cCel+ZlXOifszeyEUL
	LvXOSrrAwJRSUE45VBK3cDh3qr03J7J5g7IHanjF3Xf0K75TiQtmEZJ/cun5Gbghv/wHdYwIsDiFH
	QUlZK1zUtqWMgdFWA0NdaugyMdExmpdMOde9gCkx+KD56aQxzEGUPZGT4/X3wPjeia4xWVrZjGneb
	zpyQ9KjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSDCD-000000044FT-0I1W;
	Wed, 27 May 2026 12:17:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSDCA-000000044EI-36dK
	for barebox@lists.infradead.org;
	Wed, 27 May 2026 12:17:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wSDBt-0001FR-1Z; Wed, 27 May 2026 14:16:53 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wSDBs-0026eS-1F;
	Wed, 27 May 2026 14:16:52 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wSDBs-0000000E7Uj-3akQ;
	Wed, 27 May 2026 14:16:52 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: eagle.alexander923@gmail.com,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 27 May 2026 14:15:23 +0200
Message-ID: <20260527121649.3365172-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260527121649.3365172-1-a.fatoum@pengutronix.de>
References: <20260527121649.3365172-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260527_051710_789204_E137198F 
X-CRM114-Status: UNSURE (   8.42  )
X-CRM114-Notice: Please train this message.
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master v2 4/5] ARM64: configs: drop CONFIG_MALLOC_SIZE=0x0 as it's now the default
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

CONFIG_MALLOC_SIZE=0x0 is not the default value, although it's the most
commonly used. We couldn't turn around and change this now without
breakage.

CONFIG_BAREBOX_MEMORY_OFFSET=0x0 behaves the same as CONFIG_MALLOC_SIZE=0x0
and is the default, so we can drop CONFIG_MALLOC_SIZE=0x0 now.

No functional change.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/configs/efi_v8_defconfig          | 1 -
 arch/arm/configs/imx_v8_defconfig          | 1 -
 arch/arm/configs/layerscape_defconfig      | 1 -
 arch/arm/configs/multi_v8_defconfig        | 1 -
 arch/arm/configs/rockchip_v8_defconfig     | 1 -
 arch/arm/configs/rpi_v8a_defconfig         | 3 +--
 arch/arm/configs/socfpga-agilex5_defconfig | 1 -
 arch/arm/configs/zynqmp_defconfig          | 1 -
 8 files changed, 1 insertion(+), 9 deletions(-)

diff --git a/arch/arm/configs/efi_v8_defconfig b/arch/arm/configs/efi_v8_defconfig
index 5f946dd51d4a..51eaad78a11e 100644
--- a/arch/arm/configs/efi_v8_defconfig
+++ b/arch/arm/configs/efi_v8_defconfig
@@ -3,7 +3,6 @@ CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_ARM_PSCI_CLIENT=y
 CONFIG_NAME="efi_v8_defconfig"
 CONFIG_MMU=y
-CONFIG_MALLOC_SIZE=0x0
 CONFIG_KALLSYMS=y
 CONFIG_PROMPT="barebox> "
 CONFIG_PROMPT_HUSH_PS2="y"
diff --git a/arch/arm/configs/imx_v8_defconfig b/arch/arm/configs/imx_v8_defconfig
index cbdb3a65c745..c8dd3e227929 100644
--- a/arch/arm/configs/imx_v8_defconfig
+++ b/arch/arm/configs/imx_v8_defconfig
@@ -23,7 +23,6 @@ CONFIG_64BIT=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_NAME="imx_v8_defconfig"
 CONFIG_MMU=y
-CONFIG_MALLOC_SIZE=0x0
 CONFIG_KALLSYMS=y
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_AUTO_COMPLETE=y
diff --git a/arch/arm/configs/layerscape_defconfig b/arch/arm/configs/layerscape_defconfig
index 272dff90d7c8..7d2a2e2322a2 100644
--- a/arch/arm/configs/layerscape_defconfig
+++ b/arch/arm/configs/layerscape_defconfig
@@ -6,7 +6,6 @@ CONFIG_64BIT=y
 CONFIG_ARM_PSCI_CLIENT=y
 CONFIG_NAME="layerscape_defconfig"
 CONFIG_MMU=y
-CONFIG_MALLOC_SIZE=0x0
 CONFIG_KALLSYMS=y
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
diff --git a/arch/arm/configs/multi_v8_defconfig b/arch/arm/configs/multi_v8_defconfig
index 233aebbe2d95..e62dbc96fd03 100644
--- a/arch/arm/configs/multi_v8_defconfig
+++ b/arch/arm/configs/multi_v8_defconfig
@@ -52,7 +52,6 @@ CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_ARM_PSCI_CLIENT=y
 CONFIG_NAME="multi_v8_defconfig"
 CONFIG_MMU=y
-CONFIG_MALLOC_SIZE=0x0
 CONFIG_KALLSYMS=y
 CONFIG_PROMPT="barebox> "
 CONFIG_HUSH_FANCY_PROMPT=y
diff --git a/arch/arm/configs/rockchip_v8_defconfig b/arch/arm/configs/rockchip_v8_defconfig
index e0df655ea046..ef2951d133d6 100644
--- a/arch/arm/configs/rockchip_v8_defconfig
+++ b/arch/arm/configs/rockchip_v8_defconfig
@@ -16,7 +16,6 @@ CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_ARM_PSCI_CLIENT=y
 CONFIG_NAME="rockchip_v8_defconfig"
 CONFIG_MMU=y
-CONFIG_MALLOC_SIZE=0x0
 CONFIG_MALLOC_TLSF=y
 CONFIG_KALLSYMS=y
 CONFIG_PROMPT="barebox> "
diff --git a/arch/arm/configs/rpi_v8a_defconfig b/arch/arm/configs/rpi_v8a_defconfig
index 6c85209546e4..c29fe30701e8 100644
--- a/arch/arm/configs/rpi_v8a_defconfig
+++ b/arch/arm/configs/rpi_v8a_defconfig
@@ -6,7 +6,6 @@ CONFIG_64BIT=y
 CONFIG_IMAGE_COMPRESSION_NONE=y
 CONFIG_NAME="rpi_v8a_defconfig"
 CONFIG_MMU=y
-CONFIG_MALLOC_SIZE=0x0
 CONFIG_MALLOC_TLSF=y
 CONFIG_KALLSYMS=y
 CONFIG_PROMPT="R-Pi> "
@@ -111,4 +110,4 @@ CONFIG_FS_NFS=y
 CONFIG_FS_FAT=y
 CONFIG_FS_FAT_WRITE=y
 CONFIG_FS_FAT_LFN=y
-CONFIG_ZLIB=y
\ No newline at end of file
+CONFIG_ZLIB=y
diff --git a/arch/arm/configs/socfpga-agilex5_defconfig b/arch/arm/configs/socfpga-agilex5_defconfig
index 5711cb89ed27..cad8eeb862fe 100644
--- a/arch/arm/configs/socfpga-agilex5_defconfig
+++ b/arch/arm/configs/socfpga-agilex5_defconfig
@@ -3,7 +3,6 @@ CONFIG_64BIT=y
 CONFIG_MACH_SOCFPGA_ARROW_AXE5_EAGLE=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_MMU=y
-CONFIG_MALLOC_SIZE=0x0
 CONFIG_PROMPT="barebox> "
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
diff --git a/arch/arm/configs/zynqmp_defconfig b/arch/arm/configs/zynqmp_defconfig
index 5a71536ba69e..39c1b42619cc 100644
--- a/arch/arm/configs/zynqmp_defconfig
+++ b/arch/arm/configs/zynqmp_defconfig
@@ -6,7 +6,6 @@ CONFIG_64BIT=y
 CONFIG_ARM_PSCI_CLIENT=y
 CONFIG_NAME="zynqmp_defconfig"
 CONFIG_MMU=y
-CONFIG_MALLOC_SIZE=0x0
 CONFIG_MALLOC_TLSF=y
 CONFIG_KALLSYMS=y
 CONFIG_HUSH_FANCY_PROMPT=y
-- 
2.47.3




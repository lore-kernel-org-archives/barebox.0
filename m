Delivery-date: Wed, 06 Oct 2021 16:24:48 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mY7qi-0004z1-DX
	for lore@lore.pengutronix.de; Wed, 06 Oct 2021 16:24:48 +0200
Received: from [2607:7c80:54:e::133] (helo=bombadil.infradead.org)
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mY7qh-0000aA-8r
	for lore@pengutronix.de; Wed, 06 Oct 2021 16:24:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lb4OQYvApGd8LJNTrptE6qc/H70xBTmV3KeBXLWIN+8=; b=YY5olWBx5mg4L4
	BmVGB7EHHBtlAwGGiZTxsWnnO/WJuLfhw2mRldqIrD2XyumVk6wV/cpm77BgtBn3pQ7Fg6jc8kw+1
	qDKr+/pcD9EWoDDvduVlvHuwEE0Nn0nK1YMwmi1q/GSlUqB2FTjcCJGUukWCsOnxNfe4QuzvD/tGu
	iADuCW+4SbUXwlOk4kBxhITnuG/5Pap0RcKd7aCXj79sHIWu4A+ect9cw1q6m3HVs6ZqsBib0taNq
	rXTgVvbSk1JIsYsGsuOTuI24eakN/UV49G97s86mQWRI8tWpBp1Xeds5tFSOkyyKQ0ONp1MA/IAGM
	H1+DCl6znjl1tcM8ydXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mY7pE-00EcmH-VQ; Wed, 06 Oct 2021 14:23:17 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mY7p4-00Ecij-JW
 for barebox@lists.infradead.org; Wed, 06 Oct 2021 14:23:08 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mY7ov-0000I8-AT; Wed, 06 Oct 2021 16:22:57 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1mY7ou-0089SQ-Oj; Wed, 06 Oct 2021 16:22:56 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed,  6 Oct 2021 16:22:50 +0200
Message-Id: <20211006142254.1751864-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211006142254.1751864-1-s.hauer@pengutronix.de>
References: <20211006142254.1751864-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211006_072306_695604_C9F0B6C9 
X-CRM114-Status: GOOD (  13.00  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-Host-Lookup-Failed: Reverse DNS lookup failed for 2607:7c80:54:e::133 (failed)
X-Broken-Reverse-DNS: no host name for IP address 2607:7c80:54:e::133
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,PTX_BROKEN_RDNS,RCVD_IN_DNSWL_MED,RDNS_NONE,
	SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/5] scripts: Add Kconfig option for most host tools
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Host tools were often only compiled depending on the architecture which
needs them. This patch adds explicit options for most tools mainly to
be able to compile test them without having to compile for each
architecture.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/Kconfig  | 63 ++++++++++++++++++++++++++++++++++++++++++++++++
 scripts/Makefile | 18 +++++++-------
 2 files changed, 72 insertions(+), 9 deletions(-)

diff --git a/scripts/Kconfig b/scripts/Kconfig
index b903486ecd..5cba520f4b 100644
--- a/scripts/Kconfig
+++ b/scripts/Kconfig
@@ -12,6 +12,69 @@ config COMPILE_HOST_TOOLS
 
 source "scripts/imx/Kconfig"
 
+config SOCFPGA_MKIMAGE
+	bool "SoCFPGA mkimage" if COMPILE_HOST_TOOLS
+	depends on ARCH_SOCFPGA || COMPILE_HOST_TOOLS
+	default y if ARCH_SOCFPGA
+	help
+	  This enables building the image creation tool for SoCFPGA
+
+config ZYNQ_MKIMAGE
+	bool "Zynq mkimage" if COMPILE_HOST_TOOLS
+	depends on ARCH_ZYNQ || COMPILE_HOST_TOOLS
+	default y if ARCH_ZYNQ
+	help
+	  This enables building the image creation tool for Zynq
+
+config MXS_HOSTTOOLS
+	bool "MXS host tools" if COMPILE_HOST_TOOLS
+	depends on ARCH_MXS || COMPILE_HOST_TOOLS
+	default y if ARCH_MXS
+	help
+	  This enables building the host tools for Freescale MXS SoCs
+
+config LAYERSCAPE_PBLIMAGE
+	bool "Layerscape PBL image tool" if COMPILE_HOST_TOOLS
+	depends on ARCH_LAYERSCAPE || COMPILE_HOST_TOOLS
+	default y if ARCH_LAYERSCAPE
+	help
+	  This enables building the PBL image tool for Freescale Layerscape SoCs
+
+config STM32_IMAGE
+	bool "STM32MP image tool" if COMPILE_HOST_TOOLS
+	depends on ARCH_STM32MP || COMPILE_HOST_TOOLS
+	default y if ARCH_STM32MP
+	help
+	  This enables building the image creation tool for STM32MP SoCs
+
+config RK_IMAGE
+	bool "Rockchip image tool" if COMPILE_HOST_TOOLS
+	depends on ARCH_ROCKCHIP || COMPILE_HOST_TOOLS
+	default y if ARCH_ROCKCHIP
+	help
+	  This enables building the image creation tool for Rockchip SoCs
+
+config OMAP_IMAGE
+	bool "TI OMAP image tools" if COMPILE_HOST_TOOLS
+	depends on ARCH_OMAP || COMPILE_HOST_TOOLS
+	default y if ARCH_OMAP
+	help
+	  This enables building the image creation tools for TI OMAP SoCs
+
+config S5P_IMAGE
+	bool "S5P image tool" if COMPILE_HOST_TOOLS
+	depends on ARCH_S5PCxx || COMPILE_HOST_TOOLS
+	default y if ARCH_S5PCxx
+	help
+	  This enables building the image creation tool for S5P SoCs
+
+config DAVINCI_IMAGE
+	bool "Davinci image tool" if COMPILE_HOST_TOOLS
+	depends on ARCH_DAVINCI || COMPILE_HOST_TOOLS
+	default y if ARCH_DAVINCI
+	help
+	  This enables building the image creation tool for Davinci SoCs
+
 config MVEBU_HOSTTOOLS
 	bool "mvebu hosttools" if COMPILE_HOST_TOOLS
 	depends on ARCH_MVEBU || COMPILE_HOST_TOOLS
diff --git a/scripts/Makefile b/scripts/Makefile
index eb0f5c5805..53568573a3 100644
--- a/scripts/Makefile
+++ b/scripts/Makefile
@@ -15,17 +15,17 @@ hostprogs-always-$(CONFIG_IMD)				+= bareboximd
 hostprogs-always-$(CONFIG_KALLSYMS)			+= kallsyms
 hostprogs-always-$(CONFIG_MIPS)				+= mips-relocs
 hostprogs-always-$(CONFIG_MVEBU_HOSTTOOLS)		+= kwbimage kwboot mvebuimg
-hostprogs-always-$(CONFIG_ARCH_OMAP)			+= omap_signGP mk-omap-image
-hostprogs-always-$(CONFIG_ARCH_S5PCxx)			+= s5p_cksum
-hostprogs-always-$(CONFIG_ARCH_DAVINCI)			+= mkublheader
+hostprogs-always-$(CONFIG_OMAP_IMAGE)			+= omap_signGP mk-omap-image
+hostprogs-always-$(CONFIG_S5P_IMAGE)			+= s5p_cksum
+hostprogs-always-$(CONFIG_DAVINCI_IMAGE)		+= mkublheader
 HOSTCFLAGS_zynq_mkimage.o = -I$(srctree) -I$(srctree)/arch/arm/mach-zynq/include
-hostprogs-always-$(CONFIG_ARCH_ZYNQ)			+= zynq_mkimage
-hostprogs-always-$(CONFIG_ARCH_SOCFPGA)			+= socfpga_mkimage
-hostprogs-always-$(CONFIG_ARCH_MXS)			+= mxsimage mxsboot
-hostprogs-always-$(CONFIG_ARCH_LAYERSCAPE)		+= pblimage
-hostprogs-always-$(CONFIG_ARCH_STM32MP)			+= stm32image
+hostprogs-always-$(CONFIG_ZYNQ_MKIMAGE)			+= zynq_mkimage
+hostprogs-always-$(CONFIG_SOCFPGA_MKIMAGE)		+= socfpga_mkimage
+hostprogs-always-$(CONFIG_MXS_HOSTTOOLS)		+= mxsimage mxsboot
+hostprogs-always-$(CONFIG_LAYERSCAPE_PBLIMAGE)		+= pblimage
+hostprogs-always-$(CONFIG_STM32_IMAGE)			+= stm32image
 hostprogs-always-$(CONFIG_RISCV)			+= prelink-riscv
-hostprogs-always-$(CONFIG_ARCH_ROCKCHIP)		+= rkimage
+hostprogs-always-$(CONFIG_RK_IMAGE)			+= rkimage
 HOSTCFLAGS_rkimage = `pkg-config --cflags openssl`
 HOSTLDLIBS_rkimage = `pkg-config --libs openssl`
 KBUILD_HOSTCFLAGS += -I$(srctree)/scripts/include/
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


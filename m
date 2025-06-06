Delivery-date: Fri, 06 Jun 2025 10:14:39 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uNSDn-004Jac-2J
	for lore@lore.pengutronix.de;
	Fri, 06 Jun 2025 10:14:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uNSDn-0003D2-4Y
	for lore@pengutronix.de; Fri, 06 Jun 2025 10:14:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=TtfWRycrosz7fE3l4QK3sUyO5m5agOoLpZJ1FfcpDrg=; b=SBA7aH2jFEIoZGA3gZnxnNy5np
	Ai4QilC1327Q0zQIABNx7wAPDnfM06VGNRLJ7rJx1S4Os215SZEIenObZ0YcKAe+dlQoSn6aZc2nJ
	fWP0Yw47SeqvmVhSuB5wBibm8SCi4iQa2TulI672CKTKJPzp507yLQZBHImJ9u9oBigG7T3vi9GH7
	iB/PJ/0TODqSMQDSgZyYNwMtl6wW5iwWfNObwDKq/AVHqx+BYRaSRI8brvzt6PUoabKpjArib5hS5
	8b5FRtrSbd3FGxb8mhRPDFUuR6T696ez4bu2ksy0gn0EQHrLNbEqr7YEQW+CNziLrZELsxtZV9w9k
	e/onrTHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNSDH-0000000HNmV-1EpA;
	Fri, 06 Jun 2025 08:14:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNSDE-0000000HNmA-277g
	for barebox@lists.infradead.org;
	Fri, 06 Jun 2025 08:14:05 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uNSDC-0002pQ-St; Fri, 06 Jun 2025 10:14:02 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Fri,  6 Jun 2025 10:14:01 +0200
Message-Id: <20250606081401.2145532-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250606_011404_544167_E79B5C79 
X-CRM114-Status: UNSURE (   6.21  )
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
X-Spam-Status: No, score=-5.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	UPPERCASE_50_75 autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: multi_v8_defconfig: enable new boards
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The multi_v8_defconfig should enable all ARMv8 boards that are
multi-arch/platform capable.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 arch/arm/configs/multi_v8_defconfig | 15 +++++++++------
 1 file changed, 9 insertions(+), 6 deletions(-)

diff --git a/arch/arm/configs/multi_v8_defconfig b/arch/arm/configs/multi_v8_defconfig
index 03b9d8335cbf..3baa312dfbf9 100644
--- a/arch/arm/configs/multi_v8_defconfig
+++ b/arch/arm/configs/multi_v8_defconfig
@@ -1,10 +1,14 @@
 CONFIG_ARCH_ARM64_VIRT=y
+CONFIG_ARCH_BCM283X=y
 CONFIG_ARCH_IMX=y
 CONFIG_ARCH_K3=y
+CONFIG_ARCH_SUNXI=y
 CONFIG_ARCH_LAYERSCAPE=y
 CONFIG_ARCH_ROCKCHIP=y
-CONFIG_ARCH_SUN50I_A64=y
 CONFIG_ARCH_ZYNQMP=y
+CONFIG_MACH_RPI3=y
+CONFIG_MACH_RPI_CM3=y
+CONFIG_MACH_RPI4=y
 CONFIG_MACH_KOENIGBAUER_ALPHAJET=y
 CONFIG_MACH_INNOCOMM_WB15=y
 CONFIG_MACH_KARO_QSXP_ML81=y
@@ -21,10 +25,9 @@ CONFIG_MACH_SKOV_IMX8MP=y
 CONFIG_MACH_TQ_MBA8MPXL=y
 CONFIG_MACH_VARISCITE_DT8MCUSTOMBOARD_IMX8MP=y
 CONFIG_MACH_ZII_IMX8MQ_DEV=y
-CONFIG_MACH_TQMA93XX=y
 CONFIG_MACH_PHYTEC_PHYCORE_IMX93=y
+CONFIG_MACH_TQMA93XX=y
 CONFIG_IMX_IIM=y
-CONFIG_ARCH_LAYERSCAPE_PPA=y
 CONFIG_MACH_LS1028ARDB=y
 CONFIG_MACH_LS1046ARDB=y
 CONFIG_MACH_TQMLS1046A=y
@@ -33,18 +36,19 @@ CONFIG_MACH_RK3568_EVB=y
 CONFIG_MACH_RK3568_BPI_R2PRO=y
 CONFIG_MACH_PINE64_PINETAB2=y
 CONFIG_MACH_PINE64_QUARTZ64=y
+CONFIG_MACH_PROTONIC_MECSBC=y
 CONFIG_MACH_RADXA_ROCK3=y
 CONFIG_MACH_RADXA_ROCK5=y
 CONFIG_MACH_RADXA_CM3=y
+CONFIG_MACH_WOLFVISION_PF5=y
+CONFIG_MACH_XUNLONG_ORANGEPI_5_PLUS=y
 CONFIG_MACH_XILINX_ZCU102=y
 CONFIG_MACH_XILINX_ZCU104=y
 CONFIG_MACH_XILINX_ZCU106=y
-CONFIG_64BIT=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_ARM_PSCI_CLIENT=y
 CONFIG_MMU=y
 CONFIG_MALLOC_SIZE=0x0
-CONFIG_MALLOC_TLSF=y
 CONFIG_KALLSYMS=y
 CONFIG_PROMPT="barebox> "
 CONFIG_HUSH_FANCY_PROMPT=y
@@ -53,7 +57,6 @@ CONFIG_MENU=y
 CONFIG_BOOTM_SHOW_TYPE=y
 CONFIG_BOOTM_VERBOSE=y
 CONFIG_BOOTM_INITRD=y
-CONFIG_BOOTM_OFTREE=y
 CONFIG_BOOTM_OFTREE_UIMAGE=y
 CONFIG_BOOTM_AIMAGE=y
 CONFIG_BLSPEC=y
-- 
2.39.5




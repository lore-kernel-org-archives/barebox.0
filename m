Delivery-date: Mon, 11 Jul 2022 09:54:05 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oAoF4-002C8L-3x
	for lore@lore.pengutronix.de; Mon, 11 Jul 2022 09:54:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oAoF1-0001Mm-8S
	for lore@pengutronix.de; Mon, 11 Jul 2022 09:54:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xJ+HGqdH/juVTl6z9VVyvPTwRKcf+BcbIF3/4jjVRaQ=; b=A3tl/BUMwEQ5J4hKx8AxBwRW8x
	nF6Htdr/Bd5J32tHwzH5SprItDqY5LeijnzcCvwgHd1pFW0kKZj+2otJwAUAqYlV7HjWjiG/KnKX4
	CwsYtgpU8D7GFo8L+bF879iUv/OJ7VBRjZ2T88WUnEIhDI8gRmhL6eGlDGov7oVgX4fLfU8Jprsrk
	A4x+t8rDd3x2S/4b69y1e2dccNOMSxf3jiye0D6P4uUsvZZRX1YCrIsit9zzTOAfIERbFsnaS0wcJ
	Ek0paYJn79+QOqprbHIOLIE99r8opRhTgIAJbO4E3kMAF8xTmPKWCcB7yPILWOxaymuas8mpfij/l
	aKCaFCHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAoDb-00Gz0m-HN; Mon, 11 Jul 2022 07:52:35 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAoDL-00Gytz-6o
	for barebox@lists.infradead.org; Mon, 11 Jul 2022 07:52:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <str@pengutronix.de>)
	id 1oAoDI-0000lE-Bz; Mon, 11 Jul 2022 09:52:16 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <str@pengutronix.de>)
	id 1oAoDH-000GVV-LM; Mon, 11 Jul 2022 09:52:15 +0200
Received: from str by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <str@pengutronix.de>)
	id 1oAoDG-00A3gn-Ff; Mon, 11 Jul 2022 09:52:14 +0200
From: Steffen Trumtrar <str@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon, 11 Jul 2022 09:52:06 +0200
Message-Id: <20220711075209.2377254-3-str@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220711075209.2377254-1-str@pengutronix.de>
References: <20220711075209.2377254-1-str@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220711_005219_268181_80557077 
X-CRM114-Status: GOOD (  11.19  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v3 3/6] ARM: socfpga: achilles: use dtbz instead of dtb
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Steffen Trumtrar <s.trumtrar@pengutronix.de>

To optimize the image size, use compressed devicetrees.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/boards/reflex-achilles/lowlevel.c | 6 +++---
 arch/arm/mach-socfpga/Kconfig              | 1 +
 2 files changed, 4 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boards/reflex-achilles/lowlevel.c b/arch/arm/boards/reflex-achilles/lowlevel.c
index e213feb9f0..162cd58c58 100644
--- a/arch/arm/boards/reflex-achilles/lowlevel.c
+++ b/arch/arm/boards/reflex-achilles/lowlevel.c
@@ -29,7 +29,7 @@
 #define BITSTREAM1_OFFSET  0x0
 #define BITSTREAM2_OFFSET  BITSTREAM1_OFFSET + SZ_32M
 
-extern char __dtb_socfpga_arria10_achilles_start[];
+extern char __dtb_z_socfpga_arria10_achilles_start[];
 
 static noinline void achilles_start(void)
 {
@@ -86,7 +86,7 @@ ENTRY_FUNCTION(start_socfpga_achilles, r0, r1, r2)
 {
 	void *fdt;
 
-	fdt = __dtb_socfpga_arria10_achilles_start + get_runtime_offset();
+	fdt = __dtb_z_socfpga_arria10_achilles_start + get_runtime_offset();
 
 	barebox_arm_entry(0x0, SZ_2G + SZ_1G, fdt);
 }
@@ -111,7 +111,7 @@ ENTRY_FUNCTION(start_socfpga_achilles_bringup, r0, r1, r2)
 
 	arria10_ddr_calibration_sequence();
 
-	fdt = __dtb_socfpga_arria10_achilles_start + get_runtime_offset();
+	fdt = __dtb_z_socfpga_arria10_achilles_start + get_runtime_offset();
 
 	barebox_arm_entry(0x0, SZ_2G + SZ_1G, fdt);
 }
diff --git a/arch/arm/mach-socfpga/Kconfig b/arch/arm/mach-socfpga/Kconfig
index 80344315e3..bdd2a2cfbf 100644
--- a/arch/arm/mach-socfpga/Kconfig
+++ b/arch/arm/mach-socfpga/Kconfig
@@ -23,6 +23,7 @@ config ARCH_SOCFPGA_CYCLONE5
 config ARCH_SOCFPGA_ARRIA10
 	bool
 	select CPU_V7
+	select ARM_USE_COMPRESSED_DTB
 	select RESET_CONTROLLER
 	select HAVE_PBL_MULTI_IMAGES
 	select OFDEVICE
-- 
2.30.2




Delivery-date: Fri, 16 Dec 2022 13:12:56 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p69aB-005ezO-Cw
	for lore@lore.pengutronix.de; Fri, 16 Dec 2022 13:12:55 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p69aA-0004AP-KK
	for lore@pengutronix.de; Fri, 16 Dec 2022 13:12:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ZMh8xefU5fy5JNOSe5/mUQL65JrKhrGgMxDDqb66jBk=; b=Z1moWrufQ0Aozqy1neCGJrn31D
	MYC4Cf5MLBUHrej0MnsMEQUbo6C71Iua41eD4VDgOkv8iv4q2nu7XrbUH5qo+DEogs1M2RWPG0U4C
	Q8B4zXX9fEL9C+sqmGJwpZE8aZ7LZpIg8OtJN0O6LAlvG7YZ+sqeLZO35rhZs6abcVWomfGquPR0r
	Dea1udMQX7DFFWZfjiNunQuNrNJbCNvOStYi4ixWjh5+sYV3TTPH2Eyb111GpB/eOaagMuiLPfjON
	lclnPR76Az6/Rthszj/3sv1Qfqx3LJBN5BLO/Lkxk5vA6ISbMSoQ5nq2YduU2QouI+LdSmarY+fHe
	sBU2dO9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p69Yi-00EpFU-3J; Fri, 16 Dec 2022 12:11:24 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p69Yb-00EpBd-1l
	for barebox@lists.infradead.org; Fri, 16 Dec 2022 12:11:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1p69YY-00043s-3f; Fri, 16 Dec 2022 13:11:14 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1p69YW-004ue7-Mv; Fri, 16 Dec 2022 13:11:13 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1p69YW-007VXV-Sv; Fri, 16 Dec 2022 13:11:12 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 16 Dec 2022 13:11:10 +0100
Message-Id: <20221216121111.1789446-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221216_041117_136666_163E1D07 
X-CRM114-Status: GOOD (  12.62  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] arm: avnet zedboard: Use compressed DTB
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The barebox image is limited to the OCRAM size, so squeeze the binary
size a little bit by using compressed DTB.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/avnet-zedboard/lowlevel.c | 4 ++--
 arch/arm/mach-zynq/Kconfig                | 1 +
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/avnet-zedboard/lowlevel.c b/arch/arm/boards/avnet-zedboard/lowlevel.c
index f7bdceb42a..87ce79863d 100644
--- a/arch/arm/boards/avnet-zedboard/lowlevel.c
+++ b/arch/arm/boards/avnet-zedboard/lowlevel.c
@@ -14,7 +14,7 @@
 #define PLL_DDR_LOCK	(1 << 1)
 #define PLL_IO_LOCK	(1 << 2)
 
-extern char __dtb_zynq_zed_start[];
+extern char __dtb_z_zynq_zed_start[];
 
 static void avnet_zedboard_ps7_init(void)
 {
@@ -289,7 +289,7 @@ static void avnet_zedboard_pbl_console_init(void)
 ENTRY_FUNCTION(start_avnet_zedboard, r0, r1, r2)
 {
 
-	void *fdt = __dtb_zynq_zed_start + get_runtime_offset();
+	void *fdt = __dtb_z_zynq_zed_start + get_runtime_offset();
 
 	/* MIO_07 in GPIO Mode 3.3V VIO, can be uncomented because it is the default value */
 	writel(0x0000DF0D, ZYNQ_SLCR_UNLOCK);
diff --git a/arch/arm/mach-zynq/Kconfig b/arch/arm/mach-zynq/Kconfig
index 3f2cd8e99c..3aac4506e3 100644
--- a/arch/arm/mach-zynq/Kconfig
+++ b/arch/arm/mach-zynq/Kconfig
@@ -29,6 +29,7 @@ menu "select Zynq boards to be built"
 
 config MACH_ZEDBOARD
 	bool "Avnet Zynq-7000 ZedBoard"
+	select ARM_USE_COMPRESSED_DTB
 	select ARCH_ZYNQ7000
 
 endmenu
-- 
2.30.2




Delivery-date: Mon, 17 Jun 2024 13:37:25 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sJAft-007YeH-2n
	for lore@lore.pengutronix.de;
	Mon, 17 Jun 2024 13:37:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sJAft-000774-0y
	for lore@pengutronix.de; Mon, 17 Jun 2024 13:37:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3lRZ0j74e4b9EtAG4RPf6duT6/BZ5KbshJZ22ti/IRQ=; b=SFPLl5rzC/z9nE+v0FfIdn58oS
	oV3dfn68tKEH3YJf1cOf3jftjCqRZlj2ZpCsrhLe3gpfWm8Cd5i90naqMxlvPm5UjWobiXOqcf5Sp
	OKYNx0y2Q6/4yhRSLiI+F051lo/1KKWAzNqAHVD1rnFygOGB49+zkc+/pf6n3HoOf+nD6G660qH0h
	KcauHngblptiJu6j9CqqR/5DzYL5fys0EiaxXyo//3upb+2JHl+AWgMryvZuul0MD5jS3rBFvMld0
	RKw5106g3CcTGF9P7k0sFYIXF+t9tz7HBwrfMBE5u+kyru68hCHGFvC6VpTx/H79xRbfNbcFrbwHw
	ZCQaFqQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJAfJ-0000000AVf3-3UNK;
	Mon, 17 Jun 2024 11:36:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJAfA-0000000AVWA-2CRL
	for barebox@lists.infradead.org;
	Mon, 17 Jun 2024 11:36:42 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1sJAf7-0006ab-RJ; Mon, 17 Jun 2024 13:36:37 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon, 17 Jun 2024 13:36:24 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240617-v2024-05-0-topic-socfpga-arria10-xloader-v1-2-48a6eba4bb5e@pengutronix.de>
References: <20240617-v2024-05-0-topic-socfpga-arria10-xloader-v1-0-48a6eba4bb5e@pengutronix.de>
In-Reply-To: <20240617-v2024-05-0-topic-socfpga-arria10-xloader-v1-0-48a6eba4bb5e@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240617_043640_679126_629A38C8 
X-CRM114-Status: UNSURE (   7.07  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 02/14] ARM: Arria10: reset manager: document reset source
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add defines for the reset manager reset source bits in the STAT register.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 include/mach/socfpga/arria10-reset-manager.h | 31 ++++++++++++++++++++++++++++
 1 file changed, 31 insertions(+)

diff --git a/include/mach/socfpga/arria10-reset-manager.h b/include/mach/socfpga/arria10-reset-manager.h
index 2033de77a3..45a48aba7c 100644
--- a/include/mach/socfpga/arria10-reset-manager.h
+++ b/include/mach/socfpga/arria10-reset-manager.h
@@ -40,6 +40,37 @@
 #define ARRIA10_RSTMGR_HMCGPOUT		0x78
 #define ARRIA10_RSTMGR_HMCGPIN		0x7c
 
+/* Built-in HPS POR voltage detector triggered a cold reset. */
+#define ARRIA10_RSTMGR_STAT_PORHPSVOLTRST	BIT(0)
+/* Built-in FPGA POR voltage detector triggered a cold reset. */
+#define ARRIA10_RSTMGR_STAT_PORFPGAVOLTRST	BIT(1)
+/* nPOR pin triggered a col reset (por_pin_req = 1) */
+#define ARRIA10_RSTMGR_STAT_NPORPINRST		BIT(2)
+/* FPGA core triggered a cold reset (f2s_cold_rst_req = 1) */
+#define ARRIA10_RSTMGR_STAT_FPGACOLDRST		BIT(3)
+/* FPGA entered CONFIG_IO mode and triggered a cold reset */
+#define ARRIA10_RSTMGR_STAT_CONFIGIOCOLDRST	BIT(4)
+/* Software wrote CTRL.SWCOLDRSTREQ to 1 and triggered a cold reset */
+#define ARRIA10_RSTMGR_STAT_SWCOLDRST		BIT(5)
+/* nRST pin triggered a hardware sequenced warm reset */
+#define ARRIA10_RSTMGR_STAT_NRSTPINRST		BIT(8)
+/* FPGA core triggered a hardware sequenced warm reset */
+#define ARRIA10_RSTMGR_STAT_FPGAWARMRST		BIT(9)
+/* Software wrote CTRL.SWWARMRSTREQ to 1 and triggered a hardware sequenced warm reset. */
+#define ARRIA10_RSTMGR_STAT_SWWARMRST		BIT(10)
+/* MPU watchdog 0 triggered a hardware sequenced warm reset */
+#define ARRIA10_RSTMGR_STAT_MPUWD0WARMRST	BIT(11)
+/* MPU watchdog 1 triggered a hardware sequenced warm reset */
+#define ARRIA10_RSTMGR_STAT_MPUWD1WARMRST	BIT(12)
+/* L4 watchdog 0 triggered a hardware sequenced warm reset */
+#define ARRIA10_RSTMGR_STAT_L4WD0WARMRST	BIT(13)
+/* L4 watchdog 1 triggered a hardware sequenced warm reset */
+#define ARRIA10_RSTMGR_STAT_L4WD1WARMRST	BIT(14)
+/* FPGA triggered debug reset */
+#define ARRIA10_RSTMGR_STAT_FPGADBGRST		BIT(16)
+/* DAP triggered debug reset */
+#define ARRIA10_RSTMGR_STAT_CDBGRST		BIT(17)
+
 #define ARRIA10_RSTMGR_CTL_SWWARMRSTREQ		BIT(1)
 #define ARRIA10_RSTMGR_PER0MODRST_EMAC0		BIT(0)
 #define ARRIA10_RSTMGR_PER0MODRST_EMAC1		BIT(1)

-- 
2.43.2




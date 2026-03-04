Delivery-date: Wed, 04 Mar 2026 12:24:37 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vxkLE-007xwm-2X
	for lore@lore.pengutronix.de;
	Wed, 04 Mar 2026 12:24:37 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vxkLF-0002ZY-23
	for lore@pengutronix.de; Wed, 04 Mar 2026 12:24:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iBefGcj7WvC7qinUC2VpSj+f4/hGfPpUd5ZR7ovld50=; b=z44EFyT0dR7rqlpg4NSBovN6iA
	LwZG9lrJ7ztHO1ae5Kk6oEcs2nHQKXJagjvKI/UPMtSdUjw24RG3TatJ4azQtaCNH3EYIGUyQKB+h
	Ej43+M82LnSmbrLTYMRtdtbCa498PEkJhxgQ6SAAhUHqS1SaKT0q6FSE5GlvnaJDsBvp3vb4kcnQ+
	BuuRp7+JFGD0rtpDCir/5jsFR9oaZW7nFrxDodxgSBao9dTWXEXRxKqswBO0I6d9yT/wYJhaMRok/
	deOFDvP1BWCta1Asjf4wuaN6n6f1rs+C4PO/WMMYm6kL1c/ZNJg5EFZw+udONjG7xvwt4gRRmMtK6
	gkPI1DEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxkKq-0000000H5Hc-1UQe;
	Wed, 04 Mar 2026 11:24:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxkKn-0000000H5F2-0rvr
	for barebox@lists.infradead.org;
	Wed, 04 Mar 2026 11:24:10 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1vxkKk-0002He-GK; Wed, 04 Mar 2026 12:24:06 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Wed, 04 Mar 2026 12:23:45 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260304-v2026-02-0-topic-imx8-ecc-v1-4-700698530c5c@pengutronix.de>
References: <20260304-v2026-02-0-topic-imx8-ecc-v1-0-700698530c5c@pengutronix.de>
In-Reply-To: <20260304-v2026-02-0-topic-imx8-ecc-v1-0-700698530c5c@pengutronix.de>
To: barebox@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>, 
 David Jander <david@protonic.nl>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260304_032409_250493_118AB54E 
X-CRM114-Status: GOOD (  12.72  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 4/4] arm: boards: protonic-imx8ml: Add ECC + scrubbing
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: David Jander <david@protonic.nl>

Enable ECC settings in DDRC and add inline ECC scrub on the 3 memory
regions.
The scrubbing is a simpler version than the one generated with
mscale_ddr_tool from NXP. This is much faster and seems to work equally
well.
Documentation of this procedure is nowhere to be found unfortunately, so
proving that it is correct is impossible beyond simply testing it.

Start up time increases by ~800ms with ECC scrubbing enabled.

Signed-off-by: David Jander <david@protonic.nl>
Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 .../boards/protonic-imx8m/lpddr4-timing-prt8ml.c   | 25 +++++++++++++++++++++-
 arch/arm/dts/imx8mp-prt8ml.dts                     | 10 ++++++++-
 2 files changed, 33 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/protonic-imx8m/lpddr4-timing-prt8ml.c b/arch/arm/boards/protonic-imx8m/lpddr4-timing-prt8ml.c
index 913db8786f..550641b462 100644
--- a/arch/arm/boards/protonic-imx8m/lpddr4-timing-prt8ml.c
+++ b/arch/arm/boards/protonic-imx8m/lpddr4-timing-prt8ml.c
@@ -15,6 +15,12 @@ static struct dram_cfg_param ddr_ddrc_cfg[] = {
 	{ 0x3d400020, 0x1303 },
 	{ 0x3d400024, 0x1e84800 },
 	{ 0x3d400064, 0x7a017c },
+#ifdef CONFIG_IMX8MP_DRAM_ECC
+	{ 0x3d400070, 0x01027f54 },
+#else
+	{ 0x3d400070, 0x01027f10 },
+#endif
+	{ 0x3d400074, 0x000007b0 },
 	{ 0x3d4000d0, 0xc00307a3 },
 	{ 0x3d4000d4, 0xc50000 },
 	{ 0x3d4000dc, 0xf4003f },
@@ -47,12 +53,21 @@ static struct dram_cfg_param ddr_ddrc_cfg[] = {
 
 	{ 0x3d4000f4, 0xc99 },
 	{ 0x3d400108, 0x9121c1c },
+#ifdef CONFIG_IMX8MP_DRAM_ECC
+	{ 0x3d400200, 0x13 },
+	{ 0x3d400204, 0x00050505 },
+	{ 0x3d40020c, 0x13131300 },
+	{ 0x3d400210, 0x1f1f },
+	{ 0x3d400214, 0x04040404 },
+	{ 0x3d400218, 0x68040404 },
+#else
 	{ 0x3d400200, 0x16 },
 	{ 0x3d40020c, 0x0 },
-	{ 0x3d400210, 0x1f1f },
 	{ 0x3d400204, 0x80808 },
+	{ 0x3d400210, 0x1f1f },
 	{ 0x3d400214, 0x7070707 },
 	{ 0x3d400218, 0x68070707 },
+#endif
 	{ 0x3d40021c, 0xf08 },
 	{ 0x3d400250, 0x00001705 },
 	{ 0x3d400254, 0x2c },
@@ -1119,3 +1134,11 @@ struct dram_timing_info prt8ml_dram_timing = {
 	.ddrphy_pie_num = ARRAY_SIZE(ddr_phy_pie),
 	.fsp_table = { 4000, 400, 100, },
 };
+
+void board_dram_ecc_scrub(void)
+{
+	ddrc_inline_ecc_scrub(0x00000000, 0x1bffffff);
+	ddrc_inline_ecc_scrub(0x20000000, 0x3bffffff);
+	ddrc_inline_ecc_scrub(0x40000000, 0x5bffffff);
+	ddrc_inline_ecc_scrub_end(0x0, 0x5fffffff);
+}
diff --git a/arch/arm/dts/imx8mp-prt8ml.dts b/arch/arm/dts/imx8mp-prt8ml.dts
index 15c3e710ae..b23d64f2d1 100644
--- a/arch/arm/dts/imx8mp-prt8ml.dts
+++ b/arch/arm/dts/imx8mp-prt8ml.dts
@@ -20,8 +20,16 @@ environment-emmc {
 			status = "disabled";
 		};
 	};
-};
 
+	/* Minimum contiguous memory region is 1792MiB
+	 * The probe function of the ddrc will either expand this
+	 * to 6GiB (without ECC) or 5.25GiB (with inline ECC, in 3 regions).
+	 */
+	memory@40000000 {
+		device_type = "memory";
+		reg = <0x0 0x40000000 0x0 0x70000000>;
+	};
+};
 
 &usdhc2 {
 	#address-cells = <1>;

-- 
2.52.0




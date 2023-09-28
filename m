Delivery-date: Thu, 28 Sep 2023 14:12:37 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qlpsl-00F6FW-0I
	for lore@lore.pengutronix.de; Thu, 28 Sep 2023 14:12:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qlpsj-0007ow-4u
	for lore@pengutronix.de; Thu, 28 Sep 2023 14:12:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Hu8JGahTN2MwYaKpgxoxdBc1Jmu6GJK0PrlJuD5aLEQ=; b=JinIdCrBB+NgKC7pOY7tdOs0w9
	1ytu+5OdGCjYvVS/BIS+viRVuz8B9h81zitBVnBNaauooJ5fqCQoqdae8y7iT1x2mqi6RPUnGTL2d
	RjWWpMb7B7W9yqCv1l+Msd5hk/vjOV0BGJzigPrC86CXOlb38VC7hEhKHECSASeb1dp4foQsoCYyb
	2aJ29FSBRn/XsU7/BHbDvQZeWMbIXH1O1d0uap/KxZCscCeKvVVA+WZbEqTcglP1ayYCSi8WiGJIV
	SEkVj/85Ro6l068dqm/17t5M/oPhXYep7rF3cc/uEIucAkYi/2/TrT+GSH3/b6toanvtWUrKg6S5L
	irNL9ujg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qlprO-003akk-1p;
	Thu, 28 Sep 2023 12:11:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qlprK-003ahW-2f
	for barebox@lists.infradead.org;
	Thu, 28 Sep 2023 12:11:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1qlprI-0007bF-Q9; Thu, 28 Sep 2023 14:11:08 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ore@pengutronix.de>)
	id 1qlprI-009Zdy-DF; Thu, 28 Sep 2023 14:11:08 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1qlprI-00AqPe-1A;
	Thu, 28 Sep 2023 14:11:08 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu, 28 Sep 2023 14:11:05 +0200
Message-Id: <20230928121106.2584743-1-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230928_051110_870535_FD814C0D 
X-CRM114-Status: GOOD (  10.76  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v1 1/2] ARM: i.MX6 MMDC: Add register offset comments to struct
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Sascha Hauer <s.hauer@pengutronix.de>

Lying structs over registers is a U-Boot paradigm I'll never understand.
The only thing it does is to successfully prevent a reader from
knowing/verifying the register offset without counting struct members. I
am currently not in the mood of rewriting this, but at least add some
comments with the register offsets as a debugging aid.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/mach/imx/imx6-mmdc.h | 100 +++++++++++++++++------------------
 1 file changed, 50 insertions(+), 50 deletions(-)

diff --git a/include/mach/imx/imx6-mmdc.h b/include/mach/imx/imx6-mmdc.h
index bf8d41fe58..1df87bf6bd 100644
--- a/include/mach/imx/imx6-mmdc.h
+++ b/include/mach/imx/imx6-mmdc.h
@@ -145,60 +145,60 @@ struct mx6sx_iomux_grp_regs {
  */
 #define MX6DQ_IOM_DDR_BASE      0x020e0500
 struct mx6dq_iomux_ddr_regs {
-	u32 res1[3];
-	u32 dram_sdqs5;
-	u32 dram_dqm5;
-	u32 dram_dqm4;
-	u32 dram_sdqs4;
-	u32 dram_sdqs3;
-	u32 dram_dqm3;
-	u32 dram_sdqs2;
-	u32 dram_dqm2;
-	u32 res2[16];
-	u32 dram_cas;
-	u32 res3[2];
-	u32 dram_ras;
-	u32 dram_reset;
-	u32 res4[2];
-	u32 dram_sdclk_0;
-	u32 dram_sdba2;
-	u32 dram_sdcke0;
-	u32 dram_sdclk_1;
-	u32 dram_sdcke1;
-	u32 dram_sdodt0;
-	u32 dram_sdodt1;
-	u32 res5;
-	u32 dram_sdqs0;
-	u32 dram_dqm0;
-	u32 dram_sdqs1;
-	u32 dram_dqm1;
-	u32 dram_sdqs6;
-	u32 dram_dqm6;
-	u32 dram_sdqs7;
-	u32 dram_dqm7;
+	u32 res1[3];		/* 0x020e0500 */
+	u32 dram_sdqs5;		/* 0x020e050c */
+	u32 dram_dqm5;		/* 0x020e0510 */
+	u32 dram_dqm4;		/* 0x020e0514 */
+	u32 dram_sdqs4;		/* 0x020e0518 */
+	u32 dram_sdqs3;		/* 0x020e051c */
+	u32 dram_dqm3;		/* 0x020e0520 */
+	u32 dram_sdqs2;		/* 0x020e0524 */
+	u32 dram_dqm2;		/* 0x020e0528 */
+	u32 res2[16];		/* 0x020e052c */
+	u32 dram_cas;		/* 0x020e056c */
+	u32 res3[2];		/* 0x020e0570 */
+	u32 dram_ras;		/* 0x020e0578 */
+	u32 dram_reset;		/* 0x020e057c */
+	u32 res4[2];		/* 0x020e0580 */
+	u32 dram_sdclk_0;	/* 0x020e0588 */
+	u32 dram_sdba2;		/* 0x020e058c */
+	u32 dram_sdcke0;	/* 0x020e0590 */
+	u32 dram_sdclk_1;	/* 0x020e0594 */
+	u32 dram_sdcke1;	/* 0x020e0598 */
+	u32 dram_sdodt0;	/* 0x020e059c */
+	u32 dram_sdodt1;	/* 0x020e05a0 */
+	u32 res5;		/* 0x020e05a4 */
+	u32 dram_sdqs0;		/* 0x020e05a8 */
+	u32 dram_dqm0;		/* 0x020e05ac */
+	u32 dram_sdqs1;		/* 0x020e05b0 */
+	u32 dram_dqm1;		/* 0x020e05b4 */
+	u32 dram_sdqs6;		/* 0x020e05b8 */
+	u32 dram_dqm6;		/* 0x020e05bc */
+	u32 dram_sdqs7;		/* 0x020e05c0 */
+	u32 dram_dqm7;		/* 0x020e05c4 */
 };
 
 #define MX6DQ_IOM_GRP_BASE      0x020e0700
 struct mx6dq_iomux_grp_regs {
-	u32 res1[18];
-	u32 grp_b7ds;
-	u32 grp_addds;
-	u32 grp_ddrmode_ctl;
-	u32 res2;
-	u32 grp_ddrpke;
-	u32 res3[6];
-	u32 grp_ddrmode;
-	u32 res4[3];
-	u32 grp_b0ds;
-	u32 grp_b1ds;
-	u32 grp_ctlds;
-	u32 res5;
-	u32 grp_b2ds;
-	u32 grp_ddr_type;
-	u32 grp_b3ds;
-	u32 grp_b4ds;
-	u32 grp_b5ds;
-	u32 grp_b6ds;
+	u32 res1[18];		/* 0x020e0700 */
+	u32 grp_b7ds;		/* 0x020e0748 */
+	u32 grp_addds;		/* 0x020e074c */
+	u32 grp_ddrmode_ctl;	/* 0x020e0750 */
+	u32 res2;		/* 0x020e0754 */
+	u32 grp_ddrpke;		/* 0x020e0758 */
+	u32 res3[6];		/* 0x020e075c */
+	u32 grp_ddrmode;	/* 0x020e0774 */
+	u32 res4[3];		/* 0x020e0778 */
+	u32 grp_b0ds;		/* 0x020e0784 */
+	u32 grp_b1ds;		/* 0x020e0788 */
+	u32 grp_ctlds;		/* 0x020e078c */
+	u32 res5;		/* 0x020e0790 */
+	u32 grp_b2ds;		/* 0x020e0794 */
+	u32 grp_ddr_type;	/* 0x020e0798 */
+	u32 grp_b3ds;		/* 0x020e079c */
+	u32 grp_b4ds;		/* 0x020e07a0 */
+	u32 grp_b5ds;		/* 0x020e07a4 */
+	u32 grp_b6ds;		/* 0x020e07a8 */
 };
 
 #define MX6SDL_IOM_DDR_BASE     0x020e0400
-- 
2.39.2




Delivery-date: Fri, 18 Jul 2025 20:18:24 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ucpf6-001IAH-0O
	for lore@lore.pengutronix.de;
	Fri, 18 Jul 2025 20:18:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ucpf5-0006Ti-KT
	for lore@pengutronix.de; Fri, 18 Jul 2025 20:18:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=E6N3I+Y7Lx9jJCCRb+9Z2ukIZ+7slGevqoQwjDPdAyo=; b=XkdQVkmsGobIws1OOFgW//Jgmi
	hO4joK8nmV4yqsQNy3CiwSeAt6VMJ80eO+FXiWWO7YX4lkDybgZ9eJs2XdevtXMQfe9cR8O2oRetm
	lkldHKdOst+mPk5M2b6Y0p5MHymejGJTkPPsYeXQmr9ivjAQLEkZroV9koCCFKX/7QVVNJEIK6Pep
	UZUz2fHOeGJhaFkeUvORCGsv1yowLz8z7+X0ereDO/aOnNDiiLKTVtRICH5THbTKBqZl7YdYpSrA2
	tGJdJejfNZcYuozRfOONefrLou4taoTMgJJ1e9qSzFvwsQ8Mj2Bifc2Yrf+nYTphbwqzi5ZaJ342v
	6WP4sIvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ucpeS-0000000DIPO-43Gc;
	Fri, 18 Jul 2025 18:17:44 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ucpZq-0000000DHyl-0Zy2
	for barebox@lists.infradead.org;
	Fri, 18 Jul 2025 18:12:59 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id E5A65A575BF;
	Fri, 18 Jul 2025 18:12:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 94C70C4CEF1;
	Fri, 18 Jul 2025 18:12:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752862376;
	bh=67PnBdpPbsOZOMP7E6iM5fxNzt+BtUntkVsaHy+9uUM=;
	h=From:Date:Subject:To:Cc:Reply-To:From;
	b=hVFTPtqhXLSlm2QzO4pzCTsWgc8PfgoByLj8c+NSsSYbtX2gjf4+st3orvpIQp9fm
	 o/lp2Bmwa9BbbcNSE5lDhVoP1Khi3tpPfeqnJ7ge/hrWkg05yLIxo0UK4MoI91FYiU
	 7FfIRgSepdcjSvQmRVwIZYer/hexwJBqBTuNmhkZ508VxJnnlMU0kAYzZf6xd+++RK
	 pbrIP7aKkiCgtm8PulOTNyxWr7gq5W4yTMp1JRj4K/9giVeAc2n+5B2g3w3931RGKr
	 xkJlzYYHhUy4ag7fZ9BVg4388TbmX3DH9ZQm4zKVFKCDMaiwWMCl4RbP07qid3a26z
	 SUluneEbhPLtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 82E2EC83F3B;
	Fri, 18 Jul 2025 18:12:56 +0000 (UTC)
From: Mathieu Anquetin via B4 Relay <devnull+mathieu.anquetin.groupe-cahors.com@kernel.org>
Date: Fri, 18 Jul 2025 20:12:42 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250718-fix_imx9_ddr_init-v1-1-b52def9e7ee5@groupe-cahors.com>
X-B4-Tracking: v=1; b=H4sIAJmOemgC/x2MQQqAIBAAvxJ7TtDAyr4SIalr7SELjRCkvycdB
 2amQMJImGBqCkR8KNEZKoi2AbuvYUNGrjJ0vJN8ECPzlDUdWWnnoqZAN+ut9coZoaRBqN0VsUr
 /c17e9wMDltsGYwAAAA==
X-Change-ID: 20250718-fix_imx9_ddr_init-6ccf9db195be
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Fabian Pflug <f.pflug@pengutronix.de>, 
 Jonas Rebmann <jre@pengutronix.de>, 
 Mathieu Anquetin <mathieu.anquetin@groupe-cahors.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1752862374; l=2373;
 i=mathieu.anquetin@groupe-cahors.com; s=20250718;
 h=from:subject:message-id;
 bh=HowQP+torUhauTWq0kKmO0H7oJKz/aam9Q83yTfB5TY=;
 b=gk92oCgWs2HRtgMgtVngljc/32/dHQ8jCTD3jgb2NeTcZ0hMX5S+nrI26cdeWpuOHJIN/Nvp6
 KeRNrUdxxpRDtn44TEo2reQ+sD5a13jsEd1+hC+L99cdo7lCjaT6Efg
X-Developer-Key: i=mathieu.anquetin@groupe-cahors.com; a=ed25519;
 pk=nJFDztEGb9FZien6U0hPMKsmzbuAD/RxZ05w64dA5U8=
X-Endpoint-Received: by B4 Relay for
 mathieu.anquetin@groupe-cahors.com/20250718 with auth_id=464
X-Original-From: Mathieu Anquetin <mathieu.anquetin@groupe-cahors.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250718_111258_312674_C7C9AEFF 
X-CRM114-Status: GOOD (  13.78  )
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
Reply-To: mathieu.anquetin@groupe-cahors.com
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-105.3 required=4.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	USER_IN_WELCOMELIST,USER_IN_WHITELIST autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] ddr: imx9: fix DRAM PLL bypass
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Mathieu Anquetin <mathieu.anquetin@groupe-cahors.com>

On i.MX9, clock selection for DDR PHY is done by setting/clearing bit 0
of GPR_SHARED2 register.

This is done using the generic function ccm_shared_gpr_set() which takes
two arguments, the GPR number and the value to set. However, this
function did not use the GPR number to calculate the offset of the
GPR_SHAREDn register to set in the CCM.

Therefore, it was not possible to enable/disable DRAM PLL bypass
correctly and this led to hangs when training the DDR PHY with some
frequencies (like 625MT/s).

Fixes: e6234f907416 ("ddr: Initial i.MX9 support")
Signed-off-by: Mathieu Anquetin <mathieu.anquetin@groupe-cahors.com>
---
Some DRAM timing configurations require to change the input clock signal
and to bypass the DRAM PLL. This is done by setting bit 0 of the
GPR_SHARED2 register of the CLock Controller Module. However, the
register offset to set was not calculated correctly, leading to hangs
during PHY training when PLL bypass was required.

In particular, this was the case for the configuration setting the FSP
to 625MT/s.
---
 drivers/ddr/imx/imx9_ddr_init.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/ddr/imx/imx9_ddr_init.c b/drivers/ddr/imx/imx9_ddr_init.c
index cdee18e4ad0e4cee1b13bd2aab4b53ffcb537e49..086827d9b34c49a76426289b707aad6fa474d065 100644
--- a/drivers/ddr/imx/imx9_ddr_init.c
+++ b/drivers/ddr/imx/imx9_ddr_init.c
@@ -352,6 +352,8 @@ static void save_trained_mr12_14(struct dram_cfg_param *cfg, u32 cfg_num, u32 mr
 
 #define MHZ(x)        ((x) * 1000000UL)
 
+#define SHARED_GPR(n) (0x4800 + ((n) * 0x20))
+
 #define SHARED_GPR_DRAM_CLK 2
 #define SHARED_GPR_DRAM_CLK_SEL_PLL 0
 #define SHARED_GPR_DRAM_CLK_SEL_CCM BIT(0)
@@ -376,7 +378,7 @@ static int dram_pll_init(u32 freq)
 
 static void ccm_shared_gpr_set(u32 gpr, u32 val)
 {
-	writel(val, IOMEM(MX9_CCM_BASE_ADDR + 0x4800));
+	writel(val, IOMEM(MX9_CCM_BASE_ADDR + SHARED_GPR(gpr)));
 }
 
 #define DRAM_ALT_CLK_ROOT	76

---
base-commit: f49c873d7ec78a2df7bd3c7a86f5372fb1666517
change-id: 20250718-fix_imx9_ddr_init-6ccf9db195be

Best regards,
-- 
*Mathieu ANQUETIN*
/Software Developer/

CRDE -- Groupe Cahors   | http://www.groupe-cahors.com
ZI des Grands Camps     | Phone: +33 (0)5 65 30 38 77
46090 Mercuès -- France |

*GROUPE CAHORS* is a member of the UN Global Compact.





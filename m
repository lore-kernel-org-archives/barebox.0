Delivery-date: Mon, 11 Sep 2023 12:14:03 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qfdvg-00BMrh-8l
	for lore@lore.pengutronix.de; Mon, 11 Sep 2023 12:14:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qfdve-0005BL-0s
	for lore@pengutronix.de; Mon, 11 Sep 2023 12:14:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ash1hwRgUcovG8p6T1IxNqll3kYv7dScoWiEC8S/OXA=; b=UegMzqnIz/hNeCHD2/z5rE3K3k
	9QUA2DMt6qXy3yS50IQwXPRayiMFz9qi9lt06lcx5Aet8yJanOgu4PqQ1me6BrPqjpXOoF6MCSlER
	pToooepmZTINabniVr45ymUli3tuuohr3LT2ksNUyns97iJNyvJp6V3vSqs7B6Hs2PBu9zzTgTaeV
	TKeu1hXSdkoQihli29kPntOFfqKgBUcHCRS9wFDgGoQ5GGIPmfhQNNp+EK3OKc0GdaJ2UXFW8A0LR
	o7h3PQ8JfkeRupjHySHFp1/p6F5Ri8K+g2XJe3twd/dhLUiXRSVu8yqGlcOJRdJ3h//vtHap5urBO
	Lx6SbvaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qfdu8-0006gg-1K;
	Mon, 11 Sep 2023 10:12:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qfdu5-0006f1-1z
	for barebox@lists.infradead.org;
	Mon, 11 Sep 2023 10:12:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qfdu0-0004yk-Ou; Mon, 11 Sep 2023 12:12:20 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qfdu0-005Wbf-Cg; Mon, 11 Sep 2023 12:12:20 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qfdu0-0095Ts-0J;
	Mon, 11 Sep 2023 12:12:20 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 11 Sep 2023 12:12:19 +0200
Message-Id: <20230911101219.2166001-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230911_031225_651508_AB429978 
X-CRM114-Status: UNSURE (   8.75  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: i.MX8M: don't print TF-A version
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

In usual configurations, TF-A already prints its version on startup, so
printing it in barebox again is unnecessary and less informational than
the TF-A print and complicates running barebox without TF-A.
Thus just drop it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-imx/imx8m.c | 11 -----------
 1 file changed, 11 deletions(-)

diff --git a/arch/arm/mach-imx/imx8m.c b/arch/arm/mach-imx/imx8m.c
index af44b089e08a..c7c799c64bc4 100644
--- a/arch/arm/mach-imx/imx8m.c
+++ b/arch/arm/mach-imx/imx8m.c
@@ -56,7 +56,6 @@ u64 imx8m_uid(void)
 static int imx8m_init(const char *cputypestr)
 {
 	void __iomem *src = IOMEM(MX8M_SRC_BASE_ADDR);
-	struct arm_smccc_res res;
 
 	genpd_activate();
 
@@ -66,16 +65,6 @@ static int imx8m_init(const char *cputypestr)
 	imx_set_reset_reason(src + IMX7_SRC_SRSR, imx7_reset_reasons);
 	pr_info("%s unique ID: %llx\n", cputypestr, imx8m_uid());
 
-	if (IS_ENABLED(CONFIG_ARM_SMCCC) &&
-	    IS_ENABLED(CONFIG_FIRMWARE_IMX8MQ_ATF)) {
-		arm_smccc_smc(IMX_SIP_BUILDINFO,
-			      IMX_SIP_BUILDINFO_GET_COMMITHASH,
-			      0, 0, 0, 0, 0, 0, &res);
-
-		if (res.a0 > 0)
-			pr_info("i.MX ARM Trusted Firmware: %s\n", (char *)&res.a0);
-	}
-
 	if (IS_ENABLED(CONFIG_PBL_OPTEE) && tzc380_is_enabled() &&
 	    !of_find_node_by_path_from(NULL, "/firmware/optee")) {
 		static struct of_optee_fixup_data optee_fixup_data = {
-- 
2.39.2




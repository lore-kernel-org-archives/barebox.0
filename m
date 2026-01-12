Delivery-date: Mon, 12 Jan 2026 09:56:27 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vfDiu-000Sn2-0R
	for lore@lore.pengutronix.de;
	Mon, 12 Jan 2026 09:56:27 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vfDit-00021p-64
	for lore@pengutronix.de; Mon, 12 Jan 2026 09:56:27 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BvSowQvMJEbJoSUXYmRIc8eiyOm/soYigBdEDTzhcw4=; b=QTH14t5jAl2wWAsJiQhv+lSmWC
	/zkylyY7INolM9000N2dO3YTPCimFJaOcZw03aEWz0sZ5kwanSkcXN1whteorRhnj7cinPJzoABs9
	HQcESx21htZwx4NsbeJHc2whZ2eEeFXjdI1BcxN2OrNWU7+0JSis0nnzCxamirTdBRdHG514GDXd9
	6UJFUiqrlBUstCo7LcoVLnBnwvW2TrtOaIPkTtS181LvL0152263PVQ+QjMCyTQADy2xz+AQ5o2ov
	zJ5SKSvMWSGu8zlwaIwcxqr9Gz7F5V0/25NBSgIYGrazuWPhXt9uU80cz0VhNh/pCcgz0nJ5R44CK
	8QnKD7pg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfDiS-0000000522E-3wlb;
	Mon, 12 Jan 2026 08:56:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfDiN-000000051z3-3aVn
	for barebox@lists.infradead.org;
	Mon, 12 Jan 2026 08:55:57 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vfDiM-0001qw-8f; Mon, 12 Jan 2026 09:55:54 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 12 Jan 2026 09:55:41 +0100
Message-ID: <20260112085548.2952525-3-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260112085548.2952525-1-a.fatoum@barebox.org>
References: <20260112085548.2952525-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260112_005555_889489_CB02FFF4 
X-CRM114-Status: UNSURE (   9.18  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH master 3/3] ARM: Rockchip: rk3576-prtpuk: suppress video graph warning
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The &vp0 is incomplete and results in a warning, so move it into the
comment.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 arch/arm/dts/rk3576-prtpuk-linux.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/dts/rk3576-prtpuk-linux.dts b/arch/arm/dts/rk3576-prtpuk-linux.dts
index 2085adbaa8f4..7cc28711df28 100644
--- a/arch/arm/dts/rk3576-prtpuk-linux.dts
+++ b/arch/arm/dts/rk3576-prtpuk-linux.dts
@@ -444,6 +444,7 @@ &vop_mmu {
 	status = "okay";
 };
 
+#if 0
 &vp0 {
 	vp0_out_dsi1: endpoint@ROCKCHIP_VOP2_EP_DP0 {
 		reg = <ROCKCHIP_VOP2_EP_DP0>;
@@ -451,7 +452,6 @@ vp0_out_dsi1: endpoint@ROCKCHIP_VOP2_EP_DP0 {
 	};
 };
 
-/*
 &pwm1 {
 	status = "okay";
 };
@@ -459,4 +459,4 @@ &pwm1 {
 &pwm2 {
 	status = "okay";
 };
-*/
+#endif
-- 
2.47.3




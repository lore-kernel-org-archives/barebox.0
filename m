Delivery-date: Fri, 13 Mar 2026 14:34:20 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w12ei-000DOh-1Z
	for lore@lore.pengutronix.de;
	Fri, 13 Mar 2026 14:34:20 +0100
Received: from bombadil.infradead.org ([198.137.202.133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w12eS-0000Di-RO
	for lore@pengutronix.de; Fri, 13 Mar 2026 14:34:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=A+8sMgb4xKokrJpR6Kws+ZEhgcNZ5yrifLnfPXyRraM=; b=gj/K8LdEBELBo18lqs6ZDARlBk
	DcT2mw/zxVLJfxTqkVioWEWn5rKDy0jz1STqgHrce+bCeRLkDacCwjftdkdEKTshR9Rg21QO4LbQD
	EYaUxJcW1kCJMlb0YtSU+CvbeTtvXtDQIoCSUUqL2Kv+h9NBrK2GZg3jRKKzU2cu8qWoV21KyMs9K
	re2VAErAclJyeGGfd74rfvz9V7PylYc6SEwKoX7fmw1+CVzq29ltnmQmQL5Y1qsOIc/13lmEKynok
	FsxIXaImeM2W9y7tXWziZ9A+K/eFNfvwfg/a4DCjU/gqHMwTu1Is6kRafnh51XYV8ECFtoe1IL1Vh
	01yFjCzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12dK-00000000Fq0-1NPl;
	Fri, 13 Mar 2026 13:32:54 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12d8-00000000FXw-3ibO
	for barebox@bombadil.infradead.org;
	Fri, 13 Mar 2026 13:32:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=A+8sMgb4xKokrJpR6Kws+ZEhgcNZ5yrifLnfPXyRraM=; b=tocksuk1WPebLSQnBw9my1kyEY
	tY4iO7vyMnRb8rdwyR/lJS87RZSpi3OAsl83oE3j/3qfWv9FsH3jrtfCoDOgYjINfV+cNcst/JMRJ
	rMRXft3SHbta5A4FMM23k2qiaamTYNHES/jTB/TwwpZciVcLaqqQ98m8p59kht+oWsnjv3KcAyI36
	oH4NOxIoqi2GDXq3mATYFtYxDvhqouaoUjIXiYlywZ3Fb0s03+vxFHZiWu+ZI5vtAwy3ifXm4YL1c
	Y4XXF0pNuFiMiscZoPCMncqsLu3+AGVsVoz+XMuEWZM40UHMUBPqlWeHGG5CJNw4wpOW75EETtlyb
	FuozWMhA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12d2-0000000D9wF-2QPH
	for barebox@lists.infradead.org;
	Fri, 13 Mar 2026 13:32:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12cz-0006sQ-Rj; Fri, 13 Mar 2026 14:32:33 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12cz-0005U3-29;
	Fri, 13 Mar 2026 14:32:33 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12XL-00000009ULB-0QT4;
	Fri, 13 Mar 2026 14:26:43 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Fri, 13 Mar 2026 14:25:03 +0100
Message-ID: <20260313132631.2257573-20-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260313132631.2257573-1-a.fatoum@pengutronix.de>
References: <20260313132631.2257573-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260313_133236_673370_F87BC999 
X-CRM114-Status: UNSURE (   8.64  )
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
X-SA-Exim-Connect-IP: 198.137.202.133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,RCVD_IN_VALIDITY_RPBL_BLOCKED,
	RCVD_IN_VALIDITY_SAFE_BLOCKED,SPF_HELO_NONE,SPF_NONE autolearn=no
	autolearn_force=no version=3.4.2
Subject: [PATCH v2025.09.y 19/58] ARM: Rockchip: rk3576-prtpuk: suppress video graph warning
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@barebox.org>

The &vp0 is incomplete and results in a warning, so move it into the
comment.

(cherry picked from commit b99251cf3c3ea3efc405057bbce8b2435d36fe5d)

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
Link: https://lore.barebox.org/20260112085548.2952525-3-a.fatoum@barebox.org
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
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




Delivery-date: Wed, 04 Mar 2026 12:57:05 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vxkqf-007yLc-0I
	for lore@lore.pengutronix.de;
	Wed, 04 Mar 2026 12:57:05 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vxkqf-0000wy-F6
	for lore@pengutronix.de; Wed, 04 Mar 2026 12:57:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=+w6sIitpWGR3UTPiwi34dWVWe5HPqB4ZJklav9r3uPw=; b=pFYmgIl5ELfBCTMm5jKsey5VhS
	V9weT7c4PWaZRXSqRDwnfxrZ1ZmkOAxvjzdjgPdl82VD+EssanMKqVKN+7nnnS0tRdiQ32wlkfjsB
	ZkG79vozARZJmrsZC+wE5StJc12+fuh3NM8+705pYnybA3S/hT6Zhu3rnpis1MoI4eWE50J12usqw
	qjzF5BuGnMO1qYd/waJUUtgutdOva7O+XDe7sbddwI2ynFBQ+vbrSWbg02jmk9MeukDATve4i8uYN
	Is6VxAQXD1Lpy78DJY+rPWOJLBMsJ85z5njPq5+bZeG0V9sSLa0Pc9YWdrQtFRFcewo7Kha6Qgh2X
	2fz+fGHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxkqB-0000000H8zW-3eIf;
	Wed, 04 Mar 2026 11:56:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxkq9-0000000H8z2-34Ia
	for barebox@lists.infradead.org;
	Wed, 04 Mar 2026 11:56:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vxkq7-0000qU-FU; Wed, 04 Mar 2026 12:56:31 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vxkq4-003hv1-2D;
	Wed, 04 Mar 2026 12:56:30 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vxkq5-0000000AZu8-3v2d;
	Wed, 04 Mar 2026 12:56:29 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  4 Mar 2026 12:56:28 +0100
Message-ID: <20260304115629.2521286-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260304_035633_765341_EC53D091 
X-CRM114-Status: UNSURE (   8.36  )
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
Subject: [PATCH] fixup! dts: update to v7.0-rc1
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

ARM: Rockchip: ts433eu: include SoC header

Linux also supports the RK3566-based TS133 now, so the DTSI no longer
includes the SoC header. Add it back to fix the build.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/dts/rk3568-qnap-ts433eu.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/dts/rk3568-qnap-ts433eu.dts b/arch/arm/dts/rk3568-qnap-ts433eu.dts
index 57dd655a560f..be0455abfe65 100644
--- a/arch/arm/dts/rk3568-qnap-ts433eu.dts
+++ b/arch/arm/dts/rk3568-qnap-ts433eu.dts
@@ -8,6 +8,7 @@
 
 /dts-v1/;
 
+#include <arm64/rockchip/rk3568.dtsi>
 #include <arm64/rockchip/rk3568-qnap-tsx33.dtsi>
 #include "rk356x.dtsi"
 
-- 
2.47.3




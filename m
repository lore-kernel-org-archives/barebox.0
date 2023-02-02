Delivery-date: Thu, 02 Feb 2023 15:21:57 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pNaTP-00BTSD-DE
	for lore@lore.pengutronix.de; Thu, 02 Feb 2023 15:21:57 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pNaTM-0001b4-JH
	for lore@pengutronix.de; Thu, 02 Feb 2023 15:21:57 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=kwxNP0r34o3zp3BrpNri1JDNIVeeHQ8rrELDOVtyO30=; b=nbuYjZTsy4a+ImdXrSiP1bV+IZ
	+4Pjktcnz92bNCeYfjZpFSTXt1LF+wi+BpnZlYtEw3NYB/Xt/8ZO3uyBVdYzs31dwZfGaTc9SEiQW
	a0Xdsu44fr2EXjq8+6OvlhLM5g3LWsP50GXk+b/nl4eHXIl+nAsaXSwjh03g2SC8JhAtgtoM747lR
	f1AJlWkWwNUzqc1inqJTnYexbFNYX/+pE2+jO3nkpSX1VPAC0UOaTHEAhKUSTnU52OZqYGK71whh1
	VWm8QhLyNLabRM5IwP42aSh1DUsWC5YJeAc3gc/e9kASjSJQDmP1wy2X5kNQoMsM0lISyB9CL9j4F
	3mLdqJ6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNaRu-00G865-Nq; Thu, 02 Feb 2023 14:20:26 +0000
Received: from relay8-d.mail.gandi.net ([2001:4b98:dc4:8::228])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pNaRq-00G84G-8G
	for barebox@lists.infradead.org; Thu, 02 Feb 2023 14:20:23 +0000
Received: (Authenticated sender: ahmad@a3f.at)
	by mail.gandi.net (Postfix) with ESMTPSA id 28A131BF208;
	Thu,  2 Feb 2023 14:20:15 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>,
	Marco Felsch <m.felsch@pengutronix.de>
Date: Thu,  2 Feb 2023 15:20:00 +0100
Message-Id: <20230202142000.3544631-1-ahmad@a3f.at>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230202_062022_490438_A525D091 
X-CRM114-Status: UNSURE (   8.53  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] RISC-V: virt: riscvemu: fix unit address in node name
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The overlay adds a SRAM at address 0x1000, but the unit address was
still 0, which is confusing. Change it to sram@1000 instead.

Reported-by: Marco Felsch <m.felsch@pengutronix.de>
Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 arch/riscv/boards/riscvemu/overlay-of-sram.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/riscv/boards/riscvemu/overlay-of-sram.dts b/arch/riscv/boards/riscvemu/overlay-of-sram.dts
index 506d45bde9b6..092fb02518b9 100644
--- a/arch/riscv/boards/riscvemu/overlay-of-sram.dts
+++ b/arch/riscv/boards/riscvemu/overlay-of-sram.dts
@@ -9,7 +9,7 @@
 		__overlay__ {
 			#address-cells = <2>;
 			#size-cells = <2>;
-			sram@0 {
+			sram@1000 {
 				compatible = "mtd-ram";
 				reg = <0 0x1000 0 0x10000>;
 				#address-cells = <1>;
@@ -49,7 +49,7 @@ fixed-partitions
 		__overlay__ {
 			environment {
 				compatible = "barebox,environment";
-				device-path = "/soc/sram@0/partitions/partition@3000";
+				device-path = "/soc/sram@1000/partitions/partition@3000";
 			};
 		};
 	};
-- 
2.38.1




Delivery-date: Wed, 16 Apr 2025 12:34:46 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u506Q-001QKi-0y
	for lore@lore.pengutronix.de;
	Wed, 16 Apr 2025 12:34:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u506P-0003AW-Od
	for lore@pengutronix.de; Wed, 16 Apr 2025 12:34:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=nMrgP66CxpmYvwryIDwyTszFz6BU/uwVONrrycwMXSk=; b=ASqrT5ML8Cm/WlAsNthZGeaeEI
	4k/h1Z1KJQoFY0GxxggxBbvT6bVfm4ASpTs4k0yFJLRPW8MCKN0OhoXT08J+rkQTdTJ962foZZ+rq
	x3J+URCtYk22u6ZncqYq25aMi1wVnqbhcGlKYCQSPqPwxU039l2ulTEZyzhIq7TiiphWyptkKQfPU
	pd9V6y4sue06Jc657NT+UTwWnLev11tnqtprJnvUI9zqqTda+9labw8taSRbHw/qdE5Cb0FAS2yWi
	fPoaoKS7wB+3vlHW2RFK7UKRY53UROkoFuTjHEHc9NUz+p5KRgk7oZsHMIukQO5Rh1J8TO4kedimt
	r0QaHSkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u5061-00000009DdJ-0jPB;
	Wed, 16 Apr 2025 10:34:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u503d-00000009AAV-2XPs
	for barebox@lists.infradead.org;
	Wed, 16 Apr 2025 10:31:55 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1u503a-0001Wz-Or
	for barebox@lists.infradead.org; Wed, 16 Apr 2025 12:31:50 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed, 16 Apr 2025 12:31:44 +0200
Message-Id: <20250416103144.2069587-1-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250416_033153_682022_382F1C8A 
X-CRM114-Status: UNSURE (   9.01  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: riotboard: drop static barebox-environment handling
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Since commit 9f868f78bc54 ("environment: use barebox environment from
GPT partitions") barebox can try to find the barebox-environment based
on a GPT partition GUID.

Make use of this mechanism and drop the barebox local of-partition for
the eMMC device and let the user-space provide the correct
barebox-environment location if any.

This also fixes environment handling if booted from a SD card since SD
card boots make use of eMMC barebox environment at the moment.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 arch/arm/dts/imx6s-riotboard.dts | 10 ----------
 1 file changed, 10 deletions(-)

diff --git a/arch/arm/dts/imx6s-riotboard.dts b/arch/arm/dts/imx6s-riotboard.dts
index 57817c1197a7..cca34d6dba95 100644
--- a/arch/arm/dts/imx6s-riotboard.dts
+++ b/arch/arm/dts/imx6s-riotboard.dts
@@ -11,11 +11,6 @@
 / {
 	chosen {
 		stdout-path = &uart2;
-
-		environment {
-			compatible = "barebox,environment";
-			device-path = &environment_usdhc4;
-		};
 	};
 };
 
@@ -31,11 +26,6 @@ partition@0 {
 		label = "barebox";
 		reg = <0x0 0xe0000>;
 	};
-
-	environment_usdhc4: partition@e0000 {
-		label = "barebox-environment";
-		reg = <0xe0000 0x20000>;
-	};
 };
 
 &clks {
-- 
2.39.5




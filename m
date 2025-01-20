Delivery-date: Mon, 20 Jan 2025 07:50:12 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tZlbv-0028vA-1t
	for lore@lore.pengutronix.de;
	Mon, 20 Jan 2025 07:50:12 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tZlbv-0008Es-MM
	for lore@pengutronix.de; Mon, 20 Jan 2025 07:50:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=tRvTZIQMMUd9BSkrlk/+dwWk3qjGKP8qykG6QjUKYfc=; b=vXNfA04baAF7xO2gQRI1uB8EXy
	1hb/M/jJQQNQUbeTOubaJUbjkt7bwHuZhcG7C5iFlC8HA4f9oH0ddZqyMEu6ZxgFKY5jqoYpV3HBL
	dVxKZJWG/U+zV7AsEChBfIfi1I1FIVkElzlWrBeHcORXhRpgPCZzLezJL6iXCtlLhLaubHEcMoWgB
	+CahZFss3Zm42MvXlywOxNnZmPcwFpr+m902H9MNia26P6EQUiF6qMIsSCxzd1WVkLV6vWOn8YjAv
	dDhJyKzsjXQqT4FD3MxY1Ff/I4mFNtl5Kr4ifJenbObgOsZSuo/PugbKYcwWhHeD705kcMdmgcpXV
	IaUefsVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tZlb5-00000004r23-1LaN;
	Mon, 20 Jan 2025 06:49:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tZlb1-00000004r1W-1Bh5
	for barebox@lists.infradead.org;
	Mon, 20 Jan 2025 06:49:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tZlax-00086w-GK; Mon, 20 Jan 2025 07:49:11 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tZlax-000tI2-10;
	Mon, 20 Jan 2025 07:49:11 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tZlax-00Ac0W-0e;
	Mon, 20 Jan 2025 07:49:11 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 20 Jan 2025 07:49:10 +0100
Message-Id: <20250120064910.2529048-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250119_224915_343719_98BFAABF 
X-CRM114-Status: GOOD (  10.27  )
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
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: k3: beagleplay: Use correct file for GP device
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The beagleplay has a GP device and as such needs the GP firmware, not
the HS-FS firmware.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 images/Makefile.k3 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/images/Makefile.k3 b/images/Makefile.k3
index b182b06701..466a84af99 100644
--- a/images/Makefile.k3
+++ b/images/Makefile.k3
@@ -26,7 +26,7 @@ ifdef CONFIG_MACH_K3_CORTEX_R5
 SYSFWDATA_am625=$(objtree)/arch/arm/mach-k3/combined-sysfw-cfg-am625.k3cfg
 DMDATA_am625=$(objtree)/arch/arm/mach-k3/combined-dm-cfg-am625.k3cfg
 SYSFW_am625_hs_fs=$(srctree)/firmware/ti-fs-firmware-am62x-hs-fs-enc.bin
-SYSFW_am625_gp=$(srctree)/firmware/ti-fs-firmware-am62x-hs-fs-enc.bin
+SYSFW_am625_gp=$(srctree)/firmware/ti-fs-firmware-am62x-gp.bin
 INNERDATA_am625=$(srctree)/firmware/ti-fs-firmware-am62x-hs-fs-cert.bin
 KEY_custmpk=$(srctree)/arch/arm/mach-k3/custMpk.pem
 KEY_degenerate=$(srctree)/arch/arm/mach-k3/ti-degenerate-key.pem
-- 
2.39.5




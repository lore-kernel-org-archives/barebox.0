Delivery-date: Wed, 20 Dec 2023 15:55:44 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rFxz6-006NAo-2W
	for lore@lore.pengutronix.de;
	Wed, 20 Dec 2023 15:55:44 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rFxz6-0001og-7U
	for lore@pengutronix.de; Wed, 20 Dec 2023 15:55:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=4+OYCBG0O6Hdo/ag6v71SFvYwxCt1Gb/MF6pp3lVoNk=; b=m0TF/IWUv605QYj1wVxb9cGlAK
	0bzT9DErg38Yv02UWZvfr/3snW9iz+iXqdyW7Fzfc+7ehFxxQsnSFilEBx+f7GA1Pd/dShX4S1cFU
	XGpES6Cypz2jjAxD3NcwUSSZeTv/Ie8sGT9NK3VO7GlIcM1zPiBOhHVa+bqmgfTYtPUe5nE4tc7wB
	sGX8o3nonoUUU60iZ38A93Vcea4i+YkBKM1IKw/NU6bYR4ckhTdFD1VqWdLXFnm7HTEdC6vkKyMlC
	zBsz22uiqydFS4Oh3uUuIGxpm+5GMIchM4vw/yRvCAh/u8PBEmGteJ7G0G+HpkvI1DuPTizbUmvWY
	u76Vx5FA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFxxr-0008k4-19;
	Wed, 20 Dec 2023 14:54:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFxxp-0008jU-0p
	for barebox@lists.infradead.org;
	Wed, 20 Dec 2023 14:54:26 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1rFxxj-0001XT-QE
	for barebox@lists.infradead.org; Wed, 20 Dec 2023 15:54:19 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed, 20 Dec 2023 15:54:17 +0100
Message-Id: <20231220145418.88750-1-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231220_065425_296721_0675DB1E 
X-CRM114-Status: UNSURE (   5.38  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/2] ARM: boards: polyhex-debix: enable HAB support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Rouven Czerwinski <r.czerwinski@pengutronix.de>

Include the gencsf header to enable the secure-boot images.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 arch/arm/boards/polyhex-debix/flash-header-polyhex-debix.imxcfg | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boards/polyhex-debix/flash-header-polyhex-debix.imxcfg b/arch/arm/boards/polyhex-debix/flash-header-polyhex-debix.imxcfg
index 663bd102e9a2..d619995496ac 100644
--- a/arch/arm/boards/polyhex-debix/flash-header-polyhex-debix.imxcfg
+++ b/arch/arm/boards/polyhex-debix/flash-header-polyhex-debix.imxcfg
@@ -5,3 +5,4 @@ soc imx8mp
 loadaddr 0x920000
 max_load_size 0x3f000
 ivtofs 0x0
+#include <mach/imx/habv4-imx8-gencsf.h>
-- 
2.39.2




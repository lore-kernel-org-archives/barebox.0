Delivery-date: Fri, 20 Oct 2023 14:18:50 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qtoSp-00FWxP-1v
	for lore@lore.pengutronix.de; Fri, 20 Oct 2023 14:18:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qtoSn-00005k-Tj
	for lore@pengutronix.de; Fri, 20 Oct 2023 14:18:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=t4eYEzCmVGlcWqQkYBAt7NC2+BUWLel+l+DjX2IAduI=; b=X2vIh8q1lc5oJjQURDgTCCfj8Z
	mqHANZr2OWkxPrmkCpcsGvG5SuHyWeS8kVivB52+JKjsRAZMGzmyhliiDpko2M8UG8sYdJaSVdYQo
	WY3o3/rv5Tf+gQQK12E10mAxfUzbv45ALXBNxstHMJbLECdBJwOsGOAD+kDehirh05oHbrfVuvWUg
	oVKEQ3a07NO1Ls8gmDNByeO+78Hqx4qRYjXyCuB8z7bfKVA6YlkcObpU55muxiJeFUvoH1SWd7RW5
	aaLiZcIJa7MHBSMsmaTzBq44r9LrKIDQzTvqAJUWte7+CQowFkL8qTCZRTer5RRQfKDbS+y2Z2TB/
	bgvrIyVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qtoRO-002E0L-08;
	Fri, 20 Oct 2023 12:17:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qtoRI-002DzA-0s
	for barebox@lists.infradead.org;
	Fri, 20 Oct 2023 12:17:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qtoRG-0008IY-TL; Fri, 20 Oct 2023 14:17:14 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qtoRG-0031QM-GW; Fri, 20 Oct 2023 14:17:14 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qtoRG-002lLI-1W;
	Fri, 20 Oct 2023 14:17:14 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 20 Oct 2023 14:17:10 +0200
Message-Id: <20231020121710.658511-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231020_051716_304463_2C1B6CE8 
X-CRM114-Status: UNSURE (   7.33  )
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
Subject: [PATCH] ARM: i.MX8M: limit PBL size to 0x3f000
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On i.MX8M(Q/M/N/P), barebox PBL is loaded 0x1000 bytes into ITCM
at address 0x7e00_1000. ITCM is 128K followed by 128K of DTCM.

Therefore, in total, barebox PBL may not exceed 0x3f000. Now that we
have a common macro for defining boards, let's add a
MAX_PBL_MEMORY_SIZE_$(entrypoint) into it, so check that we don't
exceed this size at runtime.

Boards that trip over this, should consider using get_builtin_firmware_ext
to offload binaries into barebox proper.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 images/Makefile.imx | 1 +
 1 file changed, 1 insertion(+)

diff --git a/images/Makefile.imx b/images/Makefile.imx
index 50f0a64b3091..ca09853c4b6e 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -26,6 +26,7 @@ $(eval
 ifeq ($($(strip $(1))), y)
 	pblb-y += $(strip $(2))
 	CFG_$(strip $(2)).pblb.imximg = $(board)/$(strip $(3)).imxcfg
+	MAX_PBL_MEMORY_SIZE_$(strip $(2)) = 0x3f000
 	FILE_barebox-$(strip $(4)).img    = $(strip $(2)).pblb.pimximg
 	FILE_barebox-$(strip $(4))-s.img  = $(strip $(2)).pblb.psimximg
 	image-y += barebox-$(strip $(4)).img
-- 
2.39.2




Delivery-date: Thu, 05 Mar 2026 13:56:59 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vy8GB-008Kbn-06
	for lore@lore.pengutronix.de;
	Thu, 05 Mar 2026 13:56:59 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vy8GB-0000Fn-8E
	for lore@pengutronix.de; Thu, 05 Mar 2026 13:56:59 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tP/5ecR+JidLZ8R+3WtSL2rKAjfImlgXuZ7d+FfDGAA=; b=dr1efshS0W/SPKRVlGMp1ORL41
	YuwxCFoKhM727ibwnTJsOhNYv5rJFgAAzCtvU/8Th+xnOls0rtLcZFTYMGRHS0938UvR72CJ2okOK
	BB59PujLPYlgwyJXA+ZKrq+qkDBtkH3SygPYWgK+bEIm6T+1iLXDJLXENjvFHwFPYbeXA6ZyBSaCm
	hctKigKBBKn4Tz3ABhLiuHiUEijnQcixrBs4AkLNgjlsB+Zce8fVeJ7YtHZ4CaGIfd0g9xOb7RwKN
	sXn+Fhn4Sy06DvR/8tcbzfj3ZTFX8Ec6XrGpXRiWPDiIkGay49+vtsCDptjY+R/2NFyMCmzIkj2q5
	cekbdsAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy8Fr-00000001pOe-2YlN;
	Thu, 05 Mar 2026 12:56:39 +0000
Received: from cczrelay05.in2p3.fr ([134.158.66.155] helo=cczrelay03.in2p3.fr)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy8Fp-00000001pNc-1xnv
	for barebox@lists.infradead.org;
	Thu, 05 Mar 2026 12:56:38 +0000
Received: from [127.0.1.1] (clrelecpo09w.in2p3.fr [134.158.124.135])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by cczrelay03.in2p3.fr (Postfix) with ESMTPSA id EF4431800802;
	Thu,  5 Mar 2026 13:46:49 +0100 (CET)
From: David Picard <david.picard@clermont.in2p3.fr>
Date: Thu, 05 Mar 2026 13:46:24 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260305-b4-sa2-usb-v3-3-802f52d308ab@clermont.in2p3.fr>
References: <20260305-b4-sa2-usb-v3-0-802f52d308ab@clermont.in2p3.fr>
In-Reply-To: <20260305-b4-sa2-usb-v3-0-802f52d308ab@clermont.in2p3.fr>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: David Picard <david.picard@clermont.in2p3.fr>, 
 Ahmad Fatoum <a.fatoum@pengutronix.de>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1772714809; l=901;
 i=david.picard@clermont.in2p3.fr; s=20250917; h=from:subject:message-id;
 bh=O7MHV+Y7Gx4mA03Hw2KFv27eCCEWRM6ByAE0SDcOzmY=;
 b=EBu7Lmr6tH6hBnYrV9OVuABtCct3lDwUAS0OR0MFlBL+6r4Zh/Z9P8BwrzMTOwvKT+fYy5XrP
 lkHLFR5mp4nCRXvNSfKjqzENpwaL7/PN/Q0/KEIJkh1cV7+NAS9+rSQ
X-Developer-Key: i=david.picard@clermont.in2p3.fr; a=ed25519;
 pk=Ew2hyxWdBXm7qaK2tHrk3KcOlOjoh3+irqJPSHtq/PU=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260305_045637_655499_7712DC41 
X-CRM114-Status: UNSURE (   8.61  )
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
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v3 3/3] ARM: socfpga: xload: compress image with xz
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Compress the image of the first stage of Barebox with xz because it
features a good compression ratio.
as 64KiB.

Rationale: on some devices, the image has to fit in a ROM as small
Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: David Picard <david.picard@clermont.in2p3.fr>
---
 arch/arm/configs/socfpga-xload_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/configs/socfpga-xload_defconfig b/arch/arm/configs/socfpga-xload_defconfig
index 22bab8d607..ec966c91a8 100644
--- a/arch/arm/configs/socfpga-xload_defconfig
+++ b/arch/arm/configs/socfpga-xload_defconfig
@@ -12,6 +12,7 @@ CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 # CONFIG_ARM_EXCEPTIONS is not set
 CONFIG_NAME="socfpga-xload_defconfig"
 # CONFIG_MEMINFO is not set
+CONFIG_IMAGE_COMPRESSION_XZKERN=y
 CONFIG_MMU=y
 CONFIG_MALLOC_SIZE=0x0
 CONFIG_MALLOC_DUMMY=y

-- 
2.43.0




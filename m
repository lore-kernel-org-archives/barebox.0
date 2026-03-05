Delivery-date: Thu, 05 Mar 2026 15:01:41 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vy9Gm-008LYy-1p
	for lore@lore.pengutronix.de;
	Thu, 05 Mar 2026 15:01:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vy9Gm-0006IU-TU
	for lore@pengutronix.de; Thu, 05 Mar 2026 15:01:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XSX3qrdNxL1zFV/ZGcZHEZVBdhr/YkeXgtK8rtypNTQ=; b=Wg1cOlZ4PKwVbfswWcFPeEZH7O
	6rszyiz4EKGE3E38Zuv0BGriNYtn/nZUvKpST0HFOWhsZNVprncmYBsM76DhKDZ2Ox7ohgLp6y0OX
	Ik6p8+NQmQPICtquVR04upESlAFxLc+I8Q8rzjGYCbCbd2chjfqjvsX6noHrJdJJ8OO+Y5H++/fF4
	mbObY4mCPA3PtDlMMmFAekLfp2eER423Gr01sjIhjltoRIMnDHF3CzVsgPDmRD+sr4P45Uri6KVd6
	lxPh6hzIb2rMIYui7QqvXtGcXH1KOaj+lVOpnEonmcV1KZ4GB1AuSeWU/OoS4JELiS+DxNu6F/NeH
	lXNCwVrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy9GL-00000001uxJ-2xgl;
	Thu, 05 Mar 2026 14:01:13 +0000
Received: from cczrelay04.in2p3.fr ([134.158.66.154])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vy9GJ-00000001uwH-1G9J
	for barebox@lists.infradead.org;
	Thu, 05 Mar 2026 14:01:12 +0000
Received: from [127.0.1.1] (clrelecpo09w.in2p3.fr [134.158.124.135])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by cczrelay04.in2p3.fr (Postfix) with ESMTPSA id 05E3B800816;
	Thu,  5 Mar 2026 15:00:54 +0100 (CET)
From: David Picard <david.picard@clermont.in2p3.fr>
Date: Thu, 05 Mar 2026 15:00:47 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260305-b4-sa2-usb-v5-3-8e92a459d20b@clermont.in2p3.fr>
References: <20260305-b4-sa2-usb-v5-0-8e92a459d20b@clermont.in2p3.fr>
In-Reply-To: <20260305-b4-sa2-usb-v5-0-8e92a459d20b@clermont.in2p3.fr>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: David Picard <david.picard@clermont.in2p3.fr>, 
 Ahmad Fatoum <a.fatoum@pengutronix.de>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1772719253; l=903;
 i=david.picard@clermont.in2p3.fr; s=20250917; h=from:subject:message-id;
 bh=uITxr5gmEH0tt4KXNpw4cOIg9Vw/BtC1gtYH3LaHC3w=;
 b=LSpf7MN264wj96BH/HnqHdjsqJMVo6qKAdNR78ss6JrRTZ4YTX0AjkknKVZwtBHThXEqLS8Fn
 nDj768Juc2NBxD1H1XW7lI9o0jG8Iif12O35mKPAV0RC7xA1CHsdJwh
X-Developer-Key: i=david.picard@clermont.in2p3.fr; a=ed25519;
 pk=Ew2hyxWdBXm7qaK2tHrk3KcOlOjoh3+irqJPSHtq/PU=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260305_060111_472642_FBC2BC87 
X-CRM114-Status: UNSURE (   8.26  )
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
X-Spam-Status: No, score=-3.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v5 3/3] ARM: socfpga: xload: compress image with xz
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Compress the image of the first stage of Barebox with xz because it
features a good compression ratio.

Rationale: on some devices, the image has to fit in a ROM as small
as 64KiB.

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




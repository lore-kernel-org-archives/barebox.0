Delivery-date: Sun, 20 Feb 2022 13:51:00 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nLlg4-004x14-2M
	for lore@lore.pengutronix.de; Sun, 20 Feb 2022 13:51:00 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nLlg1-0002CF-DS
	for lore@pengutronix.de; Sun, 20 Feb 2022 13:50:59 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qudPiVSRXqgaj367ivRd+87zOxyOBrrlxmZfNzd/5lU=; b=ZFsmkD6mM5WDFy
	mlQX+1+B3hhoPcvhGzaiQgxkj59Djd2X92s7VwLbk4sTyjQskNy69VXQDFUA1QBkYGYqiFNhM0j61
	6jBiWTbo22nwpt0e7QkyLCJ6d2PtzorZ4gxj71VUnOX2FolUo833FcdnV2Hswy5HK1u20Fh07Zkj5
	fpP/V3LCLPqwWnb/z/aOvmvQWJPNLYJ9zjdyiXPloy69JyXxMRxfQ/JGcDfAWEN9osOBNDR+YGzMO
	+1cjugRjz/goaE9o3clK4iYtnYi8lM5x+zIYI1Ni8RuSw3SSVU4CP006XqEhwFrqhZJppnxVP0az/
	bBV5Rx6Cnk7qy49cLXLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nLleS-001IzT-Vi; Sun, 20 Feb 2022 12:49:22 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nLld9-001I7U-Jv
 for barebox@lists.infradead.org; Sun, 20 Feb 2022 12:48:01 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1nLlcs-0000Zv-4F; Sun, 20 Feb 2022 13:47:42 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nLlcq-00CoPQ-Tw; Sun, 20 Feb 2022 13:47:40 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Xogium <contact@xogium.me>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sun, 20 Feb 2022 13:47:15 +0100
Message-Id: <20220220124736.3052502-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220220124736.3052502-1-a.fatoum@pengutronix.de>
References: <20220220124736.3052502-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220220_044759_688555_73F1823D 
X-CRM114-Status: UNSURE (   7.81  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 03/24] ARM: stm32mp: simplify with build_stm32mp_image macro
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Reduce duplication by adding a common macro to get the four lines of
boilerplate down to a single line. No functional change.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 images/Makefile.stm32mp | 49 +++++++++++++++++------------------------
 1 file changed, 20 insertions(+), 29 deletions(-)

diff --git a/images/Makefile.stm32mp b/images/Makefile.stm32mp
index 17f03908b0d0..558f8c585984 100644
--- a/images/Makefile.stm32mp
+++ b/images/Makefile.stm32mp
@@ -9,35 +9,26 @@
 $(obj)/%.stm32: $(obj)/% FORCE
 	$(call if_changed,stm32_image)
 
-STM32MP1_OPTS = -a 0xc0100000 -e 0xc0100000 -v1
+define build_stm32mp_image =
+$(eval
+ifeq ($($(strip $(1))), y)
+	pblb-y += $(strip $(2))
+	FILE_barebox-$(strip $(3)).img    = $(strip $(2)).pblb.stm32
+	OPTS_$(strip $(2)).pblb.stm32 = -a 0xc0100000 -e 0xc0100000 -v1
+	image-y += barebox-$(strip $(3)).img
+endif
+)
+endef
 
 # --------------------------------------
 
-pblb-$(CONFIG_MACH_STM32MP15XX_DKX) += start_stm32mp15xx_dkx
-FILE_barebox-stm32mp15xx-dkx.img = start_stm32mp15xx_dkx.pblb.stm32
-OPTS_start_stm32mp15xx_dkx.pblb.stm32 = $(STM32MP1_OPTS)
-image-$(CONFIG_MACH_STM32MP15XX_DKX) += barebox-stm32mp15xx-dkx.img
-
-pblb-$(CONFIG_MACH_LXA_MC1) += start_stm32mp157c_lxa_mc1
-FILE_barebox-stm32mp157c-lxa-mc1.img = start_stm32mp157c_lxa_mc1.pblb.stm32
-OPTS_start_stm32mp157c_lxa_mc1.pblb.stm32 = $(STM32MP1_OPTS)
-image-$(CONFIG_MACH_LXA_MC1) += barebox-stm32mp157c-lxa-mc1.img
-
-pblb-$(CONFIG_MACH_PROTONIC_STM32MP1) += start_prtt1a start_prtt1s start_prtt1c
-FILE_barebox-prtt1a.img = start_prtt1a.pblb.stm32
-FILE_barebox-prtt1c.img = start_prtt1c.pblb.stm32
-FILE_barebox-prtt1s.img = start_prtt1s.pblb.stm32
-OPTS_start_prtt1a.pblb.stm32 = $(STM32MP1_OPTS)
-OPTS_start_prtt1c.pblb.stm32 = $(STM32MP1_OPTS)
-OPTS_start_prtt1s.pblb.stm32 = $(STM32MP1_OPTS)
-image-$(CONFIG_MACH_PROTONIC_STM32MP1) += barebox-prtt1a.img barebox-prtt1s.img barebox-prtt1c.img
-
-pblb-$(CONFIG_MACH_SEEED_ODYSSEY) += start_stm32mp157c_seeed_odyssey
-FILE_barebox-stm32mp157c-seeed-odyssey.img = start_stm32mp157c_seeed_odyssey.pblb.stm32
-OPTS_start_stm32mp157c_seeed_odyssey.pblb.stm32 = $(STM32MP1_OPTS)
-image-$(CONFIG_MACH_SEEED_ODYSSEY) += barebox-stm32mp157c-seeed-odyssey.img
-
-pblb-$(CONFIG_MACH_STM32MP15X_EV1) += start_stm32mp15x_ev1
-FILE_barebox-stm32mp15x-ev1.img = start_stm32mp15x_ev1.pblb.stm32
-OPTS_start_stm32mp15x_ev1.pblb.stm32 = $(STM32MP1_OPTS)
-image-$(CONFIG_MACH_STM32MP15X_EV1) += barebox-stm32mp15x-ev1.img
+$(call build_stm32mp_image, CONFIG_MACH_STM32MP15XX_DKX, start_stm32mp15xx_dkx, stm32mp15xx-dkx)
+$(call build_stm32mp_image, CONFIG_MACH_STM32MP15X_EV1, start_stm32mp15x_ev1, stm32mp15x-ev1)
+
+$(call build_stm32mp_image, CONFIG_MACH_LXA_MC1, start_stm32mp157c_lxa_mc1, stm32mp157c-lxa-mc1)
+
+$(call build_stm32mp_image, CONFIG_MACH_PROTONIC_STM32MP1, start_prtt1a, prtt1a)
+$(call build_stm32mp_image, CONFIG_MACH_PROTONIC_STM32MP1, start_prtt1s, prtt1s)
+$(call build_stm32mp_image, CONFIG_MACH_PROTONIC_STM32MP1, start_prtt1c, prtt1c)
+
+$(call build_stm32mp_image, CONFIG_MACH_SEEED_ODYSSEY, start_stm32mp157c_seeed_odyssey, stm32mp157c-seeed-odyssey)
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


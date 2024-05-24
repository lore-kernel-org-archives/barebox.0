Delivery-date: Fri, 24 May 2024 12:35:59 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sASHH-00GZ70-0j
	for lore@lore.pengutronix.de;
	Fri, 24 May 2024 12:35:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sASHG-000093-L4
	for lore@pengutronix.de; Fri, 24 May 2024 12:35:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=hWcRra5ILQBK4YDG1EshmtGoB8feLa/Lob4QhHucHUo=; b=tIn7rc00u0V13L9t0KT3jIqm/5
	1otXAHp5GngfP1bx6C3wOhtprDOExNONV0VAYg7v5Y1wIDlMmwKwgp/NmI7fGCxCqLQzb8KmdSlXX
	SPBXHrBAbJ/qUKX28Glufi7WciK5odx+pqu01P9/fa9M8tLqLs/A5QwaGBRAKV3btk26DVW/DZtU6
	6+w1Lck1VeQFJ22MLDR+YYT2dhhsB7LxjmAcm4GlRg51uLGhtaMpGiKNB//t4qNrs5BUkC76ElkaL
	5Z9fUT0St9VFvmB/kti6k/2vymGls2WMKUulLJdYsDi1AXzGzLTEy35ByoI0nL6qENXdY+DXGJDWT
	TesGSBqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sASGg-00000008hCe-0aNN;
	Fri, 24 May 2024 10:35:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sASGc-00000008hAo-2AJY
	for barebox@lists.infradead.org;
	Fri, 24 May 2024 10:35:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sASGb-0008Rx-1L; Fri, 24 May 2024 12:35:17 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sASGa-002mYN-8y; Fri, 24 May 2024 12:35:16 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sASGa-009Ios-0b;
	Fri, 24 May 2024 12:35:16 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Xogium <contact@xogium.me>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 24 May 2024 12:35:14 +0200
Message-Id: <20240524103514.2217258-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240524_033518_579614_0FFC31B9 
X-CRM114-Status: UNSURE (   7.92  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master] nvmem: bsec: make OP-TEE TA interaction optional
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

When targeting older OP-TEE versions, a PTA for BSEC access may not be
available. Allow disabling STM32_BSEC_OPTEE_TA in this case, so the
driver falls back to the secure monitor call silicon provider service.

Reported-by: Xogium <contact@xogium.me>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/nvmem/Kconfig | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/nvmem/Kconfig b/drivers/nvmem/Kconfig
index 255198b2ad81..349471ce3932 100644
--- a/drivers/nvmem/Kconfig
+++ b/drivers/nvmem/Kconfig
@@ -91,10 +91,13 @@ config STM32_BSEC_WRITE
 	    mw -l -d /dev/stm32-bsec 0x000000e8+4 0x0000bc9a
 
 config STM32_BSEC_OPTEE_TA
-	def_bool STM32_BSEC && OPTEE
+	bool "Support BSEC access over OP-TEE TA"
+	depends on STM32_BSEC && OPTEE
+	default y
 	help
 	  Say y here to enable the accesses to STM32MP SoC OTPs by the OP-TEE
-	  trusted application STM32MP BSEC.
+	  trusted application STM32MP BSEC in addition to the older SMC SiP
+	  service.
 
 config KVX_OTP_NV
 	tristate "kalray KVX OTP Non volatile regs Support"
-- 
2.39.2




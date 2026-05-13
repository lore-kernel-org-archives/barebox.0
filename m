Delivery-date: Wed, 13 May 2026 14:21:46 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wN8aw-001FfM-1U
	for lore@lore.pengutronix.de;
	Wed, 13 May 2026 14:21:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wN8au-0004Oe-NT
	for lore@pengutronix.de; Wed, 13 May 2026 14:21:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FHPqiG15uoNym4HUkxky5D/g7gWyWiQkZGay24Llgpo=; b=HB9uLo49dQNIIAiu5y0jSfNcSJ
	e9hytI1nZNJee0se3y9y0ghLV4ncPhw6PXNZ9IQ2KFKKZjzArgztawm2SnOFQmlpZeYgIuOrtccsD
	treTPrM3RGa4He3M1EO2EaMmJ8OHv+Whv/J1+kviJW9kXhJ74Pud2ZJmVS0BwGihlrsYrnL6D5Iif
	iOz0PbDgWJurBAV+7LnN0f69GnAdWMzy4y+Afe7HBKh4jBB3XJlEl/a+VsMsX3ut+F3hDAlb82Yn4
	7mhoTAJlecaVJ4HSuewaeD5ThW12JJ459c7wrCYsIQ63UHp/H46KXFCgn1cES6ngdtFP1RxnuMFXh
	YFmW4PtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wN8Zf-00000002STN-40Pu;
	Wed, 13 May 2026 12:20:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wN8Zd-00000002SRr-4AcO
	for barebox@lists.infradead.org;
	Wed, 13 May 2026 12:20:27 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1wN8Zc-0003rS-HF; Wed, 13 May 2026 14:20:24 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Wed, 13 May 2026 14:20:17 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260513-socfpga-kconfig-v1-1-6b935776f0ac@pengutronix.de>
References: <20260513-socfpga-kconfig-v1-0-6b935776f0ac@pengutronix.de>
In-Reply-To: <20260513-socfpga-kconfig-v1-0-6b935776f0ac@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>, 
 Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260513_052026_039528_CAFFADDA 
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/3] arm: socfgpa: use tabs for indent in Kconfig
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The Kconfig files should use tabs for indents.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 arch/arm/mach-socfpga/Kconfig | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-socfpga/Kconfig b/arch/arm/mach-socfpga/Kconfig
index 734d2c6d7aa3..343264209267 100644
--- a/arch/arm/mach-socfpga/Kconfig
+++ b/arch/arm/mach-socfpga/Kconfig
@@ -87,8 +87,8 @@ config ARCH_SOCFPGA_AGILEX5
 comment "SoCFPGA Agilex5 boards"
 
 config MACH_SOCFPGA_ARROW_AXE5_EAGLE
-       bool "Arrow AXE5 Eagle"
-       select ARCH_SOCFPGA_AGILEX5
+	bool "Arrow AXE5 Eagle"
+	select ARCH_SOCFPGA_AGILEX5
 
 endif
 

-- 
2.47.3




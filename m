Delivery-date: Tue, 10 Oct 2023 16:34:50 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qqDow-003BFd-Cx
	for lore@lore.pengutronix.de; Tue, 10 Oct 2023 16:34:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qqDot-0008Hp-8d
	for lore@pengutronix.de; Tue, 10 Oct 2023 16:34:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0Q4ZUcf+RSMKcLP96r6hLWKosQYKMNxjaWQ9gqN6ve0=; b=Z/VT2pxIWWAzPQqfFH9alUo2Su
	8CrrnXB418ldCoTQ+nnOPCRWf01+g9Ke0ghMio83LnFIwMznTyIhV5dLSF4rHYHoNIcJuq/YaHvBC
	MHBRi93ErYqiO7YFDPnRNelvY2+dSw0Kw3NDnv4fCfIoUVbRN3kng3i/HKb6yyPw5qJBEBqb/F5Hs
	GI9jLQpoUzp5oPfwhfJG8B2ybxY12NoM6rI4uZWrsPtxKaBnzFp7VwmMUjXDz8+hkY9mjs0fXCMPr
	1orJTMUI+OwEEX8urP0wl+VE6OpgVMvLaRkDDLssByjNBKxTuc6osZOqxBsQvHjxK4KUCVLtTo3OS
	dYIEhdIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qqDnd-00DZVn-0Z;
	Tue, 10 Oct 2023 14:33:29 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qqDnY-00DZQH-18
	for barebox@lists.infradead.org;
	Tue, 10 Oct 2023 14:33:26 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1qqDnV-0007Dl-Fd
	for barebox@lists.infradead.org; Tue, 10 Oct 2023 16:33:21 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 10 Oct 2023 16:33:02 +0200
Message-Id: <20231010143314.2031253-15-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231010143314.2031253-1-m.felsch@pengutronix.de>
References: <20231010143314.2031253-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231010_073324_382248_D382C44A 
X-CRM114-Status: GOOD (  11.63  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 14/26] ARM: lds: add support for a 2nd CSF area
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Extend the CSF area to be able two store two CSF slots. The 2nd CSF slot
is required in case of FlexSPI HAB boot support. The first slot is used
for the MMC-IVT + barebox-pbl; the 2nd slot is used for the FlexSPI-IVT
+ barebox-pbl. This is necessary because of the fact that the HAB ROM
code requires that the IVT is signed as well.

Use the CONFIG_SPI_NXP_FLEXSPI Kconfig symbol to decide if we need to
add the support for FlexSPI image signatures as well since early SRAM
space is limited and 4K can make a difference here.

Please check the documentation for a more detailed information about the
i.MX8M image layout.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 arch/arm/lib/pbl.lds.S | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/lib/pbl.lds.S b/arch/arm/lib/pbl.lds.S
index 898d6be33b54..9ab6d22eb59d 100644
--- a/arch/arm/lib/pbl.lds.S
+++ b/arch/arm/lib/pbl.lds.S
@@ -12,7 +12,11 @@
 #define BASE	(TEXT_BASE - SZ_2M)
 #endif
 
+#ifdef CONFIG_SPI_NXP_FLEXSPI
+#define HAB_CSF_LEN	0x4000
+#else
 #define HAB_CSF_LEN	0x2000
+#endif
 
 OUTPUT_FORMAT(BAREBOX_OUTPUT_FORMAT)
 OUTPUT_ARCH(BAREBOX_OUTPUT_ARCH)
-- 
2.39.2




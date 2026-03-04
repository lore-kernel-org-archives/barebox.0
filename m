Delivery-date: Wed, 04 Mar 2026 13:54:54 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vxlkb-007zHT-17
	for lore@lore.pengutronix.de;
	Wed, 04 Mar 2026 13:54:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vxlkb-0001HU-Hr
	for lore@pengutronix.de; Wed, 04 Mar 2026 13:54:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QQmaXRdcD4RhJAlTqEqW8G+xq/KC9F4SIFE1MbkCkeg=; b=QXSPZgSUv2QW6G
	d0T5LTdU5xzZZrPLLk6juvVs3PDyUprVSAFAHGzbbIn5CB8y481i00ccFY4NWcfKL2PipYh4asy6f
	2h3AxKYxqo/4HvcT0PO7WYVd32BBN/lI/oxFH0x2lN4V7JThpSi1J668hwb8fs7k49XRF9o4wgqmu
	j34Pua8fj28ZYZIzA9ejDR0pZazYyXgqCP12FSmjstiqHk3GlJGJrXBjlsn3W3l9Yaz85wwYA2a0+
	ML5QwHmudj4Rp654twEoh5bJyN0CGtIrYx9444z4NjoT6a6AqkFFhA+hXmtPhgsJNC2qOzg4FmP3m
	4+7ue4xvzas6756c/cFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxlkC-0000000HD9d-0F15;
	Wed, 04 Mar 2026 12:54:28 +0000
Received: from smtp16.bhosted.nl ([2a02:9e0:8000::27])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxlk9-0000000HD9K-1uou
	for barebox@lists.infradead.org;
	Wed, 04 Mar 2026 12:54:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=protonic.nl; s=202111;
	h=content-transfer-encoding:mime-version:message-id:date:subject:cc:to:from:
	 from;
	bh=QQmaXRdcD4RhJAlTqEqW8G+xq/KC9F4SIFE1MbkCkeg=;
	b=Q2dMUh6WCce2XLdhvh2cSxSf4Ir+SqfqBJgKeLUYqa49CDQVGVxVFuhPZNZ64KnSX07yPaGhxCCQw
	 Chzf/QTo4NQjUvkdqupePc2PY6kvE4Ah1U94PW/hcFJ0xYpADVaUhikLBPOmz4GFC+0gsX9chaFrLI
	 86DdjykxjtMWhekrMtvKOzNLYypaQamRxPYewlpGin1WavgSGmfQ9J/J0RN4m2lnOH5pfuNJjETSN4
	 VM/GEMCg+3Y6r2BQtnO/zUlBTin0MtJLOyuqd36oWUU7KnQWK8xTto7lPiLBR1fw2D7CwwNBGw7vMg
	 fep2l3xlt+xsFI7XoEDKbcMvEmL1NSw==
X-MSG-ID: 4424ae70-17c9-11f1-9155-005056817704
From: Robin van der Gracht <robin.van.der.gracht@protonic.nl>
To: barebox@lists.infradead.org
Date: Wed,  4 Mar 2026 13:54:21 +0100
Message-ID: <20260304125421.554071-1-robin.van.der.gracht@protonic.nl>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260304_045425_632744_B61F0043 
X-CRM114-Status: UNSURE (   6.44  )
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
Cc: Robin van der Gracht <robin.van.der.gracht@protonic.nl>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: rockchip: Select missing HW_HAS_PCI for RK35xx architectures
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

All of them have a PCIe controller so we should enable the pci bus options.

Signed-off-by: Robin van der Gracht <robin.van.der.gracht@protonic.nl>
---
 arch/arm/mach-rockchip/Kconfig | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/mach-rockchip/Kconfig b/arch/arm/mach-rockchip/Kconfig
index c1c96c545e..eb0dfb8240 100644
--- a/arch/arm/mach-rockchip/Kconfig
+++ b/arch/arm/mach-rockchip/Kconfig
@@ -30,18 +30,22 @@ config ARCH_ROCKCHIP_V8
 config ARCH_RK3562
 	bool
 	select ARCH_ROCKCHIP_V8
+	select HW_HAS_PCI
 
 config ARCH_RK3568
 	bool
 	select ARCH_ROCKCHIP_V8
+	select HW_HAS_PCI
 
 config ARCH_RK3576
 	bool
 	select ARCH_ROCKCHIP_V8
+	select HW_HAS_PCI
 
 config ARCH_RK3588
 	bool
 	select ARCH_ROCKCHIP_V8
+	select HW_HAS_PCI
 
 comment "select Rockchip boards:"
 
-- 
2.43.0




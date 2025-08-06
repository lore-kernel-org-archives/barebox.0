Delivery-date: Wed, 06 Aug 2025 14:39:29 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujdQX-007dZU-1l
	for lore@lore.pengutronix.de;
	Wed, 06 Aug 2025 14:39:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujdQW-0000yp-Ut
	for lore@pengutronix.de; Wed, 06 Aug 2025 14:39:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sv/kME60jPC/uK0St+c2lUmbUiaGFi1ApkDc4rbTEGw=; b=P1n+2q7dodrsidcrTik2CONxoI
	dBBL1EqQTwdBrkm3bGe+6PQVej2jzj0AoVwskdvjirtklYU5UfLSgn/TeaAASQWUElCdjjFQYs/3w
	Qcb5qOYItoNfE57omxkXp4I4JJVJaKjXN+GTql26nfSS2uYyyl+XqREoti/IdDgkEp8HwkOyWQb7C
	rvzFCcJyNmlV3ipnYq1F2DWIn8HaF6wp8jTobhYLWBzxYzbssKsIqk8z/2vGJHlKhGKGpwifu93ai
	kM6MdrUbU9KycMhgM2j2nLcPBGhlPLfHXWzUab1zntdsiCOXtfr21Ow1Z6ZoqLc2wuQgUdvuayHd/
	bhKCs7ew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujdQ4-0000000FALF-3xBj;
	Wed, 06 Aug 2025 12:39:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujdOO-0000000FA5O-3n02
	for barebox@lists.infradead.org;
	Wed, 06 Aug 2025 12:37:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ujdON-0000Ml-MZ; Wed, 06 Aug 2025 14:37:15 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ujdON-00CD93-1U;
	Wed, 06 Aug 2025 14:37:15 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1ujdON-009YOP-18;
	Wed, 06 Aug 2025 14:37:15 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  6 Aug 2025 14:36:58 +0200
Message-Id: <20250806123714.2092620-7-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250806123714.2092620-1-a.fatoum@pengutronix.de>
References: <20250806123714.2092620-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250806_053717_023313_161729EA 
X-CRM114-Status: GOOD (  12.01  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 06/22] ARM: mmu: provide zero page control in PBL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

There's no reason to preclude zero page control in PBL if MMU is setup
and given that we want to add code to mmu-common.c that we want to use
in PBL, let's remove this artificial limitation.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/cpu/Makefile | 2 +-
 include/zero_page.h   | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/cpu/Makefile b/arch/arm/cpu/Makefile
index 955059279670..467ef17bfd55 100644
--- a/arch/arm/cpu/Makefile
+++ b/arch/arm/cpu/Makefile
@@ -4,7 +4,7 @@ obj-pbl-y += cpu.o
 
 obj-$(CONFIG_ARM_EXCEPTIONS) += exceptions_$(S64_32).o interrupts_$(S64_32).o
 pbl-$(CONFIG_ARM_EXCEPTIONS_PBL) += exceptions_$(S64_32).o interrupts_$(S64_32).o
-obj-$(CONFIG_MMU) += mmu-common.o
+obj-pbl-$(CONFIG_MMU) += mmu-common.o
 obj-pbl-$(CONFIG_MMU) += mmu_$(S64_32).o
 obj-$(CONFIG_MMU) += dma_$(S64_32).o
 obj-pbl-y += lowlevel_$(S64_32).o
diff --git a/include/zero_page.h b/include/zero_page.h
index 067f39a7ee96..8dd66a1efb9b 100644
--- a/include/zero_page.h
+++ b/include/zero_page.h
@@ -4,7 +4,7 @@
 
 #include <common.h>
 
-#if defined CONFIG_ARCH_HAS_ZERO_PAGE && defined CONFIG_MMU && IN_PROPER
+#if defined CONFIG_ARCH_HAS_ZERO_PAGE && defined CONFIG_MMU
 
 /*
  * zero_page_faulting - fault when accessing the zero page
-- 
2.39.5




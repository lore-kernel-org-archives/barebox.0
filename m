Delivery-date: Thu, 09 Mar 2023 15:05:15 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1paGtO-00EvZC-QS
	for lore@lore.pengutronix.de; Thu, 09 Mar 2023 15:05:15 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1paGtO-0005ZN-8A
	for lore@pengutronix.de; Thu, 09 Mar 2023 15:05:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AsOkt0xYxW8P49xhBqEtZdr0Eb7PazF7XkQme8N4eJ8=; b=wTPc7OyWZyJJ24
	1LBrZNOP9blPDmVaq0TuAUJnwIhdQp361hvr6iV4qO4c5h8uLFPtW4galAbebFKTjsMx+Hv0zXgPk
	xJEffkKhD4asKqKt34H/DwqrYANIMyCXLTy+NYpS/58dj1TpYVIln6zVN/ANoPNTGV7F/rZ7VnmNi
	2trYjdOPOQkN3jFbU/qJI9MVYiWXMNTcuGUzftI3ovKXHuUCavrrPwUmtbrRI6CdGg9K5dJ0/YiV5
	U72GXhjUzn7YDTaMm7eldoU+hACp5X6NXYD1BOIISUaub/qDR2FzbfeJgfKPlw9Gpq/d4YUKbyqUd
	6OSvGg92sJ/+QtXEgApQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paGrs-00AK4o-Jw; Thu, 09 Mar 2023 14:03:41 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paGlm-00AGbF-TC
	for barebox@lists.infradead.org; Thu, 09 Mar 2023 13:57:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1paGlj-0003vd-1N; Thu, 09 Mar 2023 14:57:19 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1paGli-002xlv-DI; Thu, 09 Mar 2023 14:57:18 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1paGlg-00GGEd-SF; Thu, 09 Mar 2023 14:57:16 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  9 Mar 2023 14:57:13 +0100
Message-Id: <20230309135713.3874769-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230309_055723_000306_32692B29 
X-CRM114-Status: GOOD (  10.31  )
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
Cc: mol@pengutronix.de
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: Enable frame pointers for arm64
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

stack unwinding on arm64 depends on framepointers, so enable them.

OSELAS.Toolchain-2022.10.0 now defaults to -fomit-frame-pointer whereas
earlier versions default to -fno-omit-frame-pointer. Fix stack
unwinding for new OSELAS.Toolchain and other toolchains which omit
frame pointers by default.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/cpu/Kconfig b/arch/arm/cpu/Kconfig
index 3ef3604737..f6e2ae9b8a 100644
--- a/arch/arm/cpu/Kconfig
+++ b/arch/arm/cpu/Kconfig
@@ -18,6 +18,7 @@ config CPU_64
 	select HAVE_PBL_IMAGE
 	select HAVE_PBL_MULTI_IMAGES
 	select HAS_DMA
+	select ARCH_WANT_FRAME_POINTERS
 
 # Select CPU types depending on the architecture selected. This selects
 # which CPUs we support in the kernel image, and the compiler instruction
-- 
2.30.2




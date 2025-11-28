Delivery-date: Fri, 28 Nov 2025 11:53:17 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOw6H-005l6U-1M
	for lore@lore.pengutronix.de;
	Fri, 28 Nov 2025 11:53:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOw6G-00019O-TE
	for lore@pengutronix.de; Fri, 28 Nov 2025 11:53:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=FraAGARlNt7wAbqlAkjVKAMYkYk0C6xw+x0owSw+QTQ=; b=eO2K/MMscEgF7LMpipU5N2u+pS
	d87iN2IbcQNrUVE0K1cOsVzrnhY4aL6o0Jt3MBdxPOlnJt8LNKPnB+VCSEe7AZeLBJNQZ/imYGkGV
	dU9R5/dm7QiYNNr1aTPXXow22BIyIyKk5HtaouNHTWoKj8NG1r43TcH1Vg6RETfaR+w9KVcwW65RZ
	UWgE6+H1JJRnRq5mpMEkhvhJbf7sr6CFq0ubCDeCir97nRdyrIGwDiCycyYgaE3qixxJyohow14Kh
	/zS3DEK2BVIphY9ScqnCbmHpxg3q2aMQn1/6WGa8BBbRdVI8Y7jhayLyG2B22X93sDb2E/LuXoNgl
	BmSQ4IGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOw5s-00000000KBd-2NBn;
	Fri, 28 Nov 2025 10:52:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOw5q-00000000KBF-0uvo
	for barebox@lists.infradead.org;
	Fri, 28 Nov 2025 10:52:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vOw5o-00014O-R8
	for barebox@lists.infradead.org; Fri, 28 Nov 2025 11:52:48 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vOw5o-002wMB-26
	for barebox@lists.infradead.org;
	Fri, 28 Nov 2025 11:52:48 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vOw5o-0000000CakJ-2I4u
	for barebox@lists.infradead.org;
	Fri, 28 Nov 2025 11:52:48 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 28 Nov 2025 11:52:45 +0100
Message-ID: <20251128105246.2993639-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251128_025250_280269_5F3DFE6D 
X-CRM114-Status: UNSURE (   9.14  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: sunxi: drop unneeded Makefile
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@barebox.org>

The arch/arm/Makefile already handles correctly the case of there being
no mach directory, so remove the empty Makefile we have for sunxi.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 arch/arm/Makefile            | 1 -
 arch/arm/mach-sunxi/Makefile | 1 -
 2 files changed, 2 deletions(-)
 delete mode 100644 arch/arm/mach-sunxi/Makefile

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 8fa7f1dc80b7..d6ae6b648f65 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -105,7 +105,6 @@ machine-$(CONFIG_ARCH_PXA)		+= pxa
 machine-$(CONFIG_ARCH_ROCKCHIP)		+= rockchip
 machine-$(CONFIG_ARCH_SOCFPGA)		+= socfpga
 machine-$(CONFIG_ARCH_STM32MP)		+= stm32mp
-machine-$(CONFIG_ARCH_SUNXI)		+= sunxi
 machine-$(CONFIG_ARCH_VERSATILE)	+= versatile
 machine-$(CONFIG_ARCH_VEXPRESS)		+= vexpress
 machine-$(CONFIG_ARCH_TEGRA)		+= tegra
diff --git a/arch/arm/mach-sunxi/Makefile b/arch/arm/mach-sunxi/Makefile
deleted file mode 100644
index 16a218658ade..000000000000
--- a/arch/arm/mach-sunxi/Makefile
+++ /dev/null
@@ -1 +0,0 @@
-obj- := __dummy__.o
-- 
2.47.3




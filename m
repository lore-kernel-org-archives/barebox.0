Delivery-date: Fri, 13 Mar 2026 14:34:43 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w12f5-000DRk-35
	for lore@lore.pengutronix.de;
	Fri, 13 Mar 2026 14:34:43 +0100
Received: from bombadil.infradead.org ([198.137.202.133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w12em-0000cE-2Q
	for lore@pengutronix.de; Fri, 13 Mar 2026 14:34:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=s/fdd6HgiwLus8GOqxFk7yW5exluP79dFCe7xAQs9lY=; b=Y1TTmmwiizvZ/x7wwMkB03MW5q
	YkzYgnezGtQ3lUUba8/kQ/f+sx7IRFRPykeCFgf/VMIMwoTUnEXCSbAgRZc+BwllAwsMXKLJhGRHn
	hFY0c09l3KUw6qQ9SjdfDU89MaBWbgZ+ppmhFw+pYtxp0hZoO0mP7hqZYnUQ7T/wxSjozJJy2qQYM
	2PyxLLivU3X0ejQw/w6KqyNJETgFsGB7+HoOsgHg2uxUccKVUVoT5zdJeZt/dpNVtm/L1a4+/lw0z
	m7iA/C6GpnH9KJ/r3nkGfpgSO0KN/LH0yGXs2TN0apocrSYWG9hS1d0UdQeqBOGxtCEOn1YROK847
	ssmOMiKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12dT-00000000G66-31CG;
	Fri, 13 Mar 2026 13:33:03 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12dC-00000000Fct-12zi
	for barebox@bombadil.infradead.org;
	Fri, 13 Mar 2026 13:32:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=s/fdd6HgiwLus8GOqxFk7yW5exluP79dFCe7xAQs9lY=; b=hjKH2Rmv4kW9k2gjL+oh8ESpcq
	NcPT8j6eYOpTO6sMIoBbLplr3K+/yBCrc4PzV2B7YrtE/AMM1l3IbMzsQyD3W+y61Q7asOb9F4VhH
	hG6ReZcp3YMIcWezquwGWTjYDkpWvTYMGjVGTqg3/KFy1i6KxXqyvKvB09oYWKjPYIzPP2Bwx74Ay
	kQEySgaqIgPzQnDuhI27CxTYexaChgEHjK0kQXc5ugnXgyfawNRqfqdk64aGF1jngSUcptP70rkIA
	siLnogCiANHcsirrvCfsPLg8CAqPrf2T6XB6/JhLCyxxQvnQiwNcNkXvARFNdUFTcvDkOpU4DMqe8
	qYrnkNkA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12d6-0000000D9w9-1W4P
	for barebox@lists.infradead.org;
	Fri, 13 Mar 2026 13:32:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12cz-0006rq-Gh; Fri, 13 Mar 2026 14:32:33 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12cz-0005Tp-11;
	Fri, 13 Mar 2026 14:32:33 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12XM-00000009ULB-1Kgw;
	Fri, 13 Mar 2026 14:26:44 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 13 Mar 2026 14:25:30 +0100
Message-ID: <20260313132631.2257573-47-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260313132631.2257573-1-a.fatoum@pengutronix.de>
References: <20260313132631.2257573-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260313_133240_490876_82187CE1 
X-CRM114-Status: UNSURE (   9.07  )
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
X-SA-Exim-Connect-IP: 198.137.202.133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,RCVD_IN_VALIDITY_RPBL_BLOCKED,
	RCVD_IN_VALIDITY_SAFE_BLOCKED,SPF_HELO_NONE,SPF_NONE autolearn=no
	autolearn_force=no version=3.4.2
Subject: [PATCH v2025.09.y 46/58] ARM: rockchip: dmc: use define instead of hardcoded value
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Sascha Hauer <s.hauer@pengutronix.de>

(cherry picked from commit 698768100e5d602505e318dac8ae0c9f7f237b63)

Link: https://lore.barebox.org/20260223-rockchip-optee-v1-1-723493320d42@pengutronix.de
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-rockchip/dmc.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-rockchip/dmc.c b/arch/arm/mach-rockchip/dmc.c
index 3cb17b969414..9d056ada5513 100644
--- a/arch/arm/mach-rockchip/dmc.c
+++ b/arch/arm/mach-rockchip/dmc.c
@@ -215,8 +215,8 @@ size_t rk3588_ram_sizes(phys_addr_t *base, resource_size_t *size, size_t n)
 
 	memsize = size1 + size2;
 
-	base[i] = 0xa00000;
-	size[i] = min_t(resource_size_t, RK3588_INT_REG_START, memsize) - 0xa00000;
+	base[i] = RK3588_DRAM_BOTTOM;
+	size[i] = min_t(resource_size_t, RK3588_INT_REG_START, memsize) - RK3588_DRAM_BOTTOM;
 	i++;
 
 	if (i < n && memsize > SZ_4G) {
-- 
2.47.3




Delivery-date: Mon, 23 Feb 2026 09:57:22 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuRkn-004ltq-36
	for lore@lore.pengutronix.de;
	Mon, 23 Feb 2026 09:57:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vuRko-0005kt-A8
	for lore@pengutronix.de; Mon, 23 Feb 2026 09:57:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SknKGoWEDEL+ONxht7NSLF/PlQixPtkEpzCn2tXZ0Tw=; b=EMOHiNz8v+Ytbwx4ixYcplR1xc
	UkbcwMIvLV2S8Fy6fC6MQk8I4U8p5/uQrLZAJAa/k6FtWui3nPJrRnbRdF27n7bnjlQcRKGx2c+om
	BopM18WH8qThJHqw6lnAVyA/0ucuSbmGx4yxOmiGa3XNaZj/Iqj4Yiy5Lxr33m1h7uhdgiAdVXBEn
	Vh54UIKQ8L17s6oFI9O8GuzCYHDDzl6tZ1FH0wd3dKCaSrMMrYZaof0a2SY+LFqrnenHtDd8tuzV3
	eJQWeugk+Bhc6FwHg0HGpTbdtkeIG9l0+bsfDbBAyYmgKRD40pvYbhwgoQ/hwZY3tRgzEKCvZlGV5
	bmuRem+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuRkM-0000000HRmi-3cg9;
	Mon, 23 Feb 2026 08:56:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vuRkJ-0000000HRmB-3ldB
	for barebox@lists.infradead.org;
	Mon, 23 Feb 2026 08:56:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vuRkH-0005a3-WA; Mon, 23 Feb 2026 09:56:50 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vuRkG-002COV-1P;
	Mon, 23 Feb 2026 09:56:49 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vuRkH-00000000mdp-2yuP;
	Mon, 23 Feb 2026 09:56:49 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 23 Feb 2026 09:56:49 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260223-rockchip-optee-v1-1-723493320d42@pengutronix.de>
References: <20260223-rockchip-optee-v1-0-723493320d42@pengutronix.de>
In-Reply-To: <20260223-rockchip-optee-v1-0-723493320d42@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1771837009; l=750;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=t+5y2iTLMCiRn8+nvDCTauENus93EsFYPYfUNIak6AY=;
 b=eUdKCwzS5v4Vnk1WuJZQQZYRN6BARsukdl5b4zTfbGWPNIq7z9F9ZMvyItKoQfCNjPcD2ZDJD
 vKm/RsGRaIrDTzapqU6vSXVNbKaWPdehFKeudo3kVfIhbgwEb68s+QH
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260223_005651_945883_2C6ABC42 
X-CRM114-Status: GOOD (  10.16  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] ARM: rockchip: dmc: use define instead of hardcoded
 value
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-rockchip/dmc.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-rockchip/dmc.c b/arch/arm/mach-rockchip/dmc.c
index 3cb17b9694..9d056ada55 100644
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




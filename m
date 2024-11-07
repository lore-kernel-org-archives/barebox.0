Delivery-date: Thu, 07 Nov 2024 08:34:59 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t8x2f-005pyJ-2F
	for lore@lore.pengutronix.de;
	Thu, 07 Nov 2024 08:34:59 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t8x2g-0000cj-An
	for lore@pengutronix.de; Thu, 07 Nov 2024 08:34:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=n33NQJeL18/V/GfDeu7WS8Pqut633JD4RUJUsin/+jw=; b=wrIAJUFfQJXJCTiKnotMlSUaKc
	vkgDoPTP4cHFy/Kx0pMVvly9R/v3BH3mpGG83+I+9bD3CC43tgSabz7YNJiDl5Wkzi6Nev61MjF7T
	YjL+KXbcrK+MI4d+Tzl/3fqg81g+Cu6z3SBmhCGjuZJKF5kMbZZJGMjfjPhz6lrCkbF3qyyKw7cij
	oYA20THhtjBOCC/5nfuE/774e2FyqI1ldZNDemdgYaY0q9jfFlkeeVyDjiCesvaO6ajs5BERELgi1
	ZESX2O/oRENfpmzhU+pS9ym2KdGpHfzdU90C5AItMXyJZi7Bz5YBHzezpSeV/U68AKYLAQPAKzzV1
	HZosl28w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t8x24-000000060RW-3YNs;
	Thu, 07 Nov 2024 07:34:20 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t8wx1-00000005zUr-0Sso
	for barebox@bombadil.infradead.org;
	Thu, 07 Nov 2024 07:29:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=n33NQJeL18/V/GfDeu7WS8Pqut633JD4RUJUsin/+jw=; b=CdWTlhkk89BJAN4y0vkwsLVGlB
	a/nQI3fc09Y6sHQEJu1MWAp3dGEt71FKExf2ncC1z9oYuyMQd+VBZMNW5oSiJZxFi199d51lP52TZ
	E+ZVcS9vK50pOPRaWgcNGHY6JqTa97LXVKmiV9hXC/Ik3enXWuOWYUJGGIO7sqCJLii4yiR4nzY3W
	6mEG0RYCDx4ffwLO0gEQOk/O+CaRVvzcrc0z7xd4R7o/K0Pk2Lfj9jdfzrp1GIPJYxl5t3XHWNyzY
	zuDmQ31IHwPlfelWO7qjAfmDCCcyfcqmgxt0LZ6O/6gihqZyahbgmR0YhOTDZgc0YDKbX+1EDwMku
	VXQ1euCQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t8wwl-0000000C4p1-1Sgv
	for barebox@lists.infradead.org;
	Thu, 07 Nov 2024 07:29:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t8wwf-0008TS-Re; Thu, 07 Nov 2024 08:28:45 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t8wwf-002QQ5-29;
	Thu, 07 Nov 2024 08:28:45 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t8wwf-007Xzz-1l;
	Thu, 07 Nov 2024 08:28:45 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  7 Nov 2024 08:28:44 +0100
Message-Id: <20241107072844.1797835-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241107_072852_724154_ECAB6F41 
X-CRM114-Status: GOOD (  10.74  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: k3: fix debug_ll
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

commit e64990099c8f ("debug_ll ns16550: Add base address argument to
register functions") missed the change for k3. Add the change to fix
k3 debug_ll support.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/mach/k3/debug_ll.h | 15 ++++++---------
 1 file changed, 6 insertions(+), 9 deletions(-)

diff --git a/include/mach/k3/debug_ll.h b/include/mach/k3/debug_ll.h
index 2433bb8f2e..29bd4015ab 100644
--- a/include/mach/k3/debug_ll.h
+++ b/include/mach/k3/debug_ll.h
@@ -16,19 +16,13 @@
 #define __K3_UART_BASE(soc, num) soc##_UART##num##_BASE
 #define K3_UART_BASE(soc, num) __K3_UART_BASE(soc, num)
 
-static inline uint8_t debug_ll_read_reg(int reg)
+static inline uint8_t debug_ll_read_reg(void __iomem *base, int reg)
 {
-	void __iomem *base = (void *)K3_UART_BASE(K3_DEBUG_SOC,
-					CONFIG_DEBUG_K3_UART_PORT);
-
 	return readb(base + (reg << 2));
 }
 
-static inline void debug_ll_write_reg(int reg, uint8_t val)
+static inline void debug_ll_write_reg(void __iomem *base, int reg, uint8_t val)
 {
-	void __iomem *base = (void *)K3_UART_BASE(K3_DEBUG_SOC,
-					CONFIG_DEBUG_K3_UART_PORT);
-
 	writeb(val, base + (reg << 2));
 }
 
@@ -41,7 +35,10 @@ static inline void debug_ll_init(void)
 
 static inline void PUTC_LL(int c)
 {
-	debug_ll_ns16550_putc(c);
+	void __iomem *base = (void *)K3_UART_BASE(K3_DEBUG_SOC,
+					CONFIG_DEBUG_K3_UART_PORT);
+
+	debug_ll_ns16550_putc(base, c);
 }
 
 #endif
-- 
2.39.5




Delivery-date: Wed, 28 May 2025 16:20:38 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKHe2-001DSW-17
	for lore@lore.pengutronix.de;
	Wed, 28 May 2025 16:20:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKHe1-0007nP-1Y
	for lore@pengutronix.de; Wed, 28 May 2025 16:20:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VNNf3cWGxYyQ5dXqV3Gnh5Gov4HzrpDg7KpLLMACrPA=; b=FZasm8DN26w3QYC7q/7zW70fK0
	lwr9CbfzDAxlStPvPzuMPNWYfdlaLMzf8Y2eozIr9tGiKq7MRyp5HJpNzxscZgn77zez/o+kOllJl
	s70Rot9i8RcRLZFTxcAZLkb3W9elSVhXi3k6dyVInUZqjbysQbShBr0zUdafwL6vxTwC7e55pDt20
	zzfVbZJWQ+5zcSp8XMd99zedrVD4gzGGksSu/wrOgupOq2vHLLEU4dFEbYauEJYqf0KnlQ2xAwsZ5
	DDCMWDs3ZguD4A0of/wwXalyUKv5ezVITEefgdlWHO4YwN6jmt/pcQ89bAIQRkcDl7DCGp782TR+q
	kT0pWFBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKHdT-0000000DNFG-2Y4H;
	Wed, 28 May 2025 14:20:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKHVL-0000000DKyG-2hoz
	for barebox@lists.infradead.org;
	Wed, 28 May 2025 14:11:42 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1uKHVJ-00011O-0c; Wed, 28 May 2025 16:11:37 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Wed, 28 May 2025 16:11:27 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250528-rk3588-optee-v2-9-63070238dd13@pengutronix.de>
References: <20250528-rk3588-optee-v2-0-63070238dd13@pengutronix.de>
In-Reply-To: <20250528-rk3588-optee-v2-0-63070238dd13@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Marco Felsch <m.felsch@pengutronix.de>
Cc: Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250528_071139_750382_69436CCC 
X-CRM114-Status: GOOD (  11.66  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 9/9] ARM: rockchip: fixup memory in device tree for TF-A
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add the memory nodes for the detected SDRAM configuration to the fdt
before passing it to the TF-A.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
Changes in v2:
- none
---
 arch/arm/mach-rockchip/atf.c | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/arch/arm/mach-rockchip/atf.c b/arch/arm/mach-rockchip/atf.c
index f4a71ef2dc8dffc6ceb4f97ee542f5b83858120b..c412e7adb9c93c63d0dfcc312d6a7374770ce2da 100644
--- a/arch/arm/mach-rockchip/atf.c
+++ b/arch/arm/mach-rockchip/atf.c
@@ -173,6 +173,26 @@ void rk3588_atf_load_bl31(void *fdt)
 	rockchip_atf_load_bl31(RK3588, rk3588_bl31_bin, rk3588_bl32_bin, fdt);
 }
 
+#ifdef CONFIG_ARCH_ROCKCHIP_ATF_PASS_FDT
+static int rk3588_fixup_mem(void *fdt)
+{
+	/* Use 4 blocks since rk3588 has 3 gaps in the address space */
+	unsigned long base[4];
+	unsigned long size[ARRAY_SIZE(base)];
+	phys_addr_t base_tmp[ARRAY_SIZE(base)];
+	resource_size_t size_tmp[ARRAY_SIZE(base_tmp)];
+	int i, n;
+
+	n = rk3588_ram_sizes(base_tmp, size_tmp, ARRAY_SIZE(base_tmp));
+	for (i = 0; i < n; i++) {
+		base[i] = base_tmp[i];
+		size[i] = size_tmp[i];
+	}
+
+	return fdt_fixup_mem(fdt, base, size, i);
+}
+#endif
+
 void __noreturn rk3588_barebox_entry(void *fdt)
 {
 	unsigned long membase, endmem;
@@ -195,6 +215,8 @@ void __noreturn rk3588_barebox_entry(void *fdt)
 			fdt_scratch = rk_scratch->fdt;
 		else
 			pr_warn("Failed to copy fdt to scratch: Continue without fdt\n");
+		if (fdt_scratch && rk3588_fixup_mem(fdt_scratch) != 0)
+			pr_warn("Failed to fixup memory nodes\n");
 #endif
 
 		rk3588_atf_load_bl31(fdt_scratch);

-- 
2.39.5




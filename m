Delivery-date: Mon, 26 May 2025 16:39:02 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uJYyk-000Y7U-2M
	for lore@lore.pengutronix.de;
	Mon, 26 May 2025 16:39:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uJYyj-0000yx-8J
	for lore@pengutronix.de; Mon, 26 May 2025 16:39:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=k7kknIdbWG3N1GknEKj0iFNnSOPr9PucfFLwyPTER+0=; b=DwNDH10QSip/YIV5rMGbR7swE2
	WHE3vAI6ZGRbgU+NZ+EFV+TrAp3U1sQkf3mTwHDV7aueHd0KyLLEZMqj/ARk0do0u4g4zCX9VtbB2
	BBY+jws/V14BZnGBPUKlGUzVKt1NlRDQ42Va734/+05aLPpoPIAQcKjrnQgaA4ACa+3g56HFLh2zO
	XGSA3izYYf+ZvSnhAhm4sQouqfd/+lXDeW5f9QTVlD2e4t+Oua1MLvlsUa8bU6r9Mt7t/hPRa+isT
	+AbKGMqc+Ml11b8K7jL9TO8sQyJutJy3TVgvjb0TPFTZp02EstaIxI1BGZY4TJ67ZNXUUASRUo1cb
	5/HlFpOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJYyF-000000092NJ-0U9L;
	Mon, 26 May 2025 14:38:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJYyA-000000092Jk-1Pxi
	for barebox@lists.infradead.org;
	Mon, 26 May 2025 14:38:28 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1uJYy7-0000OJ-Pz; Mon, 26 May 2025 16:38:23 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Mon, 26 May 2025 16:38:07 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250526-rk3588-optee-v1-1-5004995cbd03@pengutronix.de>
References: <20250526-rk3588-optee-v1-0-5004995cbd03@pengutronix.de>
In-Reply-To: <20250526-rk3588-optee-v1-0-5004995cbd03@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
Cc: Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250526_073826_428126_4EEC5109 
X-CRM114-Status: GOOD (  14.34  )
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
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/9] ARM: rockchip: fix formatting
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Replace spaces with tabs and remove a double newline. No semantic
changes.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 arch/arm/mach-rockchip/atf.c | 47 ++++++++++++++++++++++----------------------
 1 file changed, 23 insertions(+), 24 deletions(-)

diff --git a/arch/arm/mach-rockchip/atf.c b/arch/arm/mach-rockchip/atf.c
index d3a40e3c1b19db51b9bf620648176c54493c3afb..cfa6df043b34c0f36919048237c7ecf33dfe0724 100644
--- a/arch/arm/mach-rockchip/atf.c
+++ b/arch/arm/mach-rockchip/atf.c
@@ -101,7 +101,6 @@ static uintptr_t rk_load_optee(uintptr_t bl32, const void *bl32_image,
 
 	rk_scratch_save_optee_hdr(hdr);
 
-
 	memcpy((void *)bl32, bl32_image, bl32_size);
 
 	return bl32;
@@ -176,32 +175,32 @@ void rk3588_atf_load_bl31(void *fdt)
 
 void __noreturn rk3588_barebox_entry(void *fdt)
 {
-       unsigned long membase, endmem;
+	unsigned long membase, endmem;
 
-       membase = RK3588_DRAM_BOTTOM;
-       endmem = rk3588_ram0_size();
+	membase = RK3588_DRAM_BOTTOM;
+	endmem = rk3588_ram0_size();
 
-       rk_scratch = (void *)arm_mem_scratch(endmem);
+	rk_scratch = (void *)arm_mem_scratch(endmem);
 
-       if (current_el() == 3) {
-               rk3588_lowlevel_init();
-               rockchip_store_bootrom_iram(IOMEM(RK3588_IRAM_BASE));
+	if (current_el() == 3) {
+		rk3588_lowlevel_init();
+		rockchip_store_bootrom_iram(IOMEM(RK3588_IRAM_BASE));
 
-               /*
-                * The downstream TF-A doesn't cope with our device tree when
-                * CONFIG_OF_OVERLAY_LIVE is enabled, supposedly because it is
-                * too big for some reason. Otherwise it doesn't have any visible
-                * effect if we pass a device tree or not, except that the TF-A
-                * fills in the ethernet MAC address into the device tree.
-                * The upstream TF-A doesn't use the device tree at all.
-                *
-                * Pass NULL for now until we have a good reason to pass a real
-                * device tree.
-                */
-               rk3588_atf_load_bl31(NULL);
-               /* not reached when CONFIG_ARCH_ROCKCHIP_ATF */
-       }
+		/*
+		 * The downstream TF-A doesn't cope with our device tree when
+		 * CONFIG_OF_OVERLAY_LIVE is enabled, supposedly because it is
+		 * too big for some reason. Otherwise it doesn't have any visible
+		 * effect if we pass a device tree or not, except that the TF-A
+		 * fills in the ethernet MAC address into the device tree.
+		 * The upstream TF-A doesn't use the device tree at all.
+		 *
+		 * Pass NULL for now until we have a good reason to pass a real
+		 * device tree.
+		 */
+		rk3588_atf_load_bl31(NULL);
+		/* not reached when CONFIG_ARCH_ROCKCHIP_ATF */
+	}
 
-       optee_set_membase(rk_scratch_get_optee_hdr());
-       barebox_arm_entry(membase, endmem - membase, fdt);
+	optee_set_membase(rk_scratch_get_optee_hdr());
+	barebox_arm_entry(membase, endmem - membase, fdt);
 }

-- 
2.39.5




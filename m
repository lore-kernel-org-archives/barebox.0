Delivery-date: Mon, 26 May 2025 16:39:05 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uJYyl-000Y8F-1s
	for lore@lore.pengutronix.de;
	Mon, 26 May 2025 16:39:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uJYyl-00012S-0J
	for lore@pengutronix.de; Mon, 26 May 2025 16:39:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fZ9+mOuTzU6PioZ1vHx+BXMiyMtcFEAK3t6deqPiTR4=; b=02jeJi2hJPhYddanTkroZ10LGs
	FwGzUQla78EHx78I/Zrtn12+u5ZpnNjsejCJ9B/s+Mm8DiQA7+fCYHor38jc5K8RSLPQV17HLRzik
	KeiYAfQEtLvbq6pAaYbr69s49XdVRd0p8huE3yCys4QzWQYq/r5AdxKCFdld0ITYZkKdj05koARCN
	I1hw9fk0CpShEby+g49ExZFDLQ33u/u69VreGyBDNdB0vhg2gX+0NMlzNNdWN5KVanzzsefATml5e
	Whs76Tjl5ZAa6rV8jhnoybF3WgYPjvPeojFMqFxtnqh2QDjw2R5S3vjZS8eZh2xMGnpbWDUIMs98b
	PBNDiv6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJYyI-000000092RN-1jZ4;
	Mon, 26 May 2025 14:38:34 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJYyF-000000092N1-116r
	for barebox@bombadil.infradead.org;
	Mon, 26 May 2025 14:38:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=fZ9+mOuTzU6PioZ1vHx+BXMiyMtcFEAK3t6deqPiTR4=; b=LJCNPyObyaHxLRLIqyBfPyE6T4
	0PMUKCgq5WQkmwgDUFQ5j0jl1OOI8hXepfb/+3/jKekdq/TRrneo/+GmITelfDwT5K70AkONpatfn
	ToC5cd1aPlJTryEFjGovdWlUAdoohJytOkeDyHQDhnbJgdbjSuLQ2dkrGzCOGK6unnf0BaQ08lpts
	WHZjBpcLBSnu1ec/84zzeF3i+Fkdw8KZ85UCzfTAY6AQQCnXCtPGYKcUSK/q29tUt/15lsuUbzsck
	XeJt1l4EOn1a9I/TlnrnW2Qr7o4o+lTXOJsaYbKH0i+T1XXIAxAJhJCTyYLyodHcTwIQtS64eZpop
	Zz2ZH4tg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJYyB-00000001vXl-2Mo8
	for barebox@lists.infradead.org;
	Mon, 26 May 2025 14:38:29 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1uJYy8-0000OJ-1R; Mon, 26 May 2025 16:38:24 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Mon, 26 May 2025 16:38:15 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250526-rk3588-optee-v1-9-5004995cbd03@pengutronix.de>
References: <20250526-rk3588-optee-v1-0-5004995cbd03@pengutronix.de>
In-Reply-To: <20250526-rk3588-optee-v1-0-5004995cbd03@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
Cc: Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250526_153827_882191_70F7C9D9 
X-CRM114-Status: GOOD (  11.45  )
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
Subject: [PATCH 9/9] ARM: rockchip: fixup memory in device tree for TF-A
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add the memory nodes for the detected SDRAM configuration to the fdt
before passing it to the TF-A.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 arch/arm/mach-rockchip/atf.c | 22 ++++++++++++++++++++++
 1 file changed, 22 insertions(+)

diff --git a/arch/arm/mach-rockchip/atf.c b/arch/arm/mach-rockchip/atf.c
index 12cf13717b6972c2eafc5a044ae8d0b4de029c32..342af302aa25089acce3c91df0ea38cbe71e0add 100644
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
@@ -187,6 +207,8 @@ void __noreturn rk3588_barebox_entry(void *fdt)
 		rockchip_store_bootrom_iram(IOMEM(RK3588_IRAM_BASE));
 
 #ifdef CONFIG_ARCH_ROCKCHIP_ATF_PASS_FDT
+		if (rk3588_fixup_mem(fdt) != 0)
+			pr_warn("Failed to fixup memory\n");
 		rk3588_atf_load_bl31(fdt);
 #else
 		rk3588_atf_load_bl31(NULL);

-- 
2.39.5




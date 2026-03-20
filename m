Delivery-date: Fri, 20 Mar 2026 09:31:53 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w3VGr-002xsO-2Z
	for lore@lore.pengutronix.de;
	Fri, 20 Mar 2026 09:31:53 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w3VGq-0003I9-SM
	for lore@pengutronix.de; Fri, 20 Mar 2026 09:31:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=r7k//DhxbN75PkInB20UhqRPDBw3pwu+F2IHxqfzFKY=; b=EtHS0EZPxv+9KEnYGndGCCjPRw
	tqXOxNRJbSWCj6gscp6w1FnjiaDfrK2ObTCD4zg6bhKZiIjYC3EgBdjMdnm/9JWKcpKh9uDKFjWtj
	34kXMNtA0MY4rvuSV7xU0+k6qw0OkU54T3OaxGGGiDwWr2jYAaut6CIi52D6Cb55WEk+y0AD+EiiR
	WuvyGtQbiTyBgvwlD+AUceZnv9QTmQjdejVkG85yug2iNaoHIa5ORm70GZQhZPipLx6tQ3yAJ/hMg
	O6zq7ZlVZEwhmTAVrtr0uGOkLzSZizz5IglwDObcdBI58hVHeVSUCwtcavAuGDmy48QJafffJe6Sn
	AZ+n1BRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3VGQ-0000000CLpY-2nlS;
	Fri, 20 Mar 2026 08:31:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3VGL-0000000CLnE-34vM
	for barebox@lists.infradead.org;
	Fri, 20 Mar 2026 08:31:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w3VGK-00031Y-1I; Fri, 20 Mar 2026 09:31:20 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w3VGJ-001DBS-2H;
	Fri, 20 Mar 2026 09:31:19 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w3VGJ-0000000DiE9-2PIs;
	Fri, 20 Mar 2026 09:31:19 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 20 Mar 2026 09:31:21 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260320-compressed-firmware-rockchip-v1-5-7d03c7e39d2f@pengutronix.de>
References: <20260320-compressed-firmware-rockchip-v1-0-7d03c7e39d2f@pengutronix.de>
In-Reply-To: <20260320-compressed-firmware-rockchip-v1-0-7d03c7e39d2f@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773995479; l=6711;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=YXPKBODqdg7qfmbp4EWoSTLOsqJjZQXmJXym8P8GKG8=;
 b=ru3VJFXxmwthucooqZNw6rRVvrfeBgy6j8zVsc0U1TEeAqDpUna/NOiNmVatblikH9d7MM9DE
 9IgNHYKz15/DPlPwBq3ifxSuIJMN6uvpwI9mv+10EyekV72vpTnZBGw
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260320_013121_931712_2F2B4E24 
X-CRM114-Status: GOOD (  12.04  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 5/6] ARM: rockchip: separate physical DRAM start from
 usable start
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The RK3xxx_DRAM_BOTTOM macros define the first usable DRAM address, that
is the physical DRAM start plus the offset occupied by the TF-A. With
upcoming PBL mmu support we need both addresses, so separate them.
We use RK3xxx_DRAM_START for the physical start and add
ROCKCHIP_DRAM_TFA_CARVE_OUT where needed.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-rockchip/dmc.c | 24 ++++++++++++------------
 include/mach/rockchip/atf.h  | 24 +++++++++++++-----------
 2 files changed, 25 insertions(+), 23 deletions(-)

diff --git a/arch/arm/mach-rockchip/dmc.c b/arch/arm/mach-rockchip/dmc.c
index 318e99d8ba..9218f794f9 100644
--- a/arch/arm/mach-rockchip/dmc.c
+++ b/arch/arm/mach-rockchip/dmc.c
@@ -160,13 +160,13 @@ static size_t rockchip_ram(phys_addr_t membase, resource_size_t memsize,
 		 * RK3576 has internal registers below the DRAM start and thus
 		 * doesn't need any gaps in the DRAM space.
 		 */
-		base[0] = membase;
+		base[0] = membase + ROCKCHIP_DRAM_TFA_CARVE_OUT;
 		size[0] = memsize;
 
 		return 1;
 	}
 
-	base[i] = membase;
+	base[i] = membase + ROCKCHIP_DRAM_TFA_CARVE_OUT;
 	size[i] = min_t(resource_size_t, RK3588_INT_REG_START, memsize) - membase;
 	i++;
 
@@ -202,7 +202,7 @@ size_t rk3399_ram_sizes(phys_addr_t *base, resource_size_t *size, size_t n)
 
 	pr_debug("%s() = %llu\n", __func__, (u64)size);
 
-	return rockchip_ram(RK3399_DRAM_BOTTOM, memsize, RK3399_INT_REG_START, base, size, n);
+	return rockchip_ram(RK3399_DRAM_START, memsize, RK3399_INT_REG_START, base, size, n);
 }
 
 size_t rk3562_ram_sizes(phys_addr_t *base, resource_size_t *size, size_t n)
@@ -218,7 +218,7 @@ size_t rk3562_ram_sizes(phys_addr_t *base, resource_size_t *size, size_t n)
 
 	pr_debug("%s() = %llu\n", __func__, (u64)memsize);
 
-	return rockchip_ram(RK3562_DRAM_BOTTOM, memsize, RK3562_INT_REG_START, base, size, n);
+	return rockchip_ram(RK3562_DRAM_START, memsize, RK3562_INT_REG_START, base, size, n);
 }
 
 size_t rk3568_ram_sizes(phys_addr_t *base, resource_size_t *size, size_t n)
@@ -234,7 +234,7 @@ size_t rk3568_ram_sizes(phys_addr_t *base, resource_size_t *size, size_t n)
 
 	pr_debug("%s() = %llu\n", __func__, (u64)memsize);
 
-	return rockchip_ram(RK3568_DRAM_BOTTOM, memsize, RK3568_INT_REG_START, base, size, n);
+	return rockchip_ram(RK3568_DRAM_START, memsize, RK3568_INT_REG_START, base, size, n);
 }
 
 size_t rk3576_ram_sizes(phys_addr_t *base, resource_size_t *size, size_t n)
@@ -250,7 +250,7 @@ size_t rk3576_ram_sizes(phys_addr_t *base, resource_size_t *size, size_t n)
 
 	pr_debug("%s() = %llu\n", __func__, (u64)size);
 
-	return rockchip_ram(RK3576_DRAM_BOTTOM, memsize, RK3576_INT_REG_START, base, size, n);
+	return rockchip_ram(RK3576_DRAM_START, memsize, RK3576_INT_REG_START, base, size, n);
 }
 
 #define RK3588_PMUGRF_BASE 0xfd58a000
@@ -277,7 +277,7 @@ size_t rk3588_ram_sizes(phys_addr_t *base, resource_size_t *size, size_t n)
 
 	memsize = size1 + size2;
 
-	return rockchip_ram(RK3588_DRAM_BOTTOM, memsize, RK3588_INT_REG_START, base, size, n);
+	return rockchip_ram(RK3588_DRAM_START, memsize, RK3588_INT_REG_START, base, size, n);
 }
 
 static int rockchip_dmc_probe(struct device *dev)
@@ -335,28 +335,28 @@ static const struct rockchip_dmc_drvdata rk3399_drvdata = {
 	.os_reg2 = RK3399_PMUGRF_OS_REG2,
 	.os_reg3 = RK3399_PMUGRF_OS_REG3,
 	.internal_registers_start = RK3399_INT_REG_START,
-	.membase = RK3399_DRAM_BOTTOM,
+	.membase = RK3399_DRAM_START,
 };
 
 static const struct rockchip_dmc_drvdata rk3562_drvdata = {
 	.os_reg2 = RK3562_PMUGRF_OS_REG2,
 	.os_reg3 = RK3562_PMUGRF_OS_REG3,
 	.internal_registers_start = RK3562_INT_REG_START,
-	.membase = RK3562_DRAM_BOTTOM,
+	.membase = RK3562_DRAM_START,
 };
 
 static const struct rockchip_dmc_drvdata rk3568_drvdata = {
 	.os_reg2 = RK3568_PMUGRF_OS_REG2,
 	.os_reg3 = RK3568_PMUGRF_OS_REG3,
 	.internal_registers_start = RK3568_INT_REG_START,
-	.membase = RK3568_DRAM_BOTTOM,
+	.membase = RK3568_DRAM_START,
 };
 
 static const struct rockchip_dmc_drvdata rk3576_drvdata = {
 	.os_reg2 = RK3576_PMUGRF_OS_REG2,
 	.os_reg3 = RK3576_PMUGRF_OS_REG3,
 	.internal_registers_start = RK3576_INT_REG_START,
-	.membase = RK3576_DRAM_BOTTOM,
+	.membase = RK3576_DRAM_START,
 };
 
 static const struct rockchip_dmc_drvdata rk3588_drvdata = {
@@ -365,7 +365,7 @@ static const struct rockchip_dmc_drvdata rk3588_drvdata = {
 	.os_reg4 = RK3588_PMUGRF_OS_REG4,
 	.os_reg5 = RK3588_PMUGRF_OS_REG5,
 	.internal_registers_start = RK3588_INT_REG_START,
-	.membase = RK3588_DRAM_BOTTOM,
+	.membase = RK3588_DRAM_START,
 };
 
 static struct of_device_id rockchip_dmc_dt_ids[] = {
diff --git a/include/mach/rockchip/atf.h b/include/mach/rockchip/atf.h
index 5454d394a1..c2daaa662c 100644
--- a/include/mach/rockchip/atf.h
+++ b/include/mach/rockchip/atf.h
@@ -3,12 +3,14 @@
 #ifndef __MACH_ATF_H
 #define __MACH_ATF_H
 
-/* First usable DRAM address. Lower mem is used for ATF and OP-TEE */
-#define RK3399_DRAM_BOTTOM		0xa00000
-#define RK3562_DRAM_BOTTOM		0xa00000
-#define RK3568_DRAM_BOTTOM		0xa00000
-#define RK3576_DRAM_BOTTOM		0x40a00000
-#define RK3588_DRAM_BOTTOM		0xa00000
+/* The first 10MiB of DRAM are used by the TF-A */
+#define ROCKCHIP_DRAM_TFA_CARVE_OUT	0xa00000
+
+#define RK3399_DRAM_START		0x0
+#define RK3562_DRAM_START		0x0
+#define RK3568_DRAM_START		0x0
+#define RK3576_DRAM_START		0x40000000
+#define RK3588_DRAM_START		0x0
 
 /*
  * The tee.bin image has an OP-TEE specific header that describes the
@@ -36,11 +38,11 @@
  * board lowlevel code should relocate barebox here. This is where
  * OP-TEE jumps to after initialization.
  */
-#define RK3399_BAREBOX_LOAD_ADDRESS	(RK3399_DRAM_BOTTOM + 1024*1024)
-#define RK3562_BAREBOX_LOAD_ADDRESS	(RK3562_DRAM_BOTTOM + 1024*1024)
-#define RK3568_BAREBOX_LOAD_ADDRESS	(RK3568_DRAM_BOTTOM + 1024*1024)
-#define RK3576_BAREBOX_LOAD_ADDRESS	(RK3576_DRAM_BOTTOM + 1024*1024)
-#define RK3588_BAREBOX_LOAD_ADDRESS	(RK3588_DRAM_BOTTOM + 1024*1024)
+#define RK3399_BAREBOX_LOAD_ADDRESS	(RK3399_DRAM_START + ROCKCHIP_DRAM_TFA_CARVE_OUT + 1024*1024)
+#define RK3562_BAREBOX_LOAD_ADDRESS	(RK3562_DRAM_START + ROCKCHIP_DRAM_TFA_CARVE_OUT + 1024*1024)
+#define RK3568_BAREBOX_LOAD_ADDRESS	(RK3568_DRAM_START + ROCKCHIP_DRAM_TFA_CARVE_OUT + 1024*1024)
+#define RK3576_BAREBOX_LOAD_ADDRESS	(RK3576_DRAM_START + ROCKCHIP_DRAM_TFA_CARVE_OUT + 1024*1024)
+#define RK3588_BAREBOX_LOAD_ADDRESS	(RK3588_DRAM_START + ROCKCHIP_DRAM_TFA_CARVE_OUT + 1024*1024)
 
 void __noreturn rk3562_barebox_entry(void *fdt);
 void __noreturn rk3568_barebox_entry(void *fdt);

-- 
2.47.3




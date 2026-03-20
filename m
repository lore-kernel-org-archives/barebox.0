Delivery-date: Fri, 20 Mar 2026 09:31:53 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w3VGq-002xro-34
	for lore@lore.pengutronix.de;
	Fri, 20 Mar 2026 09:31:52 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w3VGq-0003HN-7Z
	for lore@pengutronix.de; Fri, 20 Mar 2026 09:31:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bNjGmn/mKe5UD2SplyCO+Bmj5zTzSCtE2iOakH/NXis=; b=lWSilZMBmv/Tjg/aYjmNE5zoLc
	50h3FFm8z2FL2rTxXp7181THVNH6E1RuxENhAM21tz2CtRRcUfrXuqFAi8iBExxpqGY88JqOrcfB7
	iuu6BbM+Hy8pEk0Aw2V0MMn+55nWflhaRcbJPGa7Sb9mfWLatQ0jL0WqHXl6UQKs/HNjn2oH3sP9A
	KmHufi5KI6HG3Qci2H73dESk4trvfr26sgyRc2qdwbUdKCj5MHNwzKLYULjEMvgf8ohyCz7Tr4B0U
	lRvdd8arVh/ytZ8ln8AjdEtaDvKQl9n8OwmkZ8wnJZ7Kkv1qMdwPPL1gSF5qSvf+thdIRoG9/Zbt1
	Cb7VRSAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3VGQ-0000000CLpH-1P35;
	Fri, 20 Mar 2026 08:31:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3VGL-0000000CLnB-35LR
	for barebox@lists.infradead.org;
	Fri, 20 Mar 2026 08:31:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w3VGJ-00031T-UZ; Fri, 20 Mar 2026 09:31:19 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w3VGJ-001DBO-26;
	Fri, 20 Mar 2026 09:31:19 +0100
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1w3VGJ-0000000DiE9-2LeB;
	Fri, 20 Mar 2026 09:31:19 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 20 Mar 2026 09:31:18 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260320-compressed-firmware-rockchip-v1-2-7d03c7e39d2f@pengutronix.de>
References: <20260320-compressed-firmware-rockchip-v1-0-7d03c7e39d2f@pengutronix.de>
In-Reply-To: <20260320-compressed-firmware-rockchip-v1-0-7d03c7e39d2f@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773995479; l=4025;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=AV4SDiW7jbV09wGDD/waUO8YopwjSZMR0kJ+9MxTA2M=;
 b=JElMoGmZbfd4/d6ms5S6nKZbSbuQmRVudpkc50gO8C2jNe4h7F54dd/Yw2w77xKtL0LsSjBOW
 xIwho3f4ZQIAjw8CGhGqUUtb3jsDZilcNOqr1Bt+iJy2x4MlPBWTqAk
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260320_013121_778734_AB9139E7 
X-CRM114-Status: GOOD (  11.22  )
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
Subject: [PATCH 2/6] ARM: rockchip: atf: make all memory banks available
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The FDT we pass to OP-TEE needs all memory banks, not only the first
one. Passing such a FDT to OP-TEE is currently only implemented for
RK3588, but in preparation to support that for other SoCs make all
memory banks available to atf.c

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-rockchip/atf.c | 42 ++++++++++++++++++++++--------------------
 1 file changed, 22 insertions(+), 20 deletions(-)

diff --git a/arch/arm/mach-rockchip/atf.c b/arch/arm/mach-rockchip/atf.c
index cf232e4f6e..4d90aeff49 100644
--- a/arch/arm/mach-rockchip/atf.c
+++ b/arch/arm/mach-rockchip/atf.c
@@ -127,6 +127,9 @@ static uintptr_t rk_load_optee(uintptr_t bl32, struct fwobj *bl32_fw)
 	return bl32;
 }
 
+static phys_addr_t membase[ROCKCHIP_MAX_DRAM_RESOURCES];
+static resource_size_t memsize[ROCKCHIP_MAX_DRAM_RESOURCES];
+static int n_mem_resources;
 static uintptr_t barebox_load_address; /* where barebox is loaded and started */
 static uintptr_t optee_load_address; /* standard SoC specific OP-TEE load address */
 static struct fwobj bl31; /* TF-A in barebox image */
@@ -168,11 +171,11 @@ void rk3562_atf_load_bl31(void *fdt)
 
 void __noreturn rk3562_barebox_entry(void *fdt)
 {
-	phys_addr_t membase, memend;
-	resource_size_t memsize;
+	phys_addr_t memend;
 
-	rk3562_ram_sizes(&membase, &memsize, 1);
-	memend = membase + memsize;
+	n_mem_resources = rk3562_ram_sizes(membase, memsize, ROCKCHIP_MAX_DRAM_RESOURCES);
+
+	memend = membase[0] + memsize[0];
 
 	rk_scratch = (void *)arm_mem_scratch(memend);
 
@@ -196,7 +199,7 @@ void __noreturn rk3562_barebox_entry(void *fdt)
 	}
 
 	optee_set_membase(rk_scratch_get_optee_hdr());
-	barebox_arm_entry(membase, memsize, fdt);
+	barebox_arm_entry(membase[0], memsize[0], fdt);
 }
 
 void rk3568_atf_load_bl31(void *fdt)
@@ -207,11 +210,11 @@ void rk3568_atf_load_bl31(void *fdt)
 
 void __noreturn rk3568_barebox_entry(void *fdt)
 {
-	phys_addr_t membase, memend;
-	resource_size_t memsize;
+	phys_addr_t memend;
+
+	n_mem_resources = rk3568_ram_sizes(membase, memsize, ROCKCHIP_MAX_DRAM_RESOURCES);
 
-	rk3568_ram_sizes(&membase, &memsize, 1);
-	memend = membase + memsize;
+	memend = membase[0] + memsize[0];
 
 	rk_scratch = (void *)arm_mem_scratch(memend);
 
@@ -235,7 +238,7 @@ void __noreturn rk3568_barebox_entry(void *fdt)
 	}
 
 	optee_set_membase(rk_scratch_get_optee_hdr());
-	barebox_arm_entry(membase, memsize, fdt);
+	barebox_arm_entry(membase[0], memsize[0], fdt);
 }
 
 void rk3588_atf_load_bl31(void *fdt)
@@ -278,12 +281,11 @@ static int rk3588_open_fdt(const void *fdt, void *buf, int bufsize)
 
 void __noreturn rk3588_barebox_entry(void *fdt)
 {
-	phys_addr_t membase, memend;
-	resource_size_t memsize;
+	phys_addr_t memend;
 
-	rk3588_ram_sizes(&membase, &memsize, 1);
+	n_mem_resources = rk3588_ram_sizes(membase, memsize, ROCKCHIP_MAX_DRAM_RESOURCES);
 
-	memend = membase + memsize;
+	memend = membase[0] + memsize[0];
 
 	rk_scratch = (void *)arm_mem_scratch(memend);
 
@@ -309,7 +311,7 @@ void __noreturn rk3588_barebox_entry(void *fdt)
 	}
 
 	optee_set_membase(rk_scratch_get_optee_hdr());
-	barebox_arm_entry(membase, memsize, fdt);
+	barebox_arm_entry(membase[0], memsize[0], fdt);
 }
 
 void rk3576_atf_load_bl31(void *fdt)
@@ -320,11 +322,11 @@ void rk3576_atf_load_bl31(void *fdt)
 
 void __noreturn rk3576_barebox_entry(void *fdt)
 {
-	phys_addr_t membase, memend;
-	resource_size_t memsize;
+	phys_addr_t memend;
+
+	n_mem_resources = rk3576_ram_sizes(membase, memsize, ROCKCHIP_MAX_DRAM_RESOURCES);
 
-	rk3576_ram_sizes(&membase, &memsize, 1);
-	memend = membase + memsize;
+	memend = membase[0] + memsize[0];
 
 	rk_scratch = (void *)arm_mem_scratch(memend);
 
@@ -348,5 +350,5 @@ void __noreturn rk3576_barebox_entry(void *fdt)
 	}
 
 	optee_set_membase(rk_scratch_get_optee_hdr());
-	barebox_arm_entry(membase, memsize, fdt);
+	barebox_arm_entry(membase[0], memsize[0], fdt);
 }

-- 
2.47.3




Delivery-date: Wed, 28 May 2025 16:20:35 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKHdz-001DQl-2q
	for lore@lore.pengutronix.de;
	Wed, 28 May 2025 16:20:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKHdz-0007lH-3u
	for lore@pengutronix.de; Wed, 28 May 2025 16:20:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7nvZXrGW/ZVN3YrDH6v8/ub9KHQWmJOLOhdKPF+iASE=; b=YuGbF6RMhT2NG7g1kd9JaceUL0
	IKy2J2YBvP4KypmEkMK91m71ZU8q0HF/5bKHPZkeU+njlhopXk6fA+9JujbYdZHnqUOh5EKVFBR9w
	uesb/eS4W1EtZAhSwbPvZdxwlSwCAM0F5RpNWu2GpwyhKLv3vvHNJP3gcyOkcd2DMg27QdmMx7YZN
	Ghsp0+GF+SsSyfbdPNpqJVITfckRNE/mQPXi8piFUlymXQt6tEZNKCxXlmsxG/QRmt3pQd7On7dfO
	uvpv1y+56JZfwf5a43FFkvi9vDYC1ttXCSQQV0J+8OVfv4Oc7qKqoVyGekc0hleW6WfTfkmSaZyxe
	7nllxn0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKHdW-0000000DNJo-1mBz;
	Wed, 28 May 2025 14:20:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKHVM-0000000DKyE-02fN
	for barebox@lists.infradead.org;
	Wed, 28 May 2025 14:11:43 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1uKHVI-00011O-UY; Wed, 28 May 2025 16:11:36 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Wed, 28 May 2025 16:11:25 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250528-rk3588-optee-v2-7-63070238dd13@pengutronix.de>
References: <20250528-rk3588-optee-v2-0-63070238dd13@pengutronix.de>
In-Reply-To: <20250528-rk3588-optee-v2-0-63070238dd13@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Marco Felsch <m.felsch@pengutronix.de>
Cc: Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250528_071140_058341_D8AB7B26 
X-CRM114-Status: GOOD (  11.62  )
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
Subject: [PATCH v2 7/9] ARM: rockchip: dmc: add rk3588_ram_sizes to get
 full ram size
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The PBL has to pass a full description of the SDRAM to OP-TEE to allow
OP-TEE to handle dynamic shared memory in the entire SDRAM. Thus, the
PBL needs to read the full memory configuration.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
Changes in v2:
- none
---
 arch/arm/mach-rockchip/dmc.c | 37 ++++++++++++++++++++++++++++++++++---
 include/mach/rockchip/dmc.h  |  2 ++
 2 files changed, 36 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-rockchip/dmc.c b/arch/arm/mach-rockchip/dmc.c
index 62a7ef8f1e38e989e84f08f6f4a6586be3e85532..260b8be9c7da9e8f83323822eab92a439ef4e2ef 100644
--- a/arch/arm/mach-rockchip/dmc.c
+++ b/arch/arm/mach-rockchip/dmc.c
@@ -171,11 +171,12 @@ resource_size_t rk3568_ram0_size(void)
 #define RK3588_PMUGRF_OS_REG4           0x210
 #define RK3588_PMUGRF_OS_REG5           0x214
 
-resource_size_t rk3588_ram0_size(void)
+size_t rk3588_ram_sizes(phys_addr_t *base, resource_size_t *size, size_t n)
 {
 	void __iomem *pmugrf = IOMEM(RK3588_PMUGRF_BASE);
 	u32 sys_reg2, sys_reg3, sys_reg4, sys_reg5;
-	resource_size_t size, size1, size2;
+	resource_size_t memsize, size1, size2;
+	size_t i = 0;
 
 	sys_reg2 = readl(pmugrf + RK3588_PMUGRF_OS_REG2);
 	sys_reg3 = readl(pmugrf + RK3588_PMUGRF_OS_REG3);
@@ -187,7 +188,37 @@ resource_size_t rk3588_ram0_size(void)
 
 	pr_info("%s() size1 = 0x%08llx, size2 = 0x%08llx\n", __func__, (u64)size1, (u64)size2);
 
-	size = min_t(resource_size_t, RK3588_INT_REG_START, size1 + size2);
+	memsize = size1 + size2;
+
+	base[i] = 0xa00000;
+	size[i] = min_t(resource_size_t, RK3588_INT_REG_START, memsize) - 0xa00000;
+	i++;
+
+	if (i < n && memsize > SZ_4G) {
+		base[i] = SZ_4G;
+		size[i] = min_t(unsigned long, DRAM_GAP1_START, memsize) - SZ_4G;
+		i++;
+	}
+	if (i < n && memsize > DRAM_GAP1_END) {
+		base[i] = DRAM_GAP1_END;
+		size[i] = min_t(unsigned long, DRAM_GAP2_START, memsize) - DRAM_GAP1_END;
+		i++;
+	}
+	if (i < n && memsize > DRAM_GAP2_END) {
+		base[i] = DRAM_GAP2_END;
+		size[i] = memsize - DRAM_GAP2_END;
+		i++;
+	}
+
+	return i;
+}
+
+resource_size_t rk3588_ram0_size(void)
+{
+	phys_addr_t base;
+	resource_size_t size;
+
+	rk3588_ram_sizes(&base, &size, 1);
 
 	return size;
 }
diff --git a/include/mach/rockchip/dmc.h b/include/mach/rockchip/dmc.h
index 3df9aa5e9c87857e9ac3994e0e40c60d8c91b0a4..bb5a5afd02417920446c729b96eeb90f1fa0ead0 100644
--- a/include/mach/rockchip/dmc.h
+++ b/include/mach/rockchip/dmc.h
@@ -87,4 +87,6 @@ resource_size_t rk3399_ram0_size(void);
 resource_size_t rk3568_ram0_size(void);
 resource_size_t rk3588_ram0_size(void);
 
+size_t rk3588_ram_sizes(phys_addr_t *base, resource_size_t *size, size_t n);
+
 #endif

-- 
2.39.5




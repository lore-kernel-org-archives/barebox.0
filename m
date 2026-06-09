Delivery-date: Tue, 09 Jun 2026 14:42:21 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wWvmf-003zK9-0G
	for lore@lore.pengutronix.de;
	Tue, 09 Jun 2026 14:42:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wWvme-0001eX-C3
	for lore@pengutronix.de; Tue, 09 Jun 2026 14:42:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hmbUrrPA2b3WAMW1Ap2p4SlkQWzDwQ/ClB51ZXvEJA0=; b=XOFDbh5EZHOy0X
	60pKMivpY0YXiz0rIEoHtI9To6Bb+JmfV1EzQ4okVpifz87anSKfGuJckq6Kz2xQYDahIckeyMhbK
	BAQIQ6bZd7J44pv5YoNTdkf2wCFaK0Iuor5Qiyim88n5tG4VWwlSyIESg5T04CoWRYCOPkPaSrei/
	fY/yD6JP7q/J+R1hndfjNQL0Y1kca95OtNLxRxbbx7zQjX6tlKWV01Nm8FICZnPnMdgPmrt+tP+Ap
	mpAtw3M36HNWjekXmgeLjAR+HOhJhbuIuoQMw8wPlWFVZcWM3fT0JLs3JoJXiFe3b3LqSxKHfiE5L
	wkQnRluCSVsc+KKNry1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWvlJ-00000005X1J-2uy5;
	Tue, 09 Jun 2026 12:40:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wWvlF-00000005X0m-3ids
	for barebox@lists.infradead.org;
	Tue, 09 Jun 2026 12:40:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wWvlC-0001Oj-Tr; Tue, 09 Jun 2026 14:40:50 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wWvlC-001tEF-2p;
	Tue, 09 Jun 2026 14:40:50 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wWvlC-000000014DQ-3Bqh;
	Tue, 09 Jun 2026 14:40:50 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  9 Jun 2026 14:40:49 +0200
Message-ID: <20260609124050.254522-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260609_054053_921978_5F210890 
X-CRM114-Status: GOOD (  10.10  )
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
Cc: Michael Tretter <mtr@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: rockchip: tfa: pass NULL fdt when there is none
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We pass an address to the TF-A even when there is none. The FDT could be
absent when either CONFIG_ARCH_ROCKCHIP_ATF_PASS_FDT is disabled or
copying it to the scratch area fails. Instead of passing an invalid FDT
in this case, explicitly pass a NULL pointer.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-rockchip/atf.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-rockchip/atf.c b/arch/arm/mach-rockchip/atf.c
index 74b8cdc2f4..0b4566f8ae 100644
--- a/arch/arm/mach-rockchip/atf.c
+++ b/arch/arm/mach-rockchip/atf.c
@@ -271,6 +271,8 @@ void __noreturn rk3588_barebox_entry(void *fdt)
 	rk_scratch = (void *)arm_mem_scratch(memend);
 
 	if (current_el() == 3) {
+		void *fdt_bl31 = NULL;
+
 		rk3588_lowlevel_init();
 		rockchip_store_bootrom_iram(IOMEM(RK3588_IRAM_BASE));
 		ROCKCHIP_GET_ADDRESSES(RK3588, rk3588_bl31_bin, rk3588_bl32_bin);
@@ -281,9 +283,11 @@ void __noreturn rk3588_barebox_entry(void *fdt)
 			ret = rockchip_create_optee_fdt(rk_scratch->fdt, sizeof(rk_scratch->fdt));
 			if (ret)
 				pr_warn("Failed to create OP-TEE Device tree\n");
+			else
+				fdt_bl31 = rk_scratch->fdt;
 		}
 
-		rockchip_atf_load_bl31(rk_scratch->fdt);
+		rockchip_atf_load_bl31(fdt_bl31);
 		/* not reached when CONFIG_ARCH_ROCKCHIP_ATF */
 	}
 
-- 
2.47.3




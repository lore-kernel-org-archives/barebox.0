Delivery-date: Fri, 11 Apr 2025 17:26:11 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u3GGh-00BIMl-0z
	for lore@lore.pengutronix.de;
	Fri, 11 Apr 2025 17:26:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u3GGg-0005MN-NW
	for lore@pengutronix.de; Fri, 11 Apr 2025 17:26:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=NbsDxC5QoICvB+UAGfSyYA/Wo+esJ6zbuw03n4G4Qbg=; b=MJClqp04Q02WWBFZeJGj26Yd8V
	ssgnVGd2E7U6x64pDTEYYkOqQxiNmkMeafoMAVTFfQeFljDdcgh/rCdQ9GB/uzr+MasX77iG+T/lA
	kp7jCEj0xWKbYi8tZ4x0sSdmbxmJY1ri3x1V0+gH/HVCgI1iZHv0nQ5TWBZsGPmbfRI2hLiyWLiht
	W2wzCGoUWuPOJFfZEtcy3dQlO3WGS39gtN/ppgMIq6uY+bnwhiGFnREflpOXVD+yhIVnqkEOwzXvf
	5wOfOMqUclNscnLh29t+2di9+yZb5wxPdt7R6uUhWZmZ3RS0GdYTEOoLOIV1FudOxgld0kTOBqwLK
	Vg8Pw6Pg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u3GFw-0000000EEYD-2RTy;
	Fri, 11 Apr 2025 15:25:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u3GB5-0000000EDxk-3l82
	for barebox@lists.infradead.org;
	Fri, 11 Apr 2025 15:20:26 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1u3GB2-0003uV-5C; Fri, 11 Apr 2025 17:20:20 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Michael Tretter <m.tretter@pengutronix.de>
Date: Fri, 11 Apr 2025 17:20:20 +0200
Message-Id: <20250411152020.2783640-1-m.tretter@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250411_082023_936491_77159829 
X-CRM114-Status: GOOD (  14.22  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: rockchip: dmc: fix DRAM for sizes 16+ GiB on rk3588
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

RK3588 has two known memory gaps when using 16+ GiB DRAM,
[0x3fc000000, 0x3fc500000) and [0x3fff00000, 0x400000000).

Skip both gaps when initializing the DRAM on rk3588 to avoid running
into an exception when running memtest on an rk3588 board with 16+ GiB
DRAM.

The information about the gaps is taken from a patch by Jonas Karlman to
the U-Boot mailing list [0].

[0] https://lore.kernel.org/all/20250405153832.1427549-5-jonas@kwiboo.se/

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
The start and end addresses of the gaps probably should be put into of
rockchip_dmc_drvdata and only set for the rk3588. Any suggestion how to
implement this more nicely would be very welcome.
---
 arch/arm/mach-rockchip/dmc.c | 20 ++++++++++++++++++--
 1 file changed, 18 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-rockchip/dmc.c b/arch/arm/mach-rockchip/dmc.c
index 86e61f311661..cf63fdb5a8bb 100644
--- a/arch/arm/mach-rockchip/dmc.c
+++ b/arch/arm/mach-rockchip/dmc.c
@@ -27,6 +27,12 @@
 #define RK3568_INT_REG_START		RK3399_INT_REG_START
 #define RK3588_INT_REG_START		RK3399_INT_REG_START
 
+/* RK3588 has two known memory gaps when using 16+ GiB DRAM */
+#define DRAM_GAP1_START         0x3fc000000
+#define DRAM_GAP1_END           0x3fc500000
+#define DRAM_GAP2_START         0x3fff00000
+#define DRAM_GAP2_END           0x400000000
+
 struct rockchip_dmc_drvdata {
 	unsigned int os_reg2;
 	unsigned int os_reg3;
@@ -220,9 +226,19 @@ static int rockchip_dmc_probe(struct device *dev)
 	arm_add_mem_device("ram0", membase,
 		min_t(resource_size_t, drvdata->internal_registers_start, memsize) - membase);
 
-	/* ram1, remaining RAM beyond 32bit space */
+	/* ram1, RAM beyond 32bit space up to first gap */
 	if (memsize > SZ_4G)
-		arm_add_mem_device("ram1", SZ_4G, memsize - SZ_4G);
+		arm_add_mem_device("ram1", SZ_4G,
+			min_t(resource_size_t, DRAM_GAP1_START, memsize) - SZ_4G);
+
+	/* ram2, RAM between first and second gap */
+	if (memsize > DRAM_GAP1_END)
+		arm_add_mem_device("ram2", DRAM_GAP1_END,
+			min_t(resource_size_t, DRAM_GAP2_START, memsize) - DRAM_GAP1_END);
+
+	/* ram3, remaining RAM after second gap */
+	if (memsize > DRAM_GAP2_END)
+		arm_add_mem_device("ram3", DRAM_GAP2_END, memsize - DRAM_GAP2_END);
 
 	return 0;
 }
-- 
2.39.5




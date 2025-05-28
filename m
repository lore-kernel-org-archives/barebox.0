Delivery-date: Wed, 28 May 2025 16:20:35 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKHdz-001DQ5-1B
	for lore@lore.pengutronix.de;
	Wed, 28 May 2025 16:20:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKHdy-0007jb-E0
	for lore@pengutronix.de; Wed, 28 May 2025 16:20:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zvmAlxbJRhk/kkhZ2qOqDeL6dRS3ntKZPViQ8XSze/w=; b=Co0RztFQiVCy5K3DIer0iCaVj/
	OsTm8qYUhj0lEBp7P1gsyRJ/WLNUh5n/t6zjpDMXKzA7qaiT2N/woCgcq6bZMGrVRfkhRI5WN8pO8
	XhpciePItT8wKeqy1S1onm0bhRP19g41z0wPASSI3dqH1mQHhXDDW/Hr6scjImB6aciCP54fLlJdc
	KiBYh6rqQ27RM/iP2PV080OdotxADcUAhCvDFiqHNO+9t634D9Cwwwrf3/F80R/y2de3XeV4ooweA
	9920x56ixULpylozLe/jSk+qHbyBgS2fw3DaOoC8epiEmpLWBnNwiLQ8Jw1FHTAOfFkLt9IzqovuA
	ysWSUjcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKHdU-0000000DNGb-36WG;
	Wed, 28 May 2025 14:20:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKHVL-0000000DKy7-2I1D
	for barebox@lists.infradead.org;
	Wed, 28 May 2025 14:11:43 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1uKHVI-00011O-On; Wed, 28 May 2025 16:11:36 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Wed, 28 May 2025 16:11:20 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250528-rk3588-optee-v2-2-63070238dd13@pengutronix.de>
References: <20250528-rk3588-optee-v2-0-63070238dd13@pengutronix.de>
In-Reply-To: <20250528-rk3588-optee-v2-0-63070238dd13@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Marco Felsch <m.felsch@pengutronix.de>
Cc: Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250528_071139_707893_347459D3 
X-CRM114-Status: GOOD (  10.13  )
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
Subject: [PATCH v2 2/9] ARM: rockchip: dmc: use RK3588_INT_REG_START for
 rk3588
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

While RK3588_INT_REG_START and RK3568_INT_REG_START are the same value,
the implementation for rk3588 should use RK3588_INT_REG_START to avoid
confusion.

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>
Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
Changes in v2:
- none
---
 arch/arm/mach-rockchip/dmc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-rockchip/dmc.c b/arch/arm/mach-rockchip/dmc.c
index cf63fdb5a8bb6ea5a7474fcaa1590d4a7428ceab..62a7ef8f1e38e989e84f08f6f4a6586be3e85532 100644
--- a/arch/arm/mach-rockchip/dmc.c
+++ b/arch/arm/mach-rockchip/dmc.c
@@ -187,7 +187,7 @@ resource_size_t rk3588_ram0_size(void)
 
 	pr_info("%s() size1 = 0x%08llx, size2 = 0x%08llx\n", __func__, (u64)size1, (u64)size2);
 
-	size = min_t(resource_size_t, RK3568_INT_REG_START, size1 + size2);
+	size = min_t(resource_size_t, RK3588_INT_REG_START, size1 + size2);
 
 	return size;
 }

-- 
2.39.5




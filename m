Delivery-date: Mon, 26 May 2025 16:38:59 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uJYyh-000Y65-0B
	for lore@lore.pengutronix.de;
	Mon, 26 May 2025 16:38:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uJYyg-0000xb-HJ
	for lore@pengutronix.de; Mon, 26 May 2025 16:38:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HwnVgOKf+C7X41sv30L2Vm5+LG6CxFrdsitWap89ya0=; b=e4+7YE+RBBvA2lk0U1kBpM2bKc
	E0Z7rZC00SNjedjAmj7DTp4Px789K/7M1PuXjAFWZmDXZ2Hp4OyRA8t2PR692r8sRGwZHEXCTm8mF
	qXHeJgeV+XPTrDm7Qs+XAjpfvvcNtRXunYrhwfwic9iY7c+yLp8Ly368SAfampeBCUKGkWEiVQAsG
	XrQGlWhTc0pwP5ZvTa2EwiT8yzGklDP//JbYKPvtauU+5ZXNenlcCuPT8rpRrLDjStTtL6C4BOSv6
	aZNjk0QzmmZOGmZhXiy4owRldPUPfdJp4ouLv/zLb5WHL9odcn04i2wqcgFTV/zBSjY08B+8yTKUX
	xOkYGmmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJYyD-000000092Lw-03jE;
	Mon, 26 May 2025 14:38:29 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJYyA-000000092Jl-15Mu
	for barebox@lists.infradead.org;
	Mon, 26 May 2025 14:38:27 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1uJYy7-0000OJ-Qv; Mon, 26 May 2025 16:38:23 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Mon, 26 May 2025 16:38:08 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250526-rk3588-optee-v1-2-5004995cbd03@pengutronix.de>
References: <20250526-rk3588-optee-v1-0-5004995cbd03@pengutronix.de>
In-Reply-To: <20250526-rk3588-optee-v1-0-5004995cbd03@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
Cc: Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250526_073826_306819_5EE8B6DE 
X-CRM114-Status: UNSURE (   9.95  )
X-CRM114-Notice: Please train this message.
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
Subject: [PATCH 2/9] ARM: rockchip: dmc: use RK3588_INT_REG_START for
 rk3588
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

While RK3588_INT_REG_START and RK3568_INT_REG_START are the same value,
the implementation for rk3588 should use RK3588_INT_REG_START to avoid
confusion.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
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




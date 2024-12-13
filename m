Delivery-date: Fri, 13 Dec 2024 22:01:51 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tMCnG-007jMK-1a
	for lore@lore.pengutronix.de;
	Fri, 13 Dec 2024 22:01:51 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tMCnG-0001K6-FE
	for lore@pengutronix.de; Fri, 13 Dec 2024 22:01:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=g0ubQp78dfwk3hth6uC5g9MyqLDt2VnlaL4FSnzpnzs=; b=iwazEzd5hsR0cO4wzuTHDwCvAZ
	OnWd0Wpnj03UHaNw32EtH4RWcSyRK5d1N4EzrTkYU+HUUqZuAs6KcjPsHAY1c/B02DW9yTvZRP+JT
	vlTaz08hXx3QkalCm0BZu2chQT4lN44YA3d2QrU1vVEFhweKd5UTORxFa/8Doonq42Fkrl6E2SEcQ
	OXBry5KcTcJEmvlQkb95etLaCchYmu4zT2fOLsTEeHOpszVtX6+4cgVT3uejK761OL92vjDcZETxs
	e3kpEgI94zBo7AN5AL75gRlh3/K1OpfQq6QRdJBpxE64IyctdGRz/ix1iqjVPSRgS5RL9W6F/RpmQ
	ZundqOEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tMCmr-000000051qS-0VrB;
	Fri, 13 Dec 2024 21:01:25 +0000
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tMCmo-000000051oX-3ceH
	for barebox@lists.infradead.org;
	Fri, 13 Dec 2024 21:01:24 +0000
Received: by lynxeye.de (Postfix, from userid 501)
	id BA2C2E74073; Fri, 13 Dec 2024 22:00:25 +0100 (CET)
Received: from astat.fritz.box (a89-182-99-197.net-htp.de [89.182.99.197])
	by lynxeye.de (Postfix) with ESMTPA id C054AE74086
	for <barebox@lists.infradead.org>; Fri, 13 Dec 2024 22:00:20 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
To: barebox@lists.infradead.org
Date: Fri, 13 Dec 2024 22:00:14 +0100
Message-ID: <20241213210015.357249-8-dev@lynxeye.de>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20241213210015.357249-1-dev@lynxeye.de>
References: <20241213210015.357249-1-dev@lynxeye.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241213_130123_042039_33A9456B 
X-CRM114-Status: GOOD (  11.08  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 8/9] ARM: zynq: call common arm lowlevel init from zynq lowlevel init
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This had previously been reverted as it may cause some stack
usage. Now that we have a stack on entry, it should be safe to
so.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/boards/avnet-zedboard/lowlevel.c | 1 -
 arch/arm/mach-zynq/cpu_init.c             | 2 ++
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boards/avnet-zedboard/lowlevel.c b/arch/arm/boards/avnet-zedboard/lowlevel.c
index c681764bd009..1ecddf24085f 100644
--- a/arch/arm/boards/avnet-zedboard/lowlevel.c
+++ b/arch/arm/boards/avnet-zedboard/lowlevel.c
@@ -301,7 +301,6 @@ ENTRY_FUNCTION_WITHSTACK(start_avnet_zedboard, 0xfffff000, r0, r1, r2)
 	writel((1<<7), 0xe000a208 );    // Output enable
 	writel((1<<7), 0xe000a040 );    // DATA Register
 
-	arm_cpu_lowlevel_init();
 	zynq_cpu_lowlevel_init();
 
 	avnet_zedboard_ps7_init();
diff --git a/arch/arm/mach-zynq/cpu_init.c b/arch/arm/mach-zynq/cpu_init.c
index 7194c7e21627..cc7b8d1142a9 100644
--- a/arch/arm/mach-zynq/cpu_init.c
+++ b/arch/arm/mach-zynq/cpu_init.c
@@ -7,6 +7,8 @@
 
 void zynq_cpu_lowlevel_init(void)
 {
+	arm_cpu_lowlevel_init();
+
 	enable_arm_errata_761320_war();
 	enable_arm_errata_794072_war();
 	enable_arm_errata_845369_war();
-- 
2.47.1




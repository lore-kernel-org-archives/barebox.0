Delivery-date: Wed, 26 Apr 2023 11:06:11 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1prb6I-000W8l-A4
	for lore@lore.pengutronix.de; Wed, 26 Apr 2023 11:06:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1prb6I-0003TS-0M
	for lore@pengutronix.de; Wed, 26 Apr 2023 11:06:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LhvG2HVGSFh3t+XhBs2GcNYGrwKylFYzexPlOg2Xnn0=; b=H+/wJxaOSnDP9J1Mf89VtWcKaf
	xAmUsZx3YdtKNhAiEnvRWqIw7HLAvG5NHo3Gyruv/XlQOd8NE2tOBSMyXJWZoZ3CFV4LSQXwK14Ts
	P2a8drExydZ1NEcJB8S/wnIFqEZ1Ft8afndeNZz9OhgBtD+azEn24D5n0yYIaoYkCULS5JLdFk00z
	BLITmJtFEnRI4VzuJ+E1B0+POUx5FgArJB0ruD66Vn//VLDhj4kZJUZi4siECMiCWd7E8bBW3Iemh
	1ZiZS+Zke/Z/rse17GCeF1xL94+pp89yv3qMKsxCDPqhUz0S1kVpBJGC2sJFZrk4+V700kWEYW6ez
	MQwfxRdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1prb4k-003EA2-2A;
	Wed, 26 Apr 2023 09:04:34 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1prb4i-003E9U-2m
	for barebox@bombadil.infradead.org;
	Wed, 26 Apr 2023 09:04:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=LhvG2HVGSFh3t+XhBs2GcNYGrwKylFYzexPlOg2Xnn0=; b=VKQXttdT/PnXf5AmiK+CihZ2eG
	48SWmvBhQ5/rk6+GdALBqAFwE5DPJuLNHoyRGeCntZBcodZODIpTomvwZbwyU3a1p0kuE27v7US5V
	EqNbjQH/mr0f1mjk4lSENSZdL3jhfmcmNZHvFWbVH6c7J4DannriTDIJ/wjpNfDZzloPNyonpwuc4
	BsesuQhxOCAg8FV+Zs4TFKP2gUiUOw+MWkVvZGbx1rbkpzQoSpzQf0zUFfcuaxnzbwTliLXVPcqdp
	hD94n8bfD8XdS4jy5og7NM12MfjJuOBxvQCuDl5x8dvQW7a5cIDQB4gZuBE+mfExWHSdZhWw5y3nf
	hlEbc1kQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1prb4e-00AubI-0B
	for barebox@lists.infradead.org;
	Wed, 26 Apr 2023 09:04:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1prb4Z-0002z6-DX; Wed, 26 Apr 2023 11:04:23 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1prb4Y-00DtNZ-09; Wed, 26 Apr 2023 11:04:22 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1prb4X-005nZa-6k; Wed, 26 Apr 2023 11:04:21 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 26 Apr 2023 11:03:53 +0200
Message-Id: <20230426090354.1350981-3-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230426090354.1350981-1-s.hauer@pengutronix.de>
References: <20230426090354.1350981-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230426_100428_251933_C1FAF677 
X-CRM114-Status: GOOD (  11.40  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/3] ARM: Rockchip: make boards only selectable when firmware is present
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The RK356x based boards need a sdram-init.bin file in the board
directory. Make the boards selectable only when the file is present
to avoid failing compilation when the file is missing.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-rockchip/Kconfig | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-rockchip/Kconfig b/arch/arm/mach-rockchip/Kconfig
index 0bce83ecee..7acbd87473 100644
--- a/arch/arm/mach-rockchip/Kconfig
+++ b/arch/arm/mach-rockchip/Kconfig
@@ -69,30 +69,35 @@ if 64BIT
 
 config MACH_RK3568_EVB
 	select ARCH_RK3568
+	depends on $(success,test -e $(srctree)/arch/arm/boards/rockchip-rk3568-evb/sdram-init.bin)
 	bool "RK3568 EVB"
 	help
 	  Say Y here if you are using a RK3568 EVB
 
 config MACH_RK3568_BPI_R2PRO
 	select ARCH_RK3568
+	depends on $(success,test -e $(srctree)/arch/arm/boards/rockchip-rk3568-bpi-r2pro/sdram-init.bin)
 	bool "RK3568 BPI R2PRO"
 	help
 	  Say Y here if you are using a RK3568 Bananpi R2 Pro
 
 config MACH_PINE64_QUARTZ64
 	select ARCH_RK3568
+	depends on $(success,test -e $(srctree)/arch/arm/boards/pine64-quartz64/sdram-init.bin)
 	bool "Pine64 Quartz64"
 	help
 	  Say Y here if you are using a Pine64 Quartz64
 
 config MACH_RADXA_ROCK3
-       select ARCH_RK3568
-       bool "Radxa ROCK3"
-       help
+	select ARCH_RK3568
+	depends on $(success,test -e $(srctree)/arch/arm/boards/radxa-rock3/sdram-init.bin)
+	bool "Radxa ROCK3"
+	help
 	  Say Y here if you are using a Radxa ROCK3
 
 config MACH_RADXA_CM3
 	select ARCH_RK3568
+	depends on $(success,test -e $(srctree)/arch/arm/boards/radxa-cm3/sdram-init.bin)
 	bool "Radxa CM3"
 	help
 	  Say Y here if you are using a Radxa CM3
-- 
2.39.2




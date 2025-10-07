Delivery-date: Tue, 07 Oct 2025 11:01:40 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v63Zi-005Bqu-0k
	for lore@lore.pengutronix.de;
	Tue, 07 Oct 2025 11:01:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v63Zh-0008Dw-MN
	for lore@pengutronix.de; Tue, 07 Oct 2025 11:01:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=dSnUVohPRDgHfEYgdzJ+7LSM80q6TvzvHdw28RA+sZY=; b=3WDJ7abny0Ki28BQOIBAf5Fc+H
	ko4G8HCx6+lioTMgeMdvru+QZoJuhicQ3/xc5xB3pdjpfV1FRHBBJLCtEWCTc7giNYz6bVhSWR0Gh
	l2WbUEpXlBuC05DjJzganJYt0eqlL7Q/ia1lgXEhFmsGLlnzIxu1He1Go5MQ8SU9Su/ycifExw5m/
	+Bdbf2EHLSRNdv/wDc72D7dEDn2J/o0doDY13ObSYQENrvcnTi25/yVw1k9hGS3vFr5schcNmylYX
	1R8KaV+23vKB++a6WvmQ5blLzOjXViIjt4ppf0aGC/jeuE4zN+cKiKd6kgMxD71nXhoZt6j1v7hnA
	kV6wJPkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v63Z7-00000001ew4-2CrG;
	Tue, 07 Oct 2025 09:01:01 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v63Z5-00000001eue-3eGV
	for barebox@lists.infradead.org;
	Tue, 07 Oct 2025 09:01:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1v63Z4-00083q-C1; Tue, 07 Oct 2025 11:00:58 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1v63Z4-002N9A-0Y;
	Tue, 07 Oct 2025 11:00:58 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1v63Z4-00000003ziq-0HIs;
	Tue, 07 Oct 2025 11:00:58 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  7 Oct 2025 11:00:55 +0200
Message-ID: <20251007090055.952224-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251007_020059_906876_E1FFDB3A 
X-CRM114-Status: UNSURE (   9.26  )
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
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: dts: am62lx: add SD reboot mode
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add reboot mode for the two SD card modes. sd-fs will reboot from SD
card in filesystem mode, sd-raw will reboot from SD card in raw mode.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/k3-am62l-barebox.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/dts/k3-am62l-barebox.dtsi b/arch/arm/dts/k3-am62l-barebox.dtsi
index 34bf42c01f..780f87f4ac 100644
--- a/arch/arm/dts/k3-am62l-barebox.dtsi
+++ b/arch/arm/dts/k3-am62l-barebox.dtsi
@@ -27,6 +27,8 @@ reboot_mode: reboot-mode {
 			mode-usbdfu = <0x250>;
 			mode-emmc = <0x48>;
 			mode-nand = <0x58>;
+			mode-sd-fs = <0x240>;
+			mode-sd-raw = <0x2c0>;
 		};
 	};
 };
-- 
2.47.3




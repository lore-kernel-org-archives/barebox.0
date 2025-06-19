Delivery-date: Thu, 19 Jun 2025 19:12:01 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uSInx-0090bz-1u
	for lore@lore.pengutronix.de;
	Thu, 19 Jun 2025 19:12:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uSInx-0000hm-2a
	for lore@pengutronix.de; Thu, 19 Jun 2025 19:12:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=3cONY9F6mNTgpM8aD/7PWNCDNR5rP5quQGrcMpv91eI=; b=GXCfH7VE8fbYwE32uP+GojfN6W
	UgYfugRagmrf/R46uUzUknfYOLoTbnNiSbsy1a1HksfC3+LWa+s3JfQqM4Een58uprE2XYXUZIRtw
	48+YDwuOB7YpjgHWDg6Ljf4ucSPDgiGrkiIHUMRc4HJivuNSAVy1LrkJhE79KEdHsVHxc9u7xSPOW
	VVykq+1G7xa4TlJBoDw9y3494VwGD0vFiM+IQy1cgD7ptBAVaLZIKkoNoG25/mNEcrdFRtdX4FxBp
	eemM+FFL/qrd0A7xmdqQKOaNRNnVRvg60xx1A0mmWTvBXqFa/Br6n9K4UDWh0zpkKVJB1vhN2DAOH
	4BjnSp9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSInU-0000000DiWX-1e9O;
	Thu, 19 Jun 2025 17:11:32 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSH9M-0000000DPJS-3FHw
	for barebox@lists.infradead.org;
	Thu, 19 Jun 2025 15:26:01 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1uSH9L-0006U8-Hp
	for barebox@lists.infradead.org; Thu, 19 Jun 2025 17:25:59 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu, 19 Jun 2025 17:25:52 +0200
Message-Id: <20250619152556.3749995-1-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250619_082600_814476_A5ECB31D 
X-CRM114-Status: GOOD (  10.43  )
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
X-Spam-Status: No, score=-6.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/5] ARM: i.MX6QDL: add TZASC1/2 defines
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On i.MX6 platforms we need to set the bypass mode within the DCD unlike
the i.MX8M platforms which uses the PBL lowlevel code
(imx8m_tzc380_init()).

Add an imxcfg helper to configure the TZASC1/2 to simplify the integration.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 include/mach/imx/imx6q-tzasc.h | 8 ++++++++
 1 file changed, 8 insertions(+)
 create mode 100644 include/mach/imx/imx6q-tzasc.h

diff --git a/include/mach/imx/imx6q-tzasc.h b/include/mach/imx/imx6q-tzasc.h
new file mode 100644
index 000000000000..968b17d5ec3f
--- /dev/null
+++ b/include/mach/imx/imx6q-tzasc.h
@@ -0,0 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+/*
+ * Per default all clocks are on, except for TZASC1/2 CG11/2, so enable them
+ * before activate the modules (disable the bypass mode).
+ */
+wm 32 0x020c4070 0xffffffff
+/* Disable TZASC1/2 bypass */
+wm 32 0x020E0024 0x00000003
-- 
2.39.5




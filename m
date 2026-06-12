Delivery-date: Fri, 12 Jun 2026 13:59:41 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wY0Y1-0053A6-10
	for lore@lore.pengutronix.de;
	Fri, 12 Jun 2026 13:59:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wY0Y0-00064v-M0
	for lore@pengutronix.de; Fri, 12 Jun 2026 13:59:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=6KkteP4jQPCLJeZ/OBq01CnKvyoH4/LKuHuBqLGSSu0=; b=zzUOkrmVNGGDZpb2rDWPAERUjn
	kKW1m1MAdSQXWiuK8+YkUw3D1pPVmoC90bwungk4i/mkkdWVn/cR13eY45SgtTRy5ZOESxhPvUoKs
	GtADDFU0mxcOkpLhOEqHjcqf1n0kwPB3+0bLPmz2FlxHDG0sDrahYiFJzxJZGoyA53a8WxTy5dMyA
	NdyYLno/N4T7gHKKyW0ZVFCvyhEcauyFVnkh9s730xzqeOWxnY6ThkFv9vU+8TA2FOvPQjkxxsgXb
	QgskxESpau5tBb0JJi1VNYidbXBq6waBMSjAmLCuoagmpLw5uLY3H+M11YynfBbIAe66UYyx2zsB7
	pa0MzagQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wY0WX-0000000ApSm-1Xak;
	Fri, 12 Jun 2026 11:58:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wY0WT-0000000ApSO-28YV
	for barebox@lists.infradead.org;
	Fri, 12 Jun 2026 11:58:07 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <bst@pengutronix.de>)
	id 1wY0WQ-0005IH-Lh; Fri, 12 Jun 2026 13:58:02 +0200
From: Bastian Krause <bst@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Marco Felsch <mfe@pengutronix.de>,
	Bastian Krause <bst@pengutronix.de>
Date: Fri, 12 Jun 2026 13:58:00 +0200
Message-ID: <20260612115800.3475528-1-bst@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260612_045805_547953_695DE1B5 
X-CRM114-Status: UNSURE (   8.94  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: dts: i.MX8MP FRDM: remove memory node
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Since f083fffe52 ("ARM: dts: i.MX8MP: add DDRC compatibles") the esdctl
driver is used. This causes the errors below since barebox tries to add
the memory twice:

  imx-esdctl 3d400000.memory-controller@3d400000.of: probe failed: Device or resource busy
  initcall imx_esdctl_driver_init+0x0/0x2c failed: No such device

Remove the memory node to fix this.

604c974c968 ("ARM: dts: i.MX8MP: remove memory node") already fixed this
for the i.MX8MP EVK and the TQMa8MPxL on the MBa8MPxL.

Fixes: f083fffe52 ("ARM: dts: i.MX8MP: add DDRC compatibles")
Signed-off-by: Bastian Krause <bst@pengutronix.de>
---
 arch/arm/dts/imx8mp-frdm.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/dts/imx8mp-frdm.dts b/arch/arm/dts/imx8mp-frdm.dts
index b1870213baf..7d770c3e456 100644
--- a/arch/arm/dts/imx8mp-frdm.dts
+++ b/arch/arm/dts/imx8mp-frdm.dts
@@ -11,3 +11,5 @@
 / {
 	barebox,deep-probe;
 };
+
+/delete-node/ &{/memory@40000000};
-- 
2.47.3




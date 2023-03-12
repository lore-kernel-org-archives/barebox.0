Delivery-date: Sun, 12 Mar 2023 17:31:16 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pbObL-001Psm-R2
	for lore@lore.pengutronix.de; Sun, 12 Mar 2023 17:31:16 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pbObL-0001oy-Ev
	for lore@pengutronix.de; Sun, 12 Mar 2023 17:31:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Sa/43NTDdDffyPpKUyFP4K0E1M38SuV9yH/7NrAbT/M=; b=uZsqPRP1qcqVwSeFa01a63crMP
	XqBjjLCwTo1cSRGO2PoG+55xsD3GpToD7GUbX+Ft2LQPShmNCkks4wRUU5uRcm2epnSv6Kr0z2DNn
	wNvB7pj3vyBhmQlMiNGfC7WxJ0jU8808AG+SlbHEgVlXKzddeBHG3RJW0I8K4Vp/ym4wqnm5MJODI
	eMyVpHgQQZvxd/WjRe4m+pwwkDk6zsfjywU/1DcqQRNIqJo44kh9f/MeDjgpmF0xY2h3XDng5dxdG
	UleIcmeQEe0jbQ1dG1xRJ0OcEFDgJM24m/h6AZxQ1gG7pQbsupqOe8ym5LpJf3c+lkPXQ+Eft/I+Z
	eYmPK68Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbOZm-002uf6-7w; Sun, 12 Mar 2023 16:29:38 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbOZh-002ued-3h
	for barebox@lists.infradead.org; Sun, 12 Mar 2023 16:29:34 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1pbOZd-0001XC-OK
	for barebox@lists.infradead.org; Sun, 12 Mar 2023 17:29:29 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Sun, 12 Mar 2023 17:29:28 +0100
Message-Id: <20230312162928.2110697-1-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230312_092933_172405_47D62C66 
X-CRM114-Status: UNSURE (   9.87  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: dts: i.MX8MP: remove memory node
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

since commit f083fffe52 ("ARM: dts: i.MX8MP: add DDRC compatibles") we
make use of the esdctl driver. This cause the below error since barebox
try to add the memory twice.

| imx-esdctl 3d400000.memory-controller@3d400000.of: probe failed: Device or resource busy
| initcall imx_esdctl_driver_init+0x0/0x2c failed: No such device

Remove the memory node to fix this.

This behaviour was seen on a i.mx8mp-evk but the
imx8mp-tqma8mpql-mba8mpxl also has a memory node and includes the
barebox.dtsi.

Fixes: f083fffe52 ("ARM: dts: i.MX8MP: add DDRC compatibles")
Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 arch/arm/dts/imx8mp-evk.dts                | 2 ++
 arch/arm/dts/imx8mp-tqma8mpql-mba8mpxl.dts | 2 ++
 2 files changed, 4 insertions(+)

diff --git a/arch/arm/dts/imx8mp-evk.dts b/arch/arm/dts/imx8mp-evk.dts
index 0acc3731d5..c7e1f35d2d 100644
--- a/arch/arm/dts/imx8mp-evk.dts
+++ b/arch/arm/dts/imx8mp-evk.dts
@@ -30,6 +30,8 @@
 	};
 };
 
+/delete-node/ &{/memory@40000000};
+
 &ethphy1 {
 	reset-assert-us = <15000>;
 	reset-deassert-us = <100000>;
diff --git a/arch/arm/dts/imx8mp-tqma8mpql-mba8mpxl.dts b/arch/arm/dts/imx8mp-tqma8mpql-mba8mpxl.dts
index 6e81f58e27..bf23e40489 100644
--- a/arch/arm/dts/imx8mp-tqma8mpql-mba8mpxl.dts
+++ b/arch/arm/dts/imx8mp-tqma8mpql-mba8mpxl.dts
@@ -24,6 +24,8 @@
 	};
 };
 
+/delete-node/ &{/memory@40000000};
+
 &usdhc2 {
 	#address-cells = <1>;
 	#size-cells = <1>;
-- 
2.30.2




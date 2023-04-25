Delivery-date: Tue, 25 Apr 2023 15:37:14 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1prIr3-00GvQO-6m
	for lore@lore.pengutronix.de; Tue, 25 Apr 2023 15:37:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1prIr2-0008Vs-SQ
	for lore@pengutronix.de; Tue, 25 Apr 2023 15:37:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=zy+0lmCBrSlh4Q6ATL15WPzPXrim+bpvSbYwGJJTjhs=; b=LXBiQvU1PN1Fx1Vwsciuxi9rYo
	jVkVgvVE+qs8RH0ymd3T2+FQ+xdBC6UEYpyQg5dlmayoGJAblwR4iSRhnZaaN82WMgtpJQeZ3C5QB
	fiJmhgH74ytzPN6teTjZFOUzmCi4fRsP/gO86UtMJ2muEfGB8HpwKCrdxay2MIc0hfIXs7mNRitSu
	9qaNJgVJuWlYEStKaTeG9Wb9eL3BT0wkgDZCwPdJDbn7uyeb+9XbV+TTsx0KA9qnGUObdkxD2wTQL
	YaRzO5QVz5S51PspoTKEll3g7j8G7FklnxNQFvrh/1mYI/e5+1oeyLEB4APKKGcNJkfCkcmCo800l
	QwWenhMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1prIpj-001GbP-0g;
	Tue, 25 Apr 2023 13:35:51 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1prIpf-001GXv-35
	for barebox@lists.infradead.org;
	Tue, 25 Apr 2023 13:35:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1prIpX-0008Ha-Ob; Tue, 25 Apr 2023 15:35:39 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1prIpX-00Di7I-1l; Tue, 25 Apr 2023 15:35:39 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1prIpW-0019GO-7t; Tue, 25 Apr 2023 15:35:38 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 25 Apr 2023 15:35:34 +0200
Message-Id: <20230425133535.273920-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230425_063547_991140_F67E4755 
X-CRM114-Status: GOOD (  11.72  )
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
Subject: [PATCH 1/2] ARM: vexpress: Disable non working devices
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Disable some non working devices in the vexpress dts files to
avoid error messages during runtime. vexpress_defconfig has the
drivers for these devices disabled, but with multi_v7_defconfig
the driver are enabled. To make vexpress more usable with
multi_v7_defconfig disable the non working devices in the device
tree.

/timer@1e000600 doesn't work because our arm,cortex-a9-twd-timer
implementation needs a clock which the dts doesn't provide. We don't
need this as we use another timer anyway.

/bus@40000000/motherboard-bus@40000000/leds/ and /leds/ are a gpio-leds
devices which need a GPIO driver which doesn't exist in barebox

/bus@40000000/motherboard-bus@40000000/iofpga@7,00000000/compact-flash@1a000/
/bus@8000000/motherboard-bus@8000000/iofpga-bus@300000000/compact-flash@1a0000/
are ata-generic devices. The driver times out probing the device. While
it doesn't issue an error message it delays starting up the board for
several seconds.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/vexpress-v2p-ca15.dts |  8 ++++++++
 arch/arm/dts/vexpress-v2p-ca9.dts  | 12 ++++++++++++
 2 files changed, 20 insertions(+)

diff --git a/arch/arm/dts/vexpress-v2p-ca15.dts b/arch/arm/dts/vexpress-v2p-ca15.dts
index 78d0025909..cdf7bd37d5 100644
--- a/arch/arm/dts/vexpress-v2p-ca15.dts
+++ b/arch/arm/dts/vexpress-v2p-ca15.dts
@@ -28,3 +28,11 @@
 		};
 	};
 };
+
+&{/leds} {
+	status = "disabled";
+};
+
+&{/bus@8000000/motherboard-bus@8000000/iofpga-bus@300000000/compact-flash@1a0000/} {
+	status = "disabled";
+};
diff --git a/arch/arm/dts/vexpress-v2p-ca9.dts b/arch/arm/dts/vexpress-v2p-ca9.dts
index a43628e7ce..113548bedb 100644
--- a/arch/arm/dts/vexpress-v2p-ca9.dts
+++ b/arch/arm/dts/vexpress-v2p-ca9.dts
@@ -91,3 +91,15 @@
 		};
 	};
 };
+
+&{/timer@1e000600} {
+	status = "disabled";
+};
+
+&{/bus@40000000/motherboard-bus@40000000/leds/} {
+	status = "disabled";
+};
+
+&{/bus@40000000/motherboard-bus@40000000/iofpga@7,00000000/compact-flash@1a000/} {
+	status = "disabled";
+};
-- 
2.39.2




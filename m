Delivery-date: Wed, 08 Feb 2023 14:36:09 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pPkcM-000bPH-M9
	for lore@lore.pengutronix.de; Wed, 08 Feb 2023 14:36:09 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pPkcK-0002Wd-06
	for lore@pengutronix.de; Wed, 08 Feb 2023 14:36:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=naILP413rWTPt8gwDoKhNwD9ac6yJBNzer1fT9KoiYE=; b=VQ3lAY7AIrQ2yM5TI9T7ykVIRA
	0OVF9gc7j++ps5A2BsinI/LpjmYvtPhTVeg4HhN97JqX5JyHXXpTIaV7NJ6JCXMQTD4IPz0y/pp3U
	rG4yYgQ5XUrCPK1V6CCIFeMrXoZqo2VDTDHlLHp3Gv+fqXTNc6TwarNTZ42/wQZU4ETuXXKeA1PkH
	GkxKPkHztxWjneVGtS9hvwr9tZ5buJpInWpz0MyXbYMNKlJ199x0j70Ykv8zTCIYDoCBBOjIlyu7b
	CTNeYBQPelP3D7RS4M43/4zyxddOkUNjwdUw3CGiuoebZTtRjAMVX16wX6MjaDHxTMvVQzHFHfpMH
	TB/sWRkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPkbB-00FlON-S3; Wed, 08 Feb 2023 13:34:57 +0000
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPkb1-00FlL6-FU
	for barebox@lists.infradead.org; Wed, 08 Feb 2023 13:34:50 +0000
Received: by lynxeye.de (Postfix, from userid 501)
	id E9A18E74013; Wed,  8 Feb 2023 14:34:12 +0100 (CET)
Received: from astat.fritz.box (a89-183-230-152.net-htp.de [89.183.230.152])
	by lynxeye.de (Postfix) with ESMTPA id 78C90E74012
	for <barebox@lists.infradead.org>; Wed,  8 Feb 2023 14:34:11 +0100 (CET)
From: Lucas Stach <l.stach@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed,  8 Feb 2023 14:34:08 +0100
Message-Id: <20230208133408.1114573-3-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230208133408.1114573-1-l.stach@pengutronix.de>
References: <20230208133408.1114573-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230208_053447_691176_5F1D6A8D 
X-CRM114-Status: GOOD (  11.78  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v3 3/3] ARM: dts: i.MX8MP: remove DSP and DSP reserved memory nodes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The reserved memory for the DSP collides with the Barebox malloc area
in some DRAM configuration. This causes the malloc region reservation
to fail, with all kinds of resulting fallout.

Remove the DSP and DSP reserved memory nodes from the Barebox DT to
work around this issue. This means the DSP won't be usable if the
system is booted with the Barebox builtin DT, but that seems like the
best option so far.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/dts/imx8mp.dtsi | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm/dts/imx8mp.dtsi b/arch/arm/dts/imx8mp.dtsi
index 778e84318ce7..6962d11e853a 100644
--- a/arch/arm/dts/imx8mp.dtsi
+++ b/arch/arm/dts/imx8mp.dtsi
@@ -10,6 +10,13 @@
 	};
 };
 
+/*
+ * The DSP reserved memory will collide with the Barebox malloc area for some
+ * DRAM sizes, even though the DSP itself is disabled in most configurations.
+ */
+/delete-node/ &dsp;
+/delete-node/ &dsp_reserved;
+
 &edacmc {
 	compatible = "fsl,imx8mp-ddrc", "fsl,imx8m-ddrc", "snps,ddrc-3.80a";
 };
-- 
2.39.1




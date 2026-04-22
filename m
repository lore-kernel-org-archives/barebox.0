Delivery-date: Wed, 22 Apr 2026 12:09:52 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wFUWm-00F3uq-1w
	for lore@lore.pengutronix.de;
	Wed, 22 Apr 2026 12:09:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wFUWm-0000gm-1K
	for lore@pengutronix.de; Wed, 22 Apr 2026 12:09:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YUoChhyxtonsUiwPFhUrkLjl8rpbbDMl72GMsJfjvAQ=; b=Oj1oU9zjSn6Mu/tVADdufoALLT
	4n6EQ9bNjL1U0REDF6l5okncJIu5WpxDRj9xedipS+XdBW2AxztoYDQKvpbhRj/l+0mZ5teJ6reXQ
	sh0CFeGBYi0mWYZ0rNssIAqhnVT6wktC1cmJiQWoBVrmiIpb8XhDIGOf7YqpFsNzran5MgYEAhrbP
	X5cL/xURuHnTFR1NsLru1hNBTqXS/GMdahHYPf7VGuBnnRIt0FE7S4SiC92RAEnbrthzWxYAQXABD
	9Wkm4Esc2vPsWspdOFIkaLMH7r0GSRuEhjegWAawxbmfxzI0dOmwyvS9ep3N/4DXOpYvWnG/As+Sa
	8uWnO78A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wFUWI-00000009vXK-1tcO;
	Wed, 22 Apr 2026 10:09:22 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wFUWH-00000009vWV-13WE
	for barebox@bombadil.infradead.org;
	Wed, 22 Apr 2026 10:09:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=YUoChhyxtonsUiwPFhUrkLjl8rpbbDMl72GMsJfjvAQ=; b=IDxpvWPE3OVABJpRnQ9PCFCzZS
	1fmJDA82w5WZI4ewAmkSISSaU5CWbbyGqcYTZc6rNNBA4CyXJlLhonkBlIL49vyMuMoYi5RGfKSdq
	6Dts3GIvwSPY2m9g98c4pktma8d+52QBwQ6XB5c2rttXs5CGFIeclUfrKD15MZHqjiypeV0hRThrk
	iy/vfrlDrRFUaAauqL2iuknukUNfE3y+b+S6yVONaUIgYzfi74AlC1vMjTqTlIg0e2IqjCjEVjESf
	BhF+mXS54O46fLl5MiR8PycQVH1BlZ55d01RbCISbNJ9uy7vXWGWm8J/VnntHKThrglC8Bcr8dvI3
	0hHfk4dw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wFUWE-0000000B7lg-1VSJ
	for barebox@lists.infradead.org;
	Wed, 22 Apr 2026 10:09:20 +0000
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pflug@pengutronix.de>)
	id 1wFUWB-0000WG-Dd; Wed, 22 Apr 2026 12:09:15 +0200
From: Fabian Pflug <f.pflug@pengutronix.de>
Date: Wed, 22 Apr 2026 12:09:05 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260422-v2026-03-0-topic-soc_bin_id-v3-2-6bc9ef6a6b2e@pengutronix.de>
References: <20260422-v2026-03-0-topic-soc_bin_id-v3-0-6bc9ef6a6b2e@pengutronix.de>
In-Reply-To: <20260422-v2026-03-0-topic-soc_bin_id-v3-0-6bc9ef6a6b2e@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 Jonas Rebmann <jre@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
Cc: Fabian Pflug <f.pflug@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260422_110918_494809_9EBFCDEF 
X-CRM114-Status: GOOD (  11.69  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v3 2/2] i.MX: HAB: update text for HABV4_CSF_UNLOCK_UID
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

With the establishment of global.soc_uid_hex, there is no need to look
for the serial number and reverse it.

Also some SoC's will have 128-bit UID's, so the hint to 64-bit is not
correct and should be removed.

Reviewed-by: Jonas Rebmann <jre@pengutronix.de>
Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
---
 arch/arm/mach-imx/Kconfig | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 2e4d1ac80a..75086d13e6 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -918,19 +918,20 @@ config HABV4_CSF_UNLOCK_UID
 	depends on HABV4 && HABV4_CSF_UNLOCK_FIELD_RETURN
 	string "CSF Unlock UID"
 	help
-	  Device specific 64-bit UID required to unlock the field-return
+	  Device specific UID required to unlock the field-return
 	  feature. This value must match the per device UNIQUE_ID fuses.
 
 	  The below example shows the expected format. The UNIQUE_ID is
-	  printed during boot by barebox:
+	  stored in $global.soc_uid_hex, but must be split into bytes.
+	  The soc_uid_hex 0011223344556677 becomes:
+	    - 0x00, 0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77
+
+	  Alternatively, it is printed in reverse byte order during boot
 	    i.MX___ unique ID: 7766554433221100
-	  or it can be queried by Linux via:
+	  or it can be queried (in reverse byte order) by Linux via:
 	    - cat /sys/devices/soc0/serial_number
 	      7766554433221100
 
-	  So this value have to be set:
-	    - 0x00, 0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77
-
 	  Afterwards, the `hab -p -r` command can be used to burn the fuse.
 
 config HAB_CERTS_ENV

-- 
2.47.3




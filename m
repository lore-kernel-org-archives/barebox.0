Delivery-date: Thu, 20 Mar 2025 06:17:39 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tv8Hj-001l2A-2L
	for lore@lore.pengutronix.de;
	Thu, 20 Mar 2025 06:17:39 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tv8Hi-0002du-Co
	for lore@pengutronix.de; Thu, 20 Mar 2025 06:17:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OIDhgrQme9ey+4aJGF41vke50dsk9SHgyDnLUpaWgMI=; b=DNEyVxG1cg0NRPpSIUDInM4sDI
	VpoZNdwKZodD5GqypjnSlE4HcWTKrgHHatcr/M5NZbHVnJMM6uF4Ncc57WVjHvZSBm2uwrP21Sl8T
	s+c1FP87IynTD6DoKgMqDz3KB8l182yksDpoBlqL/DK4DVaIqPp75FBDk5ng6gVzp8+My4oiETAk3
	jtDoaqL+DHZoorGIt+nIJKK86xf5cDw+szqByCWQnPPHiQIMRbzRLgkkMWFxUzRW4QhgNk92ZXdyB
	X9i8s6CYCQmUdJ7ohuQsQA6C0TONJhS3bF5w52njUz6L+R5XQEBHxf5g1rG+uuliVj3sKKk8vbMiZ
	cLr8YScw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tv8HI-0000000BBtf-2kgq;
	Thu, 20 Mar 2025 05:17:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tv8HG-0000000BBrb-0ju5
	for barebox@lists.infradead.org;
	Thu, 20 Mar 2025 05:17:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tv8Gq-0001yT-Sj; Thu, 20 Mar 2025 06:16:44 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tv8Go-000huK-1N;
	Thu, 20 Mar 2025 06:16:42 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tv8Go-007EvV-2S;
	Thu, 20 Mar 2025 06:16:42 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 20 Mar 2025 06:16:34 +0100
Message-Id: <20250320051641.1721377-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250320051641.1721377-1-a.fatoum@pengutronix.de>
References: <20250320051641.1721377-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250319_221710_214977_832F744C 
X-CRM114-Status: UNSURE (   9.22  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 1/8] firmware: disable MISSING_FIRMWARE_ERROR for COMPILE_TEST builds
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

An allyes build will enable all options possible and thus usually fail
to build, because it enables CONFIG_MISSING_FIRMWARE_ERROR along with
DRIVER_NET_FSL_FMAN, which requires firmware to function at runtime.

Fix this by disabling MISSING_FIRMWARE_ERROR if COMPILE_TEST is enabled.
This works, because Kconfig encounters COMPILE_TEST first.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - no change
---
 firmware/Kconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/firmware/Kconfig b/firmware/Kconfig
index ba005976c5a1..9253bc14cb0c 100644
--- a/firmware/Kconfig
+++ b/firmware/Kconfig
@@ -9,6 +9,8 @@ config EXTRA_FIRMWARE_DIR
 config MISSING_FIRMWARE_ERROR
 	bool "Fail the build when required firmware is missing"
 	default y
+	# This prevents firmware errors from breaking allyesconfig builds
+	depends on !COMPILE_TEST
 	help
 	  In-tree Defconfigs that enable multiple boards with different firmware
 	  binary requirements would say y here, so you don't need unrelated firmware
-- 
2.39.5




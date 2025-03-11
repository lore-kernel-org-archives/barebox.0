Delivery-date: Tue, 11 Mar 2025 09:15:53 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1trumI-00CbB3-0p
	for lore@lore.pengutronix.de;
	Tue, 11 Mar 2025 09:15:53 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1trumH-0007zF-4D
	for lore@pengutronix.de; Tue, 11 Mar 2025 09:15:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=lQdhnfLrTK/QUVYOpGR6pVrIGJRcS7Uru3zN4MK+uh8=; b=zsNLvIbsovdJBxXC5mBTYIjR2L
	COf3HW6tJOxZnmytKplbNoE90Aepa7g8GDbKcW7AG9Ea7Xi2tIN61iP4HBCLKU64BBXxzu9uFPfic
	xyzDWocDcS6TYb1nal5Zrb2DgHsxs1LgU+PN2emG12B03I2s05T8lo8MxwZkzajSDoCoXuSGbed7l
	MxH0R/GGSvRPapWdxsBTekE34HyGJBEwP1uCLQ8tLqK2H+MKbCM0S1wLSzblhE3hC2/m38d9Gc8IK
	T6cJvQ1tQ+BzpvG6U2KDos14w3VAidUEyA9Y0k7V6NNU8ogTlrSXbpkylurvXdWbA/+rCIZz/l5KK
	qwrMZdsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1trulp-00000004ybE-487j;
	Tue, 11 Mar 2025 08:15:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1trug8-00000004xL8-1rSr
	for barebox@lists.infradead.org;
	Tue, 11 Mar 2025 08:09:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1trug5-0007C0-MW; Tue, 11 Mar 2025 09:09:29 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1trug5-0058zQ-1b;
	Tue, 11 Mar 2025 09:09:29 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1trug5-0062UH-1E;
	Tue, 11 Mar 2025 09:09:29 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 11 Mar 2025 09:09:25 +0100
Message-Id: <20250311080925.1439519-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250311_010932_481690_62CDA466 
X-CRM114-Status: UNSURE (   9.76  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] bootm: let BOOTM_OPTIONAL_SIGNED_IMAGES depend on BOOTM
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The purpose of BOOTM_OPTIONAL_SIGNED_IMAGES is to select
HAS_INSECURE_DEFAULTS, but it should only do so when BOOTM
support is actually compiled in.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/common/Kconfig b/common/Kconfig
index 8a051a29e7..12026b8232 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -768,6 +768,7 @@ config BOOTM_FORCE_SIGNED_IMAGES
 config BOOTM_OPTIONAL_SIGNED_IMAGES
 	def_bool !BOOTM_FORCE_SIGNED_IMAGES
 	select HAS_INSECURE_DEFAULTS
+	depends on BOOTM
 	help
 	  With this option enabled, barebox can be reconfigured to not verify signed
 	  images. It's the board code's responsibility to call the function
-- 
2.39.5




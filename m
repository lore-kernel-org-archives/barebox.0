Delivery-date: Wed, 08 Jan 2025 07:58:09 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tVQ13-000dJq-0F
	for lore@lore.pengutronix.de;
	Wed, 08 Jan 2025 07:58:09 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tVQ12-0007Te-VQ
	for lore@pengutronix.de; Wed, 08 Jan 2025 07:58:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=3iow1TC7p8x17wHdkCR0DAluFdSWINHcwW7vvEtA+oU=; b=ukgNG9+z0f05SarALTMlzmwkUT
	PujSQ2TpD/AyJBQcZJj31WC5Wf8PkOW4slmnzITLtK7DbT2e0FiBa/zFyWCHrzC1DGjjG3j4I2Hyn
	+KuBXEvpmRl41wEZEhJUF5Rf4ySv3/k0LZDc5MjKntJiiFqNh1mfoQYQeMdJJj4ndl1oec2Mq1H5m
	EkxxgXcCmFpyK29gCSIJVla8vYjCE3/V416JupyAVJrjgJKY3+P6nleXn1MUrwP4Hd+aGF9sHCrUq
	llJyl9ZyBv+/aPTd+MwgIBGrTjGGknZZjwKiiKwiAT89Fu7aSPUdQkqtbJYYAa8T5asgwB310KyrB
	95fKOtjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tVQ0N-00000007Jq2-3jVc;
	Wed, 08 Jan 2025 06:57:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tVQ0L-00000007Jpc-2ZKk
	for barebox@lists.infradead.org;
	Wed, 08 Jan 2025 06:57:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <uol@pengutronix.de>)
	id 1tVQ0I-0007LS-CI; Wed, 08 Jan 2025 07:57:22 +0100
Received: from dude03.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::39])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <uol@pengutronix.de>)
	id 1tVQ0H-007TGM-1L;
	Wed, 08 Jan 2025 07:57:22 +0100
Received: from uol by dude03.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <uol@pengutronix.de>)
	id 1tVQ0I-00DrBm-09;
	Wed, 08 Jan 2025 07:57:22 +0100
From: =?UTF-8?q?Ulrich=20=C3=96lmann?= <u.oelmann@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed,  8 Jan 2025 07:57:15 +0100
Message-Id: <20250108065715.3302712-1-u.oelmann@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250107_225725_647241_DF7A09AD 
X-CRM114-Status: GOOD (  10.93  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] common: Kconfig: BOOTM_FITIMAGE_SIGNATURE: fix help text
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

U-Boot rearranged its documentation in commit [1] and provides it rendered as
HTML today, so adjust the reference accordingly. While at it be a little bit
more precise regarding the usage of the public key.

[1] ad29e08b79fd ("doc: Bring in FIT signature files")

Signed-off-by: Ulrich Ölmann <u.oelmann@pengutronix.de>
---
 common/Kconfig | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/common/Kconfig b/common/Kconfig
index 708caa6040a9..b1480431d7c5 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -693,9 +693,9 @@ config BOOTM_FITIMAGE_SIGNATURE
 	help
 	  Support verifying signed FIT images. This requires FIT images
 	  as described in:
-	  http://git.denx.de/?p=u-boot.git;a=blob;f=doc/uImage.FIT/signature.txt
+	  https://docs.u-boot.org/en/stable/usage/fit/signature.html
 	  Additionally the barebox device tree needs a /signature node with the
-	  public key with which the image has been signed.
+	  public key needed to approve the image's signature.
 
 config BOOTM_FITIMAGE_PUBKEY_ENV
 	bool "Specify path to public key in environment"
-- 
2.39.5




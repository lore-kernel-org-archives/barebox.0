Delivery-date: Sun, 12 Jan 2025 09:35:09 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tWtR7-0007ex-1m
	for lore@lore.pengutronix.de;
	Sun, 12 Jan 2025 09:35:09 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tWtR7-0006zQ-1I
	for lore@pengutronix.de; Sun, 12 Jan 2025 09:35:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Z4yRKh4ZrE5VZD+QcAfrZ45LtiAe3F81jrJrOIyvngg=; b=UwnYHfXTODnBMJVIivuuSwgWTL
	3nKg07tPOx5uvYYYrxzAK6PI8oJlfUyV1n5rKzh4hbP9si757+80PkfGwGc6b/hFK3w1T4ao7y5fW
	2Y9i1PrD6CzFZHU6hmAHZP46be0tv7eedqBFrFsvZq6wHn/aglD8r4o2LadWjAKxtDaIQMYNV0JeU
	GFyLTe3TAFiKepvCfdFgaw8dkf5nJwmxQeY9x1YF/tIy4U4WKNgp5fABTXStFLkrGsukr3ZhHZ1Uv
	FDTfzC4h7rB1utUXd9hubcQvtVxThGiuVIg55B5zYVGSnztBw45yVOSHUNW90HIChueu/EzvZzt6d
	e6ai6kbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tWtQl-00000002Kzl-2frS;
	Sun, 12 Jan 2025 08:34:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tWtQi-00000002KxX-3XCd
	for barebox@lists.infradead.org;
	Sun, 12 Jan 2025 08:34:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tWtQZ-0006gO-Ht; Sun, 12 Jan 2025 09:34:35 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tWtQX-0003O8-1R;
	Sun, 12 Jan 2025 09:34:33 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tWtQY-001LPJ-1t;
	Sun, 12 Jan 2025 09:34:33 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Felix Singer <felixsinger@posteo.net>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sun, 12 Jan 2025 09:34:26 +0100
Message-Id: <20250112083432.320215-8-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250112083432.320215-1-a.fatoum@pengutronix.de>
References: <20250112083432.320215-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250112_003444_901240_A317E2AA 
X-CRM114-Status: GOOD (  11.16  )
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
Subject: [PATCH 07/13] kbuild: allow dependency on any file in images/
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The multi defconfigs build a lot of images, which is nice for coverage,
but users may only be interested in the second stage barebox-dt-2nd.img
for example.

To allow them to build only that one without having to wade through
menuconfig, let's allow specifying the image directly, e.g.:

  make images/barebox-dt-2nd.img

And only that image will be built.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Makefile b/Makefile
index a86f1084cd5c..81a89d1c0ad4 100644
--- a/Makefile
+++ b/Makefile
@@ -789,7 +789,7 @@ barebox-flash-images: $(KBUILD_IMAGE)
 
 images: barebox.bin FORCE
 	$(Q)$(MAKE) $(build)=images $@
-images/%.s: barebox.bin FORCE
+images/%: barebox.bin FORCE
 	$(Q)$(MAKE) $(build)=images $@
 
 ifdef CONFIG_EFI_STUB
-- 
2.39.5




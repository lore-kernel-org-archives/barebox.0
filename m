Delivery-date: Mon, 14 Oct 2024 15:57:05 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0LZJ-004HXR-1K
	for lore@lore.pengutronix.de;
	Mon, 14 Oct 2024 15:57:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0LZI-0006SG-0w
	for lore@pengutronix.de; Mon, 14 Oct 2024 15:57:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eLp145s/nWljB5/7WeJuLEhQubbANwqvt+egBINWh6E=; b=ZcgK6dyptcQ739b0ezcN2Ihzdh
	Li4kZ9VL57Ryc7rh7Bz2evq8T6GTbN/JePhq/PooUHQKj0tgBPNm9hWS+t7NVuWDUOGlr07S/GqC+
	cFqZPRSo5tejPD/t+PHWafUl5PxrefGXTsUH4P984zUiClNaqEGjphWoiQ1VE5WgYVY2VzfRZvGLr
	oZyiLpgZxV6brhpbS+Fuw8zm89J5hBJ+gfCgjr53fyQtmpfpw0vHC3i76mHSZvimZYrdQlKgbf0Oc
	0a4xJ/hQCRshQtyO3Vf8tP6wxpXje6wtaehUC0LP20V5g03B94zV4wIcEeXbhwlhrN+BhAfKwugo7
	dJ11d6+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0LYj-00000005NQE-0KsU;
	Mon, 14 Oct 2024 13:56:29 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0Kf0-00000005Af0-1CN1
	for barebox@lists.infradead.org;
	Mon, 14 Oct 2024 12:58:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0Ker-0007L5-1L; Mon, 14 Oct 2024 14:58:45 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0Keq-001nNU-I8; Mon, 14 Oct 2024 14:58:44 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0Keq-00A8vm-1V;
	Mon, 14 Oct 2024 14:58:44 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Denis Orlov <denorl2009@gmail.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 14 Oct 2024 14:58:38 +0200
Message-Id: <20241014125843.2064532-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241014125843.2064532-1-a.fatoum@pengutronix.de>
References: <20241014125843.2064532-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241014_055854_348348_858E8401 
X-CRM114-Status: GOOD (  10.16  )
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
Subject: [PATCH 1/6] dma: make DMA_ADDRESS_BROKEN type-safe
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Defining it as void pointer makes it possible to plug this address
everywhere a non-const pointer is accepted.

To make erroneous use less likely, let's give it a proper type.

No functional change expected and if something breaks, it was most
likely already buggy.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/dma.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/dma.h b/include/dma.h
index c2b1bee358ae..101116f58466 100644
--- a/include/dma.h
+++ b/include/dma.h
@@ -15,7 +15,7 @@
 #include <asm/io.h>
 #include <device.h>
 
-#define DMA_ADDRESS_BROKEN	NULL
+#define DMA_ADDRESS_BROKEN	((dma_addr_t *)NULL)
 
 #ifndef DMA_ALIGNMENT
 #define DMA_ALIGNMENT	32
-- 
2.39.5




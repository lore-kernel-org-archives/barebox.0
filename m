Delivery-date: Mon, 04 Aug 2025 17:32:10 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uixAY-006z7N-2G
	for lore@lore.pengutronix.de;
	Mon, 04 Aug 2025 17:32:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uixAV-0006G5-RB
	for lore@pengutronix.de; Mon, 04 Aug 2025 17:32:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vOLggSi0IO5o401Qz0WMc9dE5r1cgo1hZRe93gRKr3g=; b=BJI654/oSQr1Q1Gnjr0PcY5ykg
	CLC6trsvCWB0g+hZ3cTGYE52+UihF7Qy6YyzzpYHMLY+6DT9dv37WApbjZwKPq5i/t9SLkx3Z+kvP
	iqPljToyet3nJgYbEbt5VM1P77VbGHYqxptWhqM1LSN/0v0MW8ShVdQS/znxWC6Ra4tOCGlRwwKzX
	ZIukfXccMpnwcY32RKtY6oB8VCeC3ZnhP32NfKTjE3amWghMA5wzV/C2rqJWbJZLerXKcZGia2jce
	srp7/2iO/gKYM9AVUn//j5oSmnoHj4FDOZ0A6NK/esmO8VWKCTNNyyYmaifD4ocwRMHTrXkacg5TJ
	r4c6IMBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uix9i-0000000AnrN-0Xjh;
	Mon, 04 Aug 2025 15:31:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uiwJ2-0000000AgmD-0vfE
	for barebox@lists.infradead.org;
	Mon, 04 Aug 2025 14:36:53 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1uiwIz-0000aW-9d; Mon, 04 Aug 2025 16:36:49 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Mon, 04 Aug 2025 16:36:50 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250804-v2025-06-0-topic-nvmem-v1-4-7603eaa4d2b0@pengutronix.de>
References: <20250804-v2025-06-0-topic-nvmem-v1-0-7603eaa4d2b0@pengutronix.de>
In-Reply-To: <20250804-v2025-06-0-topic-nvmem-v1-0-7603eaa4d2b0@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Marco Felsch <m.felsch@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250804_073652_264153_07E81B94 
X-CRM114-Status: UNSURE (   9.84  )
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
Subject: [PATCH 04/15] nvmem: core: fix nvmem_register error path
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The nvmem->dev device is still registered even if nvmem_register_cdev()
fails and the 'nvmem' memory was freed. Fix this by unregister the
device first before freeing the memory.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/nvmem/core.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/nvmem/core.c b/drivers/nvmem/core.c
index 7acd26474b503a6a6f8c6297c7c36a3a1990105a..562d25ef1fd6cc06c8308cc342d1d1f83edc1585 100644
--- a/drivers/nvmem/core.c
+++ b/drivers/nvmem/core.c
@@ -228,15 +228,19 @@ struct nvmem_device *nvmem_register(const struct nvmem_config *config)
 
 	if (!config->cdev) {
 		rval = nvmem_register_cdev(nvmem, config->name);
-		if (rval) {
-			kfree(nvmem);
-			return ERR_PTR(rval);
-		}
+		if (rval)
+			goto err_unregister;
 	}
 
 	list_add_tail(&nvmem->node, &nvmem_devs);
 
 	return nvmem;
+
+err_unregister:
+	unregister_device(&nvmem->dev);
+	kfree(nvmem);
+
+	return ERR_PTR(rval);
 }
 EXPORT_SYMBOL_GPL(nvmem_register);
 

-- 
2.39.5




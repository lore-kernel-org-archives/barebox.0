Delivery-date: Thu, 13 Jun 2024 15:16:07 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sHkJD-005O23-1S
	for lore@lore.pengutronix.de;
	Thu, 13 Jun 2024 15:16:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sHkJC-0006pX-QF
	for lore@pengutronix.de; Thu, 13 Jun 2024 15:16:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=rjbvKIcAVhn1GJU6kPX8ic+Uenud1UWAjMXsCJYSvvs=; b=f1rafIknDCbWkDbukzGyT6VRKW
	ha5y48j3VU67ZA8gTrBvk16qqw7WTNnd73EL572KNkr/7qOSwzorXtremUcxVII0Cd0ykZKZ2D+Jh
	3m3fbenLGI7fOa0LENmPEUaPyUPcYcQaz/WnhOAZsTKfJNWbZa87LFkXIVQO9sQJl8WhSnQWm/C0V
	G1krtkmSHcqMFFRIedF/nX41epRwf13PbmZL/Y7YGqnk8TuX6QO0khDxg1sC1oTC3hcqdnL/c4+76
	4yqQ7ApgMFIczy7mAy5+Ck1DkgBvS5jK9cCnou0685wXV9xq4CLPufz6SQVKGqyFQ0G/zGPNJnXk0
	HIWUSlDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHkIj-0000000GeqQ-0mKq;
	Thu, 13 Jun 2024 13:15:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHkIg-0000000GeoI-0p8r
	for barebox@lists.infradead.org;
	Thu, 13 Jun 2024 13:15:35 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1sHkIe-0006cd-QK
	for barebox@lists.infradead.org; Thu, 13 Jun 2024 15:15:32 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu, 13 Jun 2024 15:15:27 +0200
Message-Id: <20240613131531.364894-1-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240613_061534_348000_785FB47C 
X-CRM114-Status: UNSURE (   9.54  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 1/5] nvmem: fix nvmem_register error path
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Currently the nvmem memory is freed without removing/unregister the
nvmem->dev if nvmem_register_cdev() fails. Fix this by unregister the
device first, free the memory and return the error code.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
v2:
- new patch

 drivers/nvmem/core.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/nvmem/core.c b/drivers/nvmem/core.c
index bf393fc180ab..fe93a2ca5f48 100644
--- a/drivers/nvmem/core.c
+++ b/drivers/nvmem/core.c
@@ -234,15 +234,19 @@ struct nvmem_device *nvmem_register(const struct nvmem_config *config)
 
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
2.39.2




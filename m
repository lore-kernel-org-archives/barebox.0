Delivery-date: Wed, 03 Jul 2024 21:10:10 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sP5Mo-001GUe-2P
	for lore@lore.pengutronix.de;
	Wed, 03 Jul 2024 21:10:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sP5Mo-0005aI-6U
	for lore@pengutronix.de; Wed, 03 Jul 2024 21:10:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=3bY3cVMUwCC9dWB3WMhiz2Us1rcuOgMGfFmBrt6enzU=; b=ZpZeo9IgjYRmJvhLf8i2foggpx
	x2iREIHYhY745u20ssUYT2Ab3nEfwJE/bQotgv5aYdDDrM109RqYj8ldq9bb/OMS9oXOj+WS9dtyc
	sw7/nYCR2rWq/KZZ6xsMap0yUhxlKb6ubu9K5wJYV2A4rEve4qKHqBnn9SttSVHMAVcCam180kNwD
	D0YFaVxIJTclo+Ow7FuFVDhPF52pyPJX1KFaNkdaq7d1sMl4xgfdmBN/AmC6pfkmSA6ifPW2zQOnd
	nV1IFSbmE+cRxmCezAxvMKAhVtq4MdsyxW6mgKwB8FR6YKML4pN6JVyzvT3ICA02fl4MiAm4x+FpU
	zOxJY/rg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sP5MO-0000000BF95-0Un0;
	Wed, 03 Jul 2024 19:09:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sP5ML-0000000BF8F-0frq
	for barebox@lists.infradead.org;
	Wed, 03 Jul 2024 19:09:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sP5MJ-0005VE-Lh; Wed, 03 Jul 2024 21:09:39 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sP5MJ-006uhw-8d; Wed, 03 Jul 2024 21:09:39 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sP5MJ-002tO2-0a;
	Wed, 03 Jul 2024 21:09:39 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  3 Jul 2024 21:09:36 +0200
Message-Id: <20240703190937.689547-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240703_120941_222220_1B2F000A 
X-CRM114-Status: GOOD (  10.26  )
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
Subject: [PATCH 1/2] nvmem: add support for fixed-layout binding
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

At long last, nvmem cells as direct subnodes of the provider has been
deprecated and replaced by a layout binding that allows a NVMEM provider
to do arbitrary processing of cells before exposing them to the
framework.

We'll want to support the layout binding eventually, but for now, let's
just add the trivial modifications necessary to support the
fixed-layout, which is just a compatible = "fixed-layout" node
that contains the individual cells.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/nvmem/core.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/nvmem/core.c b/drivers/nvmem/core.c
index bf393fc180ab..67276cf3b57b 100644
--- a/drivers/nvmem/core.c
+++ b/drivers/nvmem/core.c
@@ -400,6 +400,8 @@ struct nvmem_cell *of_nvmem_cell_get(struct device_node *np,
 		return ERR_PTR(-EINVAL);
 
 	nvmem_np = of_get_parent(cell_np);
+	if (nvmem_np && of_device_is_compatible(nvmem_np, "fixed-layout"))
+		nvmem_np = of_get_parent(nvmem_np);
 	if (!nvmem_np)
 		return ERR_PTR(-EINVAL);
 
-- 
2.39.2




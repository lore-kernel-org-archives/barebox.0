Delivery-date: Mon, 28 Jun 2021 07:45:50 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lxk5e-0000Dq-OU
	for lore@lore.pengutronix.de; Mon, 28 Jun 2021 07:45:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lxk5d-0004d9-To
	for lore@pengutronix.de; Mon, 28 Jun 2021 07:45:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=szaCbUD7eO87JhWCv9DPfZnM1DRG6eGnUGHd7RB0RDw=; b=rWYk3feCs0ynyZ
	F7uAyLMSk6xPznMWlUFjMURf/MbGOr8XwdOpCGj0yEsr+ewcAT7tSlYRQ0S7E22/cQ+7xdfCiuiGi
	MeR6Wvys4V7OMwdI5F3RGz0fjl3Fz2UPHLq+KpLxXoULBaEylLTpPrdsIsrJGXmJeWsVFHcxb8EKM
	bqh6bZ6l1uqlbgOnD6R31ys4CisCOr5ItII1ublu4WPHvey+Mt2yczuotbGYXVkg1AgPQ6ngwUfym
	SYGhl090tV/CWNM/Bw7cLJzR+jEHp407yLVcH1p6atVTJNP7ntW0iju+FsJZOFDCaF8sVPiL/kJ3X
	KjM/U+NKgBa1CPnmS3TQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lxk4M-006t2D-Cb; Mon, 28 Jun 2021 05:44:30 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lxk4F-006t0t-FO
 for barebox@lists.infradead.org; Mon, 28 Jun 2021 05:44:25 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lxk4D-0004Qs-Ro; Mon, 28 Jun 2021 07:44:21 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lxk4D-00085g-Hz; Mon, 28 Jun 2021 07:44:21 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 28 Jun 2021 07:44:20 +0200
Message-Id: <20210628054420.31051-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210627_224423_556921_1C81EAF5 
X-CRM114-Status: GOOD (  10.04  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] nvmem: fix dev_dbg(unregistered_device, ...)
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The format string already prints the future name of the NVMEM device, so
use the parent name as qualifier for the dev_dbg call.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/nvmem/core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/nvmem/core.c b/drivers/nvmem/core.c
index ae9c965c25e2..4e558e165063 100644
--- a/drivers/nvmem/core.c
+++ b/drivers/nvmem/core.c
@@ -224,7 +224,7 @@ struct nvmem_device *nvmem_register(const struct nvmem_config *config)
 	dev_set_name(&nvmem->dev, config->name);
 	nvmem->dev.id = DEVICE_ID_DYNAMIC;
 
-	dev_dbg(&nvmem->dev, "Registering nvmem device %s\n", config->name);
+	dev_dbg(nvmem->dev.parent, "Registering nvmem device %s\n", config->name);
 
 	rval = register_device(&nvmem->dev);
 	if (rval) {
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox


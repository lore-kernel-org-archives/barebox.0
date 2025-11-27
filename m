Delivery-date: Thu, 27 Nov 2025 12:34:58 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOaH4-005Pah-1i
	for lore@lore.pengutronix.de;
	Thu, 27 Nov 2025 12:34:58 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOaH4-0002Bl-0p
	for lore@pengutronix.de; Thu, 27 Nov 2025 12:34:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Z5XnNWo+ztiJV1sEJ+nYhR4r5KsIawFhXODZn/y0bts=; b=3l/Kc+07+TkNGCjiJ5NFt1Hpar
	MnPA0/44C7yo98K4lj+v10aamTu/Yn0KsyCkGuwB/OVFbl5eUOiBC25u+QIObiJdFEW39e0V7XDo5
	Enf2LgwsQaYPzL1tEwatOaE33DbQ1nP9SdCJZAhVDyQ6KecVjY+F9ymBakejQ5kILkcL6WeoI9Gvr
	hMvrk+F0UbOO7cZyFOc8DfdrZkTrcebUcQm+H/3PWa/fcoRTgSLK7ySAERNroc0B+lN6SPhp528f2
	sADfP9xkuPisGWOo9Op9KU8OgNqo13roLjfCQbItr0BFtqWqr1mXY8yyJnflC6H+kb22zh1MBDK6i
	y8Dtyj9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOaGZ-0000000GSdh-21Xe;
	Thu, 27 Nov 2025 11:34:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOaGV-0000000GScA-2Zfv
	for barebox@lists.infradead.org;
	Thu, 27 Nov 2025 11:34:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vOaGU-00022e-71; Thu, 27 Nov 2025 12:34:22 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vOaGU-002mQn-07;
	Thu, 27 Nov 2025 12:34:22 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vOaGU-0000000BV0F-1Zy0;
	Thu, 27 Nov 2025 12:34:21 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 27 Nov 2025 12:34:16 +0100
Message-ID: <20251127113416.2740774-3-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251127113416.2740774-1-s.hauer@pengutronix.de>
References: <20251127113416.2740774-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251127_033423_648192_C5EEB6D0 
X-CRM114-Status: UNSURE (   9.02  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 3/3] dm: fix memory leak
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The cdev name is never freed, add missing free.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/block/dm/dm-core.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/block/dm/dm-core.c b/drivers/block/dm/dm-core.c
index fd7ed0d84e..18e4fd2440 100644
--- a/drivers/block/dm/dm-core.c
+++ b/drivers/block/dm/dm-core.c
@@ -443,6 +443,7 @@ void dm_destroy(struct dm_device *dm)
 	struct dm_target *ti, *tmp;
 
 	blockdevice_unregister(&dm->blk);
+	free(dm->blk.cdev.name);
 
 	list_for_each_entry_safe_reverse(ti, tmp, &dm->targets, list) {
 		ti->ops->destroy(ti);
-- 
2.47.3




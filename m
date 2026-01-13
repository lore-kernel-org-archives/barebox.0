Delivery-date: Tue, 13 Jan 2026 14:25:38 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vfeOw-000tOn-38
	for lore@lore.pengutronix.de;
	Tue, 13 Jan 2026 14:25:38 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vfeOw-0000wC-0t
	for lore@pengutronix.de; Tue, 13 Jan 2026 14:25:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Yas9BqEGDucCNHy3+XpLOui04pMw3ZKvRnTsX1CcqKA=; b=CaQiYOD44Aqgm4juPCjy2j38Yn
	YGarqe72NBTAGarlSKKfukWciJdmbUOfmzYGO7rKWEJ/OUlO/u223dKfYraEvq1U6epJZZCaEfxEx
	9uCqBTOBGF1QINYoO5IwyIUwhkvrY3MiTmZ7zGcz2RE7aEGx4DGf1AKAkhZUiy/CRTMPe/lWQ0X4E
	DIP7aecVu0kz1Dh3IBn4E9YjZSFa0QG4f76wyQQMuOIAC5AnjeNLYreMe0w4f2D6otYovxqxh+NTH
	+11sF9tR6MAnkml1a3+sQIVsx9w2Amhh8mHz1VP499k+hg51t28Vh6gOmZt8twOLE0zKcoglVJ9vt
	TOpVlPsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfeOQ-000000079jY-3TrE;
	Tue, 13 Jan 2026 13:25:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfeOO-000000079j8-2lUt
	for barebox@lists.infradead.org;
	Tue, 13 Jan 2026 13:25:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ejo@pengutronix.de>)
	id 1vfeOL-0000hz-Dt; Tue, 13 Jan 2026 14:25:01 +0100
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <ejo@pengutronix.de>)
	id 1vfeOL-000QnA-2t;
	Tue, 13 Jan 2026 14:25:01 +0100
Received: from ejo by dude06.red.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <ejo@pengutronix.de>)
	id 1vfeOL-0000000Fyqq-0jJS;
	Tue, 13 Jan 2026 14:25:01 +0100
From: =?UTF-8?q?Enrico=20J=C3=B6rns?= <ejo@pengutronix.de>
To: barebox@lists.infradead.org
Cc: =?UTF-8?q?Enrico=20J=C3=B6rns?= <ejo@pengutronix.de>
Date: Tue, 13 Jan 2026 14:24:25 +0100
Message-ID: <20260113132444.3808198-1-ejo@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260113_052504_719755_9F6B3C0F 
X-CRM114-Status: UNSURE (   8.33  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] state: helpful error message if state GUID cannot be found
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

So far, if the user didn't specify a valid GPT UID, state initialization
failed with the not so helpful error message:

| ERROR: state state.of: probe failed: Invalid argument

Improve this by also providing a helpful error message.

Signed-off-by: Enrico Jörns <ejo@pengutronix.de>
---
 common/state/state.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/common/state/state.c b/common/state/state.c
index ac6cd6e572..1c23ad4c80 100644
--- a/common/state/state.c
+++ b/common/state/state.c
@@ -649,6 +649,7 @@ struct state *state_new_from_node(struct device_node *node, bool readonly)
 	if (cdev_is_block_disk(cdev)) {
 		cdev = cdev_find_child_by_gpt_typeuuid(cdev, &barebox_state_partition_guid);
 		if (IS_ERR(cdev)) {
+			dev_err(&state->dev, "cannot find backend GPT partition by PartitionTypeGUID\n");
 			ret = -EINVAL;
 			goto out_release_state;
 		}
-- 
2.47.3




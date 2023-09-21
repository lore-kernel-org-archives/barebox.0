Delivery-date: Thu, 21 Sep 2023 13:06:23 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qjHVo-005ngZ-Dt
	for lore@lore.pengutronix.de; Thu, 21 Sep 2023 13:06:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qjHVm-0003sq-Ei
	for lore@pengutronix.de; Thu, 21 Sep 2023 13:06:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lbQnJnisIh7kR9U3aT5RQg2xX5pJQXutS7gFsOhFTzU=; b=PJiNMVb51nyXx1T4HpBv/Rhl47
	T/OJdWR+oNz2gx3nf2DOH/Mdes/u0jLdmc0hG+8GSstPqUWbJyBsyeX7/2bHoLCOtxa8PNCodjjl6
	19fo3QBd8TQEo62OoDcsPBRFxpyxIqNPJSsOlwYaZfQxxoCEgwFBB0ODLxGBlTmoJGOL07Aah/H0R
	eTdxbGCPiDAKLPPT9BcwugX37qRlDZ2W5RRQo5cP/KCdhrMjmOaZ+61Lq/HrgdHYEru3BGY55e0Bm
	7A0cFldEAZeU71C6EbPZL/UcYuQEsPF+lLn+oO/VkiN6ikz3p5idfo6rX8DKuD6H7+CZe+f/bKFwS
	5GgKYtFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qjHUa-005sYJ-2X;
	Thu, 21 Sep 2023 11:05:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qjHUX-005sWQ-16
	for barebox@lists.infradead.org;
	Thu, 21 Sep 2023 11:05:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qjHUR-0003UN-R8; Thu, 21 Sep 2023 13:04:59 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qjHUR-007uDb-ES; Thu, 21 Sep 2023 13:04:59 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qjHUR-00G95W-5z; Thu, 21 Sep 2023 13:04:59 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 21 Sep 2023 13:04:57 +0200
Message-Id: <20230921110457.3848170-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230921110457.3848170-1-s.hauer@pengutronix.de>
References: <20230921110457.3848170-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230921_040505_377240_AB2B9C6B 
X-CRM114-Status: GOOD (  14.06  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] bootm: fix printing kernel command line
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Since af084cae41ce ("of: never fixup internal live tree")
of_get_fixed_tree() no longer fixes the tree passed into the function, but a copy thereof
instead. in bootm this has the side effect that data->of_root_node
will no longer contain a fixed tree, but the original tree instead.
data->of_root_node is used later for printing the kernel command line
and it's also printed with bootm -vv, so this pointer should really
hold a fixed tree.
Fix this by not using of_get_fixed_tree() but open coding it.

Fixes: af084cae41ce ("of: never fixup internal live tree")
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/bootm.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/common/bootm.c b/common/bootm.c
index 27ada61f4e..2469d43441 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -421,7 +421,9 @@ void *bootm_get_devicetree(struct image_data *data)
 		of_add_reserve_entry(data->initrd_res->start, data->initrd_res->end);
 	}
 
-	oftree = of_get_fixed_tree(data->of_root_node);
+	of_fix_tree(data->of_root_node);
+
+	oftree = of_flatten_dtb(data->of_root_node);
 	if (!oftree)
 		return ERR_PTR(-EINVAL);
 
-- 
2.39.2




Delivery-date: Mon, 24 Apr 2023 14:19:26 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pqvAD-00FZ1c-BL
	for lore@lore.pengutronix.de; Mon, 24 Apr 2023 14:19:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pqvAD-0004PF-9g
	for lore@pengutronix.de; Mon, 24 Apr 2023 14:19:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HwEj4+kTsU1/+kXE4Ns5LRB9sdXH2nHuFWe0bBbWFPA=; b=10nauXCdJbhWU7aEri7VNRFn4b
	rCImOjSBJQXYknBHkV+ocdpijwfnbwH9dWr4LyVKKFxozsuLZ2jTWM7MjzKJi3ZEe6+IqOTxzkBnq
	oCgOzV1Br2xfur05Kbzhzka/7OrgWlO6BPCaKPK3AObKViCJO+5yX67SfUQ3uYBZNvjWjK+Ut6F6h
	CArwrFZo4CzvrTbx+zYGuvrOrtg/oowVPXNtMn8qza4aVZQ2E8+JvGtDDipDVVLt3iseOoQhn7jWN
	50UT5q+Ft/SNJ0w2PETIomu+4zasd2S3YHzjqs98GDq/tMa5zxgLXMN+dr1xH+Uz7ABnMWJcYVtd2
	bIXtEw4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pqv9B-00GHaG-1F;
	Mon, 24 Apr 2023 12:18:21 +0000
Received: from relay2-d.mail.gandi.net ([2001:4b98:dc4:8::222])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pqv97-00GHXk-0I
	for barebox@lists.infradead.org;
	Mon, 24 Apr 2023 12:18:18 +0000
Received: (Authenticated sender: ahmad@a3f.at)
	by mail.gandi.net (Postfix) with ESMTPSA id C18AF40009;
	Mon, 24 Apr 2023 12:18:14 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Mon, 24 Apr 2023 14:18:03 +0200
Message-Id: <20230424121805.150434-5-ahmad@a3f.at>
X-Mailer: git-send-email 2.38.4
In-Reply-To: <20230424121805.150434-1-ahmad@a3f.at>
References: <20230424121805.150434-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230424_051817_287675_2C0E68F6 
X-CRM114-Status: GOOD (  10.23  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 5/7] driver: be explicit about supported #feature-cells
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

A feature controller may control the activation of multiple devices.
This is represented by a single index argument in the API. Thus any
value higher than #feature-cells = <1>; is unsupported, so let's be
explicit about that. #feature-cells = <0>; specs will just be
interpreted as if the argument was a 0.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 drivers/base/featctrl.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/base/featctrl.c b/drivers/base/featctrl.c
index abe21698ede7..f40b1f04bc1f 100644
--- a/drivers/base/featctrl.c
+++ b/drivers/base/featctrl.c
@@ -53,10 +53,13 @@ static struct feature_controller *featctrl_get_from_provider(struct of_phandle_a
 	if (ret < 0)
 		return ERR_PTR(ret);
 
+	if (spec->args_count > 1)
+		return ERR_PTR(-EINVAL);
+
 	/* Check if we have such a controller in our array */
 	list_for_each_entry(featctrl, &of_feature_controllers, list) {
 		if (dev_of_node(featctrl->dev) == spec->np) {
-			*gateid = spec->args[0];
+			*gateid = spec->args_count ? spec->args[0] : 0;
 			return featctrl;
 		}
 	}
-- 
2.38.4




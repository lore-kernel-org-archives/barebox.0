Delivery-date: Mon, 23 Jun 2025 08:40:17 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uTaqn-00AB1m-31
	for lore@lore.pengutronix.de;
	Mon, 23 Jun 2025 08:40:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uTaqm-0001Px-OZ
	for lore@pengutronix.de; Mon, 23 Jun 2025 08:40:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=oqn1XFg6x8/YnvRV3sGVDC5eNNH0/2G/FVqY3Nyoq10=; b=Aj+iaO8Ihs9NtzeuudLPSqUJGM
	dPRSgKWMnmZTP+zyr3EQPt3AvnsgELYNWoO5F+3kdJrozHZHcXZcptbvFxkIu6aR91yEI8iySmAlM
	zsnD+ax0xb3b0gO8yIfGJB8WQ8tt8eQ7K2UzZoOH/U4b1N4RNG3ftidr656MEmE6QU5bPFXvBX6k+
	PMjPdQOZSSiBzNNmTlqbzpuz0VqggmtzlLcmeDetoMnoF78o+dkSrclgVyWQw2p2J8g3bAcxVzB2+
	u0mBtIwUTJCXc6XjExHf/QeLkPjkgoBNuoxZBPgMMJtq5In4ourOaG0boBohNH35zaHErszY7kIUv
	SE4dIaSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTaqC-00000001kY7-3V6m;
	Mon, 23 Jun 2025 06:39:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTaXl-00000001iLi-3d31
	for barebox@lists.infradead.org;
	Mon, 23 Jun 2025 06:20:40 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uTaXi-0001b6-89; Mon, 23 Jun 2025 08:20:34 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 23 Jun 2025 08:20:30 +0200
Message-Id: <20250623062032.3527006-2-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250623062032.3527006-1-a.fatoum@barebox.org>
References: <20250623062032.3527006-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250622_232037_932848_D51CDC19 
X-CRM114-Status: GOOD (  10.32  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 2/4] lib: idr: make idr_for_each_entry removal safe
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

There's no idr_for_each_entry_safe and the Linux implementation of
idr_for_each_entry already allows to free while iterating and indeed,
the newly introduced 9P file system makes use of exactly that.

The barebox implementation is home-grown, because we didn't yet import
radix tree support and it did not allow freeing during iteration.

Rework our macro to allow this.

Fixes: d28d3d9159a1 ("include: linux/idr.h: implement more Linux API")
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 include/linux/idr.h | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/include/linux/idr.h b/include/linux/idr.h
index 07adde713477..e726d17b591f 100644
--- a/include/linux/idr.h
+++ b/include/linux/idr.h
@@ -37,9 +37,10 @@ struct idr {
  */
 #define idr_for_each_entry(_idr, _entry, _id)				\
 	for (struct idr *iter =						\
-	     list_first_entry_or_null(&(_idr)->list, struct idr, list);	\
-	     (iter && iter != (_idr)) || (_entry = NULL);	\
-	     iter = list_next_entry(iter, list))			\
+	     list_first_entry_or_null(&(_idr)->list, struct idr, list), \
+	     *tmp = iter ? list_next_entry(iter, list) : NULL;		\
+	     (iter && iter != (_idr)) || (_entry = NULL);		\
+	     iter = tmp, tmp = tmp ?  list_next_entry(tmp, list) : NULL)\
 	if ((_entry = iter->ptr, _id = iter->id, true))
 
 struct idr *__idr_find(struct idr *head, int lookup_id);
-- 
2.39.5




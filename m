Delivery-date: Mon, 09 Feb 2026 10:09:50 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vpNHC-00AV9A-2l
	for lore@lore.pengutronix.de;
	Mon, 09 Feb 2026 10:09:50 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vpNHB-0005Jz-PC
	for lore@pengutronix.de; Mon, 09 Feb 2026 10:09:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=k6v50JWNCZXGEVdaSZ22OIQAblcexmSNgCdfC4FJZ4U=; b=YAX8sAwCYqfQFa7KD7VUaXtKQO
	ovZdeViZc+sBpO/B+KV/wrxDfV58iQgnX9P0a6na37St0oLvm+u0jTyFKcbZrGFsBZwitGbIvZry8
	GHUwARRSsyaekzx4rweFF00Sbm3iXBWZtBQGYrn7a5WGP2xgIKqE8RwCegCKuDAFRNJgq+aTNU5o1
	6eouCd2ausSer7fNIUqRij+SEIq70O5nuBsyksqkYoWGkKhw44nVmulMCAMFiesRTGkoJExBL9/WI
	fFwHunAmMZH53IX5nIrd37Bb+EP+75Dc7JPR1ap+o0W2Y8HKKr61B4AAAEoURowFvdxQa/e6OrJd0
	VGeg1wXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpNGj-0000000F5nD-0TH6;
	Mon, 09 Feb 2026 09:09:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpNGf-0000000F5kY-2avT
	for barebox@lists.infradead.org;
	Mon, 09 Feb 2026 09:09:19 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=localhost.localdomain)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vpNGc-0004wQ-Jm; Mon, 09 Feb 2026 10:09:14 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon,  9 Feb 2026 10:08:51 +0100
Message-ID: <20260209090911.3561875-2-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260209090911.3561875-1-a.fatoum@barebox.org>
References: <20260209090911.3561875-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260209_010917_673410_C087DF49 
X-CRM114-Status: GOOD (  11.91  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 1/5] boot: aggregate bootentry provider entries one by one
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

To allow individual bootentry providers to more easily sort their
entries, pass each provider an empty list that's spliced onto the tail
of the aggregated list at the end.

This way we maintain that boot entries of different providers are sorted
by provider priority and boot entries of a single provider can be sorted
by each provider without having to worry about foreign boot entries.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 common/boot.c | 18 +++++++++++++++++-
 1 file changed, 17 insertions(+), 1 deletion(-)

diff --git a/common/boot.c b/common/boot.c
index 78d990f1617e..8ccc269ac5bd 100644
--- a/common/boot.c
+++ b/common/boot.c
@@ -26,6 +26,14 @@ int bootentries_add_entry(struct bootentries *entries, struct bootentry *entry)
 	return 0;
 }
 
+#define BOOTENTRIES(name) \
+	struct bootentries name = { .entries = LIST_HEAD_INIT(name.entries) }
+
+static inline void bootentries_merge(struct bootentries *dst, struct bootentries *src)
+{
+	list_splice_tail_init(&src->entries, &dst->entries);
+}
+
 struct bootentries *bootentries_alloc(void)
 {
 	struct bootentries *bootentries;
@@ -452,9 +460,17 @@ int bootentry_create_from_name(struct bootentries *bootentries,
 		name = nfspath;
 
 	list_for_each_entry(p, &bootentry_providers, list) {
-		ret = p->generate(bootentries, name);
+		BOOTENTRIES(provider_bootentries);
+
+		ret = p->generate(&provider_bootentries, name);
 		if (ret > 0)
 			found += ret;
+
+		/* We want to allow for providers to sort their bootentries as
+		 * they see fit, so they are passed an empty list above with
+		 * only their own entries and then we aggregate here
+		 */
+		bootentries_merge(bootentries, &provider_bootentries);
 	}
 
 	free(nfspath);
-- 
2.47.3




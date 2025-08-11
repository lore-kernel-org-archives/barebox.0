Delivery-date: Mon, 11 Aug 2025 14:29:57 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ulRf3-009Kfu-08
	for lore@lore.pengutronix.de;
	Mon, 11 Aug 2025 14:29:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ulRem-0005mX-HN
	for lore@pengutronix.de; Mon, 11 Aug 2025 14:29:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VXtN9rqNac+QMHw03j2mCQvrF1v6JPhUad70Yy9Cnpc=; b=400dS1trAym3crPH9KcD6Kohfx
	DhC0/3m5hZTk/uNThO9p9Yc9Hy4HGWFunnQ1a9+7jP1a6NQ6noNgS4ZguvogABGfk2Fx4W+jGhkqf
	CzZVtC9Sro5olwDC+SALbdABf5A7n4McaUQzfzE+iClMbMUAwqPWwPsgwzvp2E2i6/vTzPbYXeum2
	byUSomTbAXs1rKhIdTsNW3W+8Bg4mdvoeNq97gMrgjQxz75P5hngp7OSjo2YJUtnsS1CuVLdrHZJZ
	WeXKM19uv05farEULF9dfC7HeYtj3WndVxHMozbIW+2yR5CDXg+ro67M/U+hlOMZR/vSOXoC+aAnO
	/nPQv0+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulRdh-00000007dbD-3UTD;
	Mon, 11 Aug 2025 12:28:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulRde-00000007dVt-2PUc
	for barebox@lists.infradead.org;
	Mon, 11 Aug 2025 12:28:32 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1ulRdb-0004WP-LB; Mon, 11 Aug 2025 14:28:27 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 11 Aug 2025 14:27:44 +0200
Message-Id: <20250811122824.1667791-5-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250811122824.1667791-1-a.fatoum@barebox.org>
References: <20250811122824.1667791-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250811_052830_623506_D1C6B937 
X-CRM114-Status: UNSURE (   7.75  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 04/44] param: implement dev_remove_parameters using param_remove
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Cut down on the duplication by using param_remove.

No functional change.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 lib/parameter.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/lib/parameter.c b/lib/parameter.c
index b51cee3d0e08..584876bbc24b 100644
--- a/lib/parameter.c
+++ b/lib/parameter.c
@@ -1026,12 +1026,8 @@ void dev_remove_parameters(struct device *dev)
 {
 	struct param_d *p, *n;
 
-	list_for_each_entry_safe(p, n, &dev->parameters, list) {
-		p->set(dev, p, NULL);
-		list_del(&p->list);
-		free_const(p->name);
-		free(p);
-	}
+	list_for_each_entry_safe(p, n, &dev->parameters, list)
+		param_remove(p);
 }
 
 /** @page dev_params Device parameters
-- 
2.39.5




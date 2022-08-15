Delivery-date: Mon, 15 Aug 2022 16:38:18 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oNbEO-006YM3-7P
	for lore@lore.pengutronix.de; Mon, 15 Aug 2022 16:38:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oNbEO-0000Et-SH
	for lore@pengutronix.de; Mon, 15 Aug 2022 16:38:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=H6VtHUDS+LUtvZ2kaJGQTKqIZ9qoMsSe5soI11tQTVE=; b=N+fxTSWI/TIEW5jEKRAq0PKleN
	NrgTZy+RMlqYWsjqMxkWGKinmJa+ofKTuNu0l1QKtZtMRe6VrUZWD65fNoaHMNWt7UqS2Tre1YwFe
	+J9n/2uAreC1Nm0hv4uSe/Xveh5suUr5Cf+9zuLCd3ne4hWu+5lzJX9V6LYyiv6hYlQUMLoT95f6y
	W8sm5/frFtkcZ1lN1KQt300qm2fDAnYO3L6UFRwbpW7tdUa1RdkWMBVFmTxHE1o/yQFHLybM8kg1A
	vn5lKgGBJnwAAdQtC7okF1ozhLmEFU1g2DIp2rVtARQTNVExynyFPh8ZwREMxW2sZw1PujdmnBv9U
	w6wmShHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNbCd-000A9S-Ua; Mon, 15 Aug 2022 14:36:28 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNatt-00HPil-90
	for barebox@lists.infradead.org; Mon, 15 Aug 2022 14:17:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oNatr-0005tJ-Ox; Mon, 15 Aug 2022 16:17:03 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oNato-003wEz-Pz; Mon, 15 Aug 2022 16:17:03 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oNatq-00A2Re-7j; Mon, 15 Aug 2022 16:17:02 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 15 Aug 2022 16:17:00 +0200
Message-Id: <20220815141700.2392626-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220815114246.2275465-2-a.fatoum@pengutronix.de>
References: <20220815114246.2275465-2-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220815_071705_456891_F1A9E460 
X-CRM114-Status: GOOD (  10.50  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] fixup! pstore: ram: use new of_fixup_reserved_memory() helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Sent out series too soon. Now tested on arm32 system with
ramoops enabled and fixup was functional.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/pstore/ram.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/pstore/ram.c b/fs/pstore/ram.c
index e8830dcc31f0..29585bff5950 100644
--- a/fs/pstore/ram.c
+++ b/fs/pstore/ram.c
@@ -485,7 +485,7 @@ static int ramoops_of_fixup(struct device_node *root, void *data)
 	if (ret)
 		return ret;
 
-	node = of_get_child_by_name(node, "ramoops");
+	node = of_find_node_by_path_from(root, "/reserved-memory/ramoops");
 	if (!node)
 		return -ENOMEM;
 
-- 
2.30.2




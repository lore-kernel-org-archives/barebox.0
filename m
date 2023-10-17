Delivery-date: Tue, 17 Oct 2023 16:54:57 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qslTG-00Bsbl-1w
	for lore@lore.pengutronix.de; Tue, 17 Oct 2023 16:54:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qslTE-0003RY-Hd
	for lore@pengutronix.de; Tue, 17 Oct 2023 16:54:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QQSo7SJQoy8kvaECTRHwSLAztYfYX+aSCSv+DhieoO8=; b=YZPlXqYstFaMWSQ+xsRJt73lH5
	8+iLtqxxH8TpxsbCU/0cse+RL5rwXZDjxpZvRO12S9GHGirPzhNDVK69WZsToEeTOp/xc+5A5SLbm
	iwNUodSeLy6pzyTMdQh0u4Gvs7QjuNh5DBsI/38cshBjfq+ZD4/5M8IOt0e39eqOpLbOLiWBjo36J
	kLJUUQxIXx2YTG8/xrpdFSOja61WC2CmxagCXbQeajYHdvVP+v8gq0gesbidvEoTiqsVUuUdbKzJa
	o92FDrbH6ouaXfVjp6lyPyMcbi9PYbPihbf3jm3YgpaY7DgYPcmDZhDPdqwQIW3O7m5fAvBofT+PB
	kvI4sdQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qslRu-00CeZe-30;
	Tue, 17 Oct 2023 14:53:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qslQ2-00CcLw-0c
	for barebox@lists.infradead.org;
	Tue, 17 Oct 2023 14:51:43 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1qslPy-0001wJ-BN
	for barebox@lists.infradead.org; Tue, 17 Oct 2023 16:51:34 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 17 Oct 2023 16:51:04 +0200
Message-Id: <20231017145131.3069283-3-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231017145131.3069283-1-m.felsch@pengutronix.de>
References: <20231017145131.3069283-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231017_075138_303236_E68AE476 
X-CRM114-Status: GOOD (  10.28  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 02/29] i.MX: HABv4: fix event status comparison
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Rouven Czerwinski <r.czerwinski@pengutronix.de>

Instead of only printing events belonging to a certain level, print all
events that have a higher status than the current event. This fixes
event printing for i.MX8M based boards.

Fixes: 8b35facbb971 ("i.MX: HABv4: Improve HAB event printing")

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
Changelog:
v2:
- unchanged
- v1-link: https://lore.barebox.org/barebox/20231010143314.2031253-1-m.felsch@pengutronix.de/T/#t

 drivers/hab/habv4.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/hab/habv4.c b/drivers/hab/habv4.c
index 9f54aed5f508..bbfbf697b520 100644
--- a/drivers/hab/habv4.c
+++ b/drivers/hab/habv4.c
@@ -224,7 +224,7 @@ static enum hab_status imx8m_read_sram_events(enum hab_status status,
 		}
 	}
 	while (i < num_events) {
-		if (events[i]->status == status) {
+		if (events[i]->status >= status) {
 			if (internal_index == index) {
 				*bytes = sizeof(struct hab_event_record) +
 					be16_to_cpu(events[i]->hdr.len);
-- 
2.39.2




Delivery-date: Wed, 28 May 2025 14:19:51 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKFl9-001Bab-1w
	for lore@lore.pengutronix.de;
	Wed, 28 May 2025 14:19:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKFl8-0000i4-D5
	for lore@pengutronix.de; Wed, 28 May 2025 14:19:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6NYFokrxLJ3vAxc3SeRRLeBCkrOwK+GKnVpbI1I8SD4=; b=v41rISUSOMAEcH0zDWMj1L6/WY
	ng2v481G+AaJemTl4By2oGLcOdr6zoiBd++cLWzZV4uSzb1zgDMSyostEydN2Cqrr6nF0LK37bNow
	nQKP9yyJb8qMpil9VkStTw2fVIwf923rULCj8X6BlIA5JbU4/mNJ28OMfnnqptL02OqUgQZOzDq2A
	Hndjxhy9+e4qb3nkG+iDeITGab66DsIIwXBziaHoMzhlBR+9dAUokGsb2fzIeqSuDiJ20RY5dY6Bk
	dF2TdievbSB7FdCoTS3ykSJfcPvv/EVdxD56SLS2ncpsnHu9jrFzV/xl/fW6jauOPg49/SFxxAoi1
	LAvKZQ5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKFkq-0000000D5VO-3XyI;
	Wed, 28 May 2025 12:19:32 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKEa7-0000000CwCJ-0ltq
	for barebox@bombadil.infradead.org;
	Wed, 28 May 2025 11:04:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=6NYFokrxLJ3vAxc3SeRRLeBCkrOwK+GKnVpbI1I8SD4=; b=tm6Kw1zeIq46SNS1QoWzomIcSA
	u3AwTO3Zagjz4dFVamhNgJRyTHIVlgd3naaWxyDyz9eXg9ktfSAKR5ldVzWZ77juacLCYL2yihEtP
	RmrVVFn6Q5rFUAYhIJ4PD1+/sxMk84/aORRtZkBiXCvfqUHwIPMsnR7uNyIG/xvap9D6mqDGbzuhb
	43PNQlyZZ7a/yOh/9Wep5JfxnKI6/4LeysbSV2ZXoYrC/7ft1iaI/k/C2oImmi1qxA1WIWiGYYLvq
	RYamjGq1vX8fJ9fc8Uyu5J1GUuONRz10JWlsatANPfTLrDgE6kTcYV1JJoybmqwXqZ9MgUP8l16On
	KubZ+e+g==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKEa3-0000000DXXQ-48P9
	for barebox@lists.infradead.org;
	Wed, 28 May 2025 11:04:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uKEa3-00038M-4u; Wed, 28 May 2025 13:04:19 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uKEa2-000Zhk-2h;
	Wed, 28 May 2025 13:04:18 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uKEXm-00DuY0-1i;
	Wed, 28 May 2025 13:01:58 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 28 May 2025 12:50:46 +0200
Message-Id: <20250528105046.3270397-11-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250528105046.3270397-1-a.fatoum@pengutronix.de>
References: <20250528105046.3270397-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250528_120420_036779_836FDA98 
X-CRM114-Status: UNSURE (   7.81  )
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
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 10/10] of: drop undefined fdt_get_tree declaration
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We don't use this anywhere, so drop it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/of.h | 2 --
 1 file changed, 2 deletions(-)

diff --git a/include/of.h b/include/of.h
index f08ac8ccca69..2258cd501b72 100644
--- a/include/of.h
+++ b/include/of.h
@@ -78,8 +78,6 @@ bool of_match(struct device *dev, const struct driver *drv);
 int of_add_initrd(struct device_node *root, resource_size_t start,
 		resource_size_t end);
 
-struct fdt_header *fdt_get_tree(void);
-
 /* Helper to read a big number; size is in cells (not bytes) */
 static inline u64 of_read_number(const __be32 *cell, int size)
 {
-- 
2.39.5




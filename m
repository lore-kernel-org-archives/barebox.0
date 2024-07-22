Delivery-date: Mon, 22 Jul 2024 19:06:45 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sVwUn-001sHi-0T
	for lore@lore.pengutronix.de;
	Mon, 22 Jul 2024 19:06:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sVwUm-0002kq-JB
	for lore@pengutronix.de; Mon, 22 Jul 2024 19:06:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=LU0rj6/4AO0U/gN2xa9tuX9W8KQUgB5ZnbjhgmAdgbw=; b=IB53r7jdqmLhNWHylSwkJ33lgi
	B0S/Y6xPiDOhbv2/ZBrIa3k52KMCcUp19xU3IPglsmBk/OBZg4AeAGDPmzGdtq94ceIqMy3E7Eh8E
	CwVS6p/2O7R2tqgbsAkV5+ZH4kSi+p6F/mI/CX53i7/svcLE6WCMr2f84ZX6u98ajF5S96jx6MFor
	adHbm+xz83YiCjQHbXwF/h16B9PUH+yacjNEgjKmBHbVVBqkIKQwn4zUYL0TTH7pnFpUV5sy0e/Fe
	4tMCVUAVxcg4cCsp8v7SxS+l5y0aBgM3LkOMN4K0PBa42w23gYp2l1y/1fcuiqotZKpqJKuFQ36p9
	0xEgLi1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sVwUI-0000000A97n-1Vmj;
	Mon, 22 Jul 2024 17:06:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sVwUD-0000000A96a-316R
	for barebox@lists.infradead.org;
	Mon, 22 Jul 2024 17:06:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sVwUC-0002YR-4F; Mon, 22 Jul 2024 19:06:08 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sVwUB-001QkX-NF; Mon, 22 Jul 2024 19:06:07 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sVwUB-00GDyZ-21;
	Mon, 22 Jul 2024 19:06:07 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 22 Jul 2024 19:06:04 +0200
Message-Id: <20240722170606.3866957-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240722_100609_781550_DB9CAC2B 
X-CRM114-Status: GOOD (  11.23  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 1/3] resource: return NULL for error in request_barebox_region
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The function currently returns NULL for error if the range is in SDRAM
and couldn't be requested or an error pointer if the range is outside.

Reduce the confusion by using only one way to indicate error. As
request_barebox_region is used to replace request_sdram_region calls and
that returns NULL on error, follow suit.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/memory.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/common/memory.c b/common/memory.c
index eb7838d03613..c155cb317f25 100644
--- a/common/memory.c
+++ b/common/memory.c
@@ -84,9 +84,12 @@ struct resource *request_barebox_region(const char *name,
 	resource_size_t end = start + size - 1;
 
 	if (barebox_res && barebox_res->start <= start &&
-	    end <= barebox_res->end)
-		return __request_region(barebox_res, start, end,
-					name, IORESOURCE_MEM);
+	    end <= barebox_res->end) {
+		struct resource *iores;
+		iores = __request_region(barebox_res, start, end,
+					 name, IORESOURCE_MEM);
+		return !IS_ERR(iores) ? iores : NULL;
+	}
 
 	return request_sdram_region(name, start, size);
 }
-- 
2.39.2




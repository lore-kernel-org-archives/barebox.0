Delivery-date: Fri, 19 Dec 2025 11:39:03 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWXt1-00DAjr-1H
	for lore@lore.pengutronix.de;
	Fri, 19 Dec 2025 11:39:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWXsg-0006qx-WD
	for lore@pengutronix.de; Fri, 19 Dec 2025 11:39:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/c4tvhtRG2EAqFU0C0jySvFR9YQZpFc/PzKTHLRpq6k=; b=J9oGWvBCKegfoO8TQjOKnxMlV4
	4uO4sMgv/n05IEHyDGrdfjwnpym2eKPhiSRTjoGupKJU2pcfzAXeCmiD/c2pbIgD6VFkDUN+S23kf
	d+TdjtiuS5ArrYA9DaJa/LHImyKlmFAY8rckM2tE8dK9r1bNVo/utkk7LtOkK+VlpsKe7x9im7lRI
	YO2FzFtx/e9dYy+VYv6MJG5TEfuj3hxVwTRa4goMhy/FuhpREQ+//yGA0svx5fTQxTdbmqJiACA9i
	cbD91MrxP059NVxDURGpappqrcF6KjtWbObyVseDeIOtez7RuPwUN6yTpW3C3EW79D4qv16sQbmhJ
	UvthEY/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWXrW-0000000A6l0-395C;
	Fri, 19 Dec 2025 10:37:30 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWXr0-0000000A677-1zeZ
	for barebox@bombadil.infradead.org;
	Fri, 19 Dec 2025 10:36:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=/c4tvhtRG2EAqFU0C0jySvFR9YQZpFc/PzKTHLRpq6k=; b=RD04eb5yXiji04QHQlGVY1ClvJ
	Ew8ETxyItJCYhFXmXvRwihBFGaZ7EURpbhB6d+AJzehIPNhuyeKgwukWKUvY2KJrA52/0RvgL738F
	xKl6lOOvfi65PTte3+GMzt9IQ8ftO7IWCWhDQxrfy0t/5vk/ojEKL9hKgDYNHdBU0mLdn8+yW9G/g
	q/5UYAVBsno3RwtVwZXWubjr8kKWO7q9xeqnbGhbt6knO+V9sJZXKjm4C3CtcPGyywDVm36aUM0G6
	7RPoq2sRsnbbq0lpnbL/Q0Ur0FRCi+f42hlRHGj8N7Efc3yfYiNHkC8INjP4VJvz9eB8fkbpxZuJV
	Z7fT/vSQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWWzQ-0000000AbEJ-3IzG
	for barebox@lists.infradead.org;
	Fri, 19 Dec 2025 09:41:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWXqs-0004fq-68; Fri, 19 Dec 2025 11:36:50 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWXqr-006RVh-2z;
	Fri, 19 Dec 2025 11:36:49 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWXVh-0000000320L-1NHc;
	Fri, 19 Dec 2025 11:14:57 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 19 Dec 2025 10:20:54 +0100
Message-ID: <20251219101453.2806980-19-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251219101453.2806980-1-a.fatoum@pengutronix.de>
References: <20251219101453.2806980-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251219_094136_908014_F4E00FC3 
X-CRM114-Status: GOOD (  16.44  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2025.09.y 18/49] ARM: mmu: fix hang when reserved memory at start of RAM
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

If the memory bank starts at address 0 and the start of the SDRAM is a
reserved region, remap_range_end_sans_text() is called with start = 0,
end = 0, which is interpreted by the function to mean that it spans
the whole of RAM.

Fix the issue by not calling remap_range_end_sans_text() for empty
ranges. This fixes an early hang observed on the Raspberry Pi 3.

In the unlikely case, there is no reserved memory region and the first
bank is indeed 4G of size, we also end up with start = 0, end = 0, but
this is already being handled correctly.

Of course, this fix introduces a corner case in return: A reserved memory
entry spanning the whole lower 4G becomes unsupported on 32-bit, but
that should be a non-issue  as such a system would be fairly useless and
64-bit is not affected...

A wholesale replacement of this function is under way, so we'll
hopefully get rid of this error prone code altogether in v2026.01.0.

Fixes: 3e2d06afabe1 ("range: fix corner cases when exclusive end is zero")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Link: https://lore.barebox.org/20251107182750.3367036-1-a.fatoum@pengutronix.de
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
(cherry picked from commit ee135d98586b68892add6d139929298b69da1878)
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/cpu/mmu-common.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/cpu/mmu-common.c b/arch/arm/cpu/mmu-common.c
index 92e06b06077f..b3d9e9579686 100644
--- a/arch/arm/cpu/mmu-common.c
+++ b/arch/arm/cpu/mmu-common.c
@@ -149,7 +149,8 @@ static void mmu_remap_memory_banks(void)
 
 		/* Skip reserved regions */
 		for_each_reserved_region(bank, rsv) {
-			remap_range_end_sans_text(pos, rsv->start, MAP_CACHED);
+			if (pos != rsv->start)
+				remap_range_end_sans_text(pos, rsv->start, MAP_CACHED);
 			pos = rsv->end + 1;
 		}
 
-- 
2.47.3




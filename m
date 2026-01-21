Delivery-date: Wed, 21 Jan 2026 12:38:11 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1viWXM-003kLF-06
	for lore@lore.pengutronix.de;
	Wed, 21 Jan 2026 12:38:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1viWXL-000458-0O
	for lore@pengutronix.de; Wed, 21 Jan 2026 12:38:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=4cOC30NpBILfMOn/c1wDYarSQ3P43d9c3tkxqPAcU+M=; b=3L3tgASfS1Wtbho87HQxfHj2g1
	uHTUgE8QslZ2dDsyhPJP5eWu5ynGkMzqAArvt3rC8Pys59gjNxpAuhijlcyZOvA9T2Ukn5Ix6aOx7
	OUG4OTwU8FOyMHPgICX/LcHP+4Bx/E8vknnErpFram8/9mfjZ7OnBmbloUe4Wrgv4RJeSRe4vaxhA
	KZozePy57LOEVCNUJNScq7RgnDPW0dfJj+IUSZhfHddrI1Q9BzFYnXhZRC6s6IIXO1pZJMSmZx22M
	Ir3o91b64QyEhiGU8Vd89XYhZBo6n+dZwaudvYSO1PO8RmE395SYhVLX3oOfgtut23eyIQ3U6jbZO
	MAsgu67A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viWWu-00000005MRm-0YB1;
	Wed, 21 Jan 2026 11:37:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viWWs-00000005MQe-327B
	for barebox@lists.infradead.org;
	Wed, 21 Jan 2026 11:37:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1viWWq-0003rJ-5I; Wed, 21 Jan 2026 12:37:40 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1viWWq-001k2B-1i;
	Wed, 21 Jan 2026 12:37:39 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1viWWq-00000006G8i-1t4O;
	Wed, 21 Jan 2026 12:37:39 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	"Claude Sonnet 4.5" <noreply@anthropic.com>
Date: Wed, 21 Jan 2026 12:36:46 +0100
Message-ID: <20260121113738.1485637-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260121_033742_784631_32A5E6FA 
X-CRM114-Status: GOOD (  15.74  )
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
Subject: [PATCH 1/4] of: fdt: implement of_del_reserve_entry
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

OF_MAX_RESERVE_MAP is only 16 and we have instances in the code that add
reserve entries in device tree fixups, which means it can be exhausted
when fixups are applied repeatedly.

Whether it's still apt in 2026 to use reserve entries is a different
discussion, but let's just add a way to delete reserved entries again in
cleanup code.

Co-developed-by: Claude Sonnet 4.5 <noreply@anthropic.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/of/fdt.c | 24 ++++++++++++++++++++++++
 include/of.h     |  1 +
 2 files changed, 25 insertions(+)

diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
index f2f4aa03de2d..ea763cf7a52a 100644
--- a/drivers/of/fdt.c
+++ b/drivers/of/fdt.c
@@ -651,6 +651,30 @@ int of_add_reserve_entry(resource_size_t start, resource_size_t end)
 	return 0;
 }
 
+void of_del_reserve_entry(resource_size_t start, resource_size_t end)
+{
+	int i, index = -1;
+
+	/* Find the entry with matching start and end addresses */
+	for (i = 0; i < of_reserve_map.num_entries; i++) {
+		if (of_reserve_map.start[i] == start && of_reserve_map.end[i] == end) {
+			index = i;
+			break;
+		}
+	}
+
+	if (index < 0)
+		return;
+
+	/* Shift all subsequent entries up to close the gap */
+	for (i = index; i < of_reserve_map.num_entries - 1; i++) {
+		of_reserve_map.start[i] = of_reserve_map.start[i + 1];
+		of_reserve_map.end[i] = of_reserve_map.end[i + 1];
+	}
+
+	of_reserve_map.num_entries--;
+}
+
 struct of_reserve_map *of_get_reserve_map(void)
 {
 	return &of_reserve_map;
diff --git a/include/of.h b/include/of.h
index ef4430c52862..ba8d1e358d41 100644
--- a/include/of.h
+++ b/include/of.h
@@ -77,6 +77,7 @@ struct of_reserve_map {
 };
 
 int of_add_reserve_entry(resource_size_t start, resource_size_t end);
+void of_del_reserve_entry(resource_size_t start, resource_size_t end);
 void of_clean_reserve_map(void);
 void fdt_add_reserve_map(void *fdt);
 void fdt_print_reserve_map(const void *fdt);
-- 
2.47.3




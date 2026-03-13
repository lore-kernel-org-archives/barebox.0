Delivery-date: Fri, 13 Mar 2026 14:35:00 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w12fM-000DV5-1c
	for lore@lore.pengutronix.de;
	Fri, 13 Mar 2026 14:35:00 +0100
Received: from bombadil.infradead.org ([198.137.202.133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w12ey-0000sV-0e
	for lore@pengutronix.de; Fri, 13 Mar 2026 14:35:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GQt0OWXWt462s8qki5cuNjFDkZySqZcVJU/b15KrlMQ=; b=uT81bt7sA7GPvEZchzer6vOgmd
	LIQcg6Rp+Moh0yPOLcMcrcHGHpt4uUo7Ryj4kGZM3vKbqgQcYMi4OTMgliwYWzlhbrGVcsXVxgBGQ
	qJNSrRfzXjTKt06S9CiAiQRpeiwqQBmephy/HNroYkQen8lWKngBeTuFPH606PrQzhlP0B3nuZtqr
	u6AE4/RNO+sct5dk/0UWIyNN3CqT1PaS5vBSbfd+z2D+FULvmmQt8ORPEo+qXAj9nrpwkXXENDbYe
	vWoqhaX/9cEd4khj0F+BgfdtHLt+sH5CcVdqGxBeXxIgpoc+lOwCM1j9Y/zY0D9zafnn1YrMSCyDp
	7hoegLgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12da-00000000GIb-3W1x;
	Fri, 13 Mar 2026 13:33:10 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12dD-00000000Ffk-3c2T
	for barebox@bombadil.infradead.org;
	Fri, 13 Mar 2026 13:32:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=GQt0OWXWt462s8qki5cuNjFDkZySqZcVJU/b15KrlMQ=; b=UXo6biBGkDyniI9KPEixq8Iz5l
	FKHyfASFgmtMWXBsEB2sqgFDnfg0+KvK09IWzDZfUfI/RrW5dY5ahZEAtKGrKH3R3lpqgvu6x1LXv
	4cqcxNDmOcuOWW+iCs2gDGHsjWDh+hruee6TdbyiaNkhk8oHuI7PIjlWvymb5CEFmvMRNqzGnGZOh
	LHSPOryvW4qYL08ZYcYCCYOwOSnNpFdfNaweTguUUOsUaILmZFyVnHdSKysjuleXhQ2NghF0tuSQm
	cy8T8vUq1LFFJH8qD1Cb43IvNztkp5xUG8a+mTxVIzr3YM4Xx+wvZaKr8AeQYXkAX6W9XVql9zQAG
	HfWt+KGA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12d6-0000000D9wD-2xid
	for barebox@lists.infradead.org;
	Fri, 13 Mar 2026 13:32:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12cz-0006r9-Pe; Fri, 13 Mar 2026 14:32:33 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12cz-0005Td-0C;
	Fri, 13 Mar 2026 14:32:33 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12XL-00000009ULB-1jj9;
	Fri, 13 Mar 2026 14:26:43 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	9l@9lo.re
Date: Fri, 13 Mar 2026 14:25:10 +0100
Message-ID: <20260313132631.2257573-27-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260313132631.2257573-1-a.fatoum@pengutronix.de>
References: <20260313132631.2257573-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260313_133240_802068_4AB0AAF0 
X-CRM114-Status: UNSURE (   7.98  )
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
X-SA-Exim-Connect-IP: 198.137.202.133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,RCVD_IN_VALIDITY_RPBL_BLOCKED,
	RCVD_IN_VALIDITY_SAFE_BLOCKED,SPF_HELO_NONE,SPF_NONE autolearn=no
	autolearn_force=no version=3.4.2
Subject: [PATCH v2025.09.y 26/58] common: tlv: fix link error when CONFIG_NET is disabled
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

ethaddr_list and eth_of_get_fixup_node are used unconditionally in
of_tlv_fixup, but there is no dependency on CONFIG_NET for CONFIG_TLV.

Turn the ethernet-related fixup code into dead code if CONFIG_NET is
disabled and emit a warning to fix this.

(cherry picked from commit 53c72e610a314fc4a9a133e2615f0bc88af9df28)

Reported-by: 9l@9lo.re
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Link: https://lore.barebox.org/20260205153540.2900244-1-a.fatoum@pengutronix.de
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/tlv/parser.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/common/tlv/parser.c b/common/tlv/parser.c
index fc46092650b1..59d4c724f151 100644
--- a/common/tlv/parser.c
+++ b/common/tlv/parser.c
@@ -93,6 +93,11 @@ int of_tlv_fixup(struct device_node *root, void *ctx)
 	if (!ethaddrs)
 		return 0;
 
+	if (!IS_ENABLED(CONFIG_NET)) {
+		pr_warn("CONFIG_NET disabled, so skipping ethernet-address trimming in fixup\n");
+		return 0;
+	}
+
 	list_for_each_entry(addr, &ethaddr_list, list) {
 		char propname[sizeof("address-4294967295")];
 		const char *enetaddr_tlv_str;
-- 
2.47.3




Delivery-date: Tue, 05 Aug 2025 20:56:42 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujMq2-007NzV-1x
	for lore@lore.pengutronix.de;
	Tue, 05 Aug 2025 20:56:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujMq1-0003DL-W0
	for lore@pengutronix.de; Tue, 05 Aug 2025 20:56:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=bVGBmS7eYmVbE/yHAXof3p3N5GvRpGOKoGBM+yhihPc=; b=PmBjd4smHq6zCtzM8Tc8MoaKMj
	JSup4XX2itCjPVXMbNNk5j18iD68SmvxZxTJPBrPow5YHgstQelYxBVxApePmhhqLGyuxWoQ0oQ8O
	u3oI8jr9gsGtBL/cjd5Ab94VrwdkPk6Zl7N0ddknDz6sR7D/na219kSAtgXOkZOifhiAAuRqD1kZy
	g+qyU12BJCqaelsQsaawW2AbQG9VuxfEudXy3qIL5jsjU2a2A2mzK9YstYXiF+kJ7G0Uo8MubAwnA
	MnY0a9g7JGhzr68K9FS8MG3ZhLhF06T4n7/b2sbvoc8NJklfRmAYxTnXwEs5PO23lXLhqC26b4fbK
	H8LzxwDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujMpd-0000000Dbp5-3xd9;
	Tue, 05 Aug 2025 18:56:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujMnC-0000000DbYz-3Sja
	for barebox@lists.infradead.org;
	Tue, 05 Aug 2025 18:53:48 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1ujMnB-0002u0-90; Tue, 05 Aug 2025 20:53:45 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: =?UTF-8?q?Leonard=20G=C3=B6hrs?= <l.goehrs@pengutronix.de>,
	Ahmad Fatoum <a.fatoum@barebox.org>
Date: Tue,  5 Aug 2025 20:53:44 +0200
Message-Id: <20250805185344.2691524-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250805_115346_872483_80C2F8F1 
X-CRM114-Status: UNSURE (   9.85  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master] tlv: drop assigned MAC addresses from fixup
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

A TLV blob may contain more MAC addresses than barebox can assign for
the network devices it knows about. In that case, barebox should assign
as many MAC addresses as it can and fix up the remainder, so the OS can
deal with it.

This got broken during refactoring in reply to upstreaming feedback:
instead of calling string_to_ethaddr on a string, it was called on a
6-byte MAC address.

Swap this to get back the intended behavior.

Fixes: 0b444f05f713 ("common: add barebox TLV support")
Link: https://github.com/linux-automation/meta-lxatac/issues/275
Reported-by: Leonard Göhrs <l.goehrs@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 common/tlv/parser.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/common/tlv/parser.c b/common/tlv/parser.c
index 468eeafceda1..fc46092650b1 100644
--- a/common/tlv/parser.c
+++ b/common/tlv/parser.c
@@ -95,8 +95,8 @@ int of_tlv_fixup(struct device_node *root, void *ctx)
 
 	list_for_each_entry(addr, &ethaddr_list, list) {
 		char propname[sizeof("address-4294967295")];
-		const u8 *enetaddr_a;
-		u8 enetaddr_b[ETH_ALEN];
+		const char *enetaddr_tlv_str;
+		u8 enetaddr_tlv[ETH_ALEN];
 		struct property *pp;
 
 		if (!eth_of_get_fixup_node(root, NULL, addr->ethid))
@@ -107,11 +107,11 @@ int of_tlv_fixup(struct device_node *root, void *ctx)
 		if (!pp)
 			continue;
 
-		enetaddr_a = of_property_get_value(pp);
-		if (string_to_ethaddr(addr->ethaddr, enetaddr_b))
+		enetaddr_tlv_str = of_property_get_value(pp);
+		if (string_to_ethaddr(enetaddr_tlv_str, enetaddr_tlv))
 			continue;
 
-		if (memcmp(enetaddr_a, enetaddr_b, ETH_ALEN))
+		if (memcmp(enetaddr_tlv, addr->ethaddr, ETH_ALEN))
 			continue;
 
 		of_delete_property(pp);
-- 
2.39.5




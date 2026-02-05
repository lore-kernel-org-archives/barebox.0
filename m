Delivery-date: Thu, 05 Feb 2026 16:36:24 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vo1P7-009AJm-0v
	for lore@lore.pengutronix.de;
	Thu, 05 Feb 2026 16:36:24 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vo1P6-0005OR-AM
	for lore@pengutronix.de; Thu, 05 Feb 2026 16:36:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Xu/CCdhXVCsBvea7EVFbaVu8CN+Ttyocx8OB2gWMcE8=; b=cWuGXv3w9EkIF7yFcp6m8G3czB
	19HTmQClqEZKgYBN8CSmLVt0IZx1VwxMdWmVulC8GWvBD7m4/jKCgVRVS+1hOfdYdFM2H7zWMSw0r
	2E+Gtk+DCKlxLLfHa5/ZlyzkynPKSQoGKK7Gbl0IbjNFHBf/Pn5B5/U4vt7wZUVZVmshGFgBI0Klk
	hdDTzeqpPYm26Rsm5OiqdvlJSx81387BZaXtL1iLkmZzY/2M/0mLBQBft3cjWdSuiBfpZHX+jGO8w
	DnCpptrTJA9zsjv8aBq7jmA+jwXPqWhohtI8DTtaMKQzoaAMfEuP2W5QCgG8mzODX2BRzJbIZXK65
	edUHgeuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vo1OY-0000000A95x-22cE;
	Thu, 05 Feb 2026 15:35:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vo1OS-0000000A95T-3jzZ
	for barebox@lists.infradead.org;
	Thu, 05 Feb 2026 15:35:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vo1OQ-0005GM-GO; Thu, 05 Feb 2026 16:35:42 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vo1OP-004GKk-2Q;
	Thu, 05 Feb 2026 16:35:41 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vo1OO-0000000CAUN-47TB;
	Thu, 05 Feb 2026 16:35:41 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	9l@9lo.re
Date: Thu,  5 Feb 2026 16:35:39 +0100
Message-ID: <20260205153540.2900244-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260205_073544_930698_758355D8 
X-CRM114-Status: UNSURE (   9.70  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] common: tlv: fix link error when CONFIG_NET is disabled
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

ethaddr_list and eth_of_get_fixup_node are used unconditionally in
of_tlv_fixup, but there is no dependency on CONFIG_NET for CONFIG_TLV.

Turn the ethernet-related fixup code into dead code if CONFIG_NET is
disabled and emit a warning to fix this.

Reported-by: 9l@9lo.re
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/tlv/parser.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/common/tlv/parser.c b/common/tlv/parser.c
index 7e1514758271..010e4cce38b0 100644
--- a/common/tlv/parser.c
+++ b/common/tlv/parser.c
@@ -187,6 +187,11 @@ int of_tlv_fixup(struct device_node *root, void *ctx)
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




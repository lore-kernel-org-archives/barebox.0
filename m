Delivery-date: Thu, 21 May 2026 10:38:05 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wPyur-002AjC-0X
	for lore@lore.pengutronix.de;
	Thu, 21 May 2026 10:38:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wPyuq-0003RM-Fv
	for lore@pengutronix.de; Thu, 21 May 2026 10:38:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7R9MJxprmYUKV6QSCKuzxggcQv1RSg8s7eq7AJYLQ+Y=; b=sGFK3YmPEOqO9kdR80M+7nn3QX
	AD2SVsiLkyrgpXZ7Vzltu2GyG3L/VUMjHCKeeZ03556/uvuTKrZUvl6umx0vU01rrW1sNtyBL7lq9
	SXvUzrdBk7DG8Iu9Kf+Og8SyoSVc1mOEjISaNJuEtqKHsoSGJdvmi45z7DZjXxYwvj7GvveiHO6Me
	qiHYrLoWur40GXcD43yTPRaujo6WgX9iSpIR6dDH2tRZ+eR7F7Mmx/hSjBOcifwVNluk+smdc926J
	h8uBnOWcKGfYz6NibxrT5+HYk/6Tn95BW1oXBnkoOJdZRmfH0WLR5yzb9QGa50GqStsIFGUI6+/xJ
	cv0laeNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPytp-00000007Aqz-1nLN;
	Thu, 21 May 2026 08:37:01 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPytm-00000007Aol-21Ih
	for barebox@lists.infradead.org;
	Thu, 21 May 2026 08:36:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wPytk-0002MZ-EH; Thu, 21 May 2026 10:36:56 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wPytj-0014d1-2Y;
	Thu, 21 May 2026 10:36:56 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wPytk-0000000DTPV-17WK;
	Thu, 21 May 2026 10:36:56 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 21 May 2026 10:36:55 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260521-pci-of-dynamic-v1-1-951f1878e378@pengutronix.de>
References: <20260521-pci-of-dynamic-v1-0-951f1878e378@pengutronix.de>
In-Reply-To: <20260521-pci-of-dynamic-v1-0-951f1878e378@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1779352616; l=1605;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=gxFxK3GzXLSwK1ZQH+eU0Z49EI35io3QWhaGou8lJz4=;
 b=65xKi419Xw8fMLJP+xMbnwOVjAJ86O3/Bc5k5FTRDebmhyjPsktHskAXpHE7J8y7Z+TS3Whd6
 cIhmAxo4nYoBWQyNGh3c8fymPmV21sia4EqpTVt/CroaTMXA01KOSAf
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260521_013658_531091_8B9ADFE6 
X-CRM114-Status: GOOD (  10.95  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/4] of: fall back to parent-prefixed encoding when address
 translation fails
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

of_get_reproducible_name() formatted the result of of_translate_address()
as [0x%llx] without checking for OF_BAD_ADDR ((u64)-1). For any node
whose reg can't be translated through the parent's ranges - notably PCI
child nodes whose reg[0] encodes a config-space address (space=0), which
host bridges don't list in ranges - this produced [0xffffffffffffffff]
for every such node, collapsing distinct nodes onto the same name and
making of_find_node_by_reproducible_name() return the wrong sibling.

Fall through to the existing parent-prefixed {offset} branch when
translation fails, so untranslatable siblings get disambiguated by
their parent chain.

Assisted-by: Claude Opus 4.7
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/base.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 5297894f60..1244664827 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -3368,7 +3368,14 @@ char *of_get_reproducible_name(struct device_node *node)
 
 	if (node->parent && of_get_property(node->parent, "ranges", NULL)) {
 		addr = of_translate_address(node, reg);
-		return basprintf("[0x%llx]", addr);
+		if (addr != OF_BAD_ADDR)
+			return basprintf("[0x%llx]", addr);
+		/*
+		 * Untranslatable - e.g. a PCI config-space address whose
+		 * tag (space=0) doesn't appear in the parent's ranges.
+		 * Fall through to the parent-prefixed encoding so distinct
+		 * untranslatable nodes don't all collide on OF_BAD_ADDR.
+		 */
 	}
 
 	na = of_n_addr_cells(node);

-- 
2.47.3




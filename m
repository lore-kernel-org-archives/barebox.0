Delivery-date: Thu, 05 Feb 2026 14:56:33 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vnzqT-0098lE-2g
	for lore@lore.pengutronix.de;
	Thu, 05 Feb 2026 14:56:33 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vnzqS-0007W7-NS
	for lore@pengutronix.de; Thu, 05 Feb 2026 14:56:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=2Bccrog9Wtk9qkgA98U5ekk3NvOecZg1PfmbSuWh3Ag=; b=CryM+JOpfH78xeBINT6Jdg4Uit
	AoyTGAtAkz4AFCX936MxcLrMEzCOfmc1tYhBmWUBgLhezTXtqTCH3EvVXqZCKE6jUM9vZRnm3idFU
	WVst/aYdw7Awj2uNf6et1DiFrMByV7rCgAxNVV4dETmYHtjOo18/cCAuaADdKxfR7QSSjLz93bgT8
	iZ2VukbgvBjNfzUtgK1W+Az0jf+s24sJbpNOxlLoGHe4do07XUfr0Az+46I/cPTjbxIdPcGAGUNcj
	KI42GP1llX8vayvqsGaY7VKdEqV9BvZXG2dD6nSRbUqu+gg2udqMV5lTI1O2OhX61lnmOve26TnfG
	N5Ih1f5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnzpq-00000009zvR-10QF;
	Thu, 05 Feb 2026 13:55:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnzpm-00000009zuk-2lBZ
	for barebox@lists.infradead.org;
	Thu, 05 Feb 2026 13:55:53 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1vnzpj-0007Op-1s; Thu, 05 Feb 2026 14:55:47 +0100
From: Jonas Rebmann <jre@pengutronix.de>
Date: Thu, 05 Feb 2026 14:55:46 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260205-tlv-eth-list-fixup-v1-1-74ca31223cdb@pengutronix.de>
X-B4-Tracking: v=1; b=H4sIAGGhhGkC/x2MQQqAIBAAvxJ7bsGEovpKdEhbc0Es1CQI/550H
 IaZFyIFpghz80KgzJFPX6FrG9B28wch75VBCjkIKXpMLiMli45jQsPPfSHpcTODUhMpAzW8AlX
 xT5e1lA9FeMvfZAAAAA==
X-Change-ID: 20260205-tlv-eth-list-fixup-ec8af6bb9ebf
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Jonas Rebmann <jre@pengutronix.de>
X-Mailer: b4 0.15-dev-7abec
X-Developer-Signature: v=1; a=openpgp-sha256; l=3605; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=VXCpOlKAlrZVaZL3e8Uc59e6n10C9cR7u8hevHzCkSM=;
 b=owGbwMvMwCV2ZcYT3onnbjcwnlZLYshsWZh0g/mQ2G7BD+yhr3ZFPHk9Z0tW7hftgKsXzzNVC
 33auq1UvKOUhUGMi0FWTJElVk1OQcjY/7pZpV0szBxWJpAhDFycAjCR67aMDOtfqufeqZD+ePwn
 +8Xuw8dY3zI8OXzTr718nnjn5Y+iu/8w/I8PPKe1OHLPBgNuu8Sw7FMhT2ZUnWM/WK93ZVd6R18
 hBw8A
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260205_055550_698969_9896119C 
X-CRM114-Status: GOOD (  14.75  )
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
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] common: tlv: Correct eth address list fixup
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The tlv_format_mac() function was written as if it would fixup a list of
MAC addresses, however that implementation was broken as it always
exited after adding the first MAC due to interpretation of any nonzero
exit value from of_property_sprintf() as an error, although it returns
the length of the resulting string upon success.

This was worked around by tlv_handle_eth_address_seq() invoking
tlv_format_mac() in a loop however tlv_handle_eth_address(), which is
specified to support an array of MAC addresses invoked tlv_format_mac()
on the list resulting in only the first MAC of that list ending up in
the devicetree fixup.

Remove the broken loop from tlv_format_mac() and clarify that it only
adds a single MAC. Fix and clean up the usage of tlv_format_mac() in
tlv_handle_eth_address() and tlv_handle_eth_address_seq().

Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
---
 common/tlv/barebox.c | 30 ++++++++++++++++++------------
 1 file changed, 18 insertions(+), 12 deletions(-)

diff --git a/common/tlv/barebox.c b/common/tlv/barebox.c
index 6fdfe94028..986b655a6f 100644
--- a/common/tlv/barebox.c
+++ b/common/tlv/barebox.c
@@ -22,21 +22,26 @@ int tlv_handle_serial(struct tlv_device *dev, struct tlv_mapping *map, u16 len,
 
 int tlv_handle_eth_address(struct tlv_device *dev, struct tlv_mapping *map, u16 len, const u8 *val)
 {
+	int ret;
 	int i;
 
 	if (len % ETH_ALEN != 0)
 		return -EINVAL;
 
-	for (i = 0; i < len / ETH_ALEN; i++)
+	for (i = 0; i < len / ETH_ALEN; i++) {
 		eth_register_ethaddr(i, val + i * ETH_ALEN);
-
-	return tlv_format_mac(dev, map, len, val);
+		ret = tlv_format_mac(dev, map, ETH_ALEN, val + i * ETH_ALEN);
+		if (ret < 0)
+			return ret;
+	}
+	return 0;
 }
 
 int tlv_handle_eth_address_seq(struct tlv_device *dev, struct tlv_mapping *map, u16 len, const u8 *val)
 {
 	u8 eth_addr[ETH_ALEN];
 	int eth_count;
+	int ret;
 
 	eth_count = *val;
 
@@ -47,7 +52,9 @@ int tlv_handle_eth_address_seq(struct tlv_device *dev, struct tlv_mapping *map,
 
 	for (int i = 0; i < eth_count; i++, eth_addr_inc(eth_addr)) {
 		eth_register_ethaddr(i, eth_addr);
-		tlv_format_mac(dev, map, ETH_ALEN, eth_addr);
+		ret = tlv_format_mac(dev, map, ETH_ALEN, eth_addr);
+		if (ret < 0)
+			return ret;
 	}
 
 	return 0;
@@ -111,14 +118,15 @@ static struct device_node *of_append_node(struct device_node *root, const char *
 	return of_new_node(root, name);
 }
 
+/* add a single address-<num> entry to the property */
 int tlv_format_mac(struct tlv_device *dev, struct tlv_mapping *map, u16 len, const u8 *val)
 {
 	struct device_node *np = tlv_of_node(dev);
 	struct property *pp;
 	char propname[sizeof("address-4294967295")];
-	int base = 0, i, ret;
+	int base = 0, ret;
 
-	if (len % 6 != 0)
+	if (len != ETH_ALEN)
 		return -EINVAL;
 
 	np = of_append_node(np, map->prop);
@@ -128,12 +136,10 @@ int tlv_format_mac(struct tlv_device *dev, struct tlv_mapping *map, u16 len, con
 	for_each_property_of_node(np, pp)
 		base++;
 
-	for (i = base; i < base + len / 6; i++) {
-		snprintf(propname, sizeof(propname), "address-%u", i);
-		ret = of_property_sprintf(np, propname, "%*phC", 6, val);
-		if (ret)
-			return ret;
-	}
+	snprintf(propname, sizeof(propname), "address-%u", base);
+	ret = of_property_sprintf(np, propname, "%*phC", ETH_ALEN, val);
+	if (ret < 0)
+		return ret;
 
 	return 0;
 }

---
base-commit: 89ed19d5c673ad0ab1851ed62ece38d30e96b412
change-id: 20260205-tlv-eth-list-fixup-ec8af6bb9ebf

Best regards,
--  
Jonas Rebmann <jre@pengutronix.de>




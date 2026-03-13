Delivery-date: Fri, 13 Mar 2026 14:34:56 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w12fI-000DU5-1B
	for lore@lore.pengutronix.de;
	Fri, 13 Mar 2026 14:34:56 +0100
Received: from bombadil.infradead.org ([198.137.202.133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w12eu-0000nY-9u
	for lore@pengutronix.de; Fri, 13 Mar 2026 14:34:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DfrAgXE2he+ZEiVmlDRZT08ayFrFuayFe/wLUEhSSMY=; b=3dfsPGqheBnk8NiZnBo015P1TO
	dBlDWfR3+h5DPFOdJj1HQ06pjOZRAbaXg1nPBUQuyMz14AJtoaYjvEPklBFI1SGJnMpel2OjHgOC6
	xo8sgeYy3uSmw4Hht7E2hFu7ZFM3RWfgVPDTe2XJY7ITc3Fc10ExCucuFyqWvKXIFIhgZaULuB0Jv
	3NPqATxXc71BmRfLTGC5tIesOngBhfD/TLWfJIe7Zh+3lApLi5zLT4HoQPXVL7WNoVZ0BOf/PDTxL
	p80uzvl170+eMbdGVLZ1nqtZzcgqQeXH+zpvRpOXYtKuFgO8ghw/Xc02SLi3cR8UoYprh5KwiT1d5
	8GjNrXug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12dV-00000000G7c-0p2S;
	Fri, 13 Mar 2026 13:33:05 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12dB-00000000Fbw-3Jpp
	for barebox@bombadil.infradead.org;
	Fri, 13 Mar 2026 13:32:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=DfrAgXE2he+ZEiVmlDRZT08ayFrFuayFe/wLUEhSSMY=; b=N8wGcbJXXwyblzUEPmgToST+pq
	5GfzIdfHUnqK9vLiIoFfm+UrrCbPiv+wKSWQNAqUXJ7VUeHao1p5FZQ+EoAmNSMaz/ioVw8R6QW2g
	n6zyXsLF6wlZSb03CVzksCfb9S+BwFm/paJNyRLwrFdne1t9Dt7BTAuPVZSpuxsdaCF7Yb8ZWYEeJ
	j8X0tliS9PFuXP8dJ2OgcBj+PJleCsl6bEkXhWrUfN9xGz4L+lQQJHsoueTEZ92c5YJnVon58py1j
	lPngbbTn9T4qqcF/XtBVH61ZVZupvIrPPxzfLH01ywlpGxFeAcLu/9dAQUmjcfcxg4ldUzO2EKfrF
	DHe/S8ew==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12d5-0000000D9wA-0pqc
	for barebox@lists.infradead.org;
	Fri, 13 Mar 2026 13:32:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12d0-0006vY-VQ; Fri, 13 Mar 2026 14:32:34 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12d0-0005Uv-2X;
	Fri, 13 Mar 2026 14:32:34 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12XL-00000009ULB-1XAH;
	Fri, 13 Mar 2026 14:26:43 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Jonas Rebmann <jre@pengutronix.de>
Date: Fri, 13 Mar 2026 14:25:09 +0100
Message-ID: <20260313132631.2257573-26-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260313132631.2257573-1-a.fatoum@pengutronix.de>
References: <20260313132631.2257573-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260313_133239_288875_EF2854B2 
X-CRM114-Status: GOOD (  15.15  )
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
Subject: [PATCH v2025.09.y 25/58] common: tlv: Correct eth address list fixup
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Jonas Rebmann <jre@pengutronix.de>

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

(cherry picked from commit 925dba9ba412a4289ab13a842709b9bc501f64ab)

Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
Link: https://lore.barebox.org/20260205-tlv-eth-list-fixup-v1-1-74ca31223cdb@pengutronix.de
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/tlv/barebox.c | 30 ++++++++++++++++++------------
 1 file changed, 18 insertions(+), 12 deletions(-)

diff --git a/common/tlv/barebox.c b/common/tlv/barebox.c
index b941463b31c7..f1ba79b23679 100644
--- a/common/tlv/barebox.c
+++ b/common/tlv/barebox.c
@@ -18,21 +18,26 @@ int tlv_handle_serial(struct tlv_device *dev, struct tlv_mapping *map, u16 len,
 
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
 
@@ -43,7 +48,9 @@ int tlv_handle_eth_address_seq(struct tlv_device *dev, struct tlv_mapping *map,
 
 	for (int i = 0; i < eth_count; i++, eth_addr_inc(eth_addr)) {
 		eth_register_ethaddr(i, eth_addr);
-		tlv_format_mac(dev, map, ETH_ALEN, eth_addr);
+		ret = tlv_format_mac(dev, map, ETH_ALEN, eth_addr);
+		if (ret < 0)
+			return ret;
 	}
 
 	return 0;
@@ -107,14 +114,15 @@ static struct device_node *of_append_node(struct device_node *root, const char *
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
@@ -124,12 +132,10 @@ int tlv_format_mac(struct tlv_device *dev, struct tlv_mapping *map, u16 len, con
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
-- 
2.47.3




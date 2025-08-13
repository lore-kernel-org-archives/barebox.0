Delivery-date: Wed, 13 Aug 2025 10:05:58 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1um6Ug-0006rx-2F
	for lore@lore.pengutronix.de;
	Wed, 13 Aug 2025 10:05:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1um6Uf-00014P-Fs
	for lore@pengutronix.de; Wed, 13 Aug 2025 10:05:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/4nYCxT9C3ZOnELrrXAwizX93ZD4xFAG1IyY8rfh62o=; b=JLIqvSyByYKj37rERj7WaSA18R
	kp0Ra6llTFqTCMwCFsbXi8ZyvQLZu4zn6wTBIgTTttF+i1lE/b/q8RYCBsGyyi43i0NNExR0eWOpe
	Cyw1EVjLNOrwzPz8zI9pyuui8JomO2d+pZPMwrrJ6vGWUUcDdBSFn8X5SYPGREgttGEsyyB9kIzoN
	LjjzvPmb85XeC6GXJSRXIz01y+6mXgtah0+F2T/wyCKSvyX5MQurfojgr5aWEYevjA5PmZZ8Jui05
	u6nq4JB200R8Ibpjh0Er4g0006VgfR3cwKsYT88+RCAbL4Xoo83Us/Jn18GwzN5Ghv4157hsa7ZGa
	Fj3M0hTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1um6UB-0000000D21b-325k;
	Wed, 13 Aug 2025 08:05:27 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1um6Hd-0000000CzbW-1apr
	for barebox@bombadil.infradead.org;
	Wed, 13 Aug 2025 07:52:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=/4nYCxT9C3ZOnELrrXAwizX93ZD4xFAG1IyY8rfh62o=; b=II8YWfEi0QAHhgu+O+KrMcTP2H
	BPBjIssMtAW+A2I+0xwOkC18i3T7IbBk+RdiNme3mbxXQEgB+z6ACUNcwEuwlmIJK++i4c76vl0Gp
	Xsjdpj9aeIWJbIfjfCGuKBUxYRV2GJDkqVhhJYDjgKnYCSKq3YtHuN2JoSLGmvfphjSBqsFAlPJCw
	mt2sSA4TS28LWZkTLVrMdUemEPGcu5QS9nV/goiBlfM+wf5gB3NCJ3C1J0WKoiSSpJ3oAnL72O0iL
	dYpJ8GEtkedCOMhB2U8dIIW6QIabexcd2VaE01pUxEpCSVYZM1EU3LeIVyZ6TC7XPW2yv+WzZQSH2
	vEAk4lOw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1um6Ha-0000000FzVp-1ANQ
	for barebox@lists.infradead.org;
	Wed, 13 Aug 2025 07:52:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1um6HW-0006da-RM; Wed, 13 Aug 2025 09:52:22 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1um6HW-0003Sb-24;
	Wed, 13 Aug 2025 09:52:22 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1um6HW-00Etvv-1u;
	Wed, 13 Aug 2025 09:52:22 +0200
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Date: Wed, 13 Aug 2025 09:52:20 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250813-fix-ax88179_178a-dropped-packets-v1-1-2ce605407d0b@pengutronix.de>
References: <20250813-fix-ax88179_178a-dropped-packets-v1-0-2ce605407d0b@pengutronix.de>
In-Reply-To: <20250813-fix-ax88179_178a-dropped-packets-v1-0-2ce605407d0b@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Stefan Kerkmann <s.kerkmann@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250813_085226_492318_773717B4 
X-CRM114-Status: GOOD (  14.57  )
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
Subject: [PATCH 1/2] net: usb: ax88179_178a: align rx_fixup with upstream
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This aligns the ax88179_rx_fixup path with the latest linux upstream
version 61997271a5a7d ("net: usb: asix: ax88772: Increase phy_name
size").

Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
---
 drivers/net/usb/ax88179_178a.c | 73 +++++++++++++++++++++++++++++-------------
 1 file changed, 51 insertions(+), 22 deletions(-)

diff --git a/drivers/net/usb/ax88179_178a.c b/drivers/net/usb/ax88179_178a.c
index 0cf2635b77f86c9713dd5ed67d8ccf9bc30c45dd..78b5d943a4ecafab025ba3f8cc44293d16f31eb8 100644
--- a/drivers/net/usb/ax88179_178a.c
+++ b/drivers/net/usb/ax88179_178a.c
@@ -435,46 +435,75 @@ static void ax88179_unbind(struct usbnet *dev)
 
 static int ax88179_rx_fixup(struct usbnet *dev, void *buf, int len)
 {
-	int pkt_cnt, frame_pos;
-	u32 rx_hdr;
-	u16 hdr_off;
+	u16 hdr_off, pkt_len, pkt_len_plus_padd;
+	u32 rx_hdr, hdr;
+	u8 *pos = buf;
 	u32 *pkt_hdr;
+	int pkt_cnt;
 
 	if (len == dev->rx_urb_size) {
-		dev_err(&dev->udev->dev, "broken package\n");
+		dev_err(&dev->udev->dev, "%s: broken packet\n", __func__);
 		return 0;
 	}
 
-	rx_hdr = get_unaligned_le32(buf + len - 4);
+	if (len < sizeof(rx_hdr)) {
+		dev_err(&dev->udev->dev, "%s: short packet\n", __func__);
+		return 0;
+	}
+
+	rx_hdr = get_unaligned_le32(buf + len - sizeof(rx_hdr));
+	pkt_cnt = lower_16_bits(rx_hdr);
+	hdr_off = upper_16_bits(rx_hdr);
+
+	if (pkt_cnt == 0)
+		return 0;
+
+	if ((pkt_cnt * sizeof(*pkt_hdr) + hdr_off) > (len - sizeof(rx_hdr))) {
+		dev_err(&dev->udev->dev,
+			"%s: malformed metadata: pkt_cnt: %d hdr_off: %d len: %d\n",
+			__func__, pkt_cnt, hdr_off, len);
+		return 0;
+	}
 
-	pkt_cnt = (u16)rx_hdr;
-	hdr_off = (u16)(rx_hdr >> 16);
 	pkt_hdr = (u32 *)(buf + hdr_off);
 
-	frame_pos = 0;
+	/* Packets must not overlap the metadata array */
+	len = hdr_off;
 
-	while (pkt_cnt--) {
-		u16 pkt_len;
-		u32 hdr = le32_to_cpup(pkt_hdr);
+	for (; pkt_cnt > 0; pkt_cnt--, pkt_hdr++) {
+		hdr = le32_to_cpup(pkt_hdr);
+		pkt_len = upper_16_bits(hdr) & GENMASK(12, 0);
+		pkt_len_plus_padd = (pkt_len + 7) & GENMASK(15, 3);
 
-		pkt_len = (hdr >> 16) & 0x1fff;
+		/* Skip dummy header used for alignment */
+		if (pkt_len == 0)
+			continue;
+
+		if (pkt_len_plus_padd > len) {
+			dev_dbg(&dev->udev->dev,
+				"%s: packet too large: %d > %d\n", __func__,
+				pkt_len_plus_padd, len);
+			return 0;
+		}
 
 		/* Check CRC or runt packet */
-		if ((hdr & AX_RXHDR_CRC_ERR) ||
-		    (hdr & AX_RXHDR_DROP_ERR)) {
-			pkt_hdr++;
+		if ((hdr & (AX_RXHDR_CRC_ERR | AX_RXHDR_DROP_ERR)) ||
+		    pkt_len < sizeof(u16) + ETH_HLEN) {
+			dev_dbg(&dev->udev->dev,
+				"%s: dropping packet: hdr: 0x%08x len: %d\n",
+				__func__, hdr, pkt_len);
+			pos += pkt_len_plus_padd;
+			len -= pkt_len_plus_padd;
 			continue;
 		}
 
-		frame_pos += 2;
+		dev_dbg(&dev->udev->dev, "%s: loop: frame_pos: %td len: %d\n",
+			__func__, pos - (u8 *)buf, pkt_len);
 
-		dev_dbg(&dev->udev->dev, "%s: loop: frame_pos: %d len: %d\n",
-			__func__, frame_pos, pkt_len);
+		net_receive(&dev->edev, pos + sizeof(u16), pkt_len);
 
-		net_receive(&dev->edev, buf + frame_pos, pkt_len);
-
-		pkt_hdr++;
-		frame_pos += ((pkt_len + 7) & 0xfff8) - 2;
+		pos += pkt_len_plus_padd;
+		len -= pkt_len_plus_padd;
 	}
 
 	return 0;

-- 
2.39.5



